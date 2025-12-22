///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element

class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations({
    Map<String, Node>? overrides,
    PluralResolver? cardinalResolver,
    PluralResolver? ordinalResolver,
    TranslationMetadata<AppLocale, Translations>? meta,
  }) : assert(
         overrides == null,
         'Set "translation_overrides: true" in order to enable this feature.',
       ),
       $meta =
           meta ??
           TranslationMetadata(
             locale: AppLocale.en,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  Translations $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => Translations(meta: meta ?? this.$meta);

  // Translations
  late final TranslationsCommonEn common = TranslationsCommonEn._(_root);
  late final TranslationsExceptionsEn exceptions = TranslationsExceptionsEn._(
    _root,
  );
  late final TranslationsPromptEn prompt = TranslationsPromptEn._(_root);
  late final TranslationsFormEn form = TranslationsFormEn._(_root);
  late final TranslationsActionEn action = TranslationsActionEn._(_root);
  late final TranslationsPagesEn pages = TranslationsPagesEn._(_root);
  late final TranslationsEnumsEn enums = TranslationsEnumsEn._(_root);
}

// Path: common
class TranslationsCommonEn {
  TranslationsCommonEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get profile => 'Profile';
  String get language => 'Language';
  String get subscriptionPlan => 'Subscription Plan';
  String get contactUs => 'Contact Us';
  String get termsAndConditions => 'Terms & Conditions';
  String get aboutUs => 'About Us';
  String get logout => 'Logout';
  String get editProfile => 'Edit Profile';
  String get fullName => 'Full Name';
  String get email => 'Email';
  String get mobileNumber => 'Mobile Number';
  String get address => 'Address';
  String get postalCode => 'Postal Code';
  String get city => 'City';
  String get country => 'Country';
  String get state => 'State';
  String get password => 'Password';
  String get forgotPassword => 'Forgot password';
  String get tenant => 'Tenant';
  String get landlord => 'Landlord';
  String get cancelRenting => 'Cancel Renting';
  String get startDate => 'Start Date';
  String get endDate => 'End Date';
  String get fromDate => 'From Date';
  String get toDate => 'To Date';
  String get online => 'Online';
  String get bankList => 'Bank List';
  String get withdrawMethod => 'Withdraw Method';
  String get uploadPaymentReceipt => 'Upload Payment Receipt';
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Note: '),
      note('The payment require manual approve by the admin within'),
      const TextSpan(text: ' '),
      duraion('24~48 hours.'),
    ],
  );
  String get reviews => 'Reviews';
  String get description => 'Description';
  String get about => 'About';
  String get propertyTypes => 'Property Types';
  String get features => 'Features';
  String get floorPlans => 'Floor Plans';
  String get buildingDetails => 'Building Details';
  String get buildingName => 'Building Name';
  String get propertyAddress => 'Property Address';
  String get completionYear => 'Completion Year';
  String get lotNumber => 'Lot Number';
  String get residentialType => 'Residential Type';
  String get furnishings => 'Furnishings';
  String get floorRange => 'Floor Range';
  String get bedrooms => 'Bedrooms';
  String get bathrooms => 'Bathrooms';
  String get propertySize => 'Property Size';
  String get rentalPeriod => 'Rental Period';
  String get securityDeposit => 'Security Deposit';
  String get utilityBill => 'Utility Bill';
  String get facilities => 'Facilities';
  String get amenities => 'Amenities';
  String get expiringReason => 'Expiring Reason';
  String get tenantDetails => 'Tenant Details';
  String get typeOfTenant => 'Type of Tenant';
  String get tenantName => 'Tenant Name';
  String get nidPassport => 'NID/Passport';
  String get nidPassportId => '${_root.common.nidPassport} ID';
  String get tenantId => 'Tenant ID';
  String get dateOfBirth => 'Date of Birth';
  String get gender => 'Gender';
  String get nominee => 'Nominee';
  String get name => 'Name';
  String get optional => 'Optional';
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  late final TranslationsCommonNomineeMobileEn nomineeMobile =
      TranslationsCommonNomineeMobileEn._(_root);
  String get emergencyContact => 'Emergency Contact';
  String get relation => 'Relation';
  String get relationWith => '${_root.common.relation} With';
  String get relationWithYou => '${_root.common.relationWith} You';
  String get company => 'Company';
  String get companyName => '${_root.common.company} ${_root.common.name}';
  String get companySSMNo => '${_root.common.company} SSM No.';
  String get workplace => 'Workplace';
  String get officePhoneNo => 'Office Phone Number';
  String get officeMobileNo => 'Office ${_root.common.mobileNumber}';
  String get vehicle => 'Vehicle';
  late final TranslationsCommonVehiclesInfoEn vehiclesInfo =
      TranslationsCommonVehiclesInfoEn._(_root);
  String get vehiclesType => '${_root.common.vehicle} Type';
  late final TranslationsCommonVehicleRegistrationNoEn vehicleRegistrationNo =
      TranslationsCommonVehicleRegistrationNoEn._(_root);
  String get vehicleBrand => '${_root.common.vehicle} Brand';
  String get rentProperty => 'Rent Property';
  String get propertyDetails => 'Property Details';
  String get propertyId => 'Property ID';
  String get propertyType => 'Property Type';
  String get propertyName => 'Property Name';
  String get paymentDetails => 'Payment Details';
  String get monthlyRent => 'Monthly Rent';
  String get thisMonthPayment => 'This Month Payment';
  String get totalPaidRent => 'Total Paid Rent';
  String get dueRent => 'Due Rent';
  String get rentStartDate => 'Rent ${_root.common.startDate}';
  String get rentEndDate => 'Rent ${_root.common.endDate}';
  String get status => 'Status';
  String get rentAgreementPdf => 'Rent Agreement PDF';
  String get noFile => 'No File';
  String get tenantImageOp => 'Tenant Image ${_root.common.optional}';
  String get addNewVechicle => 'Add New Vehicles';
  String get uploadNidPassport => 'Upload NID/Passport';
  String get nidPassportUploadNote =>
      'Only file type image will be accepted. File limit up to 2.5 MB.';
  String get search => 'Search';
  String get sortBy => 'Sort By';
  String get subscription => 'Subscription';
  String get downloading => 'Downloading...';
  String get downloadSuccess => 'File downloaded successfully!';
  String get addPropertyBannerTitle => 'Looking To Rent Out Your Property?';
  String get application => 'Application';
  String get tenantHasPaidDeposit => 'Tenant has paid the deposit.';
  String get askProcessingRentApplication =>
      'Are you sure processing this request for rent property?';
  String get dateAndTime => 'Date & Time';
  String get applicationDetails => 'Application Details';
  String get depositStatus => 'Deposit Status';
  String get uploadRentAgreement => 'Upload Rent Agreement';
  String get uploadFilePDF => 'Upload File (PDF)';
  String get askSelectRentAgreement =>
      'Please select an agreement document file.';
  String get landlordRentAgreementPDF => 'Landlord Rent Agreement PDF';
  String get tenantRentAgreementPDF => 'Tenant Rent Agreement PDF';
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Note: '),
          note(
            'Only approve the application after tenant make a deposit payment.',
          ),
        ],
      );
  String get reasonOfRejection => 'Reason Of Rejection';
  String get youveRejectedThisApplication =>
      'You\'ve rejected this application';
  String get landlordDetails => 'Landlord Details';
  String get landlordName => 'Landlord Name';
  String get downloadRentAgreement => 'Download Rent Agreement';
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Accept '),
      toc('Terms & Conditions'),
    ],
  );
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Note: '),
      note(
        'Please download and read the agreement. Please send the signed agreement to landlord via WhatsApp or email.',
      ),
    ],
  );
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Note: '),
      note(
        'Landlord approves the application, when the tenant pays the security, utility, and one-month advance rental payment.',
      ),
    ],
  );
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Rent Agreement (PDF) '),
          complete('Complete Agreement'),
        ],
      );
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Note : '),
      note(
        'Landlord approves the application, when the tenant pays the security, utility, and one-month advance rental payment.',
      ),
    ],
  );
  String get whatsapp => 'Whatsapp';
  String get applicationList => 'Application List';
  String get viewDetails => 'View Details';
  String get searchHint => '${_root.common.search}...';
  String get home => 'Home';
  String get dashboard => 'Dashboard';
  String get tenants => 'Tenants';
  String get maintenance => 'Maintenance';
  String get maintenanceList => 'Maintenance List';
  String get maintenanceReport => 'Maintenance Report';
  String get labor => 'Labor';
  String get applications => 'Applications';
  String get rentInvitation => 'Rent Invitation';
  String get payment => 'Payment';
  String get rentPayment => 'Rent Payment';
  String get depositUtilityPayment => 'Deposit & Utility Payment';
  String get refundRequest => 'Refund Request';
  String get withdrawRequest => 'Withdraw Request';
  String get myProperty => 'My Property';
  String get myRent => 'My Rent';
  String get wishlist => 'Wishlist';
  String get properties => 'Properties';
  String get allProperties => 'All Properties';
  String get totalPropery => 'Total Property';
  String get occupied => 'Occupied';
  String get vacant => 'Vacant';
  String get accounting => 'Accounting';
  String get totalIncome => 'Total Income';
  String get totalExpense => 'Total Expense';
  String get currentBalance => 'Current Balance';
  String get totalWithdrawal => 'Total (Withdrawal)';
  String get totalProperties => 'Total Properties';
  String get totalTenant => 'Total Tenant';
  String get totalRentPaid => 'Total Rent Paid';
  String get totalRentDue => 'Total Rent Due';
  String get totalApplication => 'Total Application';
  String get pendingApplication => 'Pending Application';
  String get processingApplication => 'Processing Application';
  String get approveApplication => 'Approve Application';
  String get rejectApplication => 'Reject Application';
  String get maintenanceCost => 'Maintenance Cost';
  String get transactionSummary => 'Transaction Summary';
  String get maintenanceRequest => 'Maintenance Request';
  String get notifications => 'Notifications';
  String get myProperties => 'My Properties';
  String get recommendationProperties => 'Recommendation Properties';
  String get laborList => 'Labor List';
  String get addLabor => 'Add Labor';
  String get laborDetails => 'Labor Details';
  String get laborSalary => 'Labor Salary';
  String get editLabor => 'Edit Labor';
  String get addNewLabor => 'Add New Labor';
  String get enterAmount => 'Enter Amount';
  String get maintenanceDetails => 'Maintenance Details';
  String get laborName => 'Labor Name';
  String get comment => 'Comment';
  String get image => 'Image';
  String get complete => 'Complete';
  String get details => 'Details';
  String get title => 'Title';
  String get date => 'Date';
  String get reason => 'Reason';
  String get edit => 'Edit';
  String get property => 'Property';
  String get completeYourProfile => 'Complete Your Profile';
  String get profileImage => 'Profile Image';
  String get imagePickHint =>
      'Only JPEG & PNG Image with max size of 120x120 pixels.';
  String get invoiceId => 'Invoice ID';
  String get depositAmount => 'Deposit Amount';
  String get landlordPhone => 'Landlord Phone';
  String get rentalAdvance => 'Rental (Advance)';
  String get totalAmount => 'Total Amount';
  String get rentalAmount => 'Rental Amount';
  String get adminCharge => 'Admin Charge';
  String get editAccount => 'Edit Account';
  String get addNewAccount => 'Add New Account';
  String get transactionId => 'Transaction ID';
  String get transactionType => 'Transaction Type';
  String get requestDate => 'Request Date';
  String get amount => 'Amount';
  String get fee => 'Fee';
  String get paymentStatus => 'Payment Status';
  String get generatedTime => 'Generated Time';
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'This is a system generated repot of '),
      appName,
    ],
  );
  String get withdrawHistory => 'Withdraw History';
  String get history => 'History';
  String get withdrawAmount => 'Withdraw Amount';
  String get availableBalance => 'Available Balance';
  String get withdrawCharge => 'Withdraw Charge';
  String get paymentMethod => 'Payment Method';
  String get requestSendSuccess => 'Request sent successfully!';
  String get paymentReceiptSubmitSuccess =>
      'Payment receipt submitted successfully.';
  String get refundReason => 'Refund Reason';
  String get note => 'Note';
  String get refundReceiveSuccess => 'Refund received successfully.';
  String get downloadPaymentReceipt => 'Download Payment Receipt';
  String get invoice => 'Invoice';
  String get selectPropertyToSeeInvoice =>
      'Select property to see the invoice number...';
  String get bankAccName => 'Bank Account Name';
  String get bankName => 'Bank Name';
  String get bankAccNum => 'Bank Account Number';
  String get thankYou => 'Thank You!';
  String get basicInfo => 'Basic Information';
  String get descriptionPricing => 'Description & Pricing';
  String get contact => 'Contact';
  String get photos => 'Photos';
  String get successfullySubmitted => 'Successfully submitted!';
  String get editProperty => 'Edit Property';
  String get addNewProperty => 'Add New Property';
  String get propertyManageRequestSuccess =>
      'Your ad has been submitted for review.';
  String get postAnotherProperty => 'Post Another Property';
  String get browseYourProperty => 'Browse Your Property';
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Step '),
      step,
      const TextSpan(text: ' of '),
      totalSteps,
    ],
  );
  String get whatWouldYouLikeToPost => 'What Would you like to Post?';
  String get category => 'Category';
  String get invalidCategory => 'Invalid Category';
  String get unitNumber => 'Unit Number';
  String get sqft => 'sq.ft.';
  String get propertySizeMustBeGreaterThan0 =>
      'Property size should be greater than zero';
  String get whatAreTheFacility => 'What are the facilities?';
  String get whatAreTheAmenity => 'What are the amenities?';
  String get parkingLot => 'Parking Lot';
  String get houseType => 'House type';
  String get value => 'Value';
  String get unitLotSize => 'Unit / Lot Size';
  String get landSize => 'Land Size';
  String get acres => 'acre(s)';
  String get roomSize => 'Room size';
  String get askTenantPreference => 'What is your tenant preference';
  String get couple => 'Couple';
  String describeTheProperty({required String propertyType}) =>
      'Describe the ${propertyType}';
  String get adTitle => 'Ad Title';
  String get minimumRentalPeriod => 'Minimum Rental Period';
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  String get hideOrDisplayEmail => 'Hide or display email address';
  String thankYouForPostingProperty({required String appName}) =>
      'Thank you for posting on ${appName}!';
  String get propertyList => 'Property List';
  String get newInviteRent => 'New Invite Rent';
  String get rentAgreement => 'Rent Agreement';
  String get rentDetails => 'Rent Details';
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Note: '),
      note('Please wait for the tenant to accept the invitation.'),
    ],
  );
  String get rent => 'Rent';
  String get editTenant => 'Edit Tenant';
  String get addNewTenant => 'Add New Tenant';
  String get shareInstallLink => 'Share Install link';
  String get tenantList => 'Tenant List';
  String get editMaintenanceRequest => 'Edit Maintenance Request';
  String get addNewMaintenance => 'Add New Maintenance';
  String get landlordId => 'Landlord ID';
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Note '),
      note(
        'Your agreement is under review. Please wait until landlord apporves your rent.',
      ),
    ],
  );
  String get editReview => 'Edit Review';
  String get writeAReview => 'Write a review';
  String get selectRating => 'Select Rating';
  String get enterYourOpinion => 'Enter Your Opinion';
  String get askToEnterReviewMsg => 'Please enter a review message';
  String get pressBackAgainToExit => 'Press back again to exit.';
  String get selectPaymentMethod => 'Select Payment Method';
  String get filter => 'Filter';
  String get perMonth => '/1 Month';
  String searchHintWithAppName({required String appName}) =>
      'Search anything in ${appName}...';
}

