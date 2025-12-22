///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsHi implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsHi({
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
             locale: AppLocale.hi,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <hi>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsHi _root = this; // ignore: unused_field

  @override
  TranslationsHi $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsHi(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonHi common = _TranslationsCommonHi._(_root);
  @override
  late final _TranslationsExceptionsHi exceptions = _TranslationsExceptionsHi._(
    _root,
  );
  @override
  late final _TranslationsPromptHi prompt = _TranslationsPromptHi._(_root);
  @override
  late final _TranslationsFormHi form = _TranslationsFormHi._(_root);
  @override
  late final _TranslationsActionHi action = _TranslationsActionHi._(_root);
  @override
  late final _TranslationsPagesHi pages = _TranslationsPagesHi._(_root);
  @override
  late final _TranslationsEnumsHi enums = _TranslationsEnumsHi._(_root);
}

// Path: common
class _TranslationsCommonHi implements TranslationsCommonEn {
  _TranslationsCommonHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'प्रोफ़ाइल';
  @override
  String get language => 'भाषा';
  @override
  String get subscriptionPlan => 'सदस्यता योजना';
  @override
  String get contactUs => 'हमसे संपर्क करें';
  @override
  String get termsAndConditions => 'नियम और शर्तें';
  @override
  String get aboutUs => 'हमारे बारे में';
  @override
  String get logout => 'लॉग आउट';
  @override
  String get editProfile => 'प्रोफ़ाइल संपादित करें';
  @override
  String get fullName => 'पूरा नाम';
  @override
  String get email => 'ईमेल';
  @override
  String get mobileNumber => 'मोबाइल नंबर';
  @override
  String get address => 'पता';
  @override
  String get postalCode => 'पिन कोड';
  @override
  String get city => 'शहर';
  @override
  String get country => 'देश';
  @override
  String get state => 'राज्य';
  @override
  String get password => 'पासवर्ड';
  @override
  String get forgotPassword => 'पासवर्ड भूल गए';
  @override
  String get tenant => 'किरायेदार';
  @override
  String get landlord => 'मकान मालिक';
  @override
  String get cancelRenting => 'किराया रद्द करें';
  @override
  String get startDate => 'प्रारंभ तिथि';
  @override
  String get endDate => 'अंतिम तिथि';
  @override
  String get fromDate => 'से तिथि';
  @override
  String get toDate => 'तक तिथि';
  @override
  String get online => 'ऑनलाइन';
  @override
  String get bankList => 'बैंक सूची';
  @override
  String get withdrawMethod => 'निकासी विधि';
  @override
  String get uploadPaymentReceipt => 'भुगतान रसीद अपलोड करें';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'नोट: '),
      note(
        'भुगतान के लिए व्यवस्थापक द्वारा मैन्युअल अनुमोदन की आवश्यकता होती है',
      ),
      const TextSpan(text: ' '),
      duraion('24~48 घंटों के भीतर'),
    ],
  );
  @override
  String get reviews => 'समीक्षाएँ';
  @override
  String get description => 'विवरण';
  @override
  String get about => 'के बारे में';
  @override
  String get propertyTypes => 'संपत्ति प्रकार';
  @override
  String get features => 'विशेषताएँ';
  @override
  String get floorPlans => 'मंजिल योजनाएँ';
  @override
  String get buildingDetails => 'भवन विवरण';
  @override
  String get buildingName => 'भवन का नाम';
  @override
  String get propertyAddress => 'संपत्ति का पता';
  @override
  String get completionYear => 'निर्माण वर्ष';
  @override
  String get lotNumber => 'लॉट नंबर';
  @override
  String get residentialType => 'आवासीय प्रकार';
  @override
  String get furnishings => 'सज्जा';
  @override
  String get floorRange => 'मंजिल रेंज';
  @override
  String get bedrooms => 'शयनकक्ष';
  @override
  String get bathrooms => 'स्नानघर';
  @override
  String get propertySize => 'संपत्ति का आकार';
  @override
  String get rentalPeriod => 'किराया अवधि';
  @override
  String get securityDeposit => 'सुरक्षा जमा';
  @override
  String get utilityBill => 'उपयोगिता बिल';
  @override
  String get facilities => 'सुविधाएँ';
  @override
  String get amenities => 'सुविधाएँ';
  @override
  String get expiringReason => 'समाप्ति का कारण';
  @override
  String get tenantDetails => 'किरायेदार विवरण';
  @override
  String get typeOfTenant => 'किरायेदार का प्रकार';
  @override
  String get tenantName => 'किरायेदार का नाम';
  @override
  String get nidPassport => 'एनआईडी/पासपोर्ट';
  @override
  String get nidPassportId => '${_root.common.nidPassport} आईडी';
  @override
  String get tenantId => 'किरायेदार आईडी';
  @override
  String get dateOfBirth => 'जन्म तिथि';
  @override
  String get gender => 'लिंग';
  @override
  String get nominee => 'नामित व्यक्ति';
  @override
  String get name => 'नाम';
  @override
  String get optional => 'वैकल्पिक';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileHi nomineeMobile =
      _TranslationsCommonNomineeMobileHi._(_root);
  @override
  String get emergencyContact => 'आपातकालीन संपर्क';
  @override
  String get relation => 'संबंध';
  @override
  String get relationWith => '${_root.common.relation} के साथ';
  @override
  String get relationWithYou => '${_root.common.relationWith} आपके साथ';
  @override
  String get company => 'कंपनी';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM नंबर';
  @override
  String get workplace => 'कार्यस्थल';
  @override
  String get officePhoneNo => 'कार्यालय फोन नंबर';
  @override
  String get officeMobileNo => 'कार्यालय ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'वाहन';
  @override
  late final _TranslationsCommonVehiclesInfoHi vehiclesInfo =
      _TranslationsCommonVehiclesInfoHi._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} प्रकार';
  @override
  late final _TranslationsCommonVehicleRegistrationNoHi vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoHi._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} ब्रांड';
  @override
  String get rentProperty => 'संपत्ति किराए पर लें';
  @override
  String get propertyDetails => 'संपत्ति विवरण';
  @override
  String get propertyId => 'संपत्ति आईडी';
  @override
  String get propertyType => 'संपत्ति प्रकार';
  @override
  String get propertyName => 'संपत्ति का नाम';
  @override
  String get paymentDetails => 'भुगतान विवरण';
  @override
  String get monthlyRent => 'मासिक किराया';
  @override
  String get thisMonthPayment => 'इस महीने का भुगतान';
  @override
  String get totalPaidRent => 'कुल भुगतान किया गया किराया';
  @override
  String get dueRent => 'देय किराया';
  @override
  String get rentStartDate => 'किराया ${_root.common.startDate}';
  @override
  String get rentEndDate => 'किराया ${_root.common.endDate}';
  @override
  String get status => 'स्थिति';
  @override
  String get rentAgreementPdf => 'किराया समझौता पीडीएफ';
  @override
  String get noFile => 'कोई फ़ाइल नहीं';
  @override
  String get tenantImageOp => 'किरायेदार छवि ${_root.common.optional}';
  @override
  String get addNewVechicle => 'नए वाहन जोड़ें';
  @override
  String get uploadNidPassport => 'एनआईडी/पासपोर्ट अपलोड करें';
  @override
  String get nidPassportUploadNote =>
      'केवल फ़ाइल प्रकार छवि स्वीकार की जाएगी। फ़ाइल सीमा 2.5 एमबी तक।';
  @override
  String get search => 'खोजें';
  @override
  String get sortBy => 'इसके अनुसार Sort';
  @override
  String get subscription => 'सदस्यता';
  @override
  String get downloading => 'डाउनलोड हो रहा है...';
  @override
  String get downloadSuccess => 'फ़ाइल सफलतापूर्वक डाउनलोड की गई!';
  @override
  String get addPropertyBannerTitle =>
      'क्या आप अपनी संपत्ति किराए पर देना चाहते हैं?';
  @override
  String get application => 'आवेदन';
  @override
  String get tenantHasPaidDeposit =>
      'किरायेदार ने जमा राशि का भुगतान कर दिया है।';
  @override
  String get askProcessingRentApplication =>
      'क्या आप वाकई किराए की संपत्ति के लिए इस अनुरोध को संसाधित कर रहे हैं?';
  @override
  String get dateAndTime => 'दिनांक और समय';
  @override
  String get applicationDetails => 'आवेदन विवरण';
  @override
  String get depositStatus => 'जमा स्थिति';
  @override
  String get uploadRentAgreement => 'किराया समझौता अपलोड करें';
  @override
  String get uploadFilePDF => 'फ़ाइल अपलोड करें (पीडीएफ)';
  @override
  String get askSelectRentAgreement =>
      'कृपया एक समझौता दस्तावेज़ फ़ाइल का चयन करें।';
  @override
  String get landlordRentAgreementPDF => 'मकान मालिक किराया समझौता पीडीएफ';
  @override
  String get tenantRentAgreementPDF => 'किरायेदार किराया समझौता पीडीएफ';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'नोट: '),
          note(
            'किरायेदार द्वारा जमा भुगतान करने के बाद ही आवेदन को मंजूरी दें।',
          ),
        ],
      );
  @override
  String get reasonOfRejection => 'अस्वीकृति का कारण';
  @override
  String get youveRejectedThisApplication =>
      'आपने इस आवेदन को अस्वीकार कर दिया है';
  @override
  String get landlordDetails => 'मकान मालिक विवरण';
  @override
  String get landlordName => 'मकान मालिक का नाम';
  @override
  String get downloadRentAgreement => 'किराया समझौता डाउनलोड करें';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      toc('नियम और शर्तों'),
      const TextSpan(text: ' स्वीकार करें'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'नोट: '),
      note(
        'कृपया समझौता डाउनलोड करें और पढ़ें। कृपया हस्ताक्षरित समझौता व्हाट्सएप या ईमेल के माध्यम से मकान मालिक को भेजें।',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'नोट: '),
      note(
        'मकान मालिक आवेदन को मंजूरी देता है, जब किरायेदार सुरक्षा, उपयोगिता और एक महीने का अग्रिम किराया भुगतान करता है।',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'किराया समझौता (पीडीएफ) '),
          complete('पूरा समझौता'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'नोट: '),
      note(
        'मकान मालिक आवेदन को मंजूरी देता है, जब किरायेदार सुरक्षा, उपयोगिता और एक महीने का अग्रिम किराया भुगतान करता है।',
      ),
    ],
  );
  @override
  String get whatsapp => 'व्हाट्सएप';
  @override
  String get applicationList => 'आवेदन सूची';
  @override
  String get viewDetails => 'विवरण देखें';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'होम';
  @override
  String get dashboard => 'डैशबोर्ड';
  @override
  String get tenants => 'किरायेदार';
  @override
  String get maintenance => 'रखरखाव';
  @override
  String get maintenanceList => 'रखरखाव सूची';
  @override
  String get maintenanceReport => 'रखरखाव रिपोर्ट';
  @override
  String get labor => 'श्रम';
  @override
  String get applications => 'आवेदन';
  @override
  String get rentInvitation => 'किराया आमंत्रण';
  @override
  String get payment => 'भुगतान';
  @override
  String get rentPayment => 'किराया भुगतान';
  @override
  String get depositUtilityPayment => 'जमा और उपयोगिता भुगतान';
  @override
  String get refundRequest => 'धनवापसी अनुरोध';
  @override
  String get withdrawRequest => 'निकासी अनुरोध';
  @override
  String get myProperty => 'मेरी संपत्ति';
  @override
  String get myRent => 'मेरा किराया';
  @override
  String get wishlist => 'विशलिस्ट';
  @override
  String get properties => 'संपत्तियाँ';
  @override
  String get allProperties => 'सभी संपत्तियाँ';
  @override
  String get totalPropery => 'कुल संपत्ति';
  @override
  String get occupied => 'अधिकृत';
  @override
  String get vacant => 'रिक्त';
  @override
  String get accounting => 'लेखांकन';
  @override
  String get totalIncome => 'कुल आय';
  @override
  String get totalExpense => 'कुल खर्च';
  @override
  String get currentBalance => 'वर्तमान शेष';
  @override
  String get totalWithdrawal => 'कुल (निकासी)';
  @override
  String get totalProperties => 'कुल संपत्तियाँ';
  @override
  String get totalTenant => 'कुल किरायेदार';
  @override
  String get totalRentPaid => 'कुल किराया भुगतान किया गया';
  @override
  String get totalRentDue => 'कुल किराया देय';
  @override
  String get totalApplication => 'कुल आवेदन';
  @override
  String get pendingApplication => 'लंबित आवेदन';
  @override
  String get processingApplication => 'आवेदन संसाधित किया जा रहा है';
  @override
  String get approveApplication => 'आवेदन स्वीकृत करें';
  @override
  String get rejectApplication => 'आवेदन अस्वीकार करें';
  @override
  String get maintenanceCost => 'रखरखाव लागत';
  @override
  String get transactionSummary => 'लेनदेन सारांश';
  @override
  String get maintenanceRequest => 'रखरखाव अनुरोध';
  @override
  String get notifications => 'सूचनाएं';
  @override
  String get myProperties => 'मेरी संपत्तियाँ';
  @override
  String get recommendationProperties => 'अनुशंसा गुण';
  @override
  String get laborList => 'श्रम सूची';
  @override
  String get addLabor => 'श्रम जोड़ें';
  @override
  String get laborDetails => 'श्रम विवरण';
  @override
  String get laborSalary => 'श्रम वेतन';
  @override
  String get editLabor => 'श्रम संपादित करें';
  @override
  String get addNewLabor => 'नया श्रम जोड़ें';
  @override
  String get enterAmount => 'राशि दर्ज करें';
  @override
  String get maintenanceDetails => 'रखरखाव विवरण';
  @override
  String get laborName => 'श्रम का नाम';
  @override
  String get comment => 'टिप्पणी';
  @override
  String get image => 'छवि';
  @override
  String get complete => 'पूरा करें';
  @override
  String get details => 'विवरण';
  @override
  String get title => 'शीर्षक';
  @override
  String get date => 'तिथि';
  @override
  String get reason => 'कारण';
  @override
  String get edit => 'संपादित करें';
  @override
  String get property => 'संपत्ति';
  @override
  String get completeYourProfile => 'अपनी प्रोफाइल पूरी करें';
  @override
  String get profileImage => 'प्रोफ़ाइल छवि';
  @override
  String get imagePickHint =>
      'अधिकतम आकार 120x120 पिक्सेल के साथ केवल जेपीईजी और पीएनजी छवि।';
  @override
  String get invoiceId => 'चालान आईडी';
  @override
  String get depositAmount => 'जमा राशि';
  @override
  String get landlordPhone => 'मकान मालिक का फोन';
  @override
  String get rentalAdvance => 'किराया (अग्रिम)';
  @override
  String get totalAmount => 'कुल राशि';
  @override
  String get rentalAmount => 'किराया राशि';
  @override
  String get adminCharge => 'प्रशासन शुल्क';
  @override
  String get editAccount => 'खाता संपादित करें';
  @override
  String get addNewAccount => 'नया खाता जोड़ें';
  @override
  String get transactionId => 'लेनदेन आईडी';
  @override
  String get transactionType => 'लेनदेन प्रकार';
  @override
  String get requestDate => 'अनुरोध तिथि';
  @override
  String get amount => 'राशि';
  @override
  String get fee => 'शुल्क';
  @override
  String get paymentStatus => 'भुगतान स्थिति';
  @override
  String get generatedTime => 'उत्पन्न समय';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'यह '),
      appName,
      const TextSpan(text: ' की एक सिस्टम जनरेटेड रिपोर्ट है'),
    ],
  );
  @override
  String get withdrawHistory => 'निकासी इतिहास';
  @override
  String get history => 'इतिहास';
  @override
  String get withdrawAmount => 'निकासी राशि';
  @override
  String get availableBalance => 'उपलब्ध शेष';
  @override
  String get withdrawCharge => 'निकासी शुल्क';
  @override
  String get paymentMethod => 'भुगतान विधि';
  @override
  String get requestSendSuccess => 'अनुरोध सफलतापूर्वक भेजा गया!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'भुगतान रसीद सफलतापूर्वक जमा की गई।';
  @override
  String get refundReason => 'धनवापसी का कारण';
  @override
  String get note => 'नोट';
  @override
  String get refundReceiveSuccess => 'धनवापसी सफलतापूर्वक प्राप्त हुई।';
  @override
  String get downloadPaymentReceipt => 'भुगतान रसीद डाउनलोड करें';
  @override
  String get invoice => 'चालान';
  @override
  String get selectPropertyToSeeInvoice =>
      'चालान नंबर देखने के लिए संपत्ति का चयन करें...';
  @override
  String get bankAccName => 'बैंक खाता नाम';
  @override
  String get bankName => 'बैंक का नाम';
  @override
  String get bankAccNum => 'बैंक खाता संख्या';
  @override
  String get thankYou => 'धन्यवाद!';
  @override
  String get basicInfo => 'मूल जानकारी';
  @override
  String get descriptionPricing => 'विवरण और मूल्य निर्धारण';
  @override
  String get contact => 'संपर्क करें';
  @override
  String get photos => 'तस्वीरें';
  @override
  String get successfullySubmitted => 'सफलतापूर्वक जमा किया गया!';
  @override
  String get editProperty => 'संपत्ति संपादित करें';
  @override
  String get addNewProperty => 'नई संपत्ति जोड़ें';
  @override
  String get propertyManageRequestSuccess =>
      'आपका विज्ञापन समीक्षा के लिए सबमिट कर दिया गया है।';
  @override
  String get postAnotherProperty => 'एक और संपत्ति पोस्ट करें';
  @override
  String get browseYourProperty => 'अपनी संपत्ति ब्राउज़ करें';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'कदम '),
      step,
      const TextSpan(text: ' का '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'आप क्या पोस्ट करना चाहेंगे?';
  @override
  String get category => 'श्रेणी';
  @override
  String get invalidCategory => 'अमान्य श्रेणी';
  @override
  String get unitNumber => 'इकाई संख्या';
  @override
  String get sqft => 'वर्ग फुट';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'संपत्ति का आकार शून्य से अधिक होना चाहिए';
  @override
  String get whatAreTheFacility => 'सुविधाएँ क्या हैं?';
  @override
  String get whatAreTheAmenity => 'सुविधाएँ क्या हैं?';
  @override
  String get parkingLot => 'पार्किंग स्थल';
  @override
  String get houseType => 'घर का प्रकार';
  @override
  String get value => 'मूल्य';
  @override
  String get unitLotSize => 'इकाई / लॉट आकार';
  @override
  String get landSize => 'भूमि का आकार';
  @override
  String get acres => 'एकड़';
  @override
  String get roomSize => 'कमरे का आकार';
  @override
  String get askTenantPreference => 'आपकी किरायेदार प्राथमिकता क्या है';
  @override
  String get couple => 'दंपति';
  @override
  String describeTheProperty({required String propertyType}) =>
      '${propertyType} का वर्णन करें';
  @override
  String get adTitle => 'विज्ञापन शीर्षक';
  @override
  String get minimumRentalPeriod => 'न्यूनतम किराया अवधि';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} नंबर';
  @override
  String get hideOrDisplayEmail => 'ईमेल पता छुपाएं या दिखाएं';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      '${appName} पर संपत्ति पोस्ट करने के लिए धन्यवाद!';
  @override
  String get propertyList => 'संपत्ति सूची';
  @override
  String get newInviteRent => 'नया आमंत्रण किराया';
  @override
  String get rentAgreement => 'किराया समझौता';
  @override
  String get rentDetails => 'किराया विवरण';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'नोट: '),
      note('कृपया किरायेदार द्वारा आमंत्रण स्वीकार करने तक प्रतीक्षा करें।'),
    ],
  );
  @override
  String get rent => 'किराया';
  @override
  String get editTenant => 'किरायेदार संपादित करें';
  @override
  String get addNewTenant => 'नया किरायेदार जोड़ें';
  @override
  String get shareInstallLink => 'इंस्टॉल लिंक साझा करें';
  @override
  String get tenantList => 'किरायेदार सूची';
  @override
  String get editMaintenanceRequest => 'रखरखाव अनुरोध संपादित करें';
  @override
  String get addNewMaintenance => 'नया रखरखाव जोड़ें';
  @override
  String get landlordId => 'मकान मालिक आईडी';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'नोट '),
      note(
        'आपका समझौता समीक्षाधीन है। कृपया मकान मालिक द्वारा आपके किराए को मंजूरी देने तक प्रतीक्षा करें।',
      ),
    ],
  );
  @override
  String get editReview => 'समीक्षा संपादित करें';
  @override
  String get writeAReview => 'समीक्षा लिखें';
  @override
  String get selectRating => 'रेटिंग का चयन करें';
  @override
  String get enterYourOpinion => 'अपनी राय दर्ज करें';
  @override
  String get askToEnterReviewMsg => 'कृपया एक समीक्षा संदेश दर्ज करें';
  @override
  String get pressBackAgainToExit => 'बाहर निकलने के लिए फिर से बैक दबाएं।';
  @override
  String get selectPaymentMethod => 'भुगतान विधि का चयन करें';
  @override
  String get filter => 'फ़िल्टर';
  @override
  String get perMonth => '/1 महीना';
  @override
  String searchHintWithAppName({required String appName}) =>
      '${appName} में कुछ भी खोजें...';
}

