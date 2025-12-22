part of 'landlord_manage_profile.dart';

class LandlordManageProfileNotifier extends ChangeNotifier {
  LandlordManageProfileNotifier(this.userRepository, {this.user}) {
    _initData();
  }
  final UserRepository userRepository;
  final User? user;
  void _initData() {
    if (user == null) return;

    avatarImage = user?.image;
    fullNameController.text = user?.name ?? '';
    emailController.text = user?.email ?? '';
    mobileNumberController.text = user?.phone?.mobileNo ?? '';
    if (user?.phone?.mobileCode != null) {
      selectedCountryCode = CountryCode.fromDialCode(user!.phone!.mobileCode!);
    }

    address1Controller.text = user?.userDetails?.addressInfo?.addressOne ?? '';
    address2Controller.text = user?.userDetails?.addressInfo?.addressTwo ?? '';
    postCodeController.text = user?.userDetails?.addressInfo?.postalCode ?? '';
    selectedCountry = user?.userDetails?.addressInfo?.country;
    stateController.text = user?.userDetails?.addressInfo?.state ?? '';
    cityController.text = user?.userDetails?.addressInfo?.city ?? '';
    selectedGender = user?.userDetails?.gender;
    nidPassportIdController.text = user?.userDetails?.mykadId ?? '';

    if (user?.userDetails?.mykad != null) {
      nidPassportImages.clear();
      nidPassportImages.addAll([
        user!.userDetails!.mykad!.frontImage,
        user!.userDetails!.mykad!.backImage,
      ]);
    }
    notifyListeners();
  }

  //-------------------------Form Field Props-------------------------//
  DynamicFileType? avatarImage;
  void handleAvatarImage(File? value) {
    if (value == null || value.path.isEmpty) return;
    avatarImage = DynamicFileType(local: value);
    notifyListeners();
  }

  late final fullNameController = TextEditingController();
  late final emailController = TextEditingController();
  late final mobileNumberController = TextEditingController();
  late final address1Controller = TextEditingController();
  late final address2Controller = TextEditingController();
  late final postCodeController = TextEditingController();
  String? selectedCountry;
  late final cityController = TextEditingController();
  late final stateController = TextEditingController();
  String? selectedGender;
  late final nidPassportIdController = TextEditingController();

  CountryCode? selectedCountryCode;
  void selectCountryCode(CountryCode value) {
    selectedCountryCode = value;
    notifyListeners();
  }

  final List<DynamicFileType> nidPassportImages =
      List<DynamicFileType>.generate(
    2,
    (i) => DynamicFileType(),
  );
  void handleAddingNidPassportImage(int index, DynamicFileType image) {
    nidPassportImages.removeAt(index);
    nidPassportImages.insert(index, image);
    notifyListeners();
  }
  //-------------------------Form Field Props-------------------------//

  //-------------------------Update Profile-------------------------//
  Future<Either<String?, User?>> handleUpdateProfile() async {
    final _userData = User(
      image: avatarImage,
      name: fullNameController.text,
      email: emailController.text,
      phone: Phone(
        mobileCode: selectedCountryCode?.dialCode,
        mobileNo: mobileNumberController.text,
      ),
      userDetails: UserDetails(
        addressInfo: AddressInfo(
          addressOne: address1Controller.text,
          addressTwo: address2Controller.text,
          country: selectedCountry,
          state: stateController.text,
          city: cityController.text,
          postalCode: postCodeController.text,
        ),
        gender: selectedGender,
        mykadId: nidPassportIdController.text,
        mykad: Mykad(
          frontImage: nidPassportImages.first,
          backImage: nidPassportImages.last,
        ),
      ),
    );

    return await userRepository.updateProfile(_userData);
  }
  //-------------------------Update Profile-------------------------//

  @override
  void dispose() {
    super.dispose();
    fullNameController.dispose();
    emailController.dispose();
    mobileNumberController.dispose();
    address1Controller.dispose();
    address2Controller.dispose();
    postCodeController.dispose();
    cityController.dispose();
    stateController.dispose();
    nidPassportIdController.dispose();
  }
}

final landlordManageProfileProvider = ChangeNotifierProvider.autoDispose(
  (ref) {
    final _dependency = ref.watch(userRepositoryProvider.notifier);
    final _user = ref.watch(userRepositoryProvider).value;
    return LandlordManageProfileNotifier(_dependency, user: _user);
  },
);
