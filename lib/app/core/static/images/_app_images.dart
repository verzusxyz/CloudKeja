abstract class DAppImages {
  static const String appIcon = 'assets/app/app_icon.png';
  static const String supportAvatar = 'assets/app/support_avatar.jpeg';
  static const String splashLogo = 'assets/app/app_splash_icon.png';
  static const String userPlaceholder = 'assets/shapes/user_placeholder.png';
  static const String emptyScreenLogo = 'assets/shapes/emtpy_screen.png';

  static const String emptyImagePlaceholder =
      'assets/shapes/image_placeholder.png';

  static const String appbarIcon = 'assets/app/appbar_app_icon.png';
  static const String appHomeBg = 'assets/app/app_home_bg.png';
  static const String houseProperty = 'assets/shapes/house_property.png';

  static String splashDrop({bool isSuccess = true}) =>
      'assets/shapes/splash_drop_${isSuccess ? 'success' : 'failed'}.png';

  static String splashDropLottie({bool isSuccess = true}) {
    return 'assets/lottie/splash_drop_${isSuccess ? 'success' : 'failed'}.json';
  }

  static const String tenantPlaceholder =
      'assets/shapes/tenant_image_placeholder.png';

  static const String noInternet = 'assets/shapes/no_internet.png';

  static const String buildingCoverIcon =
      'assets/icons/building_cover_icon.png';

  static const String livingRoomIcon = 'assets/icons/living_room_icon.png';
  static const String bedRoomIcon = 'assets/icons/bed_room_icon.png';
  static const String bathRoomIcon = 'assets/icons/bath_room_icon.png';
  static const String kitchenRoomIcon = 'assets/icons/kitchen_room_icon.png';
  static const String floorPlanIcon = 'assets/icons/floorplan_icon.png';
  static const String cameraIcon = 'assets/icons/camera_icon.png';
  static const String onlinePaymentIcon = 'assets/icons/online_payment.png';
  static const String offlinePaymentIcon = 'assets/icons/offline_payment.png';

  static const String azSearchShape = 'assets/shapes/az_search.png';
  static const String googlePlay = 'assets/icons/google_play.png';
}
