import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:searchfield/searchfield.dart';

import '../../data/models/admin/models.dart' show PaginatedListModel;

class PaginatedDropdownSearchField<K, V> extends ConsumerStatefulWidget {
  const PaginatedDropdownSearchField({
    super.key,
    required this.value,
    required this.itemBuilder,
    required this.provider,
    this.onSelect,
  });
  final K value;
  final PaginatedDropdownSearchProvider<K, V> provider;
  final CustomSearchItem<K, V> Function(V data) itemBuilder;
  final void Function(K? value)? onSelect;

  @override
  ConsumerState<PaginatedDropdownSearchField<K, V>> createState() =>
      _PaginatedDropdownSearchFieldState<K, V>();
}

class _PaginatedDropdownSearchFieldState<K, V>
    extends ConsumerState<PaginatedDropdownSearchField<K, V>> {
  late final TextEditingController searchController;

  List<CustomSearchItem<K, V>> suggestions = [];
  bool isLoading = false;
  int currentPage = 1;
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController()
      ..addListener(_onSearchTextChanged);
  }

  @override
  void dispose() {
    searchController.removeListener(_onSearchTextChanged);
    searchController.dispose();
    super.dispose();
  }

  void _onSearchTextChanged() {
    currentPage = 1;
    suggestions.clear();
    isLastPage = false;
    setState(() {});
    _fetchSuggestions();
  }

  Future<void> _fetchSuggestions() async {
    if (isLoading || isLastPage) return;

    setState(() => isLoading = true);

    final _param = PaginatedDropdownSearchParam(
      page: currentPage,
      search: searchController.text,
    );
    final _result = await ref.read(widget.provider(_param).future);

    setState(() {
      if (_result.data?.data != null) {
        suggestions.addAll(
          _result.data!.data!.map((dataItem) {
            return widget.itemBuilder(dataItem);
          }).toList(),
        );
      }
      currentPage++;
      isLoading = false;
      isLastPage = _result.data?.currentPage == _result.data?.lastPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SearchField<K>(
      controller: searchController,
      onSearchTextChanged: (query) {
        _fetchSuggestions();
        return null;
      },
      suggestions: suggestions,
      onScroll: (offset, maxOffset) async {
        if (offset < maxOffset) return;
        await _fetchSuggestions();
      },
      emptyWidget: isLoading
          ? const Center(child: CircularProgressIndicator())
          : const SizedBox.shrink(),
      onSuggestionTap: (suggestion) => widget.onSelect?.call(suggestion.item),
      suggestionStyle: const TextStyle(fontSize: 20, color: Colors.black),
      searchInputDecoration: SearchInputDecoration(
        hintText: 'Search for properties...',
        border: OutlineInputBorder(),
      ),
    );
  }
}

class CustomSearchItem<K, V> extends SearchFieldListItem<K> {
  final V data;
  final K itemKey;
  final String query;
  CustomSearchItem({
    super.key,
    super.child,
    required this.itemKey,
    required this.query,
    required this.data,
  }) : super(query, item: itemKey);
}

class PaginatedDropdownSearchParam {
  final int page;
  final int perPage;
  final String search;
  final Map<String, dynamic>? queryParams;

  PaginatedDropdownSearchParam({
    required this.page,
    this.perPage = 10,
    required this.search,
    this.queryParams,
  });

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;

    return other is PaginatedDropdownSearchParam &&
        other.page == page &&
        other.perPage == perPage &&
        other.search == search &&
        other.queryParams == queryParams;
  }

  @override
  int get hashCode {
    return page.hashCode ^
        perPage.hashCode ^
        search.hashCode ^
        queryParams.hashCode;
  }
}

typedef PaginatedDropdownSearchProvider<T, R> = AutoDisposeFutureProviderFamily<
    PaginatedListModel<R>, PaginatedDropdownSearchParam>;