// Path: exceptions
class _TranslationsExceptionsHi implements TranslationsExceptionsEn {
  _TranslationsExceptionsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'कुछ गलत हो गया, कृपया पुन: प्रयास करें';
  @override
  String get noNidPassport => 'कोई एनआईडी/पासपोर्ट छवि प्रदान नहीं की गई।';
  @override
  String get noRentPropertyFound =>
      'इस किरायेदार के लिए कोई किराया पॉपर्टी नहीं मिली।';
  @override
  String get noPropertyFoundWithKeyWord =>
      'कोई संपत्ति नहीं मिली!\nकृपया विभिन्न कीवर्ड के साथ प्रयास करें';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'कोई सदस्यता योजना नहीं मिली!\nकृपया पृष्ठ को ताज़ा करें और पुन: प्रयास करें।';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'अमान्य ${dataType} जानकारी! कृपया पृष्ठ को ताज़ा करें और पुन: प्रयास करें।';
  @override
  String get invalidDownloadUrl => 'अमान्य डाउनलोड यूआरएल!';
  @override
  String failedToSaveFile({required String error}) =>
      'फ़ाइल सहेजने में विफल! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'फ़ाइल खोलने में त्रुटि! ${error}';
  @override
  String get noVehicleInfoProvided => 'कोई वाहन जानकारी प्रदान नहीं की गई।';
  @override
  String get yourApplicationRejected => 'आपका आवेदन अस्वीकार कर दिया गया है';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintHi
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintHi._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintHi noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintHi._(_root);
  @override
  String get noImageProvided => 'कोई छवि प्रदान नहीं की गई';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundHi
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundHi._(
    _root,
  );
  @override
  String get noDepositFound =>
      'कोई सुरक्षा जमा राशि नहीं मिली!\nकृपया सुरक्षा जमा राशि उपलब्ध होने पर देख सकते हैं';
  @override
  String get noRentPaymentFound =>
      'कोई किराया भुगतान नहीं मिला!\nकृपया किराया भुगतान उपलब्ध होने पर देख सकते हैं';
  @override
  String get transactionSummaryApiException =>
      'लेनदेन सारांश प्राप्त करने में विफल।';
  @override
  String get noWithdrawRequestFound =>
      'कोई अनुरोध नहीं मिला!\nकृपया यहां देखने के लिए निकासी अनुरोध बनाने का प्रयास करें।';
  @override
  String get withdrawRequestNotApproved =>
      'यह निकासी अनुरोध स्वीकृत नहीं किया गया है!.';
  @override
  String get nonZeroError => 'कृपया शून्य से अधिक एक मान्य राशि दर्ज करें।';
  @override
  String minAmountError({required String minValue}) =>
      'राशि कम से कम ${minValue} होनी चाहिए।';
  @override
  String maxAmountError({required String maxValue}) =>
      'राशि ${maxValue} से अधिक नहीं होनी चाहिए।';
  @override
  String get selectPaymentMethodHint => 'कृपया पहले भुगतान विधि का चयन करें।';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundHi
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundHi._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintHi refundRequestHint =
      _TranslationsExceptionsRefundRequestHintHi._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'कृपया ${value} की संख्या का चयन करें';
  @override
  String get invalidDateRange => 'अमान्य तिथि सीमा।';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} शून्य से अधिक होना चाहिए।';
  @override
  late final _TranslationsExceptionsEditPropertyHi editProperty =
      _TranslationsExceptionsEditPropertyHi._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationHi rentInvitation =
      _TranslationsExceptionsRentInvitationHi._(_root);
  @override
  String get notenantFoundList =>
      'कोई किरायेदार नहीं!\nकृपया यहां देखने के लिए एक किरायेदार जोड़ने का प्रयास करें।';
  @override
  String get noFeaturesProvided => 'कोई सुविधाएँ प्रदान नहीं की गईं।';
  @override
  String get noNotificationFound =>
      'कोई सूचना उपलब्ध नहीं है।\nआप अपनी सूचना यहां उपलब्ध होने पर देख सकते हैं।';
}

// Path: prompt
class _TranslationsPromptHi implements TranslationsPromptEn {
  _TranslationsPromptHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutHi logout = _TranslationsPromptLogoutHi._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationHi application =
      _TranslationsPromptApplicationHi._(_root);
  @override
  late final _TranslationsPromptLaborHi labor = _TranslationsPromptLaborHi._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestHi maintenanceRequest =
      _TranslationsPromptMaintenanceRequestHi._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodHi withdrawMethod =
      _TranslationsPromptWithdrawMethodHi._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesHi unsavedChanges =
      _TranslationsPromptUnsavedChangesHi._(_root);
  @override
  late final _TranslationsPromptPropertyHi property =
      _TranslationsPromptPropertyHi._(_root);
  @override
  late final _TranslationsPromptRentInvitationHi rentInvitation =
      _TranslationsPromptRentInvitationHi._(_root);
  @override
  late final _TranslationsPromptSessionExpiredHi sessionExpired =
      _TranslationsPromptSessionExpiredHi._(_root);
  @override
  late final _TranslationsPromptNoInternetHi noInternet =
      _TranslationsPromptNoInternetHi._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerHi permissionHandler =
      _TranslationsPromptPermissionHandlerHi._(_root);
  @override
  late final _TranslationsPromptImagePickerHi imagePicker =
      _TranslationsPromptImagePickerHi._(_root);
  @override
  late final _TranslationsPromptVerificationDialogHi verificationDialog =
      _TranslationsPromptVerificationDialogHi._(_root);
  @override
  late final _TranslationsPromptNotificationHi notification =
      _TranslationsPromptNotificationHi._(_root);
}

