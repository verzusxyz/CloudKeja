part of 'search_view.dart';

class SearchHistoryNotifier extends ChangeNotifier {
  SearchHistoryNotifier(this._httpClient);
  final HTTPDioClient _httpClient;
  //--------------------Search History--------------------//
  Future<void> manageSearchHistory(
    String? value, {
    bool remove = false,
  }) async {
    final List<String> currentHistory = searchHistory;

    if (remove) {
      if (value == null) {
        currentHistory.clear();
      } else {
        currentHistory.remove(value);
      }
    } else {
      if (!currentHistory.contains(value) && value != null) {
        currentHistory.add(value);
      }
    }

    await _httpClient.prefs.setStringList(
      DAppSPrefsKeys.searchHistory,
      currentHistory,
    );

    gEventListener.fire<String>(DAppSPrefsKeys.searchHistory);
    return notifyListeners();
  }

  List<String> get searchHistory {
    return [
      ...?_httpClient.prefs.getStringList(
        DAppSPrefsKeys.searchHistory,
      ),
    ].reversed.toList();
  }
  //--------------------Search History--------------------//
}

final searchHistoryProvider = ChangeNotifierProvider.autoDispose(
  (ref) => SearchHistoryNotifier(ref.read(httpDioClientProvider)),
);