// Path: exceptions
class TranslationsExceptionsEn {
  TranslationsExceptionsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get somethingWentWrong => 'Something went wrong, please try again';
  String get noNidPassport => 'No NID/Passport image provided.';
  String get noRentPropertyFound => 'No rent poperty found for this tenant.';
  String get noPropertyFoundWithKeyWord =>
      'No property found!\nPlease try with different keywords';
  String get noSubscriptionFoundRefreshPage =>
      'No subscription plan found!\nPlease refresh the page and try again.';
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Invalid ${dataType} info! Please refresh the page and try again.';
  String get invalidDownloadUrl => 'Invalid download url!';
  String failedToSaveFile({required String error}) =>
      'Failed to save the file! ${error}';
  String errorOpeningFile({required String error}) =>
      'Error opening the file! ${error}';
  String get noVehicleInfoProvided => 'No vehicle infomation provided.';
  String get yourApplicationRejected => 'Your Application has been rejected';
  late final TranslationsExceptionsNoApplicationFoundHintEn
  noApplicationFoundHint = TranslationsExceptionsNoApplicationFoundHintEn._(
    _root,
  );
  late final TranslationsExceptionsNoPropertyFoundHintEn noPropertyFoundHint =
      TranslationsExceptionsNoPropertyFoundHintEn._(_root);
  String get noImageProvided => 'No Image Provided';
  late final TranslationsExceptionsNoStatusMaintenantFoundEn
  noStatusMaintenantFound = TranslationsExceptionsNoStatusMaintenantFoundEn._(
    _root,
  );
  String get noDepositFound =>
      'No security deposit found!\nPlease can see the security deposits when available';
  String get noRentPaymentFound =>
      'No rent payment found!\nPlease can see the rent payments when available';
  String get transactionSummaryApiException =>
      'Failed to get transaction summary.';
  String get noWithdrawRequestFound =>
      'No request found!\nPlease try creating a withdraw request to see here.';
  String get withdrawRequestNotApproved =>
      'This withdraw request has not been approved!.';
  String get nonZeroError => 'Please enter a valid amount greater than zero.';
  String minAmountError({required String minValue}) =>
      'The amount must be at least ${minValue}.';
  String maxAmountError({required String maxValue}) =>
      'The amount must not exceed ${maxValue}.';
  String get selectPaymentMethodHint => 'Please select a payment method first.';
  late final TranslationsExceptionsNoStatusRefundReqFoundEn
  noStatusRefundReqFound = TranslationsExceptionsNoStatusRefundReqFoundEn._(
    _root,
  );
  late final TranslationsExceptionsRefundRequestHintEn refundRequestHint =
      TranslationsExceptionsRefundRequestHintEn._(_root);
  String oneToTenRequiredField({required String value}) =>
      'Please select the number of ${value}';
  String get invalidDateRange => 'Invalid date range.';
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} must be greater than zero.';
  late final TranslationsExceptionsEditPropertyEn editProperty =
      TranslationsExceptionsEditPropertyEn._(_root);
  late final TranslationsExceptionsRentInvitationEn rentInvitation =
      TranslationsExceptionsRentInvitationEn._(_root);
  String get notenantFoundList =>
      'No tenants!\nPlease try adding a tenant to see here.';
  String get noFeaturesProvided => 'No features provided.';
  String get noNotificationFound =>
      'No notification available.\nYou can see your notification here when available.';
}

// Path: prompt
class TranslationsPromptEn {
  TranslationsPromptEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPromptLogoutEn logout = TranslationsPromptLogoutEn._(
    _root,
  );
  late final TranslationsPromptApplicationEn application =
      TranslationsPromptApplicationEn._(_root);
  late final TranslationsPromptLaborEn labor = TranslationsPromptLaborEn._(
    _root,
  );
  late final TranslationsPromptMaintenanceRequestEn maintenanceRequest =
      TranslationsPromptMaintenanceRequestEn._(_root);
  late final TranslationsPromptWithdrawMethodEn withdrawMethod =
      TranslationsPromptWithdrawMethodEn._(_root);
  late final TranslationsPromptUnsavedChangesEn unsavedChanges =
      TranslationsPromptUnsavedChangesEn._(_root);
  late final TranslationsPromptPropertyEn property =
      TranslationsPromptPropertyEn._(_root);
  late final TranslationsPromptRentInvitationEn rentInvitation =
      TranslationsPromptRentInvitationEn._(_root);
  late final TranslationsPromptSessionExpiredEn sessionExpired =
      TranslationsPromptSessionExpiredEn._(_root);
  late final TranslationsPromptNoInternetEn noInternet =
      TranslationsPromptNoInternetEn._(_root);
  late final TranslationsPromptPermissionHandlerEn permissionHandler =
      TranslationsPromptPermissionHandlerEn._(_root);
  late final TranslationsPromptImagePickerEn imagePicker =
      TranslationsPromptImagePickerEn._(_root);
  late final TranslationsPromptVerificationDialogEn verificationDialog =
      TranslationsPromptVerificationDialogEn._(_root);
  late final TranslationsPromptNotificationEn notification =
      TranslationsPromptNotificationEn._(_root);
}

// Path: form
class TranslationsFormEn {
  TranslationsFormEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsFormFullNameEn fullName = TranslationsFormFullNameEn._(
    _root,
  );
  late final TranslationsFormEmailEn email = TranslationsFormEmailEn._(_root);
  late final TranslationsFormPasswordEn password = TranslationsFormPasswordEn._(
    _root,
  );
  late final TranslationsFormConfirmPasswordEn confirmPassword =
      TranslationsFormConfirmPasswordEn._(_root);
  late final TranslationsFormMobileNumberEn mobileNumber =
      TranslationsFormMobileNumberEn._(_root);
  late final TranslationsFormAddress1En address1 = TranslationsFormAddress1En._(
    _root,
  );
  late final TranslationsFormAddress2En address2 = TranslationsFormAddress2En._(
    _root,
  );
  late final TranslationsFormPostalCodeEn postalCode =
      TranslationsFormPostalCodeEn._(_root);
  late final TranslationsFormCityEn city = TranslationsFormCityEn._(_root);
  late final TranslationsFormStateEn state = TranslationsFormStateEn._(_root);
  late final TranslationsFormCountryEn country = TranslationsFormCountryEn._(
    _root,
  );
  late final TranslationsFormOtpEn otp = TranslationsFormOtpEn._(_root);
  late final TranslationsFormTitleEn title = TranslationsFormTitleEn._(_root);
  late final TranslationsFormDateEn date = TranslationsFormDateEn._(_root);
  late final TranslationsFormReasonEn reason = TranslationsFormReasonEn._(
    _root,
  );
  late final TranslationsFormWithdrawMethodEn withdrawMethod =
      TranslationsFormWithdrawMethodEn._(_root);
  late final TranslationsFormFileFieldEn fileField =
      TranslationsFormFileFieldEn._(_root);
  late final TranslationsFormNoteEn note = TranslationsFormNoteEn._(_root);
  late final TranslationsFormGenderEn gender = TranslationsFormGenderEn._(
    _root,
  );
  late final TranslationsFormAnyFieldEn anyField = TranslationsFormAnyFieldEn._(
    _root,
  );
  late final TranslationsFormAnyDropdownEn anyDropdown =
      TranslationsFormAnyDropdownEn._(_root);
}

// Path: action
class TranslationsActionEn {
  TranslationsActionEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get next => 'Next';
  String get getStarted => 'Get Started';
  String get skip => 'Skip';
  String get select => 'Select';
  String get save => 'Save';
  String get signIn => 'Sign In';
  String get signUp => 'Sign Up';
  String get kContinue => 'Continue';
  String get clearAll => 'Clear All';
  String get cancelRenting => _root.common.cancelRenting;
  String get send => 'Send';
  String get pay => 'Pay';
  String get remove => 'Remove';
  String get goBack => 'Go Back';
  String get buyNow => 'Buy Now';
  String get no => 'No';
  String get open => 'Open';
  String get addProperty => 'Add Property';
  String get process => 'Process';
  String get approve => 'Approve';
  String get reject => 'Reject';
  String get viewRent => 'View Rent';
  String get openNavigationMenu => 'Open navigation menu';
  String get seeAll => 'See All';
  String get update => 'Update';
  String get printTransaction => 'Print Transaction';
  String get payoutRequest => 'Payout Request';
  String get addNew => '+ Add New';
  String get sendRequest => 'Send Request';
  String get print => 'Print';
  String get requestForRefund => 'Request For Refund';
  String get previous => 'Previous';
  String get delete => 'Delete';
  String get applyProperty => 'Apply Property';
  String get viewApplication => 'View Application';
  String get inviteTenant => 'Invite Tenant';
  String get inviteRent => 'Invite Rent';
  String get cancel => 'Cancel';
  String get accept => 'Accept';
  String get submit => 'Submit';
  String get yes => 'Yes';
  String get okay => 'Okay';
  String get confirm => 'Confirm';
  String get apply => 'Apply';
  String get reset => 'Reset';
  String get retry => 'Retry';
  String get viewAll => 'View All';
}