// Path: form
class _TranslationsFormHi implements TranslationsFormEn {
  _TranslationsFormHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameHi fullName =
      _TranslationsFormFullNameHi._(_root);
  @override
  late final _TranslationsFormEmailHi email = _TranslationsFormEmailHi._(_root);
  @override
  late final _TranslationsFormPasswordHi password =
      _TranslationsFormPasswordHi._(_root);
  @override
  late final _TranslationsFormConfirmPasswordHi confirmPassword =
      _TranslationsFormConfirmPasswordHi._(_root);
  @override
  late final _TranslationsFormMobileNumberHi mobileNumber =
      _TranslationsFormMobileNumberHi._(_root);
  @override
  late final _TranslationsFormAddress1Hi address1 =
      _TranslationsFormAddress1Hi._(_root);
  @override
  late final _TranslationsFormAddress2Hi address2 =
      _TranslationsFormAddress2Hi._(_root);
  @override
  late final _TranslationsFormPostalCodeHi postalCode =
      _TranslationsFormPostalCodeHi._(_root);
  @override
  late final _TranslationsFormCityHi city = _TranslationsFormCityHi._(_root);
  @override
  late final _TranslationsFormStateHi state = _TranslationsFormStateHi._(_root);
  @override
  late final _TranslationsFormCountryHi country = _TranslationsFormCountryHi._(
    _root,
  );
  @override
  late final _TranslationsFormOtpHi otp = _TranslationsFormOtpHi._(_root);
  @override
  late final _TranslationsFormTitleHi title = _TranslationsFormTitleHi._(_root);
  @override
  late final _TranslationsFormDateHi date = _TranslationsFormDateHi._(_root);
  @override
  late final _TranslationsFormReasonHi reason = _TranslationsFormReasonHi._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodHi withdrawMethod =
      _TranslationsFormWithdrawMethodHi._(_root);
  @override
  late final _TranslationsFormFileFieldHi fileField =
      _TranslationsFormFileFieldHi._(_root);
  @override
  late final _TranslationsFormNoteHi note = _TranslationsFormNoteHi._(_root);
  @override
  late final _TranslationsFormGenderHi gender = _TranslationsFormGenderHi._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldHi anyField =
      _TranslationsFormAnyFieldHi._(_root);
  @override
  late final _TranslationsFormAnyDropdownHi anyDropdown =
      _TranslationsFormAnyDropdownHi._(_root);
}

// Path: action
class _TranslationsActionHi implements TranslationsActionEn {
  _TranslationsActionHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'अगला';
  @override
  String get getStarted => 'शुरू हो जाओ';
  @override
  String get skip => 'छोड़ें';
  @override
  String get select => 'चयन करें';
  @override
  String get save => 'सहेजें';
  @override
  String get signIn => 'साइन इन करें';
  @override
  String get signUp => 'साइन अप करें';
  @override
  String get kContinue => 'जारी रखें';
  @override
  String get clearAll => 'सब साफ़ करें';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'भेजें';
  @override
  String get pay => 'भुगतान करें';
  @override
  String get remove => 'हटाएं';
  @override
  String get goBack => 'वापस जाएं';
  @override
  String get buyNow => 'अभी खरीदें';
  @override
  String get no => 'नहीं';
  @override
  String get open => 'खोलें';
  @override
  String get addProperty => 'संपत्ति जोड़ें';
  @override
  String get process => 'संसाधित करें';
  @override
  String get approve => 'मंजूर करें';
  @override
  String get reject => 'अस्वीकार करें';
  @override
  String get viewRent => 'किराया देखें';
  @override
  String get openNavigationMenu => 'नेविगेशन मेनू खोलें';
  @override
  String get seeAll => 'सभी देखें';
  @override
  String get update => 'अपडेट करें';
  @override
  String get printTransaction => 'लेनदेन प्रिंट करें';
  @override
  String get payoutRequest => 'भुगतान अनुरोध';
  @override
  String get addNew => '+ नया जोड़ें';
  @override
  String get sendRequest => 'अनुरोध भेजें';
  @override
  String get print => 'प्रिंट करें';
  @override
  String get requestForRefund => 'धनवापसी का अनुरोध करें';
  @override
  String get previous => 'पिछला';
  @override
  String get delete => 'हटाएं';
  @override
  String get applyProperty => 'संपत्ति लागू करें';
  @override
  String get viewApplication => 'आवेदन देखें';
  @override
  String get inviteTenant => 'किरायेदार को आमंत्रित करें';
  @override
  String get inviteRent => 'किराया आमंत्रित करें';
  @override
  String get cancel => 'रद्द करें';
  @override
  String get accept => 'स्वीकार करें';
  @override
  String get submit => 'जमा करें';
  @override
  String get yes => 'हाँ';
  @override
  String get okay => 'ठीक है';
  @override
  String get confirm => 'पुष्टि करें';
  @override
  String get apply => 'लागू करें';
  @override
  String get reset => 'रीसेट करें';
  @override
  String get retry => 'पुनः प्रयास करें';
  @override
  String get viewAll => 'सभी देखें';
}

// Path: pages
class _TranslationsPagesHi implements TranslationsPagesEn {
  _TranslationsPagesHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageHi language =
      _TranslationsPagesLanguageHi._(_root);
  @override
  late final _TranslationsPagesOnboardHi onboard =
      _TranslationsPagesOnboardHi._(_root);
  @override
  late final _TranslationsPagesSignInHi signIn = _TranslationsPagesSignInHi._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordHi forgotPassword =
      _TranslationsPagesForgotPasswordHi._(_root);
  @override
  late final _TranslationsPagesOtpVerificationHi otpVerification =
      _TranslationsPagesOtpVerificationHi._(_root);
  @override
  late final _TranslationsPagesResetPasswordHi resetPassword =
      _TranslationsPagesResetPasswordHi._(_root);
  @override
  late final _TranslationsPagesSignUpHi signUp = _TranslationsPagesSignUpHi._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeHi welcome =
      _TranslationsPagesWelcomeHi._(_root);
  @override
  late final _TranslationsPagesAboutUsHi aboutUs =
      _TranslationsPagesAboutUsHi._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsHi termsAndConditions =
      _TranslationsPagesTermsAndConditionsHi._(_root);
  @override
  late final _TranslationsPagesNotificationListHi notificationList =
      _TranslationsPagesNotificationListHi._(_root);
  @override
  late final _TranslationsPagesContactUsHi contactUs =
      _TranslationsPagesContactUsHi._(_root);
  @override
  late final _TranslationsPagesCancelRentingHi cancelRenting =
      _TranslationsPagesCancelRentingHi._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsHi invoiceDetails =
      _TranslationsPagesInvoiceDetailsHi._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentHi offlinePayment =
      _TranslationsPagesOfflinePaymentHi._(_root);
  @override
  late final _TranslationsPagesPaymentStatusHi paymentStatus =
      _TranslationsPagesPaymentStatusHi._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsHi propertyDetails =
      _TranslationsPagesPropertyDetailsHi._(_root);
  @override
  late final _TranslationsPagesSearchHi search = _TranslationsPagesSearchHi._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanHi subscriptionPlan =
      _TranslationsPagesSubscriptionPlanHi._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportHi
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportHi._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsHi implements TranslationsEnumsEn {
  _TranslationsEnumsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusHi propertyStatus =
      _TranslationsEnumsPropertyStatusHi._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeHi propertyType =
      _TranslationsEnumsPropertyTypeHi._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusHi applicationStatus =
      _TranslationsEnumsApplicationStatusHi._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusHi myRentStatus =
      _TranslationsEnumsMyRentStatusHi._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusHi maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusHi._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeHi tenantProfileType =
      _TranslationsEnumsTenantProfileTypeHi._(_root);
  @override
  late final _TranslationsEnumsTenantTypeHi tenantType =
      _TranslationsEnumsTenantTypeHi._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusHi paymentStatus =
      _TranslationsEnumsPaymentStatusHi._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsHi paymentOptions =
      _TranslationsEnumsPaymentOptionsHi._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeHi paymentType =
      _TranslationsEnumsPaymentTypeHi._(_root);
  @override
  late final _TranslationsEnumsGenderHi gender = _TranslationsEnumsGenderHi._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationHi ecRelation =
      _TranslationsEnumsEcRelationHi._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeHi vehicleType =
      _TranslationsEnumsVehicleTypeHi._(_root);
  @override
  late final _TranslationsEnumsSortByHi sortBy = _TranslationsEnumsSortByHi._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeHi residentialType =
      _TranslationsEnumsResidentialTypeHi._(_root);
  @override
  late final _TranslationsEnumsFloorRangeHi floorRange =
      _TranslationsEnumsFloorRangeHi._(_root);
  @override
  late final _TranslationsEnumsFurnishingsHi furnishings =
      _TranslationsEnumsFurnishingsHi._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeHi commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeHi._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeHi landPropertyType =
      _TranslationsEnumsLandPropertyTypeHi._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeHi residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeHi._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodHi minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodHi._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterHi dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterHi._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileHi
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} मो. नंबर';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoHi
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'वाहन जानकारी';
  @override
  String get optional => 'वाहन जानकारी (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoHi
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'वाहन पंजीकरण संख्या';
  @override
  String get short => 'पंजीकरण संख्या';
  @override
  String get alt => 'प्लेट नंबर';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintHi
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'कोई आवेदन नहीं मिला!\n${subject} उपलब्ध होने पर यहां प्रदर्शित किया जाएगा।';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsHi subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsHi._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintHi
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'कोई संपत्ति नहीं मिली!\nकृपया यहां देखने के लिए एक संपत्ति जोड़ने का प्रयास करें।';
  @override
  String get tenantRecommended =>
      'कोई अनुशंसित संपत्तियाँ नहीं मिलीं\nकृपया बाद में पुन: प्रयास करें।';
  @override
  String get tenantAllProperty =>
      'संपत्तियाँ उपलब्ध नहीं हैं\nकृपया बाद में पुन: प्रयास करें।';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundHi
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'कोई ${status} रखरखाव नहीं मिला।';
  @override
  String get tenant =>
      'कोई रखरखाव नहीं मिला! आप यहां देखने के लिए रखरखाव अनुरोध बना सकते हैं।';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundHi
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'कोई ${status} धनवापसी अनुरोध नहीं मिला!\nआप धनवापसी अनुरोध यहां उपलब्ध होने पर देख सकते हैं।';
  @override
  String get tenant =>
      'कोई धनवापसी अनुरोध नहीं मिला!\nआप यहां देखने के लिए धनवापसी अनुरोध बना सकते हैं।';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintHi
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'किरायेदार धनवापसी को मंजूरी देगा जब उसे पैसे वापस मिल जाएंगे';
  @override
  String get tenantReqSuccess =>
      'हम धनवापसी अनुरोध की समीक्षा करेंगे और 24 घंटों के भीतर इसे मंजूरी दे देंगे।';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyHi
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'किराया संपत्ति बदल रही है। यह केवल अगले महीने के किराए के भुगतान के लिए मान्य (प्रभावी) होनी चाहिए।';
  @override
  String get deleteOnRent =>
      'आपकी संपत्ति पहले से ही किरायेदार द्वारा किराए पर ली गई है। कृपया किरायेदार को पहले हटाने तक इसे हटा नहीं सकते';
  @override
  String get alreayRented =>
      'यह संपत्ति पहले से ही किराए पर है। कृपया बाद में पुन: प्रयास करें।\nया आप अधिक जानकारी के लिए मकान मालिक से संपर्क कर सकते हैं।';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationHi
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'कोई किराया आमंत्रण नहीं मिला!\nकृपया यहां देखने के लिए एक किराया आमंत्रण बनाने का प्रयास करें।';
  @override
  String get tenantNoRentInvitation =>
      'कोई किराया आमंत्रण नहीं मिला!\nआप किराया आमंत्रण यहां उपलब्ध होने पर देख सकते हैं।';
}

// Path: prompt.logout
class _TranslationsPromptLogoutHi implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'क्या आप वाकई लॉग आउट करना चाहते हैं?';
}

// Path: prompt.application
class _TranslationsPromptApplicationHi
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'आप इस आवेदन को क्यों अस्वीकार कर रहे हैं?';
  @override
  late final _TranslationsPromptApplicationApplicationSentHi applicationSent =
      _TranslationsPromptApplicationApplicationSentHi._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborHi implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteHi delete =
      _TranslationsPromptLaborDeleteHi._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestHi
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'यह अनुरोध क्यों अस्वीकार किया जा रहा है?';
  @override
  String get processTitle =>
      'क्या आप वाकई इस रखरखाव अनुरोध को संसाधित कर रहे हैं?';
  @override
  String get completeTitle => 'कार्य पूरा हुआ?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodHi
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'निकासी विधि हटाएं?';
  @override
  String get deleteDescription =>
      'क्या आप वाकई इस निकासी विधि को हटाना चाहते हैं?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesHi
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'क्या आप वाकई वापस जाना चाहते हैं?';
  @override
  String get message => 'परिवर्तित किए गए फ़ील्ड सहेजे नहीं जाएंगे!';
}

// Path: prompt.property
class _TranslationsPromptPropertyHi implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteHi delete =
      _TranslationsPromptPropertyDeleteHi._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationHi
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveHi
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveHi._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptHi tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptHi._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredHi
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'सत्र समाप्त हो गया';
  @override
  String get message => 'आपका सत्र समाप्त हो गया है। कृपया फिर से साइन इन करें';
  @override
  String get action => 'साइन इन करें';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetHi
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'कोई इंटरनेट कनेक्शन नहीं';
  @override
  String get message =>
      'कृपया अपना वाई-फाई मोबाइल नेटवर्क कनेक्शन जांचें और पुन: प्रयास करें';
  @override
  String get action => 'पुनः प्रयास करें';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerHi
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'अनुमति आवश्यक है!';
  @override
  String get message =>
      'आपको ऐप सेटिंग्स में अनुमतियां देने की आवश्यकता है। क्या आप अभी सेटिंग्स खोलना चाहेंगे?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerHi
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'विकल्प चुनें';
  @override
  String get gallery => 'गैलरी';
  @override
  String get camera => 'कैमरा';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogHi
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'अपना ईमेल सत्यापित करें';
  @override
  String get message => 'हमने एक सत्यापन कोड ईमेल भेजा है';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} ${email} को';
}

// Path: prompt.notification
class _TranslationsPromptNotificationHi
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'सूचनाएं साफ़ करें?';
  @override
  String get clearMessage => 'क्या आप वाकई सभी सूचनाओं को साफ़ करना चाहते हैं?';
}

// Path: form.fullName
class _TranslationsFormFullNameHi implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => '${_root.common.fullName} दर्ज करें';
  @override
  late final _TranslationsFormFullNameErrorsHi errors =
      _TranslationsFormFullNameErrorsHi._(_root);
}

