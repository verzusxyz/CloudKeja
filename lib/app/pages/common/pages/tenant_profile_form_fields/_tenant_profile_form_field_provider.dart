part of '_tenant_profile_form_fields.dart';

class TenantProfileFormFieldNotifier extends ChangeNotifier {
  TenantProfileFormFieldNotifier(this.ref);
  final Ref ref;

  //-------------------------Form Field Props-------------------------//
  TenantProfileType tenantType = TenantProfileType.privateIndividual;
  void handleTenantType(TenantProfileType? value) {
    if (value == null) return;
    tenantType = value;
    notifyListeners();
  }

  DynamicFileType? avatarImage;
  void handleAvatarImage(File? value) {
    if (value == null || value.path.isEmpty) return;
    avatarImage = DynamicFileType(local: value);
    notifyListeners();
  }

  late final fullNameController = TextEditingController();
  late final emailController = TextEditingController();
  late final passwordController = TextEditingController();
  bool obscurePassword = true;
  void toggleObscure() {
    obscurePassword = !obscurePassword;
    notifyListeners();
  }

  CountryCode? selectedCountryCode = PhoneFormField.countryCodes.firstOrNull;
  void selectCountryCode(CountryCode value) {
    selectedCountryCode = value;
    notifyListeners();
  }

  late final mobileNumberController = TextEditingController();
  late final address1Controller = TextEditingController();
  late final address2Controller = TextEditingController();
  late final postCodeController = TextEditingController();
  String? selectedCountry;
  late final cityController = TextEditingController();
  late final stateController = TextEditingController();
  String? selectedGender;
  late final dateOfBirthController = TextEditingController();
  late final nidPassportIdController = TextEditingController();

  // Nominee
  late final nomineeSectionController = ExpansionTileController();
  late final nomineeNameController = TextEditingController();
  late final nomineeEmailController = TextEditingController();
  CountryCode? nomineeSelectedCountryCode =
      PhoneFormField.countryCodes.firstOrNull;
  void nomineeSelectCountryCode(CountryCode value) {
    nomineeSelectedCountryCode = value;
    notifyListeners();
  }

  late final nomineeMobileNumberController = TextEditingController();

  // Emergency Contact
  late final ecSectionController = ExpansionTileController();
  String? ecSelectedRelation;
  late final ecNameController = TextEditingController();
  CountryCode? ecSelectedCountryCode = PhoneFormField.countryCodes.firstOrNull;
  void ecSelectCountryCode(CountryCode value) {
    ecSelectedCountryCode = value;
    notifyListeners();
  }

  late final ecMobileNumberController = TextEditingController();

  // Company for Company type tenants
  late final cCompanySectionController = ExpansionTileController();
  late final cCompanyNameController = TextEditingController();
  late final cCompanySSMController = TextEditingController();

  // Workplace
  late final wCompanySectionController = ExpansionTileController();
  late final wCompanyNameController = TextEditingController();
  late final wCompanyAddress1Controller = TextEditingController();
  late final wCompanyAddress2Controller = TextEditingController();
  String? wSelectedCountry;
  late final wCompanyStateController = TextEditingController();
  late final wCompanyPostalCodeController = TextEditingController();
  late final wCompanyCityController = TextEditingController();
  late final wCompanyOfficePhoneController = TextEditingController();
  CountryCode? wCSelectedCountryCode = PhoneFormField.countryCodes.firstOrNull;
  void wCSelectCountryCode(CountryCode value) {
    wCSelectedCountryCode = value;
    notifyListeners();
  }

  late final wCompanyOfficeMobileController = TextEditingController();
  late final wCompanyEmailController = TextEditingController();

  // Vehicles
  late final wVehiclesSectionController = ExpansionTileController();
  List<VehicleFormProvider> vehiclesInfo = [
    VehicleFormProvider(
      (ref) => VehicleFormController(
        vehicleType: null,
        registrationNoController: TextEditingController(),
        vehicleBrandController: TextEditingController(),
      ),
    )
  ];

  Either<String?, String?>? handleAddingNewVehicle() {
    if (vehiclesInfo.isNotEmpty) {
      final _vehicleFormEntry = ref.read(vehiclesInfo.last);
      if (_vehicleFormEntry.formKey.currentState?.validate() == false) {
        return null;
      }
      if (!_vehicleFormEntry.isValid) {
        return Either.failure(
          'Please fill current vehicle information first',
        );
      }
    }

    final _registrationNoController = TextEditingController();
    final _vehicleBrandController = TextEditingController();
    vehiclesInfo.add(
      VehicleFormProvider(
        (ref) {
          return VehicleFormController(
            registrationNoController: _registrationNoController,
            vehicleBrandController: _vehicleBrandController,
          );
        },
      ),
    );
    notifyListeners();

    return Either.success('Vehicle added successfully.');
  }