// Path: pages
class TranslationsPagesEn {
  TranslationsPagesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesLanguageEn language =
      TranslationsPagesLanguageEn._(_root);
  late final TranslationsPagesOnboardEn onboard = TranslationsPagesOnboardEn._(
    _root,
  );
  late final TranslationsPagesSignInEn signIn = TranslationsPagesSignInEn._(
    _root,
  );
  late final TranslationsPagesForgotPasswordEn forgotPassword =
      TranslationsPagesForgotPasswordEn._(_root);
  late final TranslationsPagesOtpVerificationEn otpVerification =
      TranslationsPagesOtpVerificationEn._(_root);
  late final TranslationsPagesResetPasswordEn resetPassword =
      TranslationsPagesResetPasswordEn._(_root);
  late final TranslationsPagesSignUpEn signUp = TranslationsPagesSignUpEn._(
    _root,
  );
  late final TranslationsPagesWelcomeEn welcome = TranslationsPagesWelcomeEn._(
    _root,
  );
  late final TranslationsPagesAboutUsEn aboutUs = TranslationsPagesAboutUsEn._(
    _root,
  );
  late final TranslationsPagesTermsAndConditionsEn termsAndConditions =
      TranslationsPagesTermsAndConditionsEn._(_root);
  late final TranslationsPagesNotificationListEn notificationList =
      TranslationsPagesNotificationListEn._(_root);
  late final TranslationsPagesContactUsEn contactUs =
      TranslationsPagesContactUsEn._(_root);
  late final TranslationsPagesCancelRentingEn cancelRenting =
      TranslationsPagesCancelRentingEn._(_root);
  late final TranslationsPagesInvoiceDetailsEn invoiceDetails =
      TranslationsPagesInvoiceDetailsEn._(_root);
  late final TranslationsPagesOfflinePaymentEn offlinePayment =
      TranslationsPagesOfflinePaymentEn._(_root);
  late final TranslationsPagesPaymentStatusEn paymentStatus =
      TranslationsPagesPaymentStatusEn._(_root);
  late final TranslationsPagesPropertyDetailsEn propertyDetails =
      TranslationsPagesPropertyDetailsEn._(_root);
  late final TranslationsPagesSearchEn search = TranslationsPagesSearchEn._(
    _root,
  );
  late final TranslationsPagesSubscriptionPlanEn subscriptionPlan =
      TranslationsPagesSubscriptionPlanEn._(_root);
  late final TranslationsPagesLandlordMaintenanceReportEn
  landlordMaintenanceReport = TranslationsPagesLandlordMaintenanceReportEn._(
    _root,
  );
}

// Path: enums
class TranslationsEnumsEn {
  TranslationsEnumsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsEnumsPropertyStatusEn propertyStatus =
      TranslationsEnumsPropertyStatusEn._(_root);
  late final TranslationsEnumsPropertyTypeEn propertyType =
      TranslationsEnumsPropertyTypeEn._(_root);
  late final TranslationsEnumsApplicationStatusEn applicationStatus =
      TranslationsEnumsApplicationStatusEn._(_root);
  late final TranslationsEnumsMyRentStatusEn myRentStatus =
      TranslationsEnumsMyRentStatusEn._(_root);
  late final TranslationsEnumsMaintenanceStatusEn maintenanceStatus =
      TranslationsEnumsMaintenanceStatusEn._(_root);
  late final TranslationsEnumsTenantProfileTypeEn tenantProfileType =
      TranslationsEnumsTenantProfileTypeEn._(_root);
  late final TranslationsEnumsTenantTypeEn tenantType =
      TranslationsEnumsTenantTypeEn._(_root);
  late final TranslationsEnumsPaymentStatusEn paymentStatus =
      TranslationsEnumsPaymentStatusEn._(_root);
  late final TranslationsEnumsPaymentOptionsEn paymentOptions =
      TranslationsEnumsPaymentOptionsEn._(_root);
  late final TranslationsEnumsPaymentTypeEn paymentType =
      TranslationsEnumsPaymentTypeEn._(_root);
  late final TranslationsEnumsGenderEn gender = TranslationsEnumsGenderEn._(
    _root,
  );
  late final TranslationsEnumsEcRelationEn ecRelation =
      TranslationsEnumsEcRelationEn._(_root);
  late final TranslationsEnumsVehicleTypeEn vehicleType =
      TranslationsEnumsVehicleTypeEn._(_root);
  late final TranslationsEnumsSortByEn sortBy = TranslationsEnumsSortByEn._(
    _root,
  );
  late final TranslationsEnumsResidentialTypeEn residentialType =
      TranslationsEnumsResidentialTypeEn._(_root);
  late final TranslationsEnumsFloorRangeEn floorRange =
      TranslationsEnumsFloorRangeEn._(_root);
  late final TranslationsEnumsFurnishingsEn furnishings =
      TranslationsEnumsFurnishingsEn._(_root);
  late final TranslationsEnumsCommercialPropertyTypeEn commercialPropertyType =
      TranslationsEnumsCommercialPropertyTypeEn._(_root);
  late final TranslationsEnumsLandPropertyTypeEn landPropertyType =
      TranslationsEnumsLandPropertyTypeEn._(_root);
  late final TranslationsEnumsResidentPropertyTypeEn residentPropertyType =
      TranslationsEnumsResidentPropertyTypeEn._(_root);
  late final TranslationsEnumsMinimumRentalPeriodEn minimumRentalPeriod =
      TranslationsEnumsMinimumRentalPeriodEn._(_root);
  late final TranslationsEnumsDropdownDateFilterEn dropdownDateFilter =
      TranslationsEnumsDropdownDateFilterEn._(_root);
}

// Path: common.nomineeMobile
class TranslationsCommonNomineeMobileEn {
  TranslationsCommonNomineeMobileEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get short => '${_root.common.nominee} Mo. No.';
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class TranslationsCommonVehiclesInfoEn {
  TranslationsCommonVehiclesInfoEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get plain => 'Vehicles Information';
  String get optional => 'Vehicles Information (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class TranslationsCommonVehicleRegistrationNoEn {
  TranslationsCommonVehicleRegistrationNoEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get normal => 'Vehicle Registration No.';
  String get short => 'Registration No.';
  String get alt => 'Plate No.';
}

// Path: exceptions.noApplicationFoundHint
class TranslationsExceptionsNoApplicationFoundHintEn {
  TranslationsExceptionsNoApplicationFoundHintEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String template({required String subject}) =>
      'No applicaiton found!\n${subject} will be displayed here when available.';
  late final TranslationsExceptionsNoApplicationFoundHintSubjectsEn subjects =
      TranslationsExceptionsNoApplicationFoundHintSubjectsEn._(_root);
}

// Path: exceptions.noPropertyFoundHint
class TranslationsExceptionsNoPropertyFoundHintEn {
  TranslationsExceptionsNoPropertyFoundHintEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get landlordHome =>
      'No property found!\nPlease try adding a property to see here.';
  String get tenantRecommended =>
      'No Recommended Properties found\nPlease try again later.';
  String get tenantAllProperty =>
      'Properties not available\nPlease try again later.';
}

// Path: exceptions.noStatusMaintenantFound
class TranslationsExceptionsNoStatusMaintenantFoundEn {
  TranslationsExceptionsNoStatusMaintenantFoundEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String landlord({required Object status}) =>
      'No ${status} maintenance found.';
  String get tenant =>
      'No maintenance found! You can create maintenance request to see that here.';
}

// Path: exceptions.noStatusRefundReqFound
class TranslationsExceptionsNoStatusRefundReqFoundEn {
  TranslationsExceptionsNoStatusRefundReqFoundEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String landlord({required Object status}) =>
      'No ${status} refund request found!\nYou can see refund request here when available.';
  String get tenant =>
      'No refund request found!\nYou can create refund request to see that here.';
}

// Path: exceptions.refundRequestHint
class TranslationsExceptionsRefundRequestHintEn {
  TranslationsExceptionsRefundRequestHintEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get inTenantList =>
      'Tenant will approve the refund when he got the money back';
  String get tenantReqSuccess =>
      'We will review the Refund request & approve it within 24 hours.';
}

// Path: exceptions.editProperty
class TranslationsExceptionsEditPropertyEn {
  TranslationsExceptionsEditPropertyEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get rentalChange =>
      'Rental property is changing. It must be only valid (effective) for the next month\'s rental payment.';
  String get deleteOnRent =>
      'Your property is already rented by tenant. Cannot delete it until remove the tenant first';
  String get alreayRented =>
      'This property is rented already. Please try again later.\nOr you can contact the landlord for more information.';
}

// Path: exceptions.rentInvitation
class TranslationsExceptionsRentInvitationEn {
  TranslationsExceptionsRentInvitationEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get landlordNoRentInvitation =>
      'No rent invitation found!\nPlease try creating a rent invitation to see here.';
  String get tenantNoRentInvitation =>
      'No rent invitation found!\nYou can see rent invitation here when available.';
}

// Path: prompt.logout
class TranslationsPromptLogoutEn {
  TranslationsPromptLogoutEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => _root.common.logout;
  String get message => 'Are you sure to logout?';
}

// Path: prompt.application
class TranslationsPromptApplicationEn {
  TranslationsPromptApplicationEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get rejectTitle => 'Why are you rejecting this application?';
  late final TranslationsPromptApplicationApplicationSentEn applicationSent =
      TranslationsPromptApplicationApplicationSentEn._(_root);
}

// Path: prompt.labor
class TranslationsPromptLaborEn {
  TranslationsPromptLaborEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPromptLaborDeleteEn delete =
      TranslationsPromptLaborDeleteEn._(_root);
}

// Path: prompt.maintenanceRequest
class TranslationsPromptMaintenanceRequestEn {
  TranslationsPromptMaintenanceRequestEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get rejectTitle => 'Why this request being rejected?';
  String get processTitle =>
      'Are you sure Processing this Maintenance request?';
  String get completeTitle => 'Work completed?';
}

// Path: prompt.withdrawMethod
class TranslationsPromptWithdrawMethodEn {
  TranslationsPromptWithdrawMethodEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get deleteTitle => 'Delete Withdraw Method?';
  String get deleteDescription =>
      'Are you sure to delete this withdraw method?';
}

// Path: prompt.unsavedChanges
class TranslationsPromptUnsavedChangesEn {
  TranslationsPromptUnsavedChangesEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Are you sure to go back?';
  String get message => 'Fields that are changed will not be saved!';
}

// Path: prompt.property
class TranslationsPromptPropertyEn {
  TranslationsPromptPropertyEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPromptPropertyDeleteEn delete =
      TranslationsPromptPropertyDeleteEn._(_root);
}

// Path: prompt.rentInvitation
class TranslationsPromptRentInvitationEn {
  TranslationsPromptRentInvitationEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPromptRentInvitationLandlordApproveEn landlordApprove =
      TranslationsPromptRentInvitationLandlordApproveEn._(_root);
  late final TranslationsPromptRentInvitationTenantAcceptEn tenantAccept =
      TranslationsPromptRentInvitationTenantAcceptEn._(_root);
}

// Path: prompt.sessionExpired
class TranslationsPromptSessionExpiredEn {
  TranslationsPromptSessionExpiredEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Session expired';
  String get message => 'Your session has expired. Please sign in again';
  String get action => 'Sign In';
}

// Path: prompt.noInternet
class TranslationsPromptNoInternetEn {
  TranslationsPromptNoInternetEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'No Internet Connection';
  String get message =>
      'Please check your Wi-Fi mobile network connection and try again';
  String get action => 'Try Again';
}

// Path: prompt.permissionHandler
class TranslationsPromptPermissionHandlerEn {
  TranslationsPromptPermissionHandlerEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Permission required!';
  String get message =>
      'You need to grant permissions in the app settings. Would you like to open the settings now?';
}

// Path: prompt.imagePicker
class TranslationsPromptImagePickerEn {
  TranslationsPromptImagePickerEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Select Option';
  String get gallery => 'Gallery';
  String get camera => 'Camera';
}

// Path: prompt.verificationDialog
class TranslationsPromptVerificationDialogEn {
  TranslationsPromptVerificationDialogEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Verify Your Email';
  String get message => 'We have sent a verification code email';
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} to ${email}';
}

// Path: prompt.notification
class TranslationsPromptNotificationEn {
  TranslationsPromptNotificationEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get clearTitle => 'Clear notificaions?';
  String get clearMessage => 'Are you sure to clear all notifications?';
}

// Path: form.fullName
class TranslationsFormFullNameEn {
  TranslationsFormFullNameEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.fullName;
  String get hint => 'Enter ${_root.common.fullName}';
  late final TranslationsFormFullNameErrorsEn errors =
      TranslationsFormFullNameErrorsEn._(_root);
}

// Path: form.email
class TranslationsFormEmailEn {
  TranslationsFormEmailEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.email;
  String get hint => 'Enter your ${_root.common.email}';
  late final TranslationsFormEmailErrorsEn errors =
      TranslationsFormEmailErrorsEn._(_root);
}

// Path: form.password
class TranslationsFormPasswordEn {
  TranslationsFormPasswordEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.password;
  String get hint => '* * * * * * * *';
  late final TranslationsFormPasswordErrorsEn errors =
      TranslationsFormPasswordErrorsEn._(_root);
}

// Path: form.confirmPassword
class TranslationsFormConfirmPasswordEn {
  TranslationsFormConfirmPasswordEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => 'Confirm ${_root.common.password}';
  String get hint => '* * * * * * * *';
  late final TranslationsFormConfirmPasswordErrorsEn errors =
      TranslationsFormConfirmPasswordErrorsEn._(_root);
}