// Path: form.email
class _TranslationsFormEmailHi implements TranslationsFormEmailEn {
  _TranslationsFormEmailHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'अपना ${_root.common.email} दर्ज करें';
  @override
  late final _TranslationsFormEmailErrorsHi errors =
      _TranslationsFormEmailErrorsHi._(_root);
}

// Path: form.password
class _TranslationsFormPasswordHi implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsHi errors =
      _TranslationsFormPasswordErrorsHi._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordHi
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.password} की पुष्टि करें';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsHi errors =
      _TranslationsFormConfirmPasswordErrorsHi._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberHi
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsHi errors =
      _TranslationsFormMobileNumberErrorsHi._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Hi implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Hi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'मकान नंबर और सड़क का नाम';
  @override
  late final _TranslationsFormAddress1ErrorsHi errors =
      _TranslationsFormAddress1ErrorsHi._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Hi implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Hi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'अपार्टमेंट, सुइट, यूनिट, आदि';
  @override
  late final _TranslationsFormAddress2ErrorsHi errors =
      _TranslationsFormAddress2ErrorsHi._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeHi implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => '${_root.common.postalCode} दर्ज करें';
  @override
  late final _TranslationsFormPostalCodeErrorsHi errors =
      _TranslationsFormPostalCodeErrorsHi._(_root);
}

// Path: form.city
class _TranslationsFormCityHi implements TranslationsFormCityEn {
  _TranslationsFormCityHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => '${_root.common.city} नाम दर्ज करें।';
  @override
  late final _TranslationsFormCityErrorsHi errors =
      _TranslationsFormCityErrorsHi._(_root);
}

// Path: form.state
class _TranslationsFormStateHi implements TranslationsFormStateEn {
  _TranslationsFormStateHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => '${_root.common.state} नाम दर्ज करें।';
  @override
  late final _TranslationsFormStateErrorsHi errors =
      _TranslationsFormStateErrorsHi._(_root);
}

// Path: form.country
class _TranslationsFormCountryHi implements TranslationsFormCountryEn {
  _TranslationsFormCountryHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => '${_root.common.country} का चयन करें।';
  @override
  late final _TranslationsFormCountryErrorsHi errors =
      _TranslationsFormCountryErrorsHi._(_root);
}

// Path: form.otp
class _TranslationsFormOtpHi implements TranslationsFormOtpEn {
  _TranslationsFormOtpHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsHi errors =
      _TranslationsFormOtpErrorsHi._(_root);
}

// Path: form.title
class _TranslationsFormTitleHi implements TranslationsFormTitleEn {
  _TranslationsFormTitleHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'शीर्षक';
  @override
  String get hint => 'शीर्षक दर्ज करें';
  @override
  late final _TranslationsFormTitleErrorsHi errors =
      _TranslationsFormTitleErrorsHi._(_root);
}

// Path: form.date
class _TranslationsFormDateHi implements TranslationsFormDateEn {
  _TranslationsFormDateHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '${_root.form.date.label(label: label)} का चयन करें';
  @override
  late final _TranslationsFormDateErrorsHi errors =
      _TranslationsFormDateErrorsHi._(_root);
}

// Path: form.reason
class _TranslationsFormReasonHi implements TranslationsFormReasonEn {
  _TranslationsFormReasonHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'कारण';
  @override
  String get hint => 'कारण दर्ज करें';
  @override
  late final _TranslationsFormReasonErrorsHi errors =
      _TranslationsFormReasonErrorsHi._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodHi
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => '${_root.common.withdrawMethod} का चयन करें';
  @override
  late final _TranslationsFormWithdrawMethodErrorsHi errors =
      _TranslationsFormWithdrawMethodErrorsHi._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldHi implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => '${label} अपलोड करें';
  @override
  late final _TranslationsFormFileFieldErrorsHi errors =
      _TranslationsFormFileFieldErrorsHi._(_root);
}

// Path: form.note
class _TranslationsFormNoteHi implements TranslationsFormNoteEn {
  _TranslationsFormNoteHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      '${_root.form.note.label(note: note)} दर्ज करें';
  @override
  late final _TranslationsFormNoteErrorsHi errors =
      _TranslationsFormNoteErrorsHi._(_root);
}

// Path: form.gender
class _TranslationsFormGenderHi implements TranslationsFormGenderEn {
  _TranslationsFormGenderHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => '${_root.common.gender} का चयन करें';
  @override
  late final _TranslationsFormGenderErrorsHi errors =
      _TranslationsFormGenderErrorsHi._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldHi implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '${_root.form.anyField.label(label: label)} दर्ज करें';
  @override
  late final _TranslationsFormAnyFieldErrorsHi errors =
      _TranslationsFormAnyFieldErrorsHi._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownHi implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '${_root.form.anyDropdown.label(label: label)} का चयन करें';
  @override
  late final _TranslationsFormAnyDropdownErrorsHi errors =
      _TranslationsFormAnyDropdownErrorsHi._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageHi implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardHi implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataHi onboardData =
      _TranslationsPagesOnboardOnboardDataHi._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInHi implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'वापस स्वागत है';
  @override
  String get subtitle => 'एक अद्भुत यात्रा शुरू करने के लिए अभी साइन इन करें।';
  @override
  late final _TranslationsPagesSignInExtraHi extra =
      _TranslationsPagesSignInExtraHi._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordHi
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'पासवर्ड भूल गए';
  @override
  String get subtitle =>
      'अपना पासवर्ड रिकवर करने के लिए अपना ईमेल पता दर्ज करें।';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationHi
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'सत्यापन';
  @override
  String subtitle({required String email}) =>
      '4-अंकों का पिन आपके ईमेल पते पर भेज दिया गया है। ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraHi extra =
      _TranslationsPagesOtpVerificationExtraHi._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordHi
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'पासवर्ड रीसेट करें';
  @override
  String get subtitle =>
      'रिकवरी और अपने खाते में लॉग इन करने के लिए अपना पासवर्ड रीसेट करें';
  @override
  late final _TranslationsPagesResetPasswordExtraHi extra =
      _TranslationsPagesResetPasswordExtraHi._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpHi implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'एक खाता बनाएं';
  @override
  String get subtitle => 'एक अद्भुत यात्रा शुरू करने के लिए अभी साइन अप करें';
  @override
  late final _TranslationsPagesSignUpExtraHi extra =
      _TranslationsPagesSignUpExtraHi._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeHi implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'आप कौन हैं?';
  @override
  String get subtitle => 'कृपया नीचे दिए गए विकल्प का चयन करें।';
  @override
  late final _TranslationsPagesWelcomeExtraHi extra =
      _TranslationsPagesWelcomeExtraHi._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsHi implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsHi
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListHi
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'सूचनाएं';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsHi implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraHi extra =
      _TranslationsPagesContactUsExtraHi._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingHi
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'आप ${_root.common.cancelRenting} क्यों कर रहे हैं?';
  @override
  late final _TranslationsPagesCancelRentingFormHi form =
      _TranslationsPagesCancelRentingFormHi._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsHi
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentHi
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'ऑफ़लाइन भुगतान';
  @override
  late final _TranslationsPagesOfflinePaymentFormHi form =
      _TranslationsPagesOfflinePaymentFormHi._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraHi extra =
      _TranslationsPagesOfflinePaymentExtraHi._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusHi
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessHi success =
      _TranslationsPagesPaymentStatusSuccessHi._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailHi fail =
      _TranslationsPagesPaymentStatusFailHi._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsHi
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraHi extra =
      _TranslationsPagesPropertyDetailsExtraHi._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchHi implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'खोजें';
  @override
  late final _TranslationsPagesSearchExtraHi extra =
      _TranslationsPagesSearchExtraHi._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanHi
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'अपनी योजना चुनें';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraHi extra =
      _TranslationsPagesSubscriptionPlanExtraHi._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportHi
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'कुल रखरखाव लागत: '),
      amount,
    ],
  );
  @override
  String get maintenancePending =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.pending}';
  @override
  String get maintenanceProcessing =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.processing}';
  @override
  String get maintenanceCompleted =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.completed}';
  @override
  String get maintenanceRejected =>
      '${_root.common.maintenance} ${_root.enums.maintenanceStatus.rejected}';
}

// Path: enums.propertyStatus
class _TranslationsEnumsPropertyStatusHi
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'सभी संपत्ति';
  @override
  String get pending => 'लंबित';
  @override
  String get active => 'सक्रिय';
  @override
  String get inactive => 'निष्क्रिय';
  @override
  String get rejected => 'अस्वीकृत';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeHi
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'अपार्टमेंट/कंडोमिनिअम';
  @override
  String get house => 'मकान';
  @override
  String get commercialProperty => 'व्यावसायिक संपत्ति';
  @override
  String get land => 'भूमि';
  @override
  String get room => 'कमरा';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusHi
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'सभी';
  @override
  String get pending => 'लंबित';
  @override
  String get processing => 'प्रसंस्करण';
  @override
  String get approved => 'स्वीकृत';
  @override
  String get rejected => 'अस्वीकृत';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusHi
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'लंबित';
  @override
  String get processing => 'प्रसंस्करण';
  @override
  String get active => 'सक्रिय';
  @override
  String get expired => 'समाप्त';
  @override
  String get cancelled => 'रद्द';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusHi
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'लंबित';
  @override
  String get processing => 'प्रसंस्करण';
  @override
  String get rejected => 'अस्वीकृत';
  @override
  String get completed => 'संपन्न';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeHi
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'निजी (व्यक्तिगत)';
  @override
  String get company => 'कंपनी';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeHi implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'नया किरायेदार';
  @override
  String get activeTenant => 'सक्रिय किरायेदार';
  @override
  String get expiredTenant => 'समाप्त किरायेदार';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusHi
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'सभी';
  @override
  String get pending => 'लंबित';
  @override
  String get paid => 'भुगतान किया गया';
  @override
  String get unpaid => 'अभुगतान';
  @override
  String get rejected => 'अस्वीकृत';
  @override
  String get refund => 'धनवापसी';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsHi
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'ऑनलाइन भुगतान';
  @override
  String get offlinePayment => 'ऑफ़लाइन भुगतान';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeHi
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'सुरक्षा जमा';
  @override
  String get rentPayment => 'किराया भुगतान';
  @override
  String get subscription => 'सदस्यता';
}