  bool get isValidVehicle => vehiclesInfo.every((element) {
        return ref.read(element).formKey.currentState?.validate() ?? false;
      });

  void handleRemovingVehicle(int index) {
    vehiclesInfo.removeAt(index);
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

  void openSectionsOnError() {
    for (var element in [
      nomineeSectionController,
      ecSectionController,
      cCompanySectionController,
      wCompanySectionController,
      wVehiclesSectionController,
    ]) {
      try {
        if (!element.isExpanded) element.expand();
        // ignore: empty_catches
      } catch (e) {}
    }
  }
  //-------------------------Form Field Props-------------------------//

  //-------------------------Init Edit-------------------------//
  void initEdit(User? user) {
    if (user == null) return;

    tenantType = user.profileType ?? TenantProfileType.privateIndividual;
    avatarImage = user.image;
    fullNameController.text = user.name ?? '';
    emailController.text = user.email ?? '';
    selectedCountryCode = CountryCode.tryFromDialCode(
      user.phone?.mobileCode ?? '',
    );
    mobileNumberController.text = user.phone?.mobileNo ?? '';
    address1Controller.text = user.userDetails?.addressInfo?.addressOne ?? '';
    address2Controller.text = user.userDetails?.addressInfo?.addressTwo ?? '';
    selectedCountry = user.userDetails?.addressInfo?.country;
    stateController.text = user.userDetails?.addressInfo?.state ?? '';
    postCodeController.text = user.userDetails?.addressInfo?.postalCode ?? '';
    cityController.text = user.userDetails?.addressInfo?.city ?? '';
    if (user.userDetails?.birthDate != null) {
      dateOfBirthController.text = CustomDateFormat('yyyy-MM-dd').format(
        user.userDetails!.birthDate!,
      );
    }
    selectedGender = user.userDetails?.gender;

    // Nominee
    nomineeNameController.text = user.userDetails?.nomineeInfo?.name ?? '';
    nomineeEmailController.text = user.userDetails?.nomineeInfo?.email ?? '';
    if (user.userDetails?.nomineeInfo?.phone?.mobileCode != null) {
      nomineeSelectedCountryCode = CountryCode.tryFromDialCode(
        user.userDetails?.nomineeInfo?.phone?.mobileCode ?? '',
      );
    }
    nomineeMobileNumberController.text =
        user.userDetails?.nomineeInfo?.phone?.mobileNo ?? '';

    // Emergency Contact
    ecSelectedRelation = user.userDetails?.emergencyContact?.relationWith;
    ecNameController.text = user.userDetails?.emergencyContact?.name ?? '';
    if (user.userDetails?.emergencyContact?.phone?.mobileCode != null) {
      ecSelectedCountryCode = CountryCode.tryFromDialCode(
        user.userDetails?.emergencyContact?.phone?.mobileCode ?? '',
      );
    }
    ecMobileNumberController.text =
        user.userDetails?.emergencyContact?.phone?.mobileNo ?? '';

    // Company Info
    cCompanyNameController.text =
        user.userDetails?.companyInfo?.companyName ?? '';
    cCompanySSMController.text =
        user.userDetails?.companyInfo?.companySsmNo ?? '';

    // Workplace
    wCompanyNameController.text =
        user.userDetails?.workplace?.companyName ?? '';
    wCompanyAddress1Controller.text =
        user.userDetails?.workplace?.addressOne ?? '';
    wCompanyAddress2Controller.text =
        user.userDetails?.workplace?.addressTwo ?? '';
    wSelectedCountry = user.userDetails?.workplace?.country;
    wCompanyStateController.text = user.userDetails?.workplace?.state ?? '';
    wCompanyPostalCodeController.text =
        user.userDetails?.workplace?.postalCode ?? '';
    wCompanyCityController.text = user.userDetails?.workplace?.city ?? '';
    wCompanyOfficePhoneController.text =
        user.userDetails?.workplace?.officePhone ?? '';
    if (user.userDetails?.workplace?.phone?.mobileCode != null) {
      wCSelectedCountryCode = CountryCode.tryFromDialCode(
        user.userDetails?.workplace?.phone?.mobileCode ?? '',
      );
    }
    wCompanyOfficeMobileController.text =
        user.userDetails?.workplace?.phone?.mobileNo ?? '';
    wCompanyEmailController.text = user.userDetails?.workplace?.email ?? '';

    // Vehicle
    if (user.userDetails?.vehiclesInfo?.isNotEmpty == true) {
      vehiclesInfo.clear();
      user.userDetails?.vehiclesInfo?.forEach((element) {
        vehiclesInfo.add(VehicleFormProvider(
          (ref) => VehicleFormController(
            vehicleType: element.type,
            registrationNoController: TextEditingController(
              text: element.regNo,
            ),
            vehicleBrandController: TextEditingController(
              text: element.brand,
            ),
          ),
        ));
      });
    }

    nidPassportIdController.text = user.userDetails?.mykadId ?? '';
    if (user.userDetails?.mykad != null) {
      nidPassportImages
        ..removeAt(0)
        ..insert(0, user.userDetails!.mykad!.frontImage);

      nidPassportImages
        ..removeAt(1)
        ..insert(1, user.userDetails!.mykad!.backImage);
    }
  }
  //-------------------------Init Edit-------------------------//

  Tenant getModUser({bool isLandlord = false}) {
    return Tenant(
      profileType: tenantType,
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
          postalCode: postCodeController.text,
          city: cityController.text,
        ),
        birthDate: DateTime.tryParse(dateOfBirthController.text),
        gender: selectedGender,
        nomineeInfo: EmergencyContact(
          name: nomineeNameController.text,
          email: nomineeEmailController.text,
          phone: Phone(
            mobileCode: nomineeSelectedCountryCode?.dialCode,
            mobileNo: nomineeMobileNumberController.text,
          ),
        ),
        emergencyContact: EmergencyContact(
          relationWith: ecSelectedRelation,
          name: ecNameController.text,
          phone: Phone(
            mobileCode: ecSelectedCountryCode?.dialCode,
            mobileNo: ecMobileNumberController.text,
          ),
        ),
        companyInfo: CompanyInfo(
          companyName: cCompanyNameController.text,
          companySsmNo: cCompanySSMController.text,
        ),
        workplace: Workplace(
          companyName: wCompanyNameController.text,
          addressOne: wCompanyAddress1Controller.text,
          addressTwo: wCompanyAddress2Controller.text,
          country: wSelectedCountry,
          state: wCompanyStateController.text,
          postalCode: wCompanyPostalCodeController.text,
          city: wCompanyCityController.text,
          officePhone: wCompanyOfficePhoneController.text,
          phone: Phone(
            mobileCode: wCSelectedCountryCode?.dialCode,
            mobileNo: wCompanyOfficeMobileController.text,
          ),
          email: wCompanyEmailController.text,
        ),
        vehiclesInfo: vehiclesInfo
            .map(ref.read)
            .where((vehicle) => vehicle.isValid)
            .map(
              (vehicle) => VehiclesInfo(
                type: vehicle.vehicleType,
                regNo: vehicle.registrationNoController.text,
                brand: vehicle.vehicleBrandController.text,
              ),
            )
            .toList(),
        mykadId: nidPassportIdController.text,
        mykad: Mykad(
          frontImage: nidPassportImages.first,
          backImage: nidPassportImages.last,
        ),
      ),
      password: isLandlord ? passwordController.text : null,
    );
  }
}

final tenantProfileFormFieldProvider = ChangeNotifierProvider.autoDispose(
  (ref) => TenantProfileFormFieldNotifier(ref),
);

class VehicleFormController extends ChangeNotifier {
  String? vehicleType;
  final TextEditingController registrationNoController;
  final TextEditingController vehicleBrandController;
  final formKey = GlobalKey<FormState>();

  VehicleFormController({
    this.vehicleType,
    required this.registrationNoController,
    required this.vehicleBrandController,
  });

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;

    return other is VehicleFormController &&
        other.vehicleType == vehicleType &&
        other.registrationNoController == registrationNoController &&
        other.vehicleBrandController == vehicleBrandController;
  }

  @override
  int get hashCode {
    return Object.hash(
      vehicleType,
      registrationNoController,
      vehicleBrandController,
    );
  }

  bool get isRequired {
    return registrationNoController.text.trim().isNotEmpty ||
        vehicleBrandController.text.trim().isNotEmpty ||
        vehicleType != null;
  }

  bool get isValid {
    return registrationNoController.text.trim().isNotEmpty &&
        vehicleBrandController.text.trim().isNotEmpty &&
        vehicleType != null;
  }
}

typedef VehicleFormProvider = ChangeNotifierProvider<VehicleFormController>;