// Path: form.mobileNumber
class TranslationsFormMobileNumberEn {
  TranslationsFormMobileNumberEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.mobileNumber;
  String get hint => '(+60) 555-0123';
  late final TranslationsFormMobileNumberErrorsEn errors =
      TranslationsFormMobileNumberErrorsEn._(_root);
}

// Path: form.address1
class TranslationsFormAddress1En {
  TranslationsFormAddress1En._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => '${_root.common.address} 1';
  String get hint => 'House number and street name';
  late final TranslationsFormAddress1ErrorsEn errors =
      TranslationsFormAddress1ErrorsEn._(_root);
}

// Path: form.address2
class TranslationsFormAddress2En {
  TranslationsFormAddress2En._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => '${_root.common.address} 2';
  String get hint => 'Apartment,suite,unit,etc';
  late final TranslationsFormAddress2ErrorsEn errors =
      TranslationsFormAddress2ErrorsEn._(_root);
}

// Path: form.postalCode
class TranslationsFormPostalCodeEn {
  TranslationsFormPostalCodeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.postalCode;
  String get hint => 'Enter ${_root.common.postalCode}';
  late final TranslationsFormPostalCodeErrorsEn errors =
      TranslationsFormPostalCodeErrorsEn._(_root);
}

// Path: form.city
class TranslationsFormCityEn {
  TranslationsFormCityEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.city;
  String get hint => 'Enter ${_root.common.city} name.';
  late final TranslationsFormCityErrorsEn errors =
      TranslationsFormCityErrorsEn._(_root);
}

// Path: form.state
class TranslationsFormStateEn {
  TranslationsFormStateEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.state;
  String get hint => 'Enter ${_root.common.state} name.';
  late final TranslationsFormStateErrorsEn errors =
      TranslationsFormStateErrorsEn._(_root);
}

// Path: form.country
class TranslationsFormCountryEn {
  TranslationsFormCountryEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.country;
  String get hint => 'Select ${_root.common.country}.';
  late final TranslationsFormCountryErrorsEn errors =
      TranslationsFormCountryErrorsEn._(_root);
}

// Path: form.otp
class TranslationsFormOtpEn {
  TranslationsFormOtpEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsFormOtpErrorsEn errors = TranslationsFormOtpErrorsEn._(
    _root,
  );
}

// Path: form.title
class TranslationsFormTitleEn {
  TranslationsFormTitleEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => 'Title';
  String get hint => 'Enter title';
  late final TranslationsFormTitleErrorsEn errors =
      TranslationsFormTitleErrorsEn._(_root);
}

// Path: form.date
class TranslationsFormDateEn {
  TranslationsFormDateEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String label({required String label}) => '${label}';
  String hint({required String label}) =>
      'Select ${_root.form.date.label(label: label)}';
  late final TranslationsFormDateErrorsEn errors =
      TranslationsFormDateErrorsEn._(_root);
}

// Path: form.reason
class TranslationsFormReasonEn {
  TranslationsFormReasonEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => 'Reason';
  String get hint => 'Enter reason';
  late final TranslationsFormReasonErrorsEn errors =
      TranslationsFormReasonErrorsEn._(_root);
}

// Path: form.withdrawMethod
class TranslationsFormWithdrawMethodEn {
  TranslationsFormWithdrawMethodEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.withdrawMethod;
  String get hint => 'Select ${_root.common.withdrawMethod}';
  late final TranslationsFormWithdrawMethodErrorsEn errors =
      TranslationsFormWithdrawMethodErrorsEn._(_root);
}

// Path: form.fileField
class TranslationsFormFileFieldEn {
  TranslationsFormFileFieldEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String label({required String label}) => '${label}';
  String hint({required String label}) => 'Upload ${label}';
  late final TranslationsFormFileFieldErrorsEn errors =
      TranslationsFormFileFieldErrorsEn._(_root);
}

// Path: form.note
class TranslationsFormNoteEn {
  TranslationsFormNoteEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String label({required String note}) => '${note}';
  String hint({required String note}) =>
      'Enter ${_root.form.note.label(note: note)}';
  late final TranslationsFormNoteErrorsEn errors =
      TranslationsFormNoteErrorsEn._(_root);
}

// Path: form.gender
class TranslationsFormGenderEn {
  TranslationsFormGenderEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => _root.common.gender;
  String get hint => 'Select ${_root.common.gender}';
  late final TranslationsFormGenderErrorsEn errors =
      TranslationsFormGenderErrorsEn._(_root);
}

// Path: form.anyField
class TranslationsFormAnyFieldEn {
  TranslationsFormAnyFieldEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String label({required String label}) => '${label}';
  String hint({required String label}) =>
      'Enter ${_root.form.anyField.label(label: label)}';
  late final TranslationsFormAnyFieldErrorsEn errors =
      TranslationsFormAnyFieldErrorsEn._(_root);
}

// Path: form.anyDropdown
class TranslationsFormAnyDropdownEn {
  TranslationsFormAnyDropdownEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String label({required String label}) => '${label}';
  String hint({required String label}) =>
      'Select ${_root.form.anyDropdown.label(label: label)}';
  late final TranslationsFormAnyDropdownErrorsEn errors =
      TranslationsFormAnyDropdownErrorsEn._(_root);
}

// Path: pages.language
class TranslationsPagesLanguageEn {
  TranslationsPagesLanguageEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class TranslationsPagesOnboardEn {
  TranslationsPagesOnboardEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesOnboardOnboardDataEn onboardData =
      TranslationsPagesOnboardOnboardDataEn._(_root);
}

// Path: pages.signIn
class TranslationsPagesSignInEn {
  TranslationsPagesSignInEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Welcome Back';
  String get subtitle => 'Sign In now to begin an amazing journey.';
  late final TranslationsPagesSignInExtraEn extra =
      TranslationsPagesSignInExtraEn._(_root);
}

// Path: pages.forgotPassword
class TranslationsPagesForgotPasswordEn {
  TranslationsPagesForgotPasswordEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Forgot password';
  String get subtitle => 'Enter your email Address to recover your password.';
}

// Path: pages.otpVerification
class TranslationsPagesOtpVerificationEn {
  TranslationsPagesOtpVerificationEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Verification';
  String subtitle({required String email}) =>
      '4-digits pin has been sent to your email address. ${email}';
  late final TranslationsPagesOtpVerificationExtraEn extra =
      TranslationsPagesOtpVerificationExtraEn._(_root);
}

// Path: pages.resetPassword
class TranslationsPagesResetPasswordEn {
  TranslationsPagesResetPasswordEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Reset password';
  String get subtitle =>
      'Reset your password to recovery and log in your account';
  late final TranslationsPagesResetPasswordExtraEn extra =
      TranslationsPagesResetPasswordExtraEn._(_root);
}

// Path: pages.signUp
class TranslationsPagesSignUpEn {
  TranslationsPagesSignUpEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Create An Account';
  String get subtitle => 'Sign Up now to begin an amazing journey';
  late final TranslationsPagesSignUpExtraEn extra =
      TranslationsPagesSignUpExtraEn._(_root);
}

// Path: pages.welcome
class TranslationsPagesWelcomeEn {
  TranslationsPagesWelcomeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Who are you?';
  String get subtitle => 'Please select the option below.';
  late final TranslationsPagesWelcomeExtraEn extra =
      TranslationsPagesWelcomeExtraEn._(_root);
}

// Path: pages.aboutUs
class TranslationsPagesAboutUsEn {
  TranslationsPagesAboutUsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class TranslationsPagesTermsAndConditionsEn {
  TranslationsPagesTermsAndConditionsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class TranslationsPagesNotificationListEn {
  TranslationsPagesNotificationListEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => 'Notifications';
}

// Path: pages.contactUs
class TranslationsPagesContactUsEn {
  TranslationsPagesContactUsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => _root.common.contactUs;
  late final TranslationsPagesContactUsExtraEn extra =
      TranslationsPagesContactUsExtraEn._(_root);
}

// Path: pages.cancelRenting
class TranslationsPagesCancelRentingEn {
  TranslationsPagesCancelRentingEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => _root.common.cancelRenting;
  String get title => 'Why are you ${_root.common.cancelRenting}?';
  late final TranslationsPagesCancelRentingFormEn form =
      TranslationsPagesCancelRentingFormEn._(_root);
}

// Path: pages.invoiceDetails
class TranslationsPagesInvoiceDetailsEn {
  TranslationsPagesInvoiceDetailsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class TranslationsPagesOfflinePaymentEn {
  TranslationsPagesOfflinePaymentEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => 'Offline Payment';
  late final TranslationsPagesOfflinePaymentFormEn form =
      TranslationsPagesOfflinePaymentFormEn._(_root);
  late final TranslationsPagesOfflinePaymentExtraEn extra =
      TranslationsPagesOfflinePaymentExtraEn._(_root);
}

// Path: pages.paymentStatus
class TranslationsPagesPaymentStatusEn {
  TranslationsPagesPaymentStatusEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesPaymentStatusSuccessEn success =
      TranslationsPagesPaymentStatusSuccessEn._(_root);
  late final TranslationsPagesPaymentStatusFailEn fail =
      TranslationsPagesPaymentStatusFailEn._(_root);
}

// Path: pages.propertyDetails
class TranslationsPagesPropertyDetailsEn {
  TranslationsPagesPropertyDetailsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesPropertyDetailsExtraEn extra =
      TranslationsPagesPropertyDetailsExtraEn._(_root);
}

// Path: pages.search
class TranslationsPagesSearchEn {
  TranslationsPagesSearchEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => 'Search';
  late final TranslationsPagesSearchExtraEn extra =
      TranslationsPagesSearchExtraEn._(_root);
}

// Path: pages.subscriptionPlan
class TranslationsPagesSubscriptionPlanEn {
  TranslationsPagesSubscriptionPlanEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get appbarTitle => 'Choose your Plan';
  late final TranslationsPagesSubscriptionPlanExtraEn extra =
      TranslationsPagesSubscriptionPlanExtraEn._(_root);
}

// Path: pages.landlordMaintenanceReport
class TranslationsPagesLandlordMaintenanceReportEn {
  TranslationsPagesLandlordMaintenanceReportEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Total Maintenance Cost: '),
      amount,
    ],
  );
  String get maintenancePending =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.pending}';
  String get maintenanceProcessing =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.processing}';
  String get maintenanceCompleted =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.completed}';
  String get maintenanceRejected =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.rejected}';
}

// Path: enums.propertyStatus
class TranslationsEnumsPropertyStatusEn {
  TranslationsEnumsPropertyStatusEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get allProperty => 'All Property';
  String get pending => 'Pending';
  String get active => 'Active';
  String get inactive => 'Inactive';
  String get rejected => 'Rejected';
}

// Path: enums.propertyType
class TranslationsEnumsPropertyTypeEn {
  TranslationsEnumsPropertyTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get apartmentCondominium => 'Apartment/Condominium';
  String get house => 'House';
  String get commercialProperty => 'Commercial Property';
  String get land => 'Land';
  String get room => 'Room';
}

// Path: enums.applicationStatus
class TranslationsEnumsApplicationStatusEn {
  TranslationsEnumsApplicationStatusEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get all => 'All';
  String get pending => 'Pending';
  String get processing => 'Processing';
  String get approved => 'Approved';
  String get rejected => 'Rejected';
}

// Path: enums.myRentStatus
class TranslationsEnumsMyRentStatusEn {
  TranslationsEnumsMyRentStatusEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get pending => 'Pending';
  String get processing => 'Processing';
  String get active => 'Active';
  String get expired => 'Expired';
  String get cancelled => 'Canceled';
}

// Path: enums.maintenanceStatus
class TranslationsEnumsMaintenanceStatusEn {
  TranslationsEnumsMaintenanceStatusEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get pending => 'Pending';
  String get processing => 'Processing';
  String get rejected => 'Rejected';
  String get completed => 'Completed';
}

// Path: enums.tenantProfileType
class TranslationsEnumsTenantProfileTypeEn {
  TranslationsEnumsTenantProfileTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get privateIndividual => 'Private (Individual)';
  String get company => 'Company';
}

// Path: enums.tenantType
class TranslationsEnumsTenantTypeEn {
  TranslationsEnumsTenantTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get newTenant => 'New Tenant';
  String get activeTenant => 'Active Tenant';
  String get expiredTenant => 'Expired Tenant';
}

// Path: enums.paymentStatus
class TranslationsEnumsPaymentStatusEn {
  TranslationsEnumsPaymentStatusEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get all => 'All';
  String get pending => 'Pending';
  String get paid => 'Paid';
  String get unpaid => 'Unpaid';
  String get rejected => 'Rejected';
  String get refund => 'Refund';
}