// Path: enums.gender
class _TranslationsEnumsGenderHi implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'पुरुष';
  @override
  String get female => 'महिला';
  @override
  String get other => 'अन्य';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationHi implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'पत्नी';
  @override
  String get parent => 'माता-पिता';
  @override
  String get friend => 'दोस्त';
  @override
  String get brother => 'भाई';
  @override
  String get sister => 'बहन';
  @override
  String get child => 'बच्चा';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeHi
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'कार';
  @override
  String get motorcycles => 'मोटरसाइकिलें';
  @override
  String get lorry => 'लॉरी';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByHi implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'निम्न से उच्च';
  @override
  String get highToLow => 'उच्च से निम्न';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeHi
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'फ्लैट';
  @override
  String get apartment => 'अपार्टमेंट';
  @override
  String get condominium => 'कंडोमिनिअम';
  @override
  String get serviceResidence => 'सर्विस रेजिडेंस';
  @override
  String get studio => 'स्टूडियो';
  @override
  String get duplex => 'डुप्लेक्स';
  @override
  String get townhouseCondo => 'टाउनहाउस कंडो';
  @override
  String get others => 'अन्य';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeHi implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'उच्च';
  @override
  String get medium => 'मध्यम';
  @override
  String get low => 'निम्न';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsHi
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'पूरी तरह से सुसज्जित';
  @override
  String get partiallyFurnished => 'आंशिक रूप से सुसज्जित';
  @override
  String get notFurnished => 'सज्जित नहीं';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeHi
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'कार्यालय स्थान';
  @override
  String get retailSpace => 'खुदरा स्थान';
  @override
  String get shopLot => 'दुकान लॉट';
  @override
  String get warehouseFactory => 'गोदाम / कारखाना';
  @override
  String get hotelResort => 'होटल / रिज़ॉर्ट';
  @override
  String get sofo => 'सोफो';
  @override
  String get soho => 'सोहो';
  @override
  String get sovo => 'सोवो';
  @override
  String get others => 'अन्य';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeHi
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'आवासीय';
  @override
  String get industrial => 'औद्योगिक';
  @override
  String get agricultural => 'कृषि';
  @override
  String get commercial => 'व्यावसायिक';
  @override
  String get mixedDevelopment => 'मिश्रित विकास';
  @override
  String get others => 'अन्य';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeHi
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'कंडो / सर्विसेज रेजिडेंस / पेंटहाउस';
  @override
  String get apartment => 'अपार्टमेंट / फ्लैट';
  @override
  String get house => 'मकान';
  @override
  String get shoplot => 'शॉपलॉट';
  @override
  String get sharing => 'एक घर / फ्लैट साझा करना';
  @override
  String get others => 'अन्य';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodHi
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 महीने';
  @override
  String get oneYear => '1 वर्ष';
  @override
  String get oneAndHalfYears => '1.5 वर्ष';
  @override
  String get twoYears => '2 वर्ष';
  @override
  String get twoAndHalfYears => '2.5 वर्ष';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterHi
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'दैनिक';
  @override
  String get weekly => 'साप्ताहिक';
  @override
  String get monthly => 'मासिक';
  @override
  String get yearly => 'वार्षिक';
  @override
  String get custom => 'कस्टम';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsHi
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'आपका आवेदन';
  @override
  String get landlord => 'किरायेदार का आवेदन';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentHi
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'आवेदन सफलतापूर्वक भेजा गया!';
  @override
  String get sucessDescription =>
      'आप इस आवेदन को अपनी आवेदन सूची में देख सकते हैं';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteHi
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'श्रम हटाएं?';
  @override
  String get description => 'क्या आप वाकई इस श्रम को हटाना चाहते हैं?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteHi
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'संपत्ति हटाएं?';
  @override
  String get message => 'क्या आप वाकई इस संपत्ति को हटाना चाहते हैं?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveHi
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'क्या आप वाकई इस किराए को मंजूरी देना चाहते हैं?';
  @override
  String get description =>
      'सुनिश्चित करें कि आपने किरायेदार द्वारा हस्ताक्षरित समझौते की समीक्षा कर ली है।';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptHi
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'क्या आप वाकई इस आमंत्रण को स्वीकार करना चाहते हैं?';
  @override
  String get description =>
      'सुनिश्चित करें कि आपने समझौता पीडीएफ फाइल डाउनलोड कर ली है!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsHi
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.common.fullName} दर्ज करें';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsHi implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.common.email} पता दर्ज करें';
  @override
  String get invalid => '⦸ अमान्य ईमेल, कृपया पुनः प्रयास करें';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsHi
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.common.password} दर्ज करें';
  @override
  String minLength({required Object count}) =>
      'पासवर्ड कम से कम ${count} अक्षर का होना चाहिए!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsHi
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.common.password} दर्ज करें';
  @override
  String get notMatched => 'पुष्टि पासवर्ड मेल नहीं खाता!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsHi
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.common.mobileNumber} दर्ज करें';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsHi
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.form.address1.label} दर्ज करें';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsHi
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.form.address2.label} दर्ज करें';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsHi
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.common.postalCode} दर्ज करें';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsHi implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.common.city} नाम दर्ज करें।';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsHi implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.common.state} नाम दर्ज करें।';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsHi
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया अपना ${_root.common.country} चयन करें';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsHi implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया ओटीपी दर्ज करें।';
  @override
  String get invalid => 'कृपया सही ओटीपी दर्ज करें।';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsHi implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया शीर्षक दर्ज करें';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsHi implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'कृपया ${_root.form.date.label(label: label)} का चयन करें';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsHi
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया कारण दर्ज करें';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsHi
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया ${_root.common.withdrawMethod} का चयन करें';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsHi
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'कृपया ${label} का चयन करें';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsHi implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'कृपया ${_root.form.note.label(note: note)} दर्ज करें';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsHi
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया ${_root.common.gender} का चयन करें';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsHi
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'कृपया ${_root.form.anyField.label(label: label)} दर्ज करें';
  @override
  String get invalid => 'कृपया मान्य @form.anyField.label दर्ज करें';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsHi
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'कृपया ${_root.form.anyDropdown.label(label: label)} का चयन करें';
  @override
  String get invalid => 'कृपया मान्य @form.anyDropdown.label का चयन करें';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataHi
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Hi data1 =
      _TranslationsPagesOnboardOnboardDataData1Hi._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Hi data2 =
      _TranslationsPagesOnboardOnboardDataData2Hi._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Hi data3 =
      _TranslationsPagesOnboardOnboardDataData3Hi._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraHi
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'मुझे याद रखें';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'खाता नहीं है? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraHi
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendHi codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendHi._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraHi
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogHi dialog =
      _TranslationsPagesResetPasswordExtraDialogHi._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraHi
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'खाता है? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraHi
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'अपनी संपत्तियों का प्रबंधन करें';
  @override
  String get tenantTag => 'अपने किराये के खाते में लॉग इन करें';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraHi
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'संदेश...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormHi
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonHi reason =
      _TranslationsPagesCancelRentingFormReasonHi._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormHi
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteHi paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteHi._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraHi
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'भुगतान राशि: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'खाता धारक का नाम';
  @override
  String get accountNumber => 'खाता संख्या';
  @override
  String get swiftCode => 'स्विफ्ट कोड';
  @override
  String get branch => 'शाखा';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'केवल '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' या '),
      fileType('DOC'),
      const TextSpan(text: ' फॉर्मेट फाइलें चुनें। फ़ाइल आकार '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessHi
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'चालान देखें';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'हम भुगतान की समीक्षा करेंगे और 24 घंटे के भीतर इसे मंजूरी दे देंगे।';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailHi
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'पुनः प्रयास करें';
  @override
  String get title => 'Oops! भुगतान विफल';
  @override
  String get description =>
      'कुछ तकनीकी त्रुटि के कारण आपका लेनदेन विफल हो गया है।';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraHi
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  TextSpan landlord({required InlineSpan landlordName}) => TextSpan(
    children: [
      TextSpan(text: '${_root.common.landlord}: '),
      landlordName,
    ],
  );
  @override
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
  @override
  TextSpan features({required InlineSpanBuilder fa}) => TextSpan(
    children: [
      const TextSpan(text: 'विशेषताएँ '),
      fa('(सुविधाएँ और सुविधाएँ)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'किराया अवधि का चयन करें';
  @override
  String get writeAReview => '+ समीक्षा लिखें';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraHi
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'प्लॉट्स, फ्लैट्स, कमरे खोजें...';
  @override
  String get noRecentSearch => 'आपकी कोई हालिया खोज नहीं है।';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraHi
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'सदस्यता भुगतान सफलतापूर्वक।\nअब आप सब्सक्राइब की गई सुविधाओं तक पहुंच सकते हैं।';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Hi
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Hi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'अपनी संपत्ति खोजें';
  @override
  String get description =>
      'हमने आपके जीवन के अनुकूल जगह खोजना आसान बना दिया है — चाहे वह कमरा हो, अपार्टमेंट हो या घर।';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Hi
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Hi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'शहर में अपार्टमेंट';
  @override
  String get description =>
      'हम आपको जल्दी से सही संपत्ति से मेल करके आपका समय बचाते हैं ताकि वह चला जाए, ताकि आप अपने नए घर का आनंद ले सकें, या अपनी खुद की मुफ्त सूची बना सकें।';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Hi
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Hi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'आपका आराम घर';
  @override
  String get description =>
      'यदि आप रहने के लिए जगह की तलाश में हैं तो किराए के लिए हमारे घरों पर एक नज़र डालें। हमारे पास आपके लिए पूरे देश में चुनने के लिए घरों की एक विस्तृत श्रृंखला है।';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendHi
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'कोड ${minutes}:${seconds} में भेजा गया है';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('कोड पुनः भेजें'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogHi
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'सफलतापूर्वक बदला गया!';
  @override
  String get subtitle =>
      'अपने नए पासवर्ड से साइन इन करें।\nआपको साइन इन करने के लिए रीडायरेक्ट किया जा रहा है...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonHi
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'कारण लिखें';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsHi errors =
      _TranslationsPagesCancelRentingFormReasonErrorsHi._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteHi
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'भुगतान नोट (${_root.common.optional})';
  @override
  String get hint => 'कुछ टेक्स्ट दर्ज करें...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsHi
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsHi._(this._root);

  final TranslationsHi _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'कृपया किराया रद्द करने का कारण दर्ज करें';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsHi {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'प्रोफ़ाइल';
      case 'common.language':
        return 'भाषा';
      case 'common.subscriptionPlan':
        return 'सदस्यता योजना';
      case 'common.contactUs':
        return 'हमसे संपर्क करें';
      case 'common.termsAndConditions':
        return 'नियम और शर्तें';
      case 'common.aboutUs':
        return 'हमारे बारे में';
      case 'common.logout':
        return 'लॉग आउट';
      case 'common.editProfile':
        return 'प्रोफ़ाइल संपादित करें';
      case 'common.fullName':
        return 'पूरा नाम';
      case 'common.email':
        return 'ईमेल';
      case 'common.mobileNumber':
        return 'मोबाइल नंबर';
      case 'common.address':
        return 'पता';
      case 'common.postalCode':
        return 'पिन कोड';
      case 'common.city':
        return 'शहर';
      case 'common.country':
        return 'देश';
      case 'common.state':
        return 'राज्य';
      case 'common.password':
        return 'पासवर्ड';
      case 'common.forgotPassword':
        return 'पासवर्ड भूल गए';
      case 'common.tenant':
        return 'किरायेदार';
      case 'common.landlord':
        return 'मकान मालिक';
      case 'common.cancelRenting':
        return 'किराया रद्द करें';
      case 'common.startDate':
        return 'प्रारंभ तिथि';
      case 'common.endDate':
        return 'अंतिम तिथि';
      case 'common.fromDate':
        return 'से तिथि';
      case 'common.toDate':
        return 'तक तिथि';
      case 'common.online':
        return 'ऑनलाइन';
      case 'common.bankList':
        return 'बैंक सूची';
      case 'common.withdrawMethod':
        return 'निकासी विधि';
      case 'common.uploadPaymentReceipt':
        return 'भुगतान रसीद अपलोड करें';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'नोट: '),
            note(
              'भुगतान के लिए व्यवस्थापक द्वारा मैन्युअल अनुमोदन की आवश्यकता होती है',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 घंटों के भीतर'),
          ],
        );
      case 'common.reviews':
        return 'समीक्षाएँ';
      case 'common.description':
        return 'विवरण';
      case 'common.about':
        return 'के बारे में';
      case 'common.propertyTypes':
        return 'संपत्ति प्रकार';
      case 'common.features':
        return 'विशेषताएँ';
      case 'common.floorPlans':
        return 'मंजिल योजनाएँ';
      case 'common.buildingDetails':
        return 'भवन विवरण';
      case 'common.buildingName':
        return 'भवन का नाम';
      case 'common.propertyAddress':
        return 'संपत्ति का पता';
      case 'common.completionYear':
        return 'निर्माण वर्ष';
      case 'common.lotNumber':
        return 'लॉट नंबर';
      case 'common.residentialType':
        return 'आवासीय प्रकार';
      case 'common.furnishings':
        return 'सज्जा';
      case 'common.floorRange':
        return 'मंजिल रेंज';
      case 'common.bedrooms':
        return 'शयनकक्ष';
      case 'common.bathrooms':
        return 'स्नानघर';
      case 'common.propertySize':
        return 'संपत्ति का आकार';
      case 'common.rentalPeriod':
        return 'किराया अवधि';
      case 'common.securityDeposit':
        return 'सुरक्षा जमा';
      case 'common.utilityBill':
        return 'उपयोगिता बिल';
      case 'common.facilities':
        return 'सुविधाएँ';
      case 'common.amenities':
        return 'सुविधाएँ';
      case 'common.expiringReason':
        return 'समाप्ति का कारण';
      case 'common.tenantDetails':
        return 'किरायेदार विवरण';
      case 'common.typeOfTenant':
        return 'किरायेदार का प्रकार';
      case 'common.tenantName':
        return 'किरायेदार का नाम';
      case 'common.nidPassport':
        return 'एनआईडी/पासपोर्ट';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} आईडी';
      case 'common.tenantId':
        return 'किरायेदार आईडी';
      case 'common.dateOfBirth':
        return 'जन्म तिथि';
      case 'common.gender':
        return 'लिंग';
      case 'common.nominee':
        return 'नामित व्यक्ति';
      case 'common.name':
        return 'नाम';
      case 'common.optional':
        return 'वैकल्पिक';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} मो. नंबर';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'आपातकालीन संपर्क';
      case 'common.relation':
        return 'संबंध';
      case 'common.relationWith':
        return '${_root.common.relation} के साथ';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} आपके साथ';
      case 'common.company':
        return 'कंपनी';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM नंबर';
      case 'common.workplace':
        return 'कार्यस्थल';
      case 'common.officePhoneNo':
        return 'कार्यालय फोन नंबर';
      case 'common.officeMobileNo':
        return 'कार्यालय ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'वाहन';
      case 'common.vehiclesInfo.plain':
        return 'वाहन जानकारी';
      case 'common.vehiclesInfo.optional':
        return 'वाहन जानकारी (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} प्रकार';
      case 'common.vehicleRegistrationNo.normal':
        return 'वाहन पंजीकरण संख्या';
      case 'common.vehicleRegistrationNo.short':
        return 'पंजीकरण संख्या';
      case 'common.vehicleRegistrationNo.alt':
        return 'प्लेट नंबर';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} ब्रांड';
      case 'common.rentProperty':
        return 'संपत्ति किराए पर लें';
      case 'common.propertyDetails':
        return 'संपत्ति विवरण';
      case 'common.propertyId':
        return 'संपत्ति आईडी';
      case 'common.propertyType':
        return 'संपत्ति प्रकार';
      case 'common.propertyName':
        return 'संपत्ति का नाम';
      case 'common.paymentDetails':
        return 'भुगतान विवरण';
      case 'common.monthlyRent':
        return 'मासिक किराया';
      case 'common.thisMonthPayment':
        return 'इस महीने का भुगतान';
      case 'common.totalPaidRent':
        return 'कुल भुगतान किया गया किराया';
      case 'common.dueRent':
        return 'देय किराया';
      case 'common.rentStartDate':
        return 'किराया ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'किराया ${_root.common.endDate}';
      case 'common.status':
        return 'स्थिति';
      case 'common.rentAgreementPdf':
        return 'किराया समझौता पीडीएफ';
      case 'common.noFile':
        return 'कोई फ़ाइल नहीं';
      case 'common.tenantImageOp':
        return 'किरायेदार छवि ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'नए वाहन जोड़ें';
      case 'common.uploadNidPassport':
        return 'एनआईडी/पासपोर्ट अपलोड करें';
      case 'common.nidPassportUploadNote':
        return 'केवल फ़ाइल प्रकार छवि स्वीकार की जाएगी। फ़ाइल सीमा 2.5 एमबी तक।';
      case 'common.search':
        return 'खोजें';
      case 'common.sortBy':
        return 'इसके अनुसार Sort';
      case 'common.subscription':
        return 'सदस्यता';
      case 'common.downloading':
        return 'डाउनलोड हो रहा है...';
      case 'common.downloadSuccess':
        return 'फ़ाइल सफलतापूर्वक डाउनलोड की गई!';
      case 'common.addPropertyBannerTitle':
        return 'क्या आप अपनी संपत्ति किराए पर देना चाहते हैं?';
      case 'common.application':
        return 'आवेदन';
      case 'common.tenantHasPaidDeposit':
        return 'किरायेदार ने जमा राशि का भुगतान कर दिया है।';
      case 'common.askProcessingRentApplication':
        return 'क्या आप वाकई किराए की संपत्ति के लिए इस अनुरोध को संसाधित कर रहे हैं?';
      case 'common.dateAndTime':
        return 'दिनांक और समय';
      case 'common.applicationDetails':
        return 'आवेदन विवरण';
      case 'common.depositStatus':
        return 'जमा स्थिति';
      case 'common.uploadRentAgreement':
        return 'किराया समझौता अपलोड करें';
      case 'common.uploadFilePDF':
        return 'फ़ाइल अपलोड करें (पीडीएफ)';
      case 'common.askSelectRentAgreement':
        return 'कृपया एक समझौता दस्तावेज़ फ़ाइल का चयन करें।';
      case 'common.landlordRentAgreementPDF':
        return 'मकान मालिक किराया समझौता पीडीएफ';
      case 'common.tenantRentAgreementPDF':
        return 'किरायेदार किराया समझौता पीडीएफ';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'नोट: '),
            note(
              'किरायेदार द्वारा जमा भुगतान करने के बाद ही आवेदन को मंजूरी दें।',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'अस्वीकृति का कारण';
      case 'common.youveRejectedThisApplication':
        return 'आपने इस आवेदन को अस्वीकार कर दिया है';
      case 'common.landlordDetails':
        return 'मकान मालिक विवरण';
      case 'common.landlordName':
        return 'मकान मालिक का नाम';
      case 'common.downloadRentAgreement':
        return 'किराया समझौता डाउनलोड करें';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            toc('नियम और शर्तों'),
            const TextSpan(text: ' स्वीकार करें'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'नोट: '),
            note(
              'कृपया समझौता डाउनलोड करें और पढ़ें। कृपया हस्ताक्षरित समझौता व्हाट्सएप या ईमेल के माध्यम से मकान मालिक को भेजें।',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'नोट: '),
            note(
              'मकान मालिक आवेदन को मंजूरी देता है, जब किरायेदार सुरक्षा, उपयोगिता और एक महीने का अग्रिम किराया भुगतान करता है।',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'किराया समझौता (पीडीएफ) '),
            complete('पूरा समझौता'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'नोट: '),
            note(
              'मकान मालिक आवेदन को मंजूरी देता है, जब किरायेदार सुरक्षा, उपयोगिता और एक महीने का अग्रिम किराया भुगतान करता है।',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'व्हाट्सएप';
      case 'common.applicationList':
        return 'आवेदन सूची';
      case 'common.viewDetails':
        return 'विवरण देखें';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'होम';
      case 'common.dashboard':
        return 'डैशबोर्ड';
      case 'common.tenants':
        return 'किरायेदार';
      case 'common.maintenance':
        return 'रखरखाव';
      case 'common.maintenanceList':
        return 'रखरखाव सूची';
      case 'common.maintenanceReport':
        return 'रखरखाव रिपोर्ट';
      case 'common.labor':
        return 'श्रम';
      case 'common.applications':
        return 'आवेदन';
      case 'common.rentInvitation':
        return 'किराया आमंत्रण';
      case 'common.payment':
        return 'भुगतान';
      case 'common.rentPayment':
        return 'किराया भुगतान';
      case 'common.depositUtilityPayment':
        return 'जमा और उपयोगिता भुगतान';
      case 'common.refundRequest':
        return 'धनवापसी अनुरोध';
      case 'common.withdrawRequest':
        return 'निकासी अनुरोध';
      case 'common.myProperty':
        return 'मेरी संपत्ति';
      case 'common.myRent':
        return 'मेरा किराया';
      case 'common.wishlist':
        return 'विशलिस्ट';
      case 'common.properties':
        return 'संपत्तियाँ';
      case 'common.allProperties':
        return 'सभी संपत्तियाँ';
      case 'common.totalPropery':
        return 'कुल संपत्ति';
      case 'common.occupied':
        return 'अधिकृत';
      case 'common.vacant':
        return 'रिक्त';
      case 'common.accounting':
        return 'लेखांकन';
      case 'common.totalIncome':
        return 'कुल आय';
      case 'common.totalExpense':
        return 'कुल खर्च';
      case 'common.currentBalance':
        return 'वर्तमान शेष';
      case 'common.totalWithdrawal':
        return 'कुल (निकासी)';
      case 'common.totalProperties':
        return 'कुल संपत्तियाँ';
      case 'common.totalTenant':
        return 'कुल किरायेदार';
      case 'common.totalRentPaid':
        return 'कुल किराया भुगतान किया गया';
      case 'common.totalRentDue':
        return 'कुल किराया देय';
      case 'common.totalApplication':
        return 'कुल आवेदन';
      case 'common.pendingApplication':
        return 'लंबित आवेदन';
      case 'common.processingApplication':
        return 'आवेदन संसाधित किया जा रहा है';
      case 'common.approveApplication':
        return 'आवेदन स्वीकृत करें';
      case 'common.rejectApplication':
        return 'आवेदन अस्वीकार करें';
      case 'common.maintenanceCost':
        return 'रखरखाव लागत';
      case 'common.transactionSummary':
        return 'लेनदेन सारांश';
      case 'common.maintenanceRequest':
        return 'रखरखाव अनुरोध';
      case 'common.notifications':
        return 'सूचनाएं';
      case 'common.myProperties':
        return 'मेरी संपत्तियाँ';
      case 'common.recommendationProperties':
        return 'अनुशंसा गुण';
      case 'common.laborList':
        return 'श्रम सूची';
      case 'common.addLabor':
        return 'श्रम जोड़ें';
      case 'common.laborDetails':
        return 'श्रम विवरण';
      case 'common.laborSalary':
        return 'श्रम वेतन';
      case 'common.editLabor':
        return 'श्रम संपादित करें';
      case 'common.addNewLabor':
        return 'नया श्रम जोड़ें';
      case 'common.enterAmount':
        return 'राशि दर्ज करें';
      case 'common.maintenanceDetails':
        return 'रखरखाव विवरण';
      case 'common.laborName':
        return 'श्रम का नाम';
      case 'common.comment':
        return 'टिप्पणी';
      case 'common.image':
        return 'छवि';
      case 'common.complete':
        return 'पूरा करें';
      case 'common.details':
        return 'विवरण';
      case 'common.title':
        return 'शीर्षक';
      case 'common.date':
        return 'तिथि';
      case 'common.reason':
        return 'कारण';
      case 'common.edit':
        return 'संपादित करें';
      case 'common.property':
        return 'संपत्ति';
      case 'common.completeYourProfile':
        return 'अपनी प्रोफाइल पूरी करें';
      case 'common.profileImage':
        return 'प्रोफ़ाइल छवि';
      case 'common.imagePickHint':
        return 'अधिकतम आकार 120x120 पिक्सेल के साथ केवल जेपीईजी और पीएनजी छवि।';
      case 'common.invoiceId':
        return 'चालान आईडी';
      case 'common.depositAmount':
        return 'जमा राशि';
      case 'common.landlordPhone':
        return 'मकान मालिक का फोन';
      case 'common.rentalAdvance':
        return 'किराया (अग्रिम)';
      case 'common.totalAmount':
        return 'कुल राशि';
      case 'common.rentalAmount':
        return 'किराया राशि';
      case 'common.adminCharge':
        return 'प्रशासन शुल्क';
      case 'common.editAccount':
        return 'खाता संपादित करें';
      case 'common.addNewAccount':
        return 'नया खाता जोड़ें';
      case 'common.transactionId':
        return 'लेनदेन आईडी';
      case 'common.transactionType':
        return 'लेनदेन प्रकार';
      case 'common.requestDate':
        return 'अनुरोध तिथि';
      case 'common.amount':
        return 'राशि';
      case 'common.fee':
        return 'शुल्क';
      case 'common.paymentStatus':
        return 'भुगतान स्थिति';
      case 'common.generatedTime':
        return 'उत्पन्न समय';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'यह '),
            appName,
            const TextSpan(text: ' की एक सिस्टम जनरेटेड रिपोर्ट है'),
          ],
        );
      case 'common.withdrawHistory':
        return 'निकासी इतिहास';
      case 'common.history':
        return 'इतिहास';
      case 'common.withdrawAmount':
        return 'निकासी राशि';
      case 'common.availableBalance':
        return 'उपलब्ध शेष';
      case 'common.withdrawCharge':
        return 'निकासी शुल्क';
      case 'common.paymentMethod':
        return 'भुगतान विधि';
      case 'common.requestSendSuccess':
        return 'अनुरोध सफलतापूर्वक भेजा गया!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'भुगतान रसीद सफलतापूर्वक जमा की गई।';
      case 'common.refundReason':
        return 'धनवापसी का कारण';
      case 'common.note':
        return 'नोट';
      case 'common.refundReceiveSuccess':
        return 'धनवापसी सफलतापूर्वक प्राप्त हुई।';
      case 'common.downloadPaymentReceipt':
        return 'भुगतान रसीद डाउनलोड करें';
      case 'common.invoice':
        return 'चालान';
      case 'common.selectPropertyToSeeInvoice':
        return 'चालान नंबर देखने के लिए संपत्ति का चयन करें...';
      case 'common.bankAccName':
        return 'बैंक खाता नाम';
      case 'common.bankName':
        return 'बैंक का नाम';
      case 'common.bankAccNum':
        return 'बैंक खाता संख्या';
      case 'common.thankYou':
        return 'धन्यवाद!';
      case 'common.basicInfo':
        return 'मूल जानकारी';
      case 'common.descriptionPricing':
        return 'विवरण और मूल्य निर्धारण';
      case 'common.contact':
        return 'संपर्क करें';
      case 'common.photos':
        return 'तस्वीरें';
      case 'common.successfullySubmitted':
        return 'सफलतापूर्वक जमा किया गया!';
      case 'common.editProperty':
        return 'संपत्ति संपादित करें';
      case 'common.addNewProperty':
        return 'नई संपत्ति जोड़ें';
      case 'common.propertyManageRequestSuccess':
        return 'आपका विज्ञापन समीक्षा के लिए सबमिट कर दिया गया है।';
      case 'common.postAnotherProperty':
        return 'एक और संपत्ति पोस्ट करें';
      case 'common.browseYourProperty':
        return 'अपनी संपत्ति ब्राउज़ करें';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'कदम '),
                step,
                const TextSpan(text: ' का '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'आप क्या पोस्ट करना चाहेंगे?';
      case 'common.category':
        return 'श्रेणी';
      case 'common.invalidCategory':
        return 'अमान्य श्रेणी';
      case 'common.unitNumber':
        return 'इकाई संख्या';
      case 'common.sqft':
        return 'वर्ग फुट';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'संपत्ति का आकार शून्य से अधिक होना चाहिए';
      case 'common.whatAreTheFacility':
        return 'सुविधाएँ क्या हैं?';
      case 'common.whatAreTheAmenity':
        return 'सुविधाएँ क्या हैं?';
      case 'common.parkingLot':
        return 'पार्किंग स्थल';
      case 'common.houseType':
        return 'घर का प्रकार';
      case 'common.value':
        return 'मूल्य';
      case 'common.unitLotSize':
        return 'इकाई / लॉट आकार';
      case 'common.landSize':
        return 'भूमि का आकार';
      case 'common.acres':
        return 'एकड़';
      case 'common.roomSize':
        return 'कमरे का आकार';
      case 'common.askTenantPreference':
        return 'आपकी किरायेदार प्राथमिकता क्या है';
      case 'common.couple':
        return 'दंपति';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            '${propertyType} का वर्णन करें';
      case 'common.adTitle':
        return 'विज्ञापन शीर्षक';
      case 'common.minimumRentalPeriod':
        return 'न्यूनतम किराया अवधि';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} नंबर';
      case 'common.hideOrDisplayEmail':
        return 'ईमेल पता छुपाएं या दिखाएं';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            '${appName} पर संपत्ति पोस्ट करने के लिए धन्यवाद!';
      case 'common.propertyList':
        return 'संपत्ति सूची';
      case 'common.newInviteRent':
        return 'नया आमंत्रण किराया';
      case 'common.rentAgreement':
        return 'किराया समझौता';
      case 'common.rentDetails':
        return 'किराया विवरण';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'नोट: '),
            note(
              'कृपया किरायेदार द्वारा आमंत्रण स्वीकार करने तक प्रतीक्षा करें।',
            ),
          ],
        );
      case 'common.rent':
        return 'किराया';
      case 'common.editTenant':
        return 'किरायेदार संपादित करें';
      case 'common.addNewTenant':
        return 'नया किरायेदार जोड़ें';
      case 'common.shareInstallLink':
        return 'इंस्टॉल लिंक साझा करें';
      case 'common.tenantList':
        return 'किरायेदार सूची';
      case 'common.editMaintenanceRequest':
        return 'रखरखाव अनुरोध संपादित करें';
      case 'common.addNewMaintenance':
        return 'नया रखरखाव जोड़ें';
      case 'common.landlordId':
        return 'मकान मालिक आईडी';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'नोट '),
            note(
              'आपका समझौता समीक्षाधीन है। कृपया मकान मालिक द्वारा आपके किराए को मंजूरी देने तक प्रतीक्षा करें।',
            ),
          ],
        );
      case 'common.editReview':
        return 'समीक्षा संपादित करें';
      case 'common.writeAReview':
        return 'समीक्षा लिखें';
      case 'common.selectRating':
        return 'रेटिंग का चयन करें';
      case 'common.enterYourOpinion':
        return 'अपनी राय दर्ज करें';
      case 'common.askToEnterReviewMsg':
        return 'कृपया एक समीक्षा संदेश दर्ज करें';
      case 'common.pressBackAgainToExit':
        return 'बाहर निकलने के लिए फिर से बैक दबाएं।';
      case 'common.selectPaymentMethod':
        return 'भुगतान विधि का चयन करें';
      case 'common.filter':
        return 'फ़िल्टर';
      case 'common.perMonth':
        return '/1 महीना';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => '${appName} में कुछ भी खोजें...';
      case 'exceptions.somethingWentWrong':
        return 'कुछ गलत हो गया, कृपया पुन: प्रयास करें';
      case 'exceptions.noNidPassport':
        return 'कोई एनआईडी/पासपोर्ट छवि प्रदान नहीं की गई।';
      case 'exceptions.noRentPropertyFound':
        return 'इस किरायेदार के लिए कोई किराया पॉपर्टी नहीं मिली।';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'कोई संपत्ति नहीं मिली!\nकृपया विभिन्न कीवर्ड के साथ प्रयास करें';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'कोई सदस्यता योजना नहीं मिली!\nकृपया पृष्ठ को ताज़ा करें और पुन: प्रयास करें।';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'अमान्य ${dataType} जानकारी! कृपया पृष्ठ को ताज़ा करें और पुन: प्रयास करें।';
      case 'exceptions.invalidDownloadUrl':
        return 'अमान्य डाउनलोड यूआरएल!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => 'फ़ाइल सहेजने में विफल! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => 'फ़ाइल खोलने में त्रुटि! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'कोई वाहन जानकारी प्रदान नहीं की गई।';
      case 'exceptions.yourApplicationRejected':
        return 'आपका आवेदन अस्वीकार कर दिया गया है';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'कोई आवेदन नहीं मिला!\n${subject} उपलब्ध होने पर यहां प्रदर्शित किया जाएगा।';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'आपका आवेदन';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'किरायेदार का आवेदन';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'कोई संपत्ति नहीं मिली!\nकृपया यहां देखने के लिए एक संपत्ति जोड़ने का प्रयास करें।';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'कोई अनुशंसित संपत्तियाँ नहीं मिलीं\nकृपया बाद में पुन: प्रयास करें।';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'संपत्तियाँ उपलब्ध नहीं हैं\nकृपया बाद में पुन: प्रयास करें।';
      case 'exceptions.noImageProvided':
        return 'कोई छवि प्रदान नहीं की गई';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) => 'कोई ${status} रखरखाव नहीं मिला।';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'कोई रखरखाव नहीं मिला! आप यहां देखने के लिए रखरखाव अनुरोध बना सकते हैं।';
      case 'exceptions.noDepositFound':
        return 'कोई सुरक्षा जमा राशि नहीं मिली!\nकृपया सुरक्षा जमा राशि उपलब्ध होने पर देख सकते हैं';
      case 'exceptions.noRentPaymentFound':
        return 'कोई किराया भुगतान नहीं मिला!\nकृपया किराया भुगतान उपलब्ध होने पर देख सकते हैं';
      case 'exceptions.transactionSummaryApiException':
        return 'लेनदेन सारांश प्राप्त करने में विफल।';
      case 'exceptions.noWithdrawRequestFound':
        return 'कोई अनुरोध नहीं मिला!\nकृपया यहां देखने के लिए निकासी अनुरोध बनाने का प्रयास करें।';
      case 'exceptions.withdrawRequestNotApproved':
        return 'यह निकासी अनुरोध स्वीकृत नहीं किया गया है!.';
      case 'exceptions.nonZeroError':
        return 'कृपया शून्य से अधिक एक मान्य राशि दर्ज करें।';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'राशि कम से कम ${minValue} होनी चाहिए।';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'राशि ${maxValue} से अधिक नहीं होनी चाहिए।';
      case 'exceptions.selectPaymentMethodHint':
        return 'कृपया पहले भुगतान विधि का चयन करें।';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'कोई ${status} धनवापसी अनुरोध नहीं मिला!\nआप धनवापसी अनुरोध यहां उपलब्ध होने पर देख सकते हैं।';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'कोई धनवापसी अनुरोध नहीं मिला!\nआप यहां देखने के लिए धनवापसी अनुरोध बना सकते हैं।';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'किरायेदार धनवापसी को मंजूरी देगा जब उसे पैसे वापस मिल जाएंगे';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'हम धनवापसी अनुरोध की समीक्षा करेंगे और 24 घंटों के भीतर इसे मंजूरी दे देंगे।';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'कृपया ${value} की संख्या का चयन करें';
      case 'exceptions.invalidDateRange':
        return 'अमान्य तिथि सीमा।';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} शून्य से अधिक होना चाहिए।';
      case 'exceptions.editProperty.rentalChange':
        return 'किराया संपत्ति बदल रही है। यह केवल अगले महीने के किराए के भुगतान के लिए मान्य (प्रभावी) होनी चाहिए।';
      case 'exceptions.editProperty.deleteOnRent':
        return 'आपकी संपत्ति पहले से ही किरायेदार द्वारा किराए पर ली गई है। कृपया किरायेदार को पहले हटाने तक इसे हटा नहीं सकते';
      case 'exceptions.editProperty.alreayRented':
        return 'यह संपत्ति पहले से ही किराए पर है। कृपया बाद में पुन: प्रयास करें।\nया आप अधिक जानकारी के लिए मकान मालिक से संपर्क कर सकते हैं।';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'कोई किराया आमंत्रण नहीं मिला!\nकृपया यहां देखने के लिए एक किराया आमंत्रण बनाने का प्रयास करें।';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'कोई किराया आमंत्रण नहीं मिला!\nआप किराया आमंत्रण यहां उपलब्ध होने पर देख सकते हैं।';
      case 'exceptions.notenantFoundList':
        return 'कोई किरायेदार नहीं!\nकृपया यहां देखने के लिए एक किरायेदार जोड़ने का प्रयास करें।';
      case 'exceptions.noFeaturesProvided':
        return 'कोई सुविधाएँ प्रदान नहीं की गईं।';
      case 'exceptions.noNotificationFound':
        return 'कोई सूचना उपलब्ध नहीं है।\nआप अपनी सूचना यहां उपलब्ध होने पर देख सकते हैं।';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'क्या आप वाकई लॉग आउट करना चाहते हैं?';
      case 'prompt.application.rejectTitle':
        return 'आप इस आवेदन को क्यों अस्वीकार कर रहे हैं?';
      case 'prompt.application.applicationSent.successfully':
        return 'आवेदन सफलतापूर्वक भेजा गया!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'आप इस आवेदन को अपनी आवेदन सूची में देख सकते हैं';
      case 'prompt.labor.delete.title':
        return 'श्रम हटाएं?';
      case 'prompt.labor.delete.description':
        return 'क्या आप वाकई इस श्रम को हटाना चाहते हैं?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'यह अनुरोध क्यों अस्वीकार किया जा रहा है?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'क्या आप वाकई इस रखरखाव अनुरोध को संसाधित कर रहे हैं?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'कार्य पूरा हुआ?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'निकासी विधि हटाएं?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'क्या आप वाकई इस निकासी विधि को हटाना चाहते हैं?';
      case 'prompt.unsavedChanges.title':
        return 'क्या आप वाकई वापस जाना चाहते हैं?';
      case 'prompt.unsavedChanges.message':
        return 'परिवर्तित किए गए फ़ील्ड सहेजे नहीं जाएंगे!';
      case 'prompt.property.delete.title':
        return 'संपत्ति हटाएं?';
      case 'prompt.property.delete.message':
        return 'क्या आप वाकई इस संपत्ति को हटाना चाहते हैं?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'क्या आप वाकई इस किराए को मंजूरी देना चाहते हैं?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'सुनिश्चित करें कि आपने किरायेदार द्वारा हस्ताक्षरित समझौते की समीक्षा कर ली है।';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'क्या आप वाकई इस आमंत्रण को स्वीकार करना चाहते हैं?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'सुनिश्चित करें कि आपने समझौता पीडीएफ फाइल डाउनलोड कर ली है!';
      case 'prompt.sessionExpired.title':
        return 'सत्र समाप्त हो गया';
      case 'prompt.sessionExpired.message':
        return 'आपका सत्र समाप्त हो गया है। कृपया फिर से साइन इन करें';
      case 'prompt.sessionExpired.action':
        return 'साइन इन करें';
      case 'prompt.noInternet.title':
        return 'कोई इंटरनेट कनेक्शन नहीं';
      case 'prompt.noInternet.message':
        return 'कृपया अपना वाई-फाई मोबाइल नेटवर्क कनेक्शन जांचें और पुन: प्रयास करें';
      case 'prompt.noInternet.action':
        return 'पुनः प्रयास करें';
      case 'prompt.permissionHandler.title':
        return 'अनुमति आवश्यक है!';
      case 'prompt.permissionHandler.message':
        return 'आपको ऐप सेटिंग्स में अनुमतियां देने की आवश्यकता है। क्या आप अभी सेटिंग्स खोलना चाहेंगे?';
      case 'prompt.imagePicker.title':
        return 'विकल्प चुनें';
      case 'prompt.imagePicker.gallery':
        return 'गैलरी';
      case 'prompt.imagePicker.camera':
        return 'कैमरा';
      case 'prompt.verificationDialog.title':
        return 'अपना ईमेल सत्यापित करें';
      case 'prompt.verificationDialog.message':
        return 'हमने एक सत्यापन कोड ईमेल भेजा है';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} ${email} को';
      case 'prompt.notification.clearTitle':
        return 'सूचनाएं साफ़ करें?';
      case 'prompt.notification.clearMessage':
        return 'क्या आप वाकई सभी सूचनाओं को साफ़ करना चाहते हैं?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return '${_root.common.fullName} दर्ज करें';
      case 'form.fullName.errors.required':
        return 'कृपया अपना ${_root.common.fullName} दर्ज करें';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'अपना ${_root.common.email} दर्ज करें';
      case 'form.email.errors.required':
        return 'कृपया अपना ${_root.common.email} पता दर्ज करें';
      case 'form.email.errors.invalid':
        return '⦸ अमान्य ईमेल, कृपया पुनः प्रयास करें';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'कृपया अपना ${_root.common.password} दर्ज करें';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'पासवर्ड कम से कम ${count} अक्षर का होना चाहिए!';
      case 'form.confirmPassword.label':
        return '${_root.common.password} की पुष्टि करें';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'कृपया अपना ${_root.common.password} दर्ज करें';
      case 'form.confirmPassword.errors.notMatched':
        return 'पुष्टि पासवर्ड मेल नहीं खाता!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'कृपया अपना ${_root.common.mobileNumber} दर्ज करें';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'मकान नंबर और सड़क का नाम';
      case 'form.address1.errors.required':
        return 'कृपया अपना ${_root.form.address1.label} दर्ज करें';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'अपार्टमेंट, सुइट, यूनिट, आदि';
      case 'form.address2.errors.required':
        return 'कृपया अपना ${_root.form.address2.label} दर्ज करें';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return '${_root.common.postalCode} दर्ज करें';
      case 'form.postalCode.errors.required':
        return 'कृपया अपना ${_root.common.postalCode} दर्ज करें';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return '${_root.common.city} नाम दर्ज करें।';
      case 'form.city.errors.required':
        return 'कृपया अपना ${_root.common.city} नाम दर्ज करें।';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return '${_root.common.state} नाम दर्ज करें।';
      case 'form.state.errors.required':
        return 'कृपया अपना ${_root.common.state} नाम दर्ज करें।';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return '${_root.common.country} का चयन करें।';
      case 'form.country.errors.required':
        return 'कृपया अपना ${_root.common.country} चयन करें';
      case 'form.otp.errors.required':
        return 'कृपया ओटीपी दर्ज करें।';
      case 'form.otp.errors.invalid':
        return 'कृपया सही ओटीपी दर्ज करें।';
      case 'form.title.label':
        return 'शीर्षक';
      case 'form.title.hint':
        return 'शीर्षक दर्ज करें';
      case 'form.title.errors.required':
        return 'कृपया शीर्षक दर्ज करें';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            '${_root.form.date.label(label: label)} का चयन करें';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'कृपया ${_root.form.date.label(label: label)} का चयन करें';
      case 'form.reason.label':
        return 'कारण';
      case 'form.reason.hint':
        return 'कारण दर्ज करें';
      case 'form.reason.errors.required':
        return 'कृपया कारण दर्ज करें';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return '${_root.common.withdrawMethod} का चयन करें';
      case 'form.withdrawMethod.errors.required':
        return 'कृपया ${_root.common.withdrawMethod} का चयन करें';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => '${label} अपलोड करें';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'कृपया ${label} का चयन करें';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            '${_root.form.note.label(note: note)} दर्ज करें';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'कृपया ${_root.form.note.label(note: note)} दर्ज करें';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return '${_root.common.gender} का चयन करें';
      case 'form.gender.errors.required':
        return 'कृपया ${_root.common.gender} का चयन करें';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            '${_root.form.anyField.label(label: label)} दर्ज करें';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'कृपया ${_root.form.anyField.label(label: label)} दर्ज करें';
      case 'form.anyField.errors.invalid':
        return 'कृपया मान्य @form.anyField.label दर्ज करें';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            '${_root.form.anyDropdown.label(label: label)} का चयन करें';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'कृपया ${_root.form.anyDropdown.label(label: label)} का चयन करें';
      case 'form.anyDropdown.errors.invalid':
        return 'कृपया मान्य @form.anyDropdown.label का चयन करें';
      case 'action.next':
        return 'अगला';
      case 'action.getStarted':
        return 'शुरू हो जाओ';
      case 'action.skip':
        return 'छोड़ें';
      case 'action.select':
        return 'चयन करें';
      case 'action.save':
        return 'सहेजें';
      case 'action.signIn':
        return 'साइन इन करें';
      case 'action.signUp':
        return 'साइन अप करें';
      case 'action.kContinue':
        return 'जारी रखें';
      case 'action.clearAll':
        return 'सब साफ़ करें';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'भेजें';
      case 'action.pay':
        return 'भुगतान करें';
      case 'action.remove':
        return 'हटाएं';
      case 'action.goBack':
        return 'वापस जाएं';
      case 'action.buyNow':
        return 'अभी खरीदें';
      case 'action.no':
        return 'नहीं';
      case 'action.open':
        return 'खोलें';
      case 'action.addProperty':
        return 'संपत्ति जोड़ें';
      case 'action.process':
        return 'संसाधित करें';
      case 'action.approve':
        return 'मंजूर करें';
      case 'action.reject':
        return 'अस्वीकार करें';
      case 'action.viewRent':
        return 'किराया देखें';
      case 'action.openNavigationMenu':
        return 'नेविगेशन मेनू खोलें';
      case 'action.seeAll':
        return 'सभी देखें';
      case 'action.update':
        return 'अपडेट करें';
      case 'action.printTransaction':
        return 'लेनदेन प्रिंट करें';
      case 'action.payoutRequest':
        return 'भुगतान अनुरोध';
      case 'action.addNew':
        return '+ नया जोड़ें';
      case 'action.sendRequest':
        return 'अनुरोध भेजें';
      case 'action.print':
        return 'प्रिंट करें';
      case 'action.requestForRefund':
        return 'धनवापसी का अनुरोध करें';
      case 'action.previous':
        return 'पिछला';
      case 'action.delete':
        return 'हटाएं';
      case 'action.applyProperty':
        return 'संपत्ति लागू करें';
      case 'action.viewApplication':
        return 'आवेदन देखें';
      case 'action.inviteTenant':
        return 'किरायेदार को आमंत्रित करें';
      case 'action.inviteRent':
        return 'किराया आमंत्रित करें';
      case 'action.cancel':
        return 'रद्द करें';
      case 'action.accept':
        return 'स्वीकार करें';
      case 'action.submit':
        return 'जमा करें';
      case 'action.yes':
        return 'हाँ';
      case 'action.okay':
        return 'ठीक है';
      case 'action.confirm':
        return 'पुष्टि करें';
      case 'action.apply':
        return 'लागू करें';
      case 'action.reset':
        return 'रीसेट करें';
      case 'action.retry':
        return 'पुनः प्रयास करें';
      case 'action.viewAll':
        return 'सभी देखें';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'अपनी संपत्ति खोजें';
      case 'pages.onboard.onboardData.data1.description':
        return 'हमने आपके जीवन के अनुकूल जगह खोजना आसान बना दिया है — चाहे वह कमरा हो, अपार्टमेंट हो या घर।';
      case 'pages.onboard.onboardData.data2.title':
        return 'शहर में अपार्टमेंट';
      case 'pages.onboard.onboardData.data2.description':
        return 'हम आपको जल्दी से सही संपत्ति से मेल करके आपका समय बचाते हैं ताकि वह चला जाए, ताकि आप अपने नए घर का आनंद ले सकें, या अपनी खुद की मुफ्त सूची बना सकें।';
      case 'pages.onboard.onboardData.data3.title':
        return 'आपका आराम घर';
      case 'pages.onboard.onboardData.data3.description':
        return 'यदि आप रहने के लिए जगह की तलाश में हैं तो किराए के लिए हमारे घरों पर एक नज़र डालें। हमारे पास आपके लिए पूरे देश में चुनने के लिए घरों की एक विस्तृत श्रृंखला है।';
      case 'pages.signIn.title':
        return 'वापस स्वागत है';
      case 'pages.signIn.subtitle':
        return 'एक अद्भुत यात्रा शुरू करने के लिए अभी साइन इन करें।';
      case 'pages.signIn.extra.rememberMe':
        return 'मुझे याद रखें';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'खाता नहीं है? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'पासवर्ड भूल गए';
      case 'pages.forgotPassword.subtitle':
        return 'अपना पासवर्ड रिकवर करने के लिए अपना ईमेल पता दर्ज करें।';
      case 'pages.otpVerification.title':
        return 'सत्यापन';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-अंकों का पिन आपके ईमेल पते पर भेज दिया गया है। ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'कोड ${minutes}:${seconds} में भेजा गया है';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('कोड पुनः भेजें'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'पासवर्ड रीसेट करें';
      case 'pages.resetPassword.subtitle':
        return 'रिकवरी और अपने खाते में लॉग इन करने के लिए अपना पासवर्ड रीसेट करें';
      case 'pages.resetPassword.extra.dialog.title':
        return 'सफलतापूर्वक बदला गया!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'अपने नए पासवर्ड से साइन इन करें।\nआपको साइन इन करने के लिए रीडायरेक्ट किया जा रहा है...';
      case 'pages.signUp.title':
        return 'एक खाता बनाएं';
      case 'pages.signUp.subtitle':
        return 'एक अद्भुत यात्रा शुरू करने के लिए अभी साइन अप करें';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'खाता है? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'आप कौन हैं?';
      case 'pages.welcome.subtitle':
        return 'कृपया नीचे दिए गए विकल्प का चयन करें।';
      case 'pages.welcome.extra.landlordTag':
        return 'अपनी संपत्तियों का प्रबंधन करें';
      case 'pages.welcome.extra.tenantTag':
        return 'अपने किराये के खाते में लॉग इन करें';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'सूचनाएं';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'संदेश...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'आप ${_root.common.cancelRenting} क्यों कर रहे हैं?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'कारण लिखें';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'कृपया किराया रद्द करने का कारण दर्ज करें';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'ऑफ़लाइन भुगतान';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'भुगतान नोट (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'कुछ टेक्स्ट दर्ज करें...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'भुगतान राशि: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'खाता धारक का नाम';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'खाता संख्या';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'स्विफ्ट कोड';
      case 'pages.offlinePayment.extra.branch':
        return 'शाखा';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'केवल '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' या '),
            fileType('DOC'),
            const TextSpan(text: ' फॉर्मेट फाइलें चुनें। फ़ाइल आकार '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'चालान देखें';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'हम भुगतान की समीक्षा करेंगे और 24 घंटे के भीतर इसे मंजूरी दे देंगे।';
      case 'pages.paymentStatus.fail.actionButton':
        return 'पुनः प्रयास करें';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! भुगतान विफल';
      case 'pages.paymentStatus.fail.description':
        return 'कुछ तकनीकी त्रुटि के कारण आपका लेनदेन विफल हो गया है।';
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
            const TextSpan(text: 'विशेषताएँ '),
            fa('(सुविधाएँ और सुविधाएँ)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'किराया अवधि का चयन करें';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ समीक्षा लिखें';
      case 'pages.search.appbarTitle':
        return 'खोजें';
      case 'pages.search.extra.hint':
        return 'प्लॉट्स, फ्लैट्स, कमरे खोजें...';
      case 'pages.search.extra.noRecentSearch':
        return 'आपकी कोई हालिया खोज नहीं है।';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'अपनी योजना चुनें';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'सदस्यता भुगतान सफलतापूर्वक।\nअब आप सब्सक्राइब की गई सुविधाओं तक पहुंच सकते हैं।';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'कुल रखरखाव लागत: '),
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
        return 'सभी संपत्ति';
      case 'enums.propertyStatus.pending':
        return 'लंबित';
      case 'enums.propertyStatus.active':
        return 'सक्रिय';
      case 'enums.propertyStatus.inactive':
        return 'निष्क्रिय';
      case 'enums.propertyStatus.rejected':
        return 'अस्वीकृत';
      case 'enums.propertyType.apartmentCondominium':
        return 'अपार्टमेंट/कंडोमिनिअम';
      case 'enums.propertyType.house':
        return 'मकान';
      case 'enums.propertyType.commercialProperty':
        return 'व्यावसायिक संपत्ति';
      case 'enums.propertyType.land':
        return 'भूमि';
      case 'enums.propertyType.room':
        return 'कमरा';
      case 'enums.applicationStatus.all':
        return 'सभी';
      case 'enums.applicationStatus.pending':
        return 'लंबित';
      case 'enums.applicationStatus.processing':
        return 'प्रसंस्करण';
      case 'enums.applicationStatus.approved':
        return 'स्वीकृत';
      case 'enums.applicationStatus.rejected':
        return 'अस्वीकृत';
      case 'enums.myRentStatus.pending':
        return 'लंबित';
      case 'enums.myRentStatus.processing':
        return 'प्रसंस्करण';
      case 'enums.myRentStatus.active':
        return 'सक्रिय';
      case 'enums.myRentStatus.expired':
        return 'समाप्त';
      case 'enums.myRentStatus.cancelled':
        return 'रद्द';
      case 'enums.maintenanceStatus.pending':
        return 'लंबित';
      case 'enums.maintenanceStatus.processing':
        return 'प्रसंस्करण';
      case 'enums.maintenanceStatus.rejected':
        return 'अस्वीकृत';
      case 'enums.maintenanceStatus.completed':
        return 'संपन्न';
      case 'enums.tenantProfileType.privateIndividual':
        return 'निजी (व्यक्तिगत)';
      case 'enums.tenantProfileType.company':
        return 'कंपनी';
      case 'enums.tenantType.newTenant':
        return 'नया किरायेदार';
      case 'enums.tenantType.activeTenant':
        return 'सक्रिय किरायेदार';
      case 'enums.tenantType.expiredTenant':
        return 'समाप्त किरायेदार';
      case 'enums.paymentStatus.all':
        return 'सभी';
      case 'enums.paymentStatus.pending':
        return 'लंबित';
      case 'enums.paymentStatus.paid':
        return 'भुगतान किया गया';
      case 'enums.paymentStatus.unpaid':
        return 'अभुगतान';
      case 'enums.paymentStatus.rejected':
        return 'अस्वीकृत';
      case 'enums.paymentStatus.refund':
        return 'धनवापसी';
      case 'enums.paymentOptions.onlinePayment':
        return 'ऑनलाइन भुगतान';
      case 'enums.paymentOptions.offlinePayment':
        return 'ऑफ़लाइन भुगतान';
      case 'enums.paymentType.securityDeposit':
        return 'सुरक्षा जमा';
      case 'enums.paymentType.rentPayment':
        return 'किराया भुगतान';
      case 'enums.paymentType.subscription':
        return 'सदस्यता';
      case 'enums.gender.male':
        return 'पुरुष';
      case 'enums.gender.female':
        return 'महिला';
      case 'enums.gender.other':
        return 'अन्य';
      case 'enums.ecRelation.wife':
        return 'पत्नी';
      case 'enums.ecRelation.parent':
        return 'माता-पिता';
      case 'enums.ecRelation.friend':
        return 'दोस्त';
      case 'enums.ecRelation.brother':
        return 'भाई';
      case 'enums.ecRelation.sister':
        return 'बहन';
      case 'enums.ecRelation.child':
        return 'बच्चा';
      case 'enums.vehicleType.car':
        return 'कार';
      case 'enums.vehicleType.motorcycles':
        return 'मोटरसाइकिलें';
      case 'enums.vehicleType.lorry':
        return 'लॉरी';
      case 'enums.sortBy.lowToHigh':
        return 'निम्न से उच्च';
      case 'enums.sortBy.highToLow':
        return 'उच्च से निम्न';
      case 'enums.residentialType.flat':
        return 'फ्लैट';
      case 'enums.residentialType.apartment':
        return 'अपार्टमेंट';
      case 'enums.residentialType.condominium':
        return 'कंडोमिनिअम';
      case 'enums.residentialType.serviceResidence':
        return 'सर्विस रेजिडेंस';
      case 'enums.residentialType.studio':
        return 'स्टूडियो';
      case 'enums.residentialType.duplex':
        return 'डुप्लेक्स';
      case 'enums.residentialType.townhouseCondo':
        return 'टाउनहाउस कंडो';
      case 'enums.residentialType.others':
        return 'अन्य';
      case 'enums.floorRange.high':
        return 'उच्च';
      case 'enums.floorRange.medium':
        return 'मध्यम';
      case 'enums.floorRange.low':
        return 'निम्न';
      case 'enums.furnishings.fullyFurnished':
        return 'पूरी तरह से सुसज्जित';
      case 'enums.furnishings.partiallyFurnished':
        return 'आंशिक रूप से सुसज्जित';
      case 'enums.furnishings.notFurnished':
        return 'सज्जित नहीं';
      case 'enums.commercialPropertyType.officeSpace':
        return 'कार्यालय स्थान';
      case 'enums.commercialPropertyType.retailSpace':
        return 'खुदरा स्थान';
      case 'enums.commercialPropertyType.shopLot':
        return 'दुकान लॉट';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'गोदाम / कारखाना';
      case 'enums.commercialPropertyType.hotelResort':
        return 'होटल / रिज़ॉर्ट';
      case 'enums.commercialPropertyType.sofo':
        return 'सोफो';
      case 'enums.commercialPropertyType.soho':
        return 'सोहो';
      case 'enums.commercialPropertyType.sovo':
        return 'सोवो';
      case 'enums.commercialPropertyType.others':
        return 'अन्य';
      case 'enums.landPropertyType.residential':
        return 'आवासीय';
      case 'enums.landPropertyType.industrial':
        return 'औद्योगिक';
      case 'enums.landPropertyType.agricultural':
        return 'कृषि';
      case 'enums.landPropertyType.commercial':
        return 'व्यावसायिक';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'मिश्रित विकास';
      case 'enums.landPropertyType.others':
        return 'अन्य';
      case 'enums.residentPropertyType.condo':
        return 'कंडो / सर्विसेज रेजिडेंस / पेंटहाउस';
      case 'enums.residentPropertyType.apartment':
        return 'अपार्टमेंट / फ्लैट';
      case 'enums.residentPropertyType.house':
        return 'मकान';
      case 'enums.residentPropertyType.shoplot':
        return 'शॉपलॉट';
      case 'enums.residentPropertyType.sharing':
        return 'एक घर / फ्लैट साझा करना';
      case 'enums.residentPropertyType.others':
        return 'अन्य';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 महीने';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 वर्ष';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1.5 वर्ष';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 वर्ष';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2.5 वर्ष';
      case 'enums.dropdownDateFilter.daily':
        return 'दैनिक';
      case 'enums.dropdownDateFilter.weekly':
        return 'साप्ताहिक';
      case 'enums.dropdownDateFilter.monthly':
        return 'मासिक';
      case 'enums.dropdownDateFilter.yearly':
        return 'वार्षिक';
      case 'enums.dropdownDateFilter.custom':
        return 'कस्टम';
      default:
        return null;
    }
  }
}
