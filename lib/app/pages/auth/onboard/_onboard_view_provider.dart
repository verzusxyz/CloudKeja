part of 'onboard_view.dart';

class OnboardViewNotifier extends StateNotifier<int> {
  OnboardViewNotifier() : super(0);
  void updateIndex(int newIndex) {
    if (newIndex >= 0 && newIndex < obCount) {
      state = newIndex;
    }
  }

  List<OnboardModel> get obData {
    return <OnboardModel>[
      OnboardModel(
        title: t.pages.onboard.onboardData.data1.title,
        description: t.pages.onboard.onboardData.data1.description,
        imagePath: "assets/images/onboard/onboard_01.png",
      ),
      OnboardModel(
        title: t.pages.onboard.onboardData.data2.title,
        description: t.pages.onboard.onboardData.data2.description,
        imagePath: "assets/images/onboard/onboard_02.png",
      ),
      OnboardModel(
        title: t.pages.onboard.onboardData.data3.title,
        description: t.pages.onboard.onboardData.data3.description,
        imagePath: "assets/images/onboard/onboard_03.png",
      ),
    ];
  }

  int get obCount => obData.length;

  Future<bool> saveTour() async {
    return await (await SharedPreferences.getInstance()).setBool(
      DAppSPrefsKeys.firstTour,
      false,
    );
  }
}

final onboardProvider =
    StateNotifierProvider.autoDispose<OnboardViewNotifier, int>(
  (ref) => OnboardViewNotifier(),
);