// Path: enums.paymentOptions
class TranslationsEnumsPaymentOptionsEn {
  TranslationsEnumsPaymentOptionsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get onlinePayment => 'Online Payment';
  String get offlinePayment => 'Offline Payment';
}

// Path: enums.paymentType
class TranslationsEnumsPaymentTypeEn {
  TranslationsEnumsPaymentTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get securityDeposit => 'Security Deposit';
  String get rentPayment => 'Rent Payment';
  String get subscription => 'Subscription';
}

// Path: enums.gender
class TranslationsEnumsGenderEn {
  TranslationsEnumsGenderEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get male => 'Male';
  String get female => 'Female';
  String get other => 'Other';
}

// Path: enums.ecRelation
class TranslationsEnumsEcRelationEn {
  TranslationsEnumsEcRelationEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get wife => 'Wife';
  String get parent => 'Parent';
  String get friend => 'Friend';
  String get brother => 'Brother';
  String get sister => 'Sister';
  String get child => 'Child';
}

// Path: enums.vehicleType
class TranslationsEnumsVehicleTypeEn {
  TranslationsEnumsVehicleTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get car => 'Car';
  String get motorcycles => 'Motorcycles';
  String get lorry => 'Lorry';
}

// Path: enums.sortBy
class TranslationsEnumsSortByEn {
  TranslationsEnumsSortByEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get lowToHigh => 'Low to High';
  String get highToLow => 'High to Low';
}

// Path: enums.residentialType
class TranslationsEnumsResidentialTypeEn {
  TranslationsEnumsResidentialTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get flat => 'Flat';
  String get apartment => 'Apartment';
  String get condominium => 'Condominium';
  String get serviceResidence => 'Service Residence';
  String get studio => 'Studio';
  String get duplex => 'Duplex';
  String get townhouseCondo => 'Townhouse Condo';
  String get others => 'Others';
}

// Path: enums.floorRange
class TranslationsEnumsFloorRangeEn {
  TranslationsEnumsFloorRangeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get high => 'High';
  String get medium => 'Medium';
  String get low => 'Low';
}

// Path: enums.furnishings
class TranslationsEnumsFurnishingsEn {
  TranslationsEnumsFurnishingsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get fullyFurnished => 'Fully Furnished';
  String get partiallyFurnished => 'Partially Furnished';
  String get notFurnished => 'Not Furnished';
}

// Path: enums.commercialPropertyType
class TranslationsEnumsCommercialPropertyTypeEn {
  TranslationsEnumsCommercialPropertyTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get officeSpace => 'Office space';
  String get retailSpace => 'Retail space';
  String get shopLot => 'Shop lot';
  String get warehouseFactory => 'Warehouse / Factory';
  String get hotelResort => 'Hotel / Resort';
  String get sofo => 'Sofo';
  String get soho => 'Soho';
  String get sovo => 'Sovo';
  String get others => 'Others';
}

// Path: enums.landPropertyType
class TranslationsEnumsLandPropertyTypeEn {
  TranslationsEnumsLandPropertyTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get residential => 'Residential';
  String get industrial => 'Industrial';
  String get agricultural => 'Agricultural';
  String get commercial => 'Commercial';
  String get mixedDevelopment => 'Mixed Development';
  String get others => 'Others';
}

// Path: enums.residentPropertyType
class TranslationsEnumsResidentPropertyTypeEn {
  TranslationsEnumsResidentPropertyTypeEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get condo => 'Condo / Services residence / Penthouse';
  String get apartment => 'Apartment / Flat';
  String get house => 'Houses';
  String get shoplot => 'Shoplot';
  String get sharing => 'Sharing a house / Flat';
  String get others => 'Others';
}

// Path: enums.minimumRentalPeriod
class TranslationsEnumsMinimumRentalPeriodEn {
  TranslationsEnumsMinimumRentalPeriodEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get sixMonths => '6 Months';
  String get oneYear => '1 Year';
  String get oneAndHalfYears => '1.5 Years';
  String get twoYears => '2 Years';
  String get twoAndHalfYears => '2.5 Years';
}

// Path: enums.dropdownDateFilter
class TranslationsEnumsDropdownDateFilterEn {
  TranslationsEnumsDropdownDateFilterEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get daily => 'Daily';
  String get weekly => 'Weekly';
  String get monthly => 'Monthly';
  String get yearly => 'Yearly';
  String get custom => 'Custom';
}

// Path: exceptions.noApplicationFoundHint.subjects
class TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  TranslationsExceptionsNoApplicationFoundHintSubjectsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get tenant => 'Your application';
  String get landlord => 'Tenant\'s application';
}

// Path: prompt.application.applicationSent
class TranslationsPromptApplicationApplicationSentEn {
  TranslationsPromptApplicationApplicationSentEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get successfully => 'Application sent successfully!';
  String get sucessDescription =>
      'You can see this application in your application list';
}

// Path: prompt.labor.delete
class TranslationsPromptLaborDeleteEn {
  TranslationsPromptLaborDeleteEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Delete Labor?';
  String get description => 'Are you sure to delete this labor?';
}

// Path: prompt.property.delete
class TranslationsPromptPropertyDeleteEn {
  TranslationsPromptPropertyDeleteEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Delete Property?';
  String get message => 'Are you sure to delete this property?';
}

// Path: prompt.rentInvitation.landlordApprove
class TranslationsPromptRentInvitationLandlordApproveEn {
  TranslationsPromptRentInvitationLandlordApproveEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Are you sure to approve this rent?';
  String get description =>
      'Make sure you\'ve reviewed the agreement signed by the tenant.';
}

// Path: prompt.rentInvitation.tenantAccept
class TranslationsPromptRentInvitationTenantAcceptEn {
  TranslationsPromptRentInvitationTenantAcceptEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Are you sure to accept this invitation?';
  String get description =>
      'Make sure you\'ve downloaded the agreement pdf file!';
}

// Path: form.fullName.errors
class TranslationsFormFullNameErrorsEn {
  TranslationsFormFullNameErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.common.fullName}';
}

// Path: form.email.errors
class TranslationsFormEmailErrorsEn {
  TranslationsFormEmailErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.common.email} address';
  String get invalid => '⦸ Invalid Email, Please Try Again';
}

// Path: form.password.errors
class TranslationsFormPasswordErrorsEn {
  TranslationsFormPasswordErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.common.password}';
  String minLength({required Object count}) =>
      'Password must be at least ${count} characters!';
}

// Path: form.confirmPassword.errors
class TranslationsFormConfirmPasswordErrorsEn {
  TranslationsFormConfirmPasswordErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.common.password}';
  String get notMatched => 'Confirm password doesn\'t match!';
}

// Path: form.mobileNumber.errors
class TranslationsFormMobileNumberErrorsEn {
  TranslationsFormMobileNumberErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class TranslationsFormAddress1ErrorsEn {
  TranslationsFormAddress1ErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.form.address1.label}';
}

// Path: form.address2.errors
class TranslationsFormAddress2ErrorsEn {
  TranslationsFormAddress2ErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class TranslationsFormPostalCodeErrorsEn {
  TranslationsFormPostalCodeErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.common.postalCode}';
}

// Path: form.city.errors
class TranslationsFormCityErrorsEn {
  TranslationsFormCityErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.common.city} name.';
}

// Path: form.state.errors
class TranslationsFormStateErrorsEn {
  TranslationsFormStateErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter your ${_root.common.state} name.';
}

// Path: form.country.errors
class TranslationsFormCountryErrorsEn {
  TranslationsFormCountryErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please select your ${_root.common.country}';
}

// Path: form.otp.errors
class TranslationsFormOtpErrorsEn {
  TranslationsFormOtpErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter the otp.';
  String get invalid => 'Please enter corrent otp.';
}

// Path: form.title.errors
class TranslationsFormTitleErrorsEn {
  TranslationsFormTitleErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter title';
}

// Path: form.date.errors
class TranslationsFormDateErrorsEn {
  TranslationsFormDateErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String required({required String label}) =>
      'Please select ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class TranslationsFormReasonErrorsEn {
  TranslationsFormReasonErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter reason';
}

// Path: form.withdrawMethod.errors
class TranslationsFormWithdrawMethodErrorsEn {
  TranslationsFormWithdrawMethodErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please select ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class TranslationsFormFileFieldErrorsEn {
  TranslationsFormFileFieldErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String required({required String label}) => 'Please select ${label}';
}

// Path: form.note.errors
class TranslationsFormNoteErrorsEn {
  TranslationsFormNoteErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String required({required String note}) =>
      'Please enter ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class TranslationsFormGenderErrorsEn {
  TranslationsFormGenderErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please select ${_root.common.gender}';
}

// Path: form.anyField.errors
class TranslationsFormAnyFieldErrorsEn {
  TranslationsFormAnyFieldErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String required({required String label}) =>
      'Please enter ${_root.form.anyField.label(label: label)}';
  String get invalid => 'Please enter valid @form.anyField.label';
}

// Path: form.anyDropdown.errors
class TranslationsFormAnyDropdownErrorsEn {
  TranslationsFormAnyDropdownErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String required({required String label}) =>
      'Please select ${_root.form.anyDropdown.label(label: label)}';
  String get invalid => 'Please select valid @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class TranslationsPagesOnboardOnboardDataEn {
  TranslationsPagesOnboardOnboardDataEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesOnboardOnboardDataData1En data1 =
      TranslationsPagesOnboardOnboardDataData1En._(_root);
  late final TranslationsPagesOnboardOnboardDataData2En data2 =
      TranslationsPagesOnboardOnboardDataData2En._(_root);
  late final TranslationsPagesOnboardOnboardDataData3En data3 =
      TranslationsPagesOnboardOnboardDataData3En._(_root);
}

// Path: pages.signIn.extra
class TranslationsPagesSignInExtraEn {
  TranslationsPagesSignInExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get rememberMe => 'Remember Me';
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Don\'t have a account? '),
      getStarted(_root.action.getStarted),
    ],
  );
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class TranslationsPagesOtpVerificationExtraEn {
  TranslationsPagesOtpVerificationExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesOtpVerificationExtraCodeResendEn codeResend =
      TranslationsPagesOtpVerificationExtraCodeResendEn._(_root);
}

// Path: pages.resetPassword.extra
class TranslationsPagesResetPasswordExtraEn {
  TranslationsPagesResetPasswordExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesResetPasswordExtraDialogEn dialog =
      TranslationsPagesResetPasswordExtraDialogEn._(_root);
}

// Path: pages.signUp.extra
class TranslationsPagesSignUpExtraEn {
  TranslationsPagesSignUpExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Have an account? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class TranslationsPagesWelcomeExtraEn {
  TranslationsPagesWelcomeExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get landlordTag => 'Manage your own properties';
  String get tenantTag => 'Log in to your rental account';
}

// Path: pages.contactUs.extra
class TranslationsPagesContactUsExtraEn {
  TranslationsPagesContactUsExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get messageHint => 'Message...';
}

// Path: pages.cancelRenting.form
class TranslationsPagesCancelRentingFormEn {
  TranslationsPagesCancelRentingFormEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesCancelRentingFormReasonEn reason =
      TranslationsPagesCancelRentingFormReasonEn._(_root);
}

// Path: pages.offlinePayment.form
class TranslationsPagesOfflinePaymentFormEn {
  TranslationsPagesOfflinePaymentFormEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsPagesOfflinePaymentFormPaymentNoteEn paymentNote =
      TranslationsPagesOfflinePaymentFormPaymentNoteEn._(_root);
}

// Path: pages.offlinePayment.extra
class TranslationsPagesOfflinePaymentExtraEn {
  TranslationsPagesOfflinePaymentExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Pay Amount: '),
      amount,
    ],
  );
  String get accountHolderName => 'Account Holder Name';
  String get accountNumber => 'Account Number';
  String get swiftCode => 'Swift Code';
  String get branch => 'Branch';
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Choose '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' Or '),
      fileType('DOC'),
      const TextSpan(text: ' format files only. File size '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class TranslationsPagesPaymentStatusSuccessEn {
  TranslationsPagesPaymentStatusSuccessEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get actionButton => 'View Invoice';
  String get title => _root.common.thankYou;
  String get description =>
      'We will review the payment & approve it within 24 hours.';
}

// Path: pages.paymentStatus.fail
class TranslationsPagesPaymentStatusFailEn {
  TranslationsPagesPaymentStatusFailEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get actionButton => 'Try Again';
  String get title => 'Oops! Payment Failed';
  String get description =>
      'Your transaction has failed due to some technical error.';
}

// Path: pages.propertyDetails.extra
class TranslationsPagesPropertyDetailsExtraEn {
  TranslationsPagesPropertyDetailsExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  TextSpan landlord({required InlineSpan landlordName}) => TextSpan(
    children: [
      TextSpan(text: '${_root.common.landlord}: '),
      landlordName,
    ],
  );
  TextSpan ratingReviews({
    required InlineSpan rating,
    required InlineSpanBuilder reviews,
  }) => TextSpan(
    children: [
      rating,
      const TextSpan(text: ' '),
      reviews(_root.common.reviews),
    ],
  );
  TextSpan features({required InlineSpanBuilder fa}) => TextSpan(
    children: [
      const TextSpan(text: 'Features '),
      fa('(Facilities & Amenities)'),
    ],
  );
  String get selectRentalPeriod => 'Select Rental Period';
  String get writeAReview => '+ Write a review';
}

// Path: pages.search.extra
class TranslationsPagesSearchExtraEn {
  TranslationsPagesSearchExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get hint => 'Search for plots, flats, rooms...';
  String get noRecentSearch => 'You have no recent searches.';
}

// Path: pages.subscriptionPlan.extra
class TranslationsPagesSubscriptionPlanExtraEn {
  TranslationsPagesSubscriptionPlanExtraEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get subscriptionPaymentSuccess =>
      'Subscription payment successfully.\nYou can access the subscribed features now.';
}

// Path: pages.onboard.onboardData.data1
class TranslationsPagesOnboardOnboardDataData1En {
  TranslationsPagesOnboardOnboardDataData1En._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Find Your Property';
  String get description =>
      'We\'ve made it a breeze to find a place that fits your life — whether it\'s a room, an apartment, or a house.';
}

// Path: pages.onboard.onboardData.data2
class TranslationsPagesOnboardOnboardDataData2En {
  TranslationsPagesOnboardOnboardDataData2En._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Apartment In Town';
  String get description =>
      'We save you time by quickly matching you with the perfect property before it\'s gone so you can enjoy your new home, or list your own for free.';
}

// Path: pages.onboard.onboardData.data3
class TranslationsPagesOnboardOnboardDataData3En {
  TranslationsPagesOnboardOnboardDataData3En._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Your Comfort House';
  String get description =>
      'If you\'re looking for a place to live then take a look at our houses for rent. We have a wide range of houses for you to choose from all over the country.';
}

// Path: pages.otpVerification.extra.codeResend
class TranslationsPagesOtpVerificationExtraCodeResendEn {
  TranslationsPagesOtpVerificationExtraCodeResendEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Code send in ${minutes}:${seconds}';
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Resend code'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class TranslationsPagesResetPasswordExtraDialogEn {
  TranslationsPagesResetPasswordExtraDialogEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Changed successfully!';
  String get subtitle =>
      'Sign in with your new password.\n Redirecting you to Sign In...';
}

// Path: pages.cancelRenting.form.reason
class TranslationsPagesCancelRentingFormReasonEn {
  TranslationsPagesCancelRentingFormReasonEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get hint => 'Write reason';
  late final TranslationsPagesCancelRentingFormReasonErrorsEn errors =
      TranslationsPagesCancelRentingFormReasonErrorsEn._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  TranslationsPagesOfflinePaymentFormPaymentNoteEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get label => 'Payment Note (${_root.common.optional})';
  String get hint => 'Enter some text...';
}

// Path: pages.cancelRenting.form.reason.errors
class TranslationsPagesCancelRentingFormReasonErrorsEn {
  TranslationsPagesCancelRentingFormReasonErrorsEn._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get required => 'Please enter the reason for rent cancellation';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profile';
      case 'common.language':
        return 'Language';
      case 'common.subscriptionPlan':
        return 'Subscription Plan';
      case 'common.contactUs':
        return 'Contact Us';
      case 'common.termsAndConditions':
        return 'Terms & Conditions';
      case 'common.aboutUs':
        return 'About Us';
      case 'common.logout':
        return 'Logout';
      case 'common.editProfile':
        return 'Edit Profile';
      case 'common.fullName':
        return 'Full Name';
      case 'common.email':
        return 'Email';
      case 'common.mobileNumber':
        return 'Mobile Number';
      case 'common.address':
        return 'Address';
      case 'common.postalCode':
        return 'Postal Code';
      case 'common.city':
        return 'City';
      case 'common.country':
        return 'Country';
      case 'common.state':
        return 'State';
      case 'common.password':
        return 'Password';
      case 'common.forgotPassword':
        return 'Forgot password';
      case 'common.tenant':
        return 'Tenant';
      case 'common.landlord':
        return 'Landlord';
      case 'common.cancelRenting':
        return 'Cancel Renting';
      case 'common.startDate':
        return 'Start Date';
      case 'common.endDate':
        return 'End Date';
      case 'common.fromDate':
        return 'From Date';
      case 'common.toDate':
        return 'To Date';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Bank List';
      case 'common.withdrawMethod':
        return 'Withdraw Method';
      case 'common.uploadPaymentReceipt':
        return 'Upload Payment Receipt';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Note: '),
            note('The payment require manual approve by the admin within'),
            const TextSpan(text: ' '),
            duraion('24~48 hours.'),
          ],
        );
      case 'common.reviews':
        return 'Reviews';
      case 'common.description':
        return 'Description';
      case 'common.about':
        return 'About';
      case 'common.propertyTypes':
        return 'Property Types';
      case 'common.features':
        return 'Features';
      case 'common.floorPlans':
        return 'Floor Plans';
      case 'common.buildingDetails':
        return 'Building Details';
      case 'common.buildingName':
        return 'Building Name';
      case 'common.propertyAddress':
        return 'Property Address';
      case 'common.completionYear':
        return 'Completion Year';
      case 'common.lotNumber':
        return 'Lot Number';
      case 'common.residentialType':
        return 'Residential Type';
      case 'common.furnishings':
        return 'Furnishings';
      case 'common.floorRange':
        return 'Floor Range';
      case 'common.bedrooms':
        return 'Bedrooms';
      case 'common.bathrooms':
        return 'Bathrooms';
      case 'common.propertySize':
        return 'Property Size';
      case 'common.rentalPeriod':
        return 'Rental Period';
      case 'common.securityDeposit':
        return 'Security Deposit';
      case 'common.utilityBill':
        return 'Utility Bill';
      case 'common.facilities':
        return 'Facilities';
      case 'common.amenities':
        return 'Amenities';
      case 'common.expiringReason':
        return 'Expiring Reason';
      case 'common.tenantDetails':
        return 'Tenant Details';
      case 'common.typeOfTenant':
        return 'Type of Tenant';
      case 'common.tenantName':
        return 'Tenant Name';
      case 'common.nidPassport':
        return 'NID/Passport';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Tenant ID';
      case 'common.dateOfBirth':
        return 'Date of Birth';
      case 'common.gender':
        return 'Gender';
      case 'common.nominee':
        return 'Nominee';
      case 'common.name':
        return 'Name';
      case 'common.optional':
        return 'Optional';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Emergency Contact';
      case 'common.relation':
        return 'Relation';
      case 'common.relationWith':
        return '${_root.common.relation} With';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} You';
      case 'common.company':
        return 'Company';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Workplace';
      case 'common.officePhoneNo':
        return 'Office Phone Number';
      case 'common.officeMobileNo':
        return 'Office ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Vehicle';
      case 'common.vehiclesInfo.plain':
        return 'Vehicles Information';
      case 'common.vehiclesInfo.optional':
        return 'Vehicles Information (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Vehicle Registration No.';
      case 'common.vehicleRegistrationNo.short':
        return 'Registration No.';
      case 'common.vehicleRegistrationNo.alt':
        return 'Plate No.';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Brand';
      case 'common.rentProperty':
        return 'Rent Property';
      case 'common.propertyDetails':
        return 'Property Details';
      case 'common.propertyId':
        return 'Property ID';
      case 'common.propertyType':
        return 'Property Type';
      case 'common.propertyName':
        return 'Property Name';
      case 'common.paymentDetails':
        return 'Payment Details';
      case 'common.monthlyRent':
        return 'Monthly Rent';
      case 'common.thisMonthPayment':
        return 'This Month Payment';
      case 'common.totalPaidRent':
        return 'Total Paid Rent';
      case 'common.dueRent':
        return 'Due Rent';
      case 'common.rentStartDate':
        return 'Rent ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Rent ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'Rent Agreement PDF';
      case 'common.noFile':
        return 'No File';
      case 'common.tenantImageOp':
        return 'Tenant Image ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Add New Vehicles';
      case 'common.uploadNidPassport':
        return 'Upload NID/Passport';
      case 'common.nidPassportUploadNote':
        return 'Only file type image will be accepted. File limit up to 2.5 MB.';
      case 'common.search':
        return 'Search';
      case 'common.sortBy':
        return 'Sort By';
      case 'common.subscription':
        return 'Subscription';
      case 'common.downloading':
        return 'Downloading...';
      case 'common.downloadSuccess':
        return 'File downloaded successfully!';
      case 'common.addPropertyBannerTitle':
        return 'Looking To Rent Out Your Property?';
      case 'common.application':
        return 'Application';
      case 'common.tenantHasPaidDeposit':
        return 'Tenant has paid the deposit.';
      case 'common.askProcessingRentApplication':
        return 'Are you sure processing this request for rent property?';
      case 'common.dateAndTime':
        return 'Date & Time';
      case 'common.applicationDetails':
        return 'Application Details';
      case 'common.depositStatus':
        return 'Deposit Status';
      case 'common.uploadRentAgreement':
        return 'Upload Rent Agreement';
      case 'common.uploadFilePDF':
        return 'Upload File (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Please select an agreement document file.';
      case 'common.landlordRentAgreementPDF':
        return 'Landlord Rent Agreement PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Tenant Rent Agreement PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Note: '),
            note(
              'Only approve the application after tenant make a deposit payment.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Reason Of Rejection';
      case 'common.youveRejectedThisApplication':
        return 'You\'ve rejected this application';
      case 'common.landlordDetails':
        return 'Landlord Details';
      case 'common.landlordName':
        return 'Landlord Name';
      case 'common.downloadRentAgreement':
        return 'Download Rent Agreement';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Accept '),
            toc('Terms & Conditions'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Note: '),
            note(
              'Please download and read the agreement. Please send the signed agreement to landlord via WhatsApp or email.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Note: '),
            note(
              'Landlord approves the application, when the tenant pays the security, utility, and one-month advance rental payment.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Rent Agreement (PDF) '),
            complete('Complete Agreement'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Note : '),
            note(
              'Landlord approves the application, when the tenant pays the security, utility, and one-month advance rental payment.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Application List';
      case 'common.viewDetails':
        return 'View Details';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Home';
      case 'common.dashboard':
        return 'Dashboard';
      case 'common.tenants':
        return 'Tenants';
      case 'common.maintenance':
        return 'Maintenance';
      case 'common.maintenanceList':
        return 'Maintenance List';
      case 'common.maintenanceReport':
        return 'Maintenance Report';
      case 'common.labor':
        return 'Labor';
      case 'common.applications':
        return 'Applications';
      case 'common.rentInvitation':
        return 'Rent Invitation';
      case 'common.payment':
        return 'Payment';
      case 'common.rentPayment':
        return 'Rent Payment';
      case 'common.depositUtilityPayment':
        return 'Deposit & Utility Payment';
      case 'common.refundRequest':
        return 'Refund Request';
      case 'common.withdrawRequest':
        return 'Withdraw Request';
      case 'common.myProperty':
        return 'My Property';
      case 'common.myRent':
        return 'My Rent';
      case 'common.wishlist':
        return 'Wishlist';
      case 'common.properties':
        return 'Properties';
      case 'common.allProperties':
        return 'All Properties';
      case 'common.totalPropery':
        return 'Total Property';
      case 'common.occupied':
        return 'Occupied';
      case 'common.vacant':
        return 'Vacant';
      case 'common.accounting':
        return 'Accounting';
      case 'common.totalIncome':
        return 'Total Income';
      case 'common.totalExpense':
        return 'Total Expense';
      case 'common.currentBalance':
        return 'Current Balance';
      case 'common.totalWithdrawal':
        return 'Total (Withdrawal)';
      case 'common.totalProperties':
        return 'Total Properties';
      case 'common.totalTenant':
        return 'Total Tenant';
      case 'common.totalRentPaid':
        return 'Total Rent Paid';
      case 'common.totalRentDue':
        return 'Total Rent Due';
      case 'common.totalApplication':
        return 'Total Application';
      case 'common.pendingApplication':
        return 'Pending Application';
      case 'common.processingApplication':
        return 'Processing Application';
      case 'common.approveApplication':
        return 'Approve Application';
      case 'common.rejectApplication':
        return 'Reject Application';
      case 'common.maintenanceCost':
        return 'Maintenance Cost';
      case 'common.transactionSummary':
        return 'Transaction Summary';
      case 'common.maintenanceRequest':
        return 'Maintenance Request';
      case 'common.notifications':
        return 'Notifications';
      case 'common.myProperties':
        return 'My Properties';
      case 'common.recommendationProperties':
        return 'Recommendation Properties';
      case 'common.laborList':
        return 'Labor List';
      case 'common.addLabor':
        return 'Add Labor';
      case 'common.laborDetails':
        return 'Labor Details';
      case 'common.laborSalary':
        return 'Labor Salary';
      case 'common.editLabor':
        return 'Edit Labor';
      case 'common.addNewLabor':
        return 'Add New Labor';
      case 'common.enterAmount':
        return 'Enter Amount';
      case 'common.maintenanceDetails':
        return 'Maintenance Details';
      case 'common.laborName':
        return 'Labor Name';
      case 'common.comment':
        return 'Comment';
      case 'common.image':
        return 'Image';
      case 'common.complete':
        return 'Complete';
      case 'common.details':
        return 'Details';
      case 'common.title':
        return 'Title';
      case 'common.date':
        return 'Date';
      case 'common.reason':
        return 'Reason';
      case 'common.edit':
        return 'Edit';
      case 'common.property':
        return 'Property';
      case 'common.completeYourProfile':
        return 'Complete Your Profile';
      case 'common.profileImage':
        return 'Profile Image';
      case 'common.imagePickHint':
        return 'Only JPEG & PNG Image with max size of 120x120 pixels.';
      case 'common.invoiceId':
        return 'Invoice ID';
      case 'common.depositAmount':
        return 'Deposit Amount';
      case 'common.landlordPhone':
        return 'Landlord Phone';
      case 'common.rentalAdvance':
        return 'Rental (Advance)';
      case 'common.totalAmount':
        return 'Total Amount';
      case 'common.rentalAmount':
        return 'Rental Amount';
      case 'common.adminCharge':
        return 'Admin Charge';
      case 'common.editAccount':
        return 'Edit Account';
      case 'common.addNewAccount':
        return 'Add New Account';
      case 'common.transactionId':
        return 'Transaction ID';
      case 'common.transactionType':
        return 'Transaction Type';
      case 'common.requestDate':
        return 'Request Date';
      case 'common.amount':
        return 'Amount';
      case 'common.fee':
        return 'Fee';
      case 'common.paymentStatus':
        return 'Payment Status';
      case 'common.generatedTime':
        return 'Generated Time';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'This is a system generated repot of '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Withdraw History';
      case 'common.history':
        return 'History';
      case 'common.withdrawAmount':
        return 'Withdraw Amount';
      case 'common.availableBalance':
        return 'Available Balance';
      case 'common.withdrawCharge':
        return 'Withdraw Charge';
      case 'common.paymentMethod':
        return 'Payment Method';
      case 'common.requestSendSuccess':
        return 'Request sent successfully!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Payment receipt submitted successfully.';
      case 'common.refundReason':
        return 'Refund Reason';
      case 'common.note':
        return 'Note';
      case 'common.refundReceiveSuccess':
        return 'Refund received successfully.';
      case 'common.downloadPaymentReceipt':
        return 'Download Payment Receipt';
      case 'common.invoice':
        return 'Invoice';
      case 'common.selectPropertyToSeeInvoice':
        return 'Select property to see the invoice number...';
      case 'common.bankAccName':
        return 'Bank Account Name';
      case 'common.bankName':
        return 'Bank Name';
      case 'common.bankAccNum':
        return 'Bank Account Number';
      case 'common.thankYou':
        return 'Thank You!';
      case 'common.basicInfo':
        return 'Basic Information';
      case 'common.descriptionPricing':
        return 'Description & Pricing';
      case 'common.contact':
        return 'Contact';
      case 'common.photos':
        return 'Photos';
      case 'common.successfullySubmitted':
        return 'Successfully submitted!';
      case 'common.editProperty':
        return 'Edit Property';
      case 'common.addNewProperty':
        return 'Add New Property';
      case 'common.propertyManageRequestSuccess':
        return 'Your ad has been submitted for review.';
      case 'common.postAnotherProperty':
        return 'Post Another Property';
      case 'common.browseYourProperty':
        return 'Browse Your Property';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Step '),
                step,
                const TextSpan(text: ' of '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'What Would you like to Post?';
      case 'common.category':
        return 'Category';
      case 'common.invalidCategory':
        return 'Invalid Category';
      case 'common.unitNumber':
        return 'Unit Number';
      case 'common.sqft':
        return 'sq.ft.';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Property size should be greater than zero';
      case 'common.whatAreTheFacility':
        return 'What are the facilities?';
      case 'common.whatAreTheAmenity':
        return 'What are the amenities?';
      case 'common.parkingLot':
        return 'Parking Lot';
      case 'common.houseType':
        return 'House type';
      case 'common.value':
        return 'Value';
      case 'common.unitLotSize':
        return 'Unit / Lot Size';
      case 'common.landSize':
        return 'Land Size';
      case 'common.acres':
        return 'acre(s)';
      case 'common.roomSize':
        return 'Room size';
      case 'common.askTenantPreference':
        return 'What is your tenant preference';
      case 'common.couple':
        return 'Couple';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            'Describe the ${propertyType}';
      case 'common.adTitle':
        return 'Ad Title';
      case 'common.minimumRentalPeriod':
        return 'Minimum Rental Period';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Hide or display email address';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Thank you for posting on ${appName}!';
      case 'common.propertyList':
        return 'Property List';
      case 'common.newInviteRent':
        return 'New Invite Rent';
      case 'common.rentAgreement':
        return 'Rent Agreement';
      case 'common.rentDetails':
        return 'Rent Details';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Note: '),
            note('Please wait for the tenant to accept the invitation.'),
          ],
        );
      case 'common.rent':
        return 'Rent';
      case 'common.editTenant':
        return 'Edit Tenant';
      case 'common.addNewTenant':
        return 'Add New Tenant';
      case 'common.shareInstallLink':
        return 'Share Install link';
      case 'common.tenantList':
        return 'Tenant List';
      case 'common.editMaintenanceRequest':
        return 'Edit Maintenance Request';
      case 'common.addNewMaintenance':
        return 'Add New Maintenance';
      case 'common.landlordId':
        return 'Landlord ID';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Note '),
            note(
              'Your agreement is under review. Please wait until landlord apporves your rent.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Edit Review';
      case 'common.writeAReview':
        return 'Write a review';
      case 'common.selectRating':
        return 'Select Rating';
      case 'common.enterYourOpinion':
        return 'Enter Your Opinion';
      case 'common.askToEnterReviewMsg':
        return 'Please enter a review message';
      case 'common.pressBackAgainToExit':
        return 'Press back again to exit.';
      case 'common.selectPaymentMethod':
        return 'Select Payment Method';
      case 'common.filter':
        return 'Filter';
      case 'common.perMonth':
        return '/1 Month';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Search anything in ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Something went wrong, please try again';
      case 'exceptions.noNidPassport':
        return 'No NID/Passport image provided.';
      case 'exceptions.noRentPropertyFound':
        return 'No rent poperty found for this tenant.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'No property found!\nPlease try with different keywords';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'No subscription plan found!\nPlease refresh the page and try again.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Invalid ${dataType} info! Please refresh the page and try again.';
      case 'exceptions.invalidDownloadUrl':
        return 'Invalid download url!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => 'Failed to save the file! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => 'Error opening the file! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'No vehicle infomation provided.';
      case 'exceptions.yourApplicationRejected':
        return 'Your Application has been rejected';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'No applicaiton found!\n${subject} will be displayed here when available.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Your application';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Tenant\'s application';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'No property found!\nPlease try adding a property to see here.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'No Recommended Properties found\nPlease try again later.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Properties not available\nPlease try again later.';
      case 'exceptions.noImageProvided':
        return 'No Image Provided';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) => 'No ${status} maintenance found.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'No maintenance found! You can create maintenance request to see that here.';
      case 'exceptions.noDepositFound':
        return 'No security deposit found!\nPlease can see the security deposits when available';
      case 'exceptions.noRentPaymentFound':
        return 'No rent payment found!\nPlease can see the rent payments when available';
      case 'exceptions.transactionSummaryApiException':
        return 'Failed to get transaction summary.';
      case 'exceptions.noWithdrawRequestFound':
        return 'No request found!\nPlease try creating a withdraw request to see here.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'This withdraw request has not been approved!.';
      case 'exceptions.nonZeroError':
        return 'Please enter a valid amount greater than zero.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'The amount must be at least ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'The amount must not exceed ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Please select a payment method first.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'No ${status} refund request found!\nYou can see refund request here when available.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'No refund request found!\nYou can create refund request to see that here.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Tenant will approve the refund when he got the money back';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'We will review the Refund request & approve it within 24 hours.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Please select the number of ${value}';
      case 'exceptions.invalidDateRange':
        return 'Invalid date range.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} must be greater than zero.';
      case 'exceptions.editProperty.rentalChange':
        return 'Rental property is changing. It must be only valid (effective) for the next month\'s rental payment.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Your property is already rented by tenant. Cannot delete it until remove the tenant first';
      case 'exceptions.editProperty.alreayRented':
        return 'This property is rented already. Please try again later.\nOr you can contact the landlord for more information.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'No rent invitation found!\nPlease try creating a rent invitation to see here.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'No rent invitation found!\nYou can see rent invitation here when available.';
      case 'exceptions.notenantFoundList':
        return 'No tenants!\nPlease try adding a tenant to see here.';
      case 'exceptions.noFeaturesProvided':
        return 'No features provided.';
      case 'exceptions.noNotificationFound':
        return 'No notification available.\nYou can see your notification here when available.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Are you sure to logout?';
      case 'prompt.application.rejectTitle':
        return 'Why are you rejecting this application?';
      case 'prompt.application.applicationSent.successfully':
        return 'Application sent successfully!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'You can see this application in your application list';
      case 'prompt.labor.delete.title':
        return 'Delete Labor?';
      case 'prompt.labor.delete.description':
        return 'Are you sure to delete this labor?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Why this request being rejected?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Are you sure Processing this Maintenance request?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Work completed?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Delete Withdraw Method?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Are you sure to delete this withdraw method?';
      case 'prompt.unsavedChanges.title':
        return 'Are you sure to go back?';
      case 'prompt.unsavedChanges.message':
        return 'Fields that are changed will not be saved!';
      case 'prompt.property.delete.title':
        return 'Delete Property?';
      case 'prompt.property.delete.message':
        return 'Are you sure to delete this property?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Are you sure to approve this rent?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Make sure you\'ve reviewed the agreement signed by the tenant.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Are you sure to accept this invitation?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Make sure you\'ve downloaded the agreement pdf file!';
      case 'prompt.sessionExpired.title':
        return 'Session expired';
      case 'prompt.sessionExpired.message':
        return 'Your session has expired. Please sign in again';
      case 'prompt.sessionExpired.action':
        return 'Sign In';
      case 'prompt.noInternet.title':
        return 'No Internet Connection';
      case 'prompt.noInternet.message':
        return 'Please check your Wi-Fi mobile network connection and try again';
      case 'prompt.noInternet.action':
        return 'Try Again';
      case 'prompt.permissionHandler.title':
        return 'Permission required!';
      case 'prompt.permissionHandler.message':
        return 'You need to grant permissions in the app settings. Would you like to open the settings now?';
      case 'prompt.imagePicker.title':
        return 'Select Option';
      case 'prompt.imagePicker.gallery':
        return 'Gallery';
      case 'prompt.imagePicker.camera':
        return 'Camera';
      case 'prompt.verificationDialog.title':
        return 'Verify Your Email';
      case 'prompt.verificationDialog.message':
        return 'We have sent a verification code email';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} to ${email}';
      case 'prompt.notification.clearTitle':
        return 'Clear notificaions?';
      case 'prompt.notification.clearMessage':
        return 'Are you sure to clear all notifications?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Enter ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Please enter your ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Enter your ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Please enter your ${_root.common.email} address';
      case 'form.email.errors.invalid':
        return '⦸ Invalid Email, Please Try Again';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Please enter your ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Password must be at least ${count} characters!';
      case 'form.confirmPassword.label':
        return 'Confirm ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Please enter your ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Confirm password doesn\'t match!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Please enter your ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'House number and street name';
      case 'form.address1.errors.required':
        return 'Please enter your ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Apartment,suite,unit,etc';
      case 'form.address2.errors.required':
        return 'Please enter your ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Enter ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Please enter your ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Enter ${_root.common.city} name.';
      case 'form.city.errors.required':
        return 'Please enter your ${_root.common.city} name.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Enter ${_root.common.state} name.';
      case 'form.state.errors.required':
        return 'Please enter your ${_root.common.state} name.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Select ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Please select your ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Please enter the otp.';
      case 'form.otp.errors.invalid':
        return 'Please enter corrent otp.';
      case 'form.title.label':
        return 'Title';
      case 'form.title.hint':
        return 'Enter title';
      case 'form.title.errors.required':
        return 'Please enter title';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Select ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Please select ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Reason';
      case 'form.reason.hint':
        return 'Enter reason';
      case 'form.reason.errors.required':
        return 'Please enter reason';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Select ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Please select ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Upload ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Please select ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Enter ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Please enter ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Select ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Please select ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Enter ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Please enter ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Please enter valid @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Select ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Please select ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Please select valid @form.anyDropdown.label';
      case 'action.next':
        return 'Next';
      case 'action.getStarted':
        return 'Get Started';
      case 'action.skip':
        return 'Skip';
      case 'action.select':
        return 'Select';
      case 'action.save':
        return 'Save';
      case 'action.signIn':
        return 'Sign In';
      case 'action.signUp':
        return 'Sign Up';
      case 'action.kContinue':
        return 'Continue';
      case 'action.clearAll':
        return 'Clear All';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Send';
      case 'action.pay':
        return 'Pay';
      case 'action.remove':
        return 'Remove';
      case 'action.goBack':
        return 'Go Back';
      case 'action.buyNow':
        return 'Buy Now';
      case 'action.no':
        return 'No';
      case 'action.open':
        return 'Open';
      case 'action.addProperty':
        return 'Add Property';
      case 'action.process':
        return 'Process';
      case 'action.approve':
        return 'Approve';
      case 'action.reject':
        return 'Reject';
      case 'action.viewRent':
        return 'View Rent';
      case 'action.openNavigationMenu':
        return 'Open navigation menu';
      case 'action.seeAll':
        return 'See All';
      case 'action.update':
        return 'Update';
      case 'action.printTransaction':
        return 'Print Transaction';
      case 'action.payoutRequest':
        return 'Payout Request';
      case 'action.addNew':
        return '+ Add New';
      case 'action.sendRequest':
        return 'Send Request';
      case 'action.print':
        return 'Print';
      case 'action.requestForRefund':
        return 'Request For Refund';
      case 'action.previous':
        return 'Previous';
      case 'action.delete':
        return 'Delete';
      case 'action.applyProperty':
        return 'Apply Property';
      case 'action.viewApplication':
        return 'View Application';
      case 'action.inviteTenant':
        return 'Invite Tenant';
      case 'action.inviteRent':
        return 'Invite Rent';
      case 'action.cancel':
        return 'Cancel';
      case 'action.accept':
        return 'Accept';
      case 'action.submit':
        return 'Submit';
      case 'action.yes':
        return 'Yes';
      case 'action.okay':
        return 'Okay';
      case 'action.confirm':
        return 'Confirm';
      case 'action.apply':
        return 'Apply';
      case 'action.reset':
        return 'Reset';
      case 'action.retry':
        return 'Retry';
      case 'action.viewAll':
        return 'View All';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Find Your Property';
      case 'pages.onboard.onboardData.data1.description':
        return 'We\'ve made it a breeze to find a place that fits your life — whether it\'s a room, an apartment, or a house.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Apartment In Town';
      case 'pages.onboard.onboardData.data2.description':
        return 'We save you time by quickly matching you with the perfect property before it\'s gone so you can enjoy your new home, or list your own for free.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Your Comfort House';
      case 'pages.onboard.onboardData.data3.description':
        return 'If you\'re looking for a place to live then take a look at our houses for rent. We have a wide range of houses for you to choose from all over the country.';
      case 'pages.signIn.title':
        return 'Welcome Back';
      case 'pages.signIn.subtitle':
        return 'Sign In now to begin an amazing journey.';
      case 'pages.signIn.extra.rememberMe':
        return 'Remember Me';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Don\'t have a account? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Forgot password';
      case 'pages.forgotPassword.subtitle':
        return 'Enter your email Address to recover your password.';
      case 'pages.otpVerification.title':
        return 'Verification';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-digits pin has been sent to your email address. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Code send in ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Resend code'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Reset password';
      case 'pages.resetPassword.subtitle':
        return 'Reset your password to recovery and log in your account';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Changed successfully!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Sign in with your new password.\n Redirecting you to Sign In...';
      case 'pages.signUp.title':
        return 'Create An Account';
      case 'pages.signUp.subtitle':
        return 'Sign Up now to begin an amazing journey';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Have an account? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Who are you?';
      case 'pages.welcome.subtitle':
        return 'Please select the option below.';
      case 'pages.welcome.extra.landlordTag':
        return 'Manage your own properties';
      case 'pages.welcome.extra.tenantTag':
        return 'Log in to your rental account';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Notifications';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Message...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Why are you ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Write reason';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Please enter the reason for rent cancellation';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Offline Payment';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Payment Note (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Enter some text...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Pay Amount: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Account Holder Name';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Account Number';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift Code';
      case 'pages.offlinePayment.extra.branch':
        return 'Branch';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Choose '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' Or '),
            fileType('DOC'),
            const TextSpan(text: ' format files only. File size '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'View Invoice';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'We will review the payment & approve it within 24 hours.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Try Again';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Payment Failed';
      case 'pages.paymentStatus.fail.description':
        return 'Your transaction has failed due to some technical error.';
      case 'pages.propertyDetails.extra.landlord':
        return ({required InlineSpan landlordName}) => TextSpan(
          children: [
            TextSpan(text: '${_root.common.landlord}: '),
            landlordName,
          ],
        );
      case 'pages.propertyDetails.extra.ratingReviews':
        return ({
          required InlineSpan rating,
          required InlineSpanBuilder reviews,
        }) => TextSpan(
          children: [
            rating,
            const TextSpan(text: ' '),
            reviews(_root.common.reviews),
          ],
        );
      case 'pages.propertyDetails.extra.features':
        return ({required InlineSpanBuilder fa}) => TextSpan(
          children: [
            const TextSpan(text: 'Features '),
            fa('(Facilities & Amenities)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Select Rental Period';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Write a review';
      case 'pages.search.appbarTitle':
        return 'Search';
      case 'pages.search.extra.hint':
        return 'Search for plots, flats, rooms...';
      case 'pages.search.extra.noRecentSearch':
        return 'You have no recent searches.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Choose your Plan';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Subscription payment successfully.\nYou can access the subscribed features now.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Total Maintenance Cost: '),
            amount,
          ],
        );
      case 'pages.landlordMaintenanceReport.maintenancePending':
        return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.pending}';
      case 'pages.landlordMaintenanceReport.maintenanceProcessing':
        return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.processing}';
      case 'pages.landlordMaintenanceReport.maintenanceCompleted':
        return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.completed}';
      case 'pages.landlordMaintenanceReport.maintenanceRejected':
        return '${_root.common.maintenance} ${_root.enums.maintenanceStatus.rejected}';
      case 'enums.propertyStatus.allProperty':
        return 'All Property';
      case 'enums.propertyStatus.pending':
        return 'Pending';
      case 'enums.propertyStatus.active':
        return 'Active';
      case 'enums.propertyStatus.inactive':
        return 'Inactive';
      case 'enums.propertyStatus.rejected':
        return 'Rejected';
      case 'enums.propertyType.apartmentCondominium':
        return 'Apartment/Condominium';
      case 'enums.propertyType.house':
        return 'House';
      case 'enums.propertyType.commercialProperty':
        return 'Commercial Property';
      case 'enums.propertyType.land':
        return 'Land';
      case 'enums.propertyType.room':
        return 'Room';
      case 'enums.applicationStatus.all':
        return 'All';
      case 'enums.applicationStatus.pending':
        return 'Pending';
      case 'enums.applicationStatus.processing':
        return 'Processing';
      case 'enums.applicationStatus.approved':
        return 'Approved';
      case 'enums.applicationStatus.rejected':
        return 'Rejected';
      case 'enums.myRentStatus.pending':
        return 'Pending';
      case 'enums.myRentStatus.processing':
        return 'Processing';
      case 'enums.myRentStatus.active':
        return 'Active';
      case 'enums.myRentStatus.expired':
        return 'Expired';
      case 'enums.myRentStatus.cancelled':
        return 'Canceled';
      case 'enums.maintenanceStatus.pending':
        return 'Pending';
      case 'enums.maintenanceStatus.processing':
        return 'Processing';
      case 'enums.maintenanceStatus.rejected':
        return 'Rejected';
      case 'enums.maintenanceStatus.completed':
        return 'Completed';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Private (Individual)';
      case 'enums.tenantProfileType.company':
        return 'Company';
      case 'enums.tenantType.newTenant':
        return 'New Tenant';
      case 'enums.tenantType.activeTenant':
        return 'Active Tenant';
      case 'enums.tenantType.expiredTenant':
        return 'Expired Tenant';
      case 'enums.paymentStatus.all':
        return 'All';
      case 'enums.paymentStatus.pending':
        return 'Pending';
      case 'enums.paymentStatus.paid':
        return 'Paid';
      case 'enums.paymentStatus.unpaid':
        return 'Unpaid';
      case 'enums.paymentStatus.rejected':
        return 'Rejected';
      case 'enums.paymentStatus.refund':
        return 'Refund';
      case 'enums.paymentOptions.onlinePayment':
        return 'Online Payment';
      case 'enums.paymentOptions.offlinePayment':
        return 'Offline Payment';
      case 'enums.paymentType.securityDeposit':
        return 'Security Deposit';
      case 'enums.paymentType.rentPayment':
        return 'Rent Payment';
      case 'enums.paymentType.subscription':
        return 'Subscription';
      case 'enums.gender.male':
        return 'Male';
      case 'enums.gender.female':
        return 'Female';
      case 'enums.gender.other':
        return 'Other';
      case 'enums.ecRelation.wife':
        return 'Wife';
      case 'enums.ecRelation.parent':
        return 'Parent';
      case 'enums.ecRelation.friend':
        return 'Friend';
      case 'enums.ecRelation.brother':
        return 'Brother';
      case 'enums.ecRelation.sister':
        return 'Sister';
      case 'enums.ecRelation.child':
        return 'Child';
      case 'enums.vehicleType.car':
        return 'Car';
      case 'enums.vehicleType.motorcycles':
        return 'Motorcycles';
      case 'enums.vehicleType.lorry':
        return 'Lorry';
      case 'enums.sortBy.lowToHigh':
        return 'Low to High';
      case 'enums.sortBy.highToLow':
        return 'High to Low';
      case 'enums.residentialType.flat':
        return 'Flat';
      case 'enums.residentialType.apartment':
        return 'Apartment';
      case 'enums.residentialType.condominium':
        return 'Condominium';
      case 'enums.residentialType.serviceResidence':
        return 'Service Residence';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Duplex';
      case 'enums.residentialType.townhouseCondo':
        return 'Townhouse Condo';
      case 'enums.residentialType.others':
        return 'Others';
      case 'enums.floorRange.high':
        return 'High';
      case 'enums.floorRange.medium':
        return 'Medium';
      case 'enums.floorRange.low':
        return 'Low';
      case 'enums.furnishings.fullyFurnished':
        return 'Fully Furnished';
      case 'enums.furnishings.partiallyFurnished':
        return 'Partially Furnished';
      case 'enums.furnishings.notFurnished':
        return 'Not Furnished';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Office space';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Retail space';
      case 'enums.commercialPropertyType.shopLot':
        return 'Shop lot';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Warehouse / Factory';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Resort';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Others';
      case 'enums.landPropertyType.residential':
        return 'Residential';
      case 'enums.landPropertyType.industrial':
        return 'Industrial';
      case 'enums.landPropertyType.agricultural':
        return 'Agricultural';
      case 'enums.landPropertyType.commercial':
        return 'Commercial';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Mixed Development';
      case 'enums.landPropertyType.others':
        return 'Others';
      case 'enums.residentPropertyType.condo':
        return 'Condo / Services residence / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Apartment / Flat';
      case 'enums.residentPropertyType.house':
        return 'Houses';
      case 'enums.residentPropertyType.shoplot':
        return 'Shoplot';
      case 'enums.residentPropertyType.sharing':
        return 'Sharing a house / Flat';
      case 'enums.residentPropertyType.others':
        return 'Others';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 Months';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 Year';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1.5 Years';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 Years';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2.5 Years';
      case 'enums.dropdownDateFilter.daily':
        return 'Daily';
      case 'enums.dropdownDateFilter.weekly':
        return 'Weekly';
      case 'enums.dropdownDateFilter.monthly':
        return 'Monthly';
      case 'enums.dropdownDateFilter.yearly':
        return 'Yearly';
      case 'enums.dropdownDateFilter.custom':
        return 'Custom';
      default:
        return null;
    }
  }
}
