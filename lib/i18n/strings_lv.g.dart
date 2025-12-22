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
class TranslationsLv implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsLv({
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
             locale: AppLocale.lv,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <lv>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsLv _root = this; // ignore: unused_field

  @override
  TranslationsLv $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsLv(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonLv common = _TranslationsCommonLv._(_root);
  @override
  late final _TranslationsExceptionsLv exceptions = _TranslationsExceptionsLv._(
    _root,
  );
  @override
  late final _TranslationsPromptLv prompt = _TranslationsPromptLv._(_root);
  @override
  late final _TranslationsFormLv form = _TranslationsFormLv._(_root);
  @override
  late final _TranslationsActionLv action = _TranslationsActionLv._(_root);
  @override
  late final _TranslationsPagesLv pages = _TranslationsPagesLv._(_root);
  @override
  late final _TranslationsEnumsLv enums = _TranslationsEnumsLv._(_root);
}

// Path: common
class _TranslationsCommonLv implements TranslationsCommonEn {
  _TranslationsCommonLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profils';
  @override
  String get language => 'Valoda';
  @override
  String get subscriptionPlan => 'Abonēšanas plāns';
  @override
  String get contactUs => 'Sazināties ar mums';
  @override
  String get termsAndConditions => 'Noteikumi un nosacījumi';
  @override
  String get aboutUs => 'Par mums';
  @override
  String get logout => 'Iziet';
  @override
  String get editProfile => 'Rediģēt profilu';
  @override
  String get fullName => 'Pilns vārds';
  @override
  String get email => 'E-pasts';
  @override
  String get mobileNumber => 'Mobilais tālruņa numurs';
  @override
  String get address => 'Adrese';
  @override
  String get postalCode => 'Pasta indekss';
  @override
  String get city => 'Pilsēta';
  @override
  String get country => 'Valsts';
  @override
  String get state => 'Štats';
  @override
  String get password => 'Parole';
  @override
  String get forgotPassword => 'Aizmirsāt paroli?';
  @override
  String get tenant => 'Īrnieks';
  @override
  String get landlord => 'Īpašnieks';
  @override
  String get cancelRenting => 'Atcelt īri';
  @override
  String get startDate => 'Sākuma datums';
  @override
  String get endDate => 'Beigu datums';
  @override
  String get fromDate => 'No datuma';
  @override
  String get toDate => 'Līdz datumam';
  @override
  String get online => 'Tiešsaistē';
  @override
  String get bankList => 'Banku saraksts';
  @override
  String get withdrawMethod => 'Izmaksas metode';
  @override
  String get uploadPaymentReceipt => 'Augšupielādēt maksājuma kvīti';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Piezīme: '),
      note('Maksājums ir jāapstiprina administratoram'),
      const TextSpan(text: ' '),
      duraion('24–48 stundu laikā'),
    ],
  );
  @override
  String get reviews => 'Atsauksmes';
  @override
  String get description => 'Apraksts';
  @override
  String get about => 'Par';
  @override
  String get propertyTypes => 'Īpašuma veidi';
  @override
  String get features => 'Funkcijas';
  @override
  String get floorPlans => 'Stāvu plāni';
  @override
  String get buildingDetails => 'Informācija par ēku';
  @override
  String get buildingName => 'Ēkas nosaukums';
  @override
  String get propertyAddress => 'Īpašuma adrese';
  @override
  String get completionYear => 'Pabeigšanas gads';
  @override
  String get lotNumber => 'Partijas numurs';
  @override
  String get residentialType => 'Dzīvojamais veids';
  @override
  String get furnishings => 'Mēbelējums';
  @override
  String get floorRange => 'Stāvu diapazons';
  @override
  String get bedrooms => 'Guļamistabas';
  @override
  String get bathrooms => 'Vannas istabas';
  @override
  String get propertySize => 'Īpašuma izmērs';
  @override
  String get rentalPeriod => 'Īres periods';
  @override
  String get securityDeposit => 'Drošības nauda';
  @override
  String get utilityBill => 'Komunālie maksājumi';
  @override
  String get facilities => 'Iespējas';
  @override
  String get amenities => 'Ērtības';
  @override
  String get expiringReason => 'Derīguma termiņa beigšanās iemesls';
  @override
  String get tenantDetails => 'Informācija par īrnieku';
  @override
  String get typeOfTenant => 'Īrnieka veids';
  @override
  String get tenantName => 'Īrnieka vārds';
  @override
  String get nidPassport => 'NID/Pase';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Īrnieka ID';
  @override
  String get dateOfBirth => 'Dzimšanas datums';
  @override
  String get gender => 'Dzimums';
  @override
  String get nominee => 'Kandidāts';
  @override
  String get name => 'Vārds';
  @override
  String get optional => 'Nav obligāti';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileLv nomineeMobile =
      _TranslationsCommonNomineeMobileLv._(_root);
  @override
  String get emergencyContact => 'Ārkārtas kontaktpersona';
  @override
  String get relation => 'Attiecības';
  @override
  String get relationWith => '${_root.common.relation} Ar';
  @override
  String get relationWithYou => '${_root.common.relationWith} Jums';
  @override
  String get company => 'Uzņēmums';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM Nr.';
  @override
  String get workplace => 'Darbavieta';
  @override
  String get officePhoneNo => 'Biroja tālruņa numurs';
  @override
  String get officeMobileNo => 'Biroja ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Transportlīdzeklis';
  @override
  late final _TranslationsCommonVehiclesInfoLv vehiclesInfo =
      _TranslationsCommonVehiclesInfoLv._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Veids';
  @override
  late final _TranslationsCommonVehicleRegistrationNoLv vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoLv._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Zīmols';
  @override
  String get rentProperty => 'Īrēt īpašumu';
  @override
  String get propertyDetails => 'Informācija par īpašumu';
  @override
  String get propertyId => 'Īpašuma ID';
  @override
  String get propertyType => 'Īpašuma veids';
  @override
  String get propertyName => 'Īpašuma nosaukums';
  @override
  String get paymentDetails => 'Maksājuma informācija';
  @override
  String get monthlyRent => 'Mēneša īre';
  @override
  String get thisMonthPayment => 'Šī mēneša maksājums';
  @override
  String get totalPaidRent => 'Kopējā samaksātā īre';
  @override
  String get dueRent => 'Parāda īre';
  @override
  String get rentStartDate => 'Īre ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Īre ${_root.common.endDate}';
  @override
  String get status => 'Statuss';
  @override
  String get rentAgreementPdf => 'Īres līguma PDF';
  @override
  String get noFile => 'Nav faila';
  @override
  String get tenantImageOp => 'Īrnieka attēls ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Pievienot jaunus transportlīdzekļus';
  @override
  String get uploadNidPassport => 'Augšupielādēt NID/Pasi';
  @override
  String get nidPassportUploadNote =>
      'Tiks pieņemti tikai faila tipa attēli. Faila ierobežojums līdz 2,5 MB.';
  @override
  String get search => 'Meklēt';
  @override
  String get sortBy => 'Kārtot pēc';
  @override
  String get subscription => 'Abonements';
  @override
  String get downloading => 'Lejupielāde...';
  @override
  String get downloadSuccess => 'Fails veiksmīgi lejupielādēts!';
  @override
  String get addPropertyBannerTitle => 'Vai vēlaties izīrēt savu īpašumu?';
  @override
  String get application => 'Pieteikums';
  @override
  String get tenantHasPaidDeposit => 'Īrnieks ir samaksājis depozītu.';
  @override
  String get askProcessingRentApplication =>
      'Vai tiešām apstrādājat šo īres īpašuma pieprasījumu?';
  @override
  String get dateAndTime => 'Datums un laiks';
  @override
  String get applicationDetails => 'Pieteikuma informācija';
  @override
  String get depositStatus => 'Depozīta statuss';
  @override
  String get uploadRentAgreement => 'Augšupielādēt īres līgumu';
  @override
  String get uploadFilePDF => 'Augšupielādēt failu (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Lūdzu, atlasiet līguma dokumenta failu.';
  @override
  String get landlordRentAgreementPDF => 'Īpašnieka īres līguma PDF';
  @override
  String get tenantRentAgreementPDF => 'Īrnieka īres līguma PDF';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Piezīme: '),
      note(
        'Apstipriniet pieteikumu tikai pēc tam, kad īrnieks ir veicis depozīta maksājumu.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Noraidījuma iemesls';
  @override
  String get youveRejectedThisApplication =>
      'Jūs esat noraidījis šo pieteikumu';
  @override
  String get landlordDetails => 'Informācija par īpašnieku';
  @override
  String get landlordName => 'Īpašnieka vārds';
  @override
  String get downloadRentAgreement => 'Lejupielādēt īres līgumu';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Piekrist '),
      toc('Noteikumiem un nosacījumiem'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Piezīme: '),
      note(
        'Lūdzu, lejupielādējiet un izlasiet līgumu. Lūdzu, nosūtiet parakstīto līgumu īpašniekam, izmantojot WhatsApp vai e-pastu.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Piezīme: '),
      note(
        'Īpašnieks apstiprina pieteikumu, kad īrnieks samaksā drošības naudu, komunālos maksājumus un viena mēneša avansa īri.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Īres līgums (PDF) '),
          complete('Pabeigts līgums'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Piezīme: '),
      note(
        'Īpašnieks apstiprina pieteikumu, kad īrnieks samaksā drošības naudu, komunālos maksājumus un viena mēneša avansa īri.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Pieteikumu saraksts';
  @override
  String get viewDetails => 'Skatīt informāciju';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Sākums';
  @override
  String get dashboard => 'Informācijas panelis';
  @override
  String get tenants => 'Īrnieki';
  @override
  String get maintenance => 'Apkope';
  @override
  String get maintenanceList => 'Apkopes saraksts';
  @override
  String get maintenanceReport => 'Apkopes atskaite';
  @override
  String get labor => 'Darbaspēks';
  @override
  String get applications => 'Pieteikumi';
  @override
  String get rentInvitation => 'Īres ielūgums';
  @override
  String get payment => 'Maksājums';
  @override
  String get rentPayment => 'Īres maksājums';
  @override
  String get depositUtilityPayment =>
      'Depozīta un komunālo maksājumu maksājums';
  @override
  String get refundRequest => 'Atmakas pieprasījums';
  @override
  String get withdrawRequest => 'Izmaksas pieprasījums';
  @override
  String get myProperty => 'Mans īpašums';
  @override
  String get myRent => 'Mana īre';
  @override
  String get wishlist => 'Vēlmju saraksts';
  @override
  String get properties => 'Īpašumi';
  @override
  String get allProperties => 'Visi īpašumi';
  @override
  String get totalPropery => 'Kopējais īpašums';
  @override
  String get occupied => 'Aizņemts';
  @override
  String get vacant => 'Brīvs';
  @override
  String get accounting => 'Grāmatvedība';
  @override
  String get totalIncome => 'Kopējie ienākumi';
  @override
  String get totalExpense => 'Kopējie izdevumi';
  @override
  String get currentBalance => 'Pašreizējais atlikums';
  @override
  String get totalWithdrawal => 'Kopējais (izmaksa)';
  @override
  String get totalProperties => 'Kopējais īpašumu skaits';
  @override
  String get totalTenant => 'Kopējais īrnieku skaits';
  @override
  String get totalRentPaid => 'Kopējā samaksātā īre';
  @override
  String get totalRentDue => 'Kopējā parāda īre';
  @override
  String get totalApplication => 'Kopējais pieteikumu skaits';
  @override
  String get pendingApplication => 'Gaidošs pieteikums';
  @override
  String get processingApplication => 'Apstrādes pieteikums';
  @override
  String get approveApplication => 'Apstiprināt pieteikumu';
  @override
  String get rejectApplication => 'Noraidīt pieteikumu';
  @override
  String get maintenanceCost => 'Apkopes izmaksas';
  @override
  String get transactionSummary => 'Darījumu kopsavilkums';
  @override
  String get maintenanceRequest => 'Apkopes pieprasījums';
  @override
  String get notifications => 'Paziņojumi';
  @override
  String get myProperties => 'Mani īpašumi';
  @override
  String get recommendationProperties => 'Ieteikumu īpašumi';
  @override
  String get laborList => 'Darbaspēka saraksts';
  @override
  String get addLabor => 'Pievienot darbaspēku';
  @override
  String get laborDetails => 'Informācija par darbaspēku';
  @override
  String get laborSalary => 'Darbaspēka alga';
  @override
  String get editLabor => 'Rediģēt darbaspēku';
  @override
  String get addNewLabor => 'Pievienot jaunu darbaspēku';
  @override
  String get enterAmount => 'Ievadīt summu';
  @override
  String get maintenanceDetails => 'Informācija par apkopi';
  @override
  String get laborName => 'Darbaspēka vārds';
  @override
  String get comment => 'Komentārs';
  @override
  String get image => 'Attēls';
  @override
  String get complete => 'Pabeigt';
  @override
  String get details => 'Informācija';
  @override
  String get title => 'Nosaukums';
  @override
  String get date => 'Datums';
  @override
  String get reason => 'Iemesls';
  @override
  String get edit => 'Rediģēt';
  @override
  String get property => 'Īpašums';
  @override
  String get completeYourProfile => 'Aizpildiet savu profilu';
  @override
  String get profileImage => 'Profila attēls';
  @override
  String get imagePickHint =>
      'Tiks pieņemts tikai JPEG un PNG attēls ar maksimālo izmēru 120x120 pikseļi.';
  @override
  String get invoiceId => 'Rēķina ID';
  @override
  String get depositAmount => 'Depozīta summa';
  @override
  String get landlordPhone => 'Īpašnieka tālrunis';
  @override
  String get rentalAdvance => 'Īre (avanss)';
  @override
  String get totalAmount => 'Kopējā summa';
  @override
  String get rentalAmount => 'Īres summa';
  @override
  String get adminCharge => 'Administratīvā maksa';
  @override
  String get editAccount => 'Rediģēt kontu';
  @override
  String get addNewAccount => 'Pievienot jaunu kontu';
  @override
  String get transactionId => 'Darījuma ID';
  @override
  String get transactionType => 'Darījuma veids';
  @override
  String get requestDate => 'Pieprasījuma datums';
  @override
  String get amount => 'Summa';
  @override
  String get fee => 'Maksa';
  @override
  String get paymentStatus => 'Maksājuma statuss';
  @override
  String get generatedTime => 'Ģenerēšanas laiks';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Šī ir sistēmas ģenerēta atskaite par '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Izmaksu vēsture';
  @override
  String get history => 'Vēsture';
  @override
  String get withdrawAmount => 'Izmaksas summa';
  @override
  String get availableBalance => 'Pieejamais atlikums';
  @override
  String get withdrawCharge => 'Izmaksas maksa';
  @override
  String get paymentMethod => 'Maksājuma metode';
  @override
  String get requestSendSuccess => 'Pieprasījums veiksmīgi nosūtīts!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Maksājuma kvīts veiksmīgi iesniegta.';
  @override
  String get refundReason => 'Atmakas iemesls';
  @override
  String get note => 'Piezīme';
  @override
  String get refundReceiveSuccess => 'Atmaksa veiksmīgi saņemta.';
  @override
  String get downloadPaymentReceipt => 'Lejupielādēt maksājuma kvīti';
  @override
  String get invoice => 'Rēķins';
  @override
  String get selectPropertyToSeeInvoice =>
      'Atlasiet īpašumu, lai redzētu rēķina numuru...';
  @override
  String get bankAccName => 'Bankas konta nosaukums';
  @override
  String get bankName => 'Bankas nosaukums';
  @override
  String get bankAccNum => 'Bankas konta numurs';
  @override
  String get thankYou => 'Paldies!';
  @override
  String get basicInfo => 'Pamatinformācija';
  @override
  String get descriptionPricing => 'Apraksts un cenas';
  @override
  String get contact => 'Kontaktinformācija';
  @override
  String get photos => 'Fotogrāfijas';
  @override
  String get successfullySubmitted => 'Veiksmīgi iesniegts!';
  @override
  String get editProperty => 'Rediģēt īpašumu';
  @override
  String get addNewProperty => 'Pievienot jaunu īpašumu';
  @override
  String get propertyManageRequestSuccess =>
      'Jūsu sludinājums ir iesniegts pārskatīšanai.';
  @override
  String get postAnotherProperty => 'Publicēt citu īpašumu';
  @override
  String get browseYourProperty => 'Pārlūkot savu īpašumu';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Solis '),
      step,
      const TextSpan(text: ' no '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Ko jūs vēlētos publicēt?';
  @override
  String get category => 'Kategorija';
  @override
  String get invalidCategory => 'Nederīga kategorija';
  @override
  String get unitNumber => 'Vienības numurs';
  @override
  String get sqft => 'kv.pēdas';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Īpašuma izmēram jābūt lielākam par nulli';
  @override
  String get whatAreTheFacility => 'Kādas ir iespējas?';
  @override
  String get whatAreTheAmenity => 'Kādas ir ērtības?';
  @override
  String get parkingLot => 'Autostāvvieta';
  @override
  String get houseType => 'Mājas tips';
  @override
  String get value => 'Vērtība';
  @override
  String get unitLotSize => 'Vienības / zemes gabala izmērs';
  @override
  String get landSize => 'Zemes izmērs';
  @override
  String get acres => 'akrs(i)';
  @override
  String get roomSize => 'Istabas izmērs';
  @override
  String get askTenantPreference => 'Kāda ir jūsu īrnieka izvēle';
  @override
  String get couple => 'Pāris';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Aprakstiet ${propertyType}';
  @override
  String get adTitle => 'Sludinājuma nosaukums';
  @override
  String get minimumRentalPeriod => 'Minimālais īres periods';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  @override
  String get hideOrDisplayEmail => 'Slēpt vai parādīt e-pasta adresi';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Paldies, ka publicējāt vietnē ${appName}!';
  @override
  String get propertyList => 'Īpašumu saraksts';
  @override
  String get newInviteRent => 'Jauns īres uzaicinājums';
  @override
  String get rentAgreement => 'Īres līgums';
  @override
  String get rentDetails => 'Īres informācija';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Piezīme: '),
      note('Lūdzu, gaidiet, līdz īrnieks pieņems uzaicinājumu.'),
    ],
  );
  @override
  String get rent => 'Īre';
  @override
  String get editTenant => 'Rediģēt īrnieku';
  @override
  String get addNewTenant => 'Pievienot jaunu īrnieku';
  @override
  String get shareInstallLink => 'Kopīgot instalēšanas saiti';
  @override
  String get tenantList => 'Īrnieku saraksts';
  @override
  String get editMaintenanceRequest => 'Rediģēt apkopes pieprasījumu';
  @override
  String get addNewMaintenance => 'Pievienot jaunu apkopi';
  @override
  String get landlordId => 'Saimnieka ID';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Piezīme '),
      note(
        'Jūsu līgums tiek pārskatīts. Lūdzu, gaidiet, līdz saimnieks apstiprinās jūsu īri.',
      ),
    ],
  );
  @override
  String get editReview => 'Rediģēt atsauksmi';
  @override
  String get writeAReview => 'Uzrakstīt atsauksmi';
  @override
  String get selectRating => 'Izvēlēties vērtējumu';
  @override
  String get enterYourOpinion => 'Ievadiet savu viedokli';
  @override
  String get askToEnterReviewMsg => 'Lūdzu, ievadiet atsauksmes ziņojumu';
  @override
  String get pressBackAgainToExit => 'Nospiediet atpakaļ vēlreiz, lai izietu.';
  @override
  String get selectPaymentMethod => 'Izvēlieties maksājuma metodi';
  @override
  String get filter => 'Filtrs';
  @override
  String get perMonth => '/1 mēnesī';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Meklējiet jebko vietnē ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsLv implements TranslationsExceptionsEn {
  _TranslationsExceptionsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong =>
      'Kaut kas nogāja greizi, lūdzu, mēģiniet vēlreiz';
  @override
  String get noNidPassport => 'Nav norādīts NID/Pases attēls.';
  @override
  String get noRentPropertyFound => 'Šim īrniekam nav atrasts īres īpašums.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Īpašums nav atrasts!\nLūdzu, mēģiniet ar citiem atslēgvārdiem';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Nav atrasts abonēšanas plāns!\nLūdzu, atsvaidziniet lapu un mēģiniet vēlreiz.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Nederīga ${dataType} informācija! Lūdzu, atsvaidziniet lapu un mēģiniet vēlreiz.';
  @override
  String get invalidDownloadUrl => 'Nederīgs lejupielādes URL!';
  @override
  String failedToSaveFile({required String error}) =>
      'Neizdevās saglabāt failu! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Kļūda, atverot failu! ${error}';
  @override
  String get noVehicleInfoProvided =>
      'Nav sniegta informācija par transportlīdzekli.';
  @override
  String get yourApplicationRejected => 'Jūsu pieteikums ir noraidīts';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintLv
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintLv._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintLv noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintLv._(_root);
  @override
  String get noImageProvided => 'Nav norādīts attēls';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundLv
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundLv._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Nav atrasts drošības depozīts!\nLūdzu, varat redzēt drošības iemaksas, kad tās būs pieejamas';
  @override
  String get noRentPaymentFound =>
      'Nav atrasts īres maksājums!\nLūdzu, varat redzēt īres maksājumus, kad tie būs pieejami';
  @override
  String get transactionSummaryApiException =>
      'Neizdevās iegūt darījumu kopsavilkumu.';
  @override
  String get noWithdrawRequestFound =>
      'Nav atrasts pieprasījums!\nLūdzu, mēģiniet izveidot izņemšanas pieprasījumu, lai to šeit redzētu.';
  @override
  String get withdrawRequestNotApproved =>
      'Šis izņemšanas pieprasījums nav apstiprināts!.';
  @override
  String get nonZeroError =>
      'Lūdzu, ievadiet derīgu summu, kas lielāka par nulli.';
  @override
  String minAmountError({required String minValue}) =>
      'Summai jābūt vismaz ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Summa nedrīkst pārsniegt ${maxValue}.';
  @override
  String get selectPaymentMethodHint =>
      'Lūdzu, vispirms izvēlieties maksājuma metodi.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundLv
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundLv._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintLv refundRequestHint =
      _TranslationsExceptionsRefundRequestHintLv._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Lūdzu, izvēlieties ${value} skaitu';
  @override
  String get invalidDateRange => 'Nederīgs datumu diapazons.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} jābūt lielākam par nulli.';
  @override
  late final _TranslationsExceptionsEditPropertyLv editProperty =
      _TranslationsExceptionsEditPropertyLv._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationLv rentInvitation =
      _TranslationsExceptionsRentInvitationLv._(_root);
  @override
  String get notenantFoundList =>
      'Nav īrnieku!\nLūdzu, mēģiniet pievienot īrnieku, lai to šeit redzētu.';
  @override
  String get noFeaturesProvided => 'Nav norādītas funkcijas.';
  @override
  String get noNotificationFound =>
      'Nav pieejams paziņojums.\nJūs varat redzēt savu paziņojumu šeit, kad tas būs pieejams.';
}

// Path: prompt
class _TranslationsPromptLv implements TranslationsPromptEn {
  _TranslationsPromptLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutLv logout = _TranslationsPromptLogoutLv._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationLv application =
      _TranslationsPromptApplicationLv._(_root);
  @override
  late final _TranslationsPromptLaborLv labor = _TranslationsPromptLaborLv._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestLv maintenanceRequest =
      _TranslationsPromptMaintenanceRequestLv._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodLv withdrawMethod =
      _TranslationsPromptWithdrawMethodLv._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesLv unsavedChanges =
      _TranslationsPromptUnsavedChangesLv._(_root);
  @override
  late final _TranslationsPromptPropertyLv property =
      _TranslationsPromptPropertyLv._(_root);
  @override
  late final _TranslationsPromptRentInvitationLv rentInvitation =
      _TranslationsPromptRentInvitationLv._(_root);
  @override
  late final _TranslationsPromptSessionExpiredLv sessionExpired =
      _TranslationsPromptSessionExpiredLv._(_root);
  @override
  late final _TranslationsPromptNoInternetLv noInternet =
      _TranslationsPromptNoInternetLv._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerLv permissionHandler =
      _TranslationsPromptPermissionHandlerLv._(_root);
  @override
  late final _TranslationsPromptImagePickerLv imagePicker =
      _TranslationsPromptImagePickerLv._(_root);
  @override
  late final _TranslationsPromptVerificationDialogLv verificationDialog =
      _TranslationsPromptVerificationDialogLv._(_root);
  @override
  late final _TranslationsPromptNotificationLv notification =
      _TranslationsPromptNotificationLv._(_root);
}

// Path: form
class _TranslationsFormLv implements TranslationsFormEn {
  _TranslationsFormLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameLv fullName =
      _TranslationsFormFullNameLv._(_root);
  @override
  late final _TranslationsFormEmailLv email = _TranslationsFormEmailLv._(_root);
  @override
  late final _TranslationsFormPasswordLv password =
      _TranslationsFormPasswordLv._(_root);
  @override
  late final _TranslationsFormConfirmPasswordLv confirmPassword =
      _TranslationsFormConfirmPasswordLv._(_root);
  @override
  late final _TranslationsFormMobileNumberLv mobileNumber =
      _TranslationsFormMobileNumberLv._(_root);
  @override
  late final _TranslationsFormAddress1Lv address1 =
      _TranslationsFormAddress1Lv._(_root);
  @override
  late final _TranslationsFormAddress2Lv address2 =
      _TranslationsFormAddress2Lv._(_root);
  @override
  late final _TranslationsFormPostalCodeLv postalCode =
      _TranslationsFormPostalCodeLv._(_root);
  @override
  late final _TranslationsFormCityLv city = _TranslationsFormCityLv._(_root);
  @override
  late final _TranslationsFormStateLv state = _TranslationsFormStateLv._(_root);
  @override
  late final _TranslationsFormCountryLv country = _TranslationsFormCountryLv._(
    _root,
  );
  @override
  late final _TranslationsFormOtpLv otp = _TranslationsFormOtpLv._(_root);
  @override
  late final _TranslationsFormTitleLv title = _TranslationsFormTitleLv._(_root);
  @override
  late final _TranslationsFormDateLv date = _TranslationsFormDateLv._(_root);
  @override
  late final _TranslationsFormReasonLv reason = _TranslationsFormReasonLv._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodLv withdrawMethod =
      _TranslationsFormWithdrawMethodLv._(_root);
  @override
  late final _TranslationsFormFileFieldLv fileField =
      _TranslationsFormFileFieldLv._(_root);
  @override
  late final _TranslationsFormNoteLv note = _TranslationsFormNoteLv._(_root);
  @override
  late final _TranslationsFormGenderLv gender = _TranslationsFormGenderLv._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldLv anyField =
      _TranslationsFormAnyFieldLv._(_root);
  @override
  late final _TranslationsFormAnyDropdownLv anyDropdown =
      _TranslationsFormAnyDropdownLv._(_root);
}

// Path: action
class _TranslationsActionLv implements TranslationsActionEn {
  _TranslationsActionLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Nākamais';
  @override
  String get getStarted => 'Sākt darbu';
  @override
  String get skip => 'Izlaist';
  @override
  String get select => 'Atlasīt';
  @override
  String get save => 'Saglabāt';
  @override
  String get signIn => 'Pieteikties';
  @override
  String get signUp => 'Reģistrēties';
  @override
  String get kContinue => 'Turpināt';
  @override
  String get clearAll => 'Notīrīt visu';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Sūtīt';
  @override
  String get pay => 'Maksāt';
  @override
  String get remove => 'Noņemt';
  @override
  String get goBack => 'Atgriezties';
  @override
  String get buyNow => 'Pirkt tagad';
  @override
  String get no => 'Nē';
  @override
  String get open => 'Atvērt';
  @override
  String get addProperty => 'Pievienot īpašumu';
  @override
  String get process => 'Apstrādāt';
  @override
  String get approve => 'Apstiprināt';
  @override
  String get reject => 'Noraidīt';
  @override
  String get viewRent => 'Skatīt īri';
  @override
  String get openNavigationMenu => 'Atvērt navigācijas izvēlni';
  @override
  String get seeAll => 'Skatīt visu';
  @override
  String get update => 'Atjaunināt';
  @override
  String get printTransaction => 'Drukāt darījumu';
  @override
  String get payoutRequest => 'Izmaksas pieprasījums';
  @override
  String get addNew => '+ Pievienot jaunu';
  @override
  String get sendRequest => 'Nosūtīt pieprasījumu';
  @override
  String get print => 'Drukāt';
  @override
  String get requestForRefund => 'Pieprasīt atmaksu';
  @override
  String get previous => 'Iepriekšējais';
  @override
  String get delete => 'Dzēst';
  @override
  String get applyProperty => 'Pieteikties īpašumam';
  @override
  String get viewApplication => 'Skatīt pieteikumu';
  @override
  String get inviteTenant => 'Izaicināt īrnieku';
  @override
  String get inviteRent => 'Izaicināt uz īri';
  @override
  String get cancel => 'Atcelt';
  @override
  String get accept => 'Pieņemt';
  @override
  String get submit => 'Iesniegt';
  @override
  String get yes => 'Jā';
  @override
  String get okay => 'Labi';
  @override
  String get confirm => 'Apstiprināt';
  @override
  String get apply => 'Piemērot';
  @override
  String get reset => 'Atiestatīt';
  @override
  String get retry => 'Mēģināt vēlreiz';
  @override
  String get viewAll => 'Skatīt visu';
}

// Path: pages
class _TranslationsPagesLv implements TranslationsPagesEn {
  _TranslationsPagesLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageLv language =
      _TranslationsPagesLanguageLv._(_root);
  @override
  late final _TranslationsPagesOnboardLv onboard =
      _TranslationsPagesOnboardLv._(_root);
  @override
  late final _TranslationsPagesSignInLv signIn = _TranslationsPagesSignInLv._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordLv forgotPassword =
      _TranslationsPagesForgotPasswordLv._(_root);
  @override
  late final _TranslationsPagesOtpVerificationLv otpVerification =
      _TranslationsPagesOtpVerificationLv._(_root);
  @override
  late final _TranslationsPagesResetPasswordLv resetPassword =
      _TranslationsPagesResetPasswordLv._(_root);
  @override
  late final _TranslationsPagesSignUpLv signUp = _TranslationsPagesSignUpLv._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeLv welcome =
      _TranslationsPagesWelcomeLv._(_root);
  @override
  late final _TranslationsPagesAboutUsLv aboutUs =
      _TranslationsPagesAboutUsLv._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsLv termsAndConditions =
      _TranslationsPagesTermsAndConditionsLv._(_root);
  @override
  late final _TranslationsPagesNotificationListLv notificationList =
      _TranslationsPagesNotificationListLv._(_root);
  @override
  late final _TranslationsPagesContactUsLv contactUs =
      _TranslationsPagesContactUsLv._(_root);
  @override
  late final _TranslationsPagesCancelRentingLv cancelRenting =
      _TranslationsPagesCancelRentingLv._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsLv invoiceDetails =
      _TranslationsPagesInvoiceDetailsLv._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentLv offlinePayment =
      _TranslationsPagesOfflinePaymentLv._(_root);
  @override
  late final _TranslationsPagesPaymentStatusLv paymentStatus =
      _TranslationsPagesPaymentStatusLv._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsLv propertyDetails =
      _TranslationsPagesPropertyDetailsLv._(_root);
  @override
  late final _TranslationsPagesSearchLv search = _TranslationsPagesSearchLv._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanLv subscriptionPlan =
      _TranslationsPagesSubscriptionPlanLv._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportLv
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportLv._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsLv implements TranslationsEnumsEn {
  _TranslationsEnumsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusLv propertyStatus =
      _TranslationsEnumsPropertyStatusLv._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeLv propertyType =
      _TranslationsEnumsPropertyTypeLv._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusLv applicationStatus =
      _TranslationsEnumsApplicationStatusLv._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusLv myRentStatus =
      _TranslationsEnumsMyRentStatusLv._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusLv maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusLv._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeLv tenantProfileType =
      _TranslationsEnumsTenantProfileTypeLv._(_root);
  @override
  late final _TranslationsEnumsTenantTypeLv tenantType =
      _TranslationsEnumsTenantTypeLv._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusLv paymentStatus =
      _TranslationsEnumsPaymentStatusLv._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsLv paymentOptions =
      _TranslationsEnumsPaymentOptionsLv._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeLv paymentType =
      _TranslationsEnumsPaymentTypeLv._(_root);
  @override
  late final _TranslationsEnumsGenderLv gender = _TranslationsEnumsGenderLv._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationLv ecRelation =
      _TranslationsEnumsEcRelationLv._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeLv vehicleType =
      _TranslationsEnumsVehicleTypeLv._(_root);
  @override
  late final _TranslationsEnumsSortByLv sortBy = _TranslationsEnumsSortByLv._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeLv residentialType =
      _TranslationsEnumsResidentialTypeLv._(_root);
  @override
  late final _TranslationsEnumsFloorRangeLv floorRange =
      _TranslationsEnumsFloorRangeLv._(_root);
  @override
  late final _TranslationsEnumsFurnishingsLv furnishings =
      _TranslationsEnumsFurnishingsLv._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeLv commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeLv._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeLv landPropertyType =
      _TranslationsEnumsLandPropertyTypeLv._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeLv residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeLv._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodLv minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodLv._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterLv dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterLv._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileLv
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mob. Nr.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoLv
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informācija par transportlīdzekļiem';
  @override
  String get optional =>
      'Informācija par transportlīdzekļiem (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoLv
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Transportlīdzekļa reģistrācijas numurs';
  @override
  String get short => 'Reģistrācijas numurs';
  @override
  String get alt => 'Numura zīme';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintLv
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Pieteikums nav atrasts!\n${subject} tiks parādīts šeit, kad būs pieejams.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsLv subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsLv._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintLv
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Īpašums nav atrasts!\nLūdzu, mēģiniet pievienot īpašumu, lai to šeit redzētu.';
  @override
  String get tenantRecommended =>
      'Nav atrasti ieteicamie īpašumi\nLūdzu, mēģiniet vēlreiz vēlāk.';
  @override
  String get tenantAllProperty =>
      'Īpašumi nav pieejami\nLūdzu, mēģiniet vēlreiz vēlāk.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundLv
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) => 'Nav atrasta ${status} apkope.';
  @override
  String get tenant =>
      'Apkope nav atrasta! Jūs varat izveidot apkopes pieprasījumu, lai to šeit redzētu.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundLv
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nav atrasts ${status} atmaksas pieprasījums!\nJūs varat redzēt atmaksas pieprasījumu šeit, kad tas būs pieejams.';
  @override
  String get tenant =>
      'Nav atrasts atmaksas pieprasījums!\nJūs varat izveidot atmaksas pieprasījumu, lai to šeit redzētu.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintLv
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Īrnieks apstiprinās atmaksu, kad viņš saņems naudu atpakaļ';
  @override
  String get tenantReqSuccess =>
      'Mēs pārskatīsim atmaksas pieprasījumu un apstiprināsim to 24 stundu laikā.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyLv
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Īres īpašums mainās. Tam jābūt derīgam (spēkā) tikai nākamā mēneša īres maksājumam.';
  @override
  String get deleteOnRent =>
      'Jūsu īpašums jau ir izīrēts īrniekam. Nevar izdzēst, kamēr vispirms neizņemsit īrnieku';
  @override
  String get alreayRented =>
      'Šis īpašums jau ir izīrēts. Lūdzu, mēģiniet vēlreiz vēlāk.\nVai arī varat sazināties ar saimnieku, lai iegūtu vairāk informācijas.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationLv
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Nav atrasts īres uzaicinājums!\nLūdzu, mēģiniet izveidot īres uzaicinājumu, lai to šeit redzētu.';
  @override
  String get tenantNoRentInvitation =>
      'Nav atrasts īres uzaicinājums!\nJūs varat redzēt īres uzaicinājumu šeit, kad tas būs pieejams.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutLv implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Vai tiešām vēlaties iziet?';
}

// Path: prompt.application
class _TranslationsPromptApplicationLv
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Kāpēc jūs noraidāt šo pieteikumu?';
  @override
  late final _TranslationsPromptApplicationApplicationSentLv applicationSent =
      _TranslationsPromptApplicationApplicationSentLv._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborLv implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteLv delete =
      _TranslationsPromptLaborDeleteLv._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestLv
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Kāpēc šis pieprasījums tiek noraidīts?';
  @override
  String get processTitle => 'Vai tiešām apstrādājat šo apkopes pieprasījumu?';
  @override
  String get completeTitle => 'Darbs pabeigts?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodLv
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Dzēst izņemšanas metodi?';
  @override
  String get deleteDescription =>
      'Vai tiešām vēlaties dzēst šo izņemšanas metodi?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesLv
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vai tiešām vēlaties atgriezties?';
  @override
  String get message => 'Mainītie lauki netiks saglabāti!';
}

// Path: prompt.property
class _TranslationsPromptPropertyLv implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteLv delete =
      _TranslationsPromptPropertyDeleteLv._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationLv
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveLv
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveLv._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptLv tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptLv._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredLv
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sesija ir beigusies';
  @override
  String get message => 'Jūsu sesija ir beigusies. Lūdzu, piesakieties vēlreiz';
  @override
  String get action => 'Pieteikties';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetLv
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nav interneta savienojuma';
  @override
  String get message =>
      'Lūdzu, pārbaudiet savu Wi-Fi mobilo tīkla savienojumu un mēģiniet vēlreiz';
  @override
  String get action => 'Mēģināt vēlreiz';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerLv
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nepieciešama atļauja!';
  @override
  String get message =>
      'Jums ir jāpiešķir atļaujas lietotnes iestatījumos. Vai vēlaties atvērt iestatījumus tagad?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerLv
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Izvēlieties opciju';
  @override
  String get gallery => 'Galerija';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogLv
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verificējiet savu e-pastu';
  @override
  String get message => 'Mēs esam nosūtījuši verifikācijas koda e-pastu';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} uz ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationLv
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Notīrīt paziņojumus?';
  @override
  String get clearMessage => 'Vai tiešām vēlaties notīrīt visus paziņojumus?';
}

// Path: form.fullName
class _TranslationsFormFullNameLv implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Ievadiet ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsLv errors =
      _TranslationsFormFullNameErrorsLv._(_root);
}

// Path: form.email
class _TranslationsFormEmailLv implements TranslationsFormEmailEn {
  _TranslationsFormEmailLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Ievadiet savu ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsLv errors =
      _TranslationsFormEmailErrorsLv._(_root);
}

// Path: form.password
class _TranslationsFormPasswordLv implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsLv errors =
      _TranslationsFormPasswordErrorsLv._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordLv
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Apstipriniet ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsLv errors =
      _TranslationsFormConfirmPasswordErrorsLv._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberLv
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsLv errors =
      _TranslationsFormMobileNumberErrorsLv._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Lv implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Lv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Mājas numurs un ielas nosaukums';
  @override
  late final _TranslationsFormAddress1ErrorsLv errors =
      _TranslationsFormAddress1ErrorsLv._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Lv implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Lv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Dzīvoklis, komplekts, vienība utt.';
  @override
  late final _TranslationsFormAddress2ErrorsLv errors =
      _TranslationsFormAddress2ErrorsLv._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeLv implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Ievadiet ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsLv errors =
      _TranslationsFormPostalCodeErrorsLv._(_root);
}

// Path: form.city
class _TranslationsFormCityLv implements TranslationsFormCityEn {
  _TranslationsFormCityLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Ievadiet ${_root.common.city} nosaukumu.';
  @override
  late final _TranslationsFormCityErrorsLv errors =
      _TranslationsFormCityErrorsLv._(_root);
}

// Path: form.state
class _TranslationsFormStateLv implements TranslationsFormStateEn {
  _TranslationsFormStateLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Ievadiet ${_root.common.state} nosaukumu.';
  @override
  late final _TranslationsFormStateErrorsLv errors =
      _TranslationsFormStateErrorsLv._(_root);
}

// Path: form.country
class _TranslationsFormCountryLv implements TranslationsFormCountryEn {
  _TranslationsFormCountryLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Izvēlieties ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsLv errors =
      _TranslationsFormCountryErrorsLv._(_root);
}

// Path: form.otp
class _TranslationsFormOtpLv implements TranslationsFormOtpEn {
  _TranslationsFormOtpLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsLv errors =
      _TranslationsFormOtpErrorsLv._(_root);
}

// Path: form.title
class _TranslationsFormTitleLv implements TranslationsFormTitleEn {
  _TranslationsFormTitleLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Nosaukums';
  @override
  String get hint => 'Ievadiet nosaukumu';
  @override
  late final _TranslationsFormTitleErrorsLv errors =
      _TranslationsFormTitleErrorsLv._(_root);
}

// Path: form.date
class _TranslationsFormDateLv implements TranslationsFormDateEn {
  _TranslationsFormDateLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Izvēlieties ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsLv errors =
      _TranslationsFormDateErrorsLv._(_root);
}

// Path: form.reason
class _TranslationsFormReasonLv implements TranslationsFormReasonEn {
  _TranslationsFormReasonLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Iemesls';
  @override
  String get hint => 'Ievadiet iemeslu';
  @override
  late final _TranslationsFormReasonErrorsLv errors =
      _TranslationsFormReasonErrorsLv._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodLv
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Izvēlieties ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsLv errors =
      _TranslationsFormWithdrawMethodErrorsLv._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldLv implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Augšupielādējiet ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsLv errors =
      _TranslationsFormFileFieldErrorsLv._(_root);
}

// Path: form.note
class _TranslationsFormNoteLv implements TranslationsFormNoteEn {
  _TranslationsFormNoteLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Ievadiet ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsLv errors =
      _TranslationsFormNoteErrorsLv._(_root);
}

// Path: form.gender
class _TranslationsFormGenderLv implements TranslationsFormGenderEn {
  _TranslationsFormGenderLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Izvēlieties ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsLv errors =
      _TranslationsFormGenderErrorsLv._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldLv implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Ievadiet ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsLv errors =
      _TranslationsFormAnyFieldErrorsLv._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownLv implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Izvēlieties ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsLv errors =
      _TranslationsFormAnyDropdownErrorsLv._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageLv implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardLv implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataLv onboardData =
      _TranslationsPagesOnboardOnboardDataLv._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInLv implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Esiet sveicināti atpakaļ';
  @override
  String get subtitle => 'Piesakieties tūlīt, lai sāktu pārsteidzošu ceļojumu.';
  @override
  late final _TranslationsPagesSignInExtraLv extra =
      _TranslationsPagesSignInExtraLv._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordLv
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Aizmirsāt paroli';
  @override
  String get subtitle => 'Ievadiet savu e-pasta adresi, lai atjaunotu paroli.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationLv
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifikācija';
  @override
  String subtitle({required String email}) =>
      '4 ciparu PIN ir nosūtīts uz jūsu e-pasta adresi. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraLv extra =
      _TranslationsPagesOtpVerificationExtraLv._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordLv
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Atiestatīt paroli';
  @override
  String get subtitle =>
      'Atiestatiet paroli, lai atgūtu un pieteiktos savā kontā';
  @override
  late final _TranslationsPagesResetPasswordExtraLv extra =
      _TranslationsPagesResetPasswordExtraLv._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpLv implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Izveidot kontu';
  @override
  String get subtitle =>
      'Reģistrējieties tūlīt, lai sāktu pārsteidzošu ceļojumu';
  @override
  late final _TranslationsPagesSignUpExtraLv extra =
      _TranslationsPagesSignUpExtraLv._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeLv implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kas tu esi?';
  @override
  String get subtitle => 'Lūdzu, izvēlieties zemāk esošo opciju.';
  @override
  late final _TranslationsPagesWelcomeExtraLv extra =
      _TranslationsPagesWelcomeExtraLv._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsLv implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsLv
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListLv
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Paziņojumi';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsLv implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraLv extra =
      _TranslationsPagesContactUsExtraLv._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingLv
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Kāpēc jūs ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormLv form =
      _TranslationsPagesCancelRentingFormLv._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsLv
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentLv
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Bezsaistes maksājums';
  @override
  late final _TranslationsPagesOfflinePaymentFormLv form =
      _TranslationsPagesOfflinePaymentFormLv._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraLv extra =
      _TranslationsPagesOfflinePaymentExtraLv._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusLv
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessLv success =
      _TranslationsPagesPaymentStatusSuccessLv._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailLv fail =
      _TranslationsPagesPaymentStatusFailLv._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsLv
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraLv extra =
      _TranslationsPagesPropertyDetailsExtraLv._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchLv implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Meklēt';
  @override
  late final _TranslationsPagesSearchExtraLv extra =
      _TranslationsPagesSearchExtraLv._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanLv
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Izvēlieties savu plānu';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraLv extra =
      _TranslationsPagesSubscriptionPlanExtraLv._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportLv
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Kopējās apkopes izmaksas: '),
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
class _TranslationsEnumsPropertyStatusLv
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Visi īpašumi';
  @override
  String get pending => 'Gaida apstiprinājumu';
  @override
  String get active => 'Aktīvs';
  @override
  String get inactive => 'Neaktīvs';
  @override
  String get rejected => 'Noraidīts';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeLv
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Dzīvoklis/Kondominijs';
  @override
  String get house => 'Māja';
  @override
  String get commercialProperty => 'Komercīpašums';
  @override
  String get land => 'Zeme';
  @override
  String get room => 'Istaba';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusLv
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Visi';
  @override
  String get pending => 'Gaida apstiprinājumu';
  @override
  String get processing => 'Apstrāde';
  @override
  String get approved => 'Apstiprināts';
  @override
  String get rejected => 'Noraidīts';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusLv
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Gaida apstiprinājumu';
  @override
  String get processing => 'Apstrāde';
  @override
  String get active => 'Aktīvs';
  @override
  String get expired => 'Beidzies termiņš';
  @override
  String get cancelled => 'Atcelts';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusLv
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Gaida apstiprinājumu';
  @override
  String get processing => 'Apstrāde';
  @override
  String get rejected => 'Noraidīts';
  @override
  String get completed => 'Pabeigts';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeLv
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privāts (fiziska persona)';
  @override
  String get company => 'Uzņēmums';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeLv implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Jauns īrnieks';
  @override
  String get activeTenant => 'Aktīvs īrnieks';
  @override
  String get expiredTenant => 'Beidzies termiņš īrniekam';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusLv
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Visi';
  @override
  String get pending => 'Gaida apstiprinājumu';
  @override
  String get paid => 'Samaksāts';
  @override
  String get unpaid => 'Nemaksāts';
  @override
  String get rejected => 'Noraidīts';
  @override
  String get refund => 'Atmaksa';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsLv
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Tiešsaistes maksājums';
  @override
  String get offlinePayment => 'Bezsaistes maksājums';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeLv
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Drošības depozīts';
  @override
  String get rentPayment => 'Īres maksājums';
  @override
  String get subscription => 'Abonements';
}

// Path: enums.gender
class _TranslationsEnumsGenderLv implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Vīrietis';
  @override
  String get female => 'Sieviete';
  @override
  String get other => 'Cits';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationLv implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Sieva';
  @override
  String get parent => 'Vecāks';
  @override
  String get friend => 'Draugs';
  @override
  String get brother => 'Brālis';
  @override
  String get sister => 'Māsa';
  @override
  String get child => 'Bērns';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeLv
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Automašīna';
  @override
  String get motorcycles => 'Motocikli';
  @override
  String get lorry => 'Kravas automašīna';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByLv implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'No zema uz augstu';
  @override
  String get highToLow => 'No augsta uz zemu';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeLv
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Dzīvoklis';
  @override
  String get apartment => 'Dzīvoklis';
  @override
  String get condominium => 'Kondominijs';
  @override
  String get serviceResidence => 'Apkalpojamā rezidence';
  @override
  String get studio => 'Studija';
  @override
  String get duplex => 'Duplekss';
  @override
  String get townhouseCondo => 'Rindu māja/Kondominijs';
  @override
  String get others => 'Citi';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeLv implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Augsts';
  @override
  String get medium => 'Vidējs';
  @override
  String get low => 'Zems';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsLv
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Pilnībā mēbelēts';
  @override
  String get partiallyFurnished => 'Daļēji mēbelēts';
  @override
  String get notFurnished => 'Nav mēbelēts';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeLv
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Biroja telpas';
  @override
  String get retailSpace => 'Mazumtirdzniecības telpas';
  @override
  String get shopLot => 'Veikala vieta';
  @override
  String get warehouseFactory => 'Noliktava / Rūpnīca';
  @override
  String get hotelResort => 'Viesnīca / Kūrorts';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Citi';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeLv
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Dzīvojamā';
  @override
  String get industrial => 'Rūpnieciskā';
  @override
  String get agricultural => 'Lauksaimniecības';
  @override
  String get commercial => 'Komercīpašums';
  @override
  String get mixedDevelopment => 'Jaukta apbūve';
  @override
  String get others => 'Citi';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeLv
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Kondominijs / Apkalpojamā rezidence / Penthauss';
  @override
  String get apartment => 'Dzīvoklis / Plakans';
  @override
  String get house => 'Mājas';
  @override
  String get shoplot => 'Veikals';
  @override
  String get sharing => 'Kopīga māja / Dzīvoklis';
  @override
  String get others => 'Citi';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodLv
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 mēneši';
  @override
  String get oneYear => '1 gads';
  @override
  String get oneAndHalfYears => '1,5 gadi';
  @override
  String get twoYears => '2 gadi';
  @override
  String get twoAndHalfYears => '2,5 gadi';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterLv
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Katru dienu';
  @override
  String get weekly => 'Katru nedēļu';
  @override
  String get monthly => 'Katru mēnesi';
  @override
  String get yearly => 'Katru gadu';
  @override
  String get custom => 'Pielāgots';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsLv
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Jūsu pieteikums';
  @override
  String get landlord => 'Īrnieka pieteikums';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentLv
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Pieteikums nosūtīts veiksmīgi!';
  @override
  String get sucessDescription =>
      'Jūs varat redzēt šo pieteikumu savā pieteikumu sarakstā';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteLv
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Dzēst darbu?';
  @override
  String get description => 'Vai tiešām vēlaties dzēst šo darbu?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteLv
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Dzēst īpašumu?';
  @override
  String get message => 'Vai tiešām vēlaties dzēst šo īpašumu?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveLv
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vai tiešām vēlaties apstiprināt šo īri?';
  @override
  String get description =>
      'Pārliecinieties, ka esat pārskatījis īrnieka parakstīto līgumu.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptLv
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vai tiešām vēlaties pieņemt šo uzaicinājumu?';
  @override
  String get description =>
      'Pārliecinieties, ka esat lejupielādējis līguma PDF failu!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsLv
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet savu ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsLv implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet savu ${_root.common.email} adresi';
  @override
  String get invalid => '⦸ Nederīgs e-pasts, lūdzu, mēģiniet vēlreiz';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsLv
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet savu ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Parolei jābūt vismaz ${count} rakstzīmēm!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsLv
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet savu ${_root.common.password}';
  @override
  String get notMatched => 'Apstiprinātā parole nesakrīt!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsLv
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet savu ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsLv
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet savu ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsLv
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet savu ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsLv
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet savu ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsLv implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet savu ${_root.common.city} nosaukumu.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsLv implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Lūdzu, ievadiet savu ${_root.common.state} nosaukumu.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsLv
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, izvēlieties savu ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsLv implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet OTP.';
  @override
  String get invalid => 'Lūdzu, ievadiet pareizu OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsLv implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet nosaukumu';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsLv implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Lūdzu, izvēlieties ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsLv
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet iemeslu';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsLv
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, izvēlieties ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsLv
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Lūdzu, izvēlieties ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsLv implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Lūdzu, ievadiet ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsLv
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, izvēlieties ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsLv
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Lūdzu, ievadiet ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Lūdzu, ievadiet derīgu @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsLv
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Lūdzu, izvēlieties ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Lūdzu, izvēlieties derīgu @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataLv
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Lv data1 =
      _TranslationsPagesOnboardOnboardDataData1Lv._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Lv data2 =
      _TranslationsPagesOnboardOnboardDataData2Lv._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Lv data3 =
      _TranslationsPagesOnboardOnboardDataData3Lv._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraLv
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Atcerēties mani';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Nav konta? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraLv
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendLv codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendLv._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraLv
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogLv dialog =
      _TranslationsPagesResetPasswordExtraDialogLv._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraLv
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Ir konts? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraLv
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Pārvaldiet savus īpašumus';
  @override
  String get tenantTag => 'Piesakieties savā īres kontā';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraLv
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Ziņa...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormLv
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonLv reason =
      _TranslationsPagesCancelRentingFormReasonLv._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormLv
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteLv paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteLv._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraLv
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Maksājamā summa: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Konta īpašnieka vārds';
  @override
  String get accountNumber => 'Konta numurs';
  @override
  String get swiftCode => 'Swift kods';
  @override
  String get branch => 'Filiāle';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Izvēlieties tikai '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' vai '),
      fileType('DOC'),
      const TextSpan(text: ' formāta failus. Failu izmērs '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessLv
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Skatīt rēķinu';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Mēs pārskatīsim maksājumu un apstiprināsim to 24 stundu laikā.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailLv
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Mēģināt vēlreiz';
  @override
  String get title => 'Ups! Maksājums neizdevās';
  @override
  String get description =>
      'Jūsu darījums neizdevās kādas tehniskas kļūdas dēļ.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraLv
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

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
      const TextSpan(text: 'Funkcijas '),
      fa('(Ērtības un aprīkojums)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Izvēlieties īres periodu';
  @override
  String get writeAReview => '+ Uzrakstīt atsauksmi';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraLv
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Meklējiet zemes gabalus, dzīvokļus, istabas...';
  @override
  String get noRecentSearch => 'Jums nav nesenu meklējumu.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraLv
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Abonementa maksājums veiksmīgs.\nTagad varat piekļūt abonētajām funkcijām.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Lv
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Lv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Atrodi savu īpašumu';
  @override
  String get description =>
      'Mēs esam padarījuši to par vieglu, lai atrastu vietu, kas atbilst jūsu dzīvei — neatkarīgi no tā, vai tā ir istaba, dzīvoklis vai māja.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Lv
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Lv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Dzīvoklis pilsētā';
  @override
  String get description =>
      'Mēs ietaupām jūsu laiku, ātri saskaņojot jūs ar perfektu īpašumu, pirms tas ir pazudis, lai jūs varētu izbaudīt savu jauno mājokli vai bez maksas ievietot savu.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Lv
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Lv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Jūsu komforta māja';
  @override
  String get description =>
      'Ja meklējat vietu, kur dzīvot, apskatiet mūsu īres mājas. Mums ir plašs māju klāsts, no kura varat izvēlēties visā valstī.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendLv
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Kods nosūtīts pēc ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Atkārtoti nosūtīt kodu'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogLv
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Mainīts veiksmīgi!';
  @override
  String get subtitle =>
      'Piesakieties ar savu jauno paroli.\nPārvirzām jūs uz Pieteikties...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonLv
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Uzrakstiet iemeslu';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsLv errors =
      _TranslationsPagesCancelRentingFormReasonErrorsLv._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteLv
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Maksājuma piezīme (${_root.common.optional})';
  @override
  String get hint => 'Ievadiet tekstu...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsLv
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsLv._(this._root);

  final TranslationsLv _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lūdzu, ievadiet īres atcelšanas iemeslu';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsLv {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profils';
      case 'common.language':
        return 'Valoda';
      case 'common.subscriptionPlan':
        return 'Abonēšanas plāns';
      case 'common.contactUs':
        return 'Sazināties ar mums';
      case 'common.termsAndConditions':
        return 'Noteikumi un nosacījumi';
      case 'common.aboutUs':
        return 'Par mums';
      case 'common.logout':
        return 'Iziet';
      case 'common.editProfile':
        return 'Rediģēt profilu';
      case 'common.fullName':
        return 'Pilns vārds';
      case 'common.email':
        return 'E-pasts';
      case 'common.mobileNumber':
        return 'Mobilais tālruņa numurs';
      case 'common.address':
        return 'Adrese';
      case 'common.postalCode':
        return 'Pasta indekss';
      case 'common.city':
        return 'Pilsēta';
      case 'common.country':
        return 'Valsts';
      case 'common.state':
        return 'Štats';
      case 'common.password':
        return 'Parole';
      case 'common.forgotPassword':
        return 'Aizmirsāt paroli?';
      case 'common.tenant':
        return 'Īrnieks';
      case 'common.landlord':
        return 'Īpašnieks';
      case 'common.cancelRenting':
        return 'Atcelt īri';
      case 'common.startDate':
        return 'Sākuma datums';
      case 'common.endDate':
        return 'Beigu datums';
      case 'common.fromDate':
        return 'No datuma';
      case 'common.toDate':
        return 'Līdz datumam';
      case 'common.online':
        return 'Tiešsaistē';
      case 'common.bankList':
        return 'Banku saraksts';
      case 'common.withdrawMethod':
        return 'Izmaksas metode';
      case 'common.uploadPaymentReceipt':
        return 'Augšupielādēt maksājuma kvīti';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Piezīme: '),
            note('Maksājums ir jāapstiprina administratoram'),
            const TextSpan(text: ' '),
            duraion('24–48 stundu laikā'),
          ],
        );
      case 'common.reviews':
        return 'Atsauksmes';
      case 'common.description':
        return 'Apraksts';
      case 'common.about':
        return 'Par';
      case 'common.propertyTypes':
        return 'Īpašuma veidi';
      case 'common.features':
        return 'Funkcijas';
      case 'common.floorPlans':
        return 'Stāvu plāni';
      case 'common.buildingDetails':
        return 'Informācija par ēku';
      case 'common.buildingName':
        return 'Ēkas nosaukums';
      case 'common.propertyAddress':
        return 'Īpašuma adrese';
      case 'common.completionYear':
        return 'Pabeigšanas gads';
      case 'common.lotNumber':
        return 'Partijas numurs';
      case 'common.residentialType':
        return 'Dzīvojamais veids';
      case 'common.furnishings':
        return 'Mēbelējums';
      case 'common.floorRange':
        return 'Stāvu diapazons';
      case 'common.bedrooms':
        return 'Guļamistabas';
      case 'common.bathrooms':
        return 'Vannas istabas';
      case 'common.propertySize':
        return 'Īpašuma izmērs';
      case 'common.rentalPeriod':
        return 'Īres periods';
      case 'common.securityDeposit':
        return 'Drošības nauda';
      case 'common.utilityBill':
        return 'Komunālie maksājumi';
      case 'common.facilities':
        return 'Iespējas';
      case 'common.amenities':
        return 'Ērtības';
      case 'common.expiringReason':
        return 'Derīguma termiņa beigšanās iemesls';
      case 'common.tenantDetails':
        return 'Informācija par īrnieku';
      case 'common.typeOfTenant':
        return 'Īrnieka veids';
      case 'common.tenantName':
        return 'Īrnieka vārds';
      case 'common.nidPassport':
        return 'NID/Pase';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Īrnieka ID';
      case 'common.dateOfBirth':
        return 'Dzimšanas datums';
      case 'common.gender':
        return 'Dzimums';
      case 'common.nominee':
        return 'Kandidāts';
      case 'common.name':
        return 'Vārds';
      case 'common.optional':
        return 'Nav obligāti';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mob. Nr.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Ārkārtas kontaktpersona';
      case 'common.relation':
        return 'Attiecības';
      case 'common.relationWith':
        return '${_root.common.relation} Ar';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} Jums';
      case 'common.company':
        return 'Uzņēmums';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM Nr.';
      case 'common.workplace':
        return 'Darbavieta';
      case 'common.officePhoneNo':
        return 'Biroja tālruņa numurs';
      case 'common.officeMobileNo':
        return 'Biroja ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Transportlīdzeklis';
      case 'common.vehiclesInfo.plain':
        return 'Informācija par transportlīdzekļiem';
      case 'common.vehiclesInfo.optional':
        return 'Informācija par transportlīdzekļiem (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Veids';
      case 'common.vehicleRegistrationNo.normal':
        return 'Transportlīdzekļa reģistrācijas numurs';
      case 'common.vehicleRegistrationNo.short':
        return 'Reģistrācijas numurs';
      case 'common.vehicleRegistrationNo.alt':
        return 'Numura zīme';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Zīmols';
      case 'common.rentProperty':
        return 'Īrēt īpašumu';
      case 'common.propertyDetails':
        return 'Informācija par īpašumu';
      case 'common.propertyId':
        return 'Īpašuma ID';
      case 'common.propertyType':
        return 'Īpašuma veids';
      case 'common.propertyName':
        return 'Īpašuma nosaukums';
      case 'common.paymentDetails':
        return 'Maksājuma informācija';
      case 'common.monthlyRent':
        return 'Mēneša īre';
      case 'common.thisMonthPayment':
        return 'Šī mēneša maksājums';
      case 'common.totalPaidRent':
        return 'Kopējā samaksātā īre';
      case 'common.dueRent':
        return 'Parāda īre';
      case 'common.rentStartDate':
        return 'Īre ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Īre ${_root.common.endDate}';
      case 'common.status':
        return 'Statuss';
      case 'common.rentAgreementPdf':
        return 'Īres līguma PDF';
      case 'common.noFile':
        return 'Nav faila';
      case 'common.tenantImageOp':
        return 'Īrnieka attēls ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Pievienot jaunus transportlīdzekļus';
      case 'common.uploadNidPassport':
        return 'Augšupielādēt NID/Pasi';
      case 'common.nidPassportUploadNote':
        return 'Tiks pieņemti tikai faila tipa attēli. Faila ierobežojums līdz 2,5 MB.';
      case 'common.search':
        return 'Meklēt';
      case 'common.sortBy':
        return 'Kārtot pēc';
      case 'common.subscription':
        return 'Abonements';
      case 'common.downloading':
        return 'Lejupielāde...';
      case 'common.downloadSuccess':
        return 'Fails veiksmīgi lejupielādēts!';
      case 'common.addPropertyBannerTitle':
        return 'Vai vēlaties izīrēt savu īpašumu?';
      case 'common.application':
        return 'Pieteikums';
      case 'common.tenantHasPaidDeposit':
        return 'Īrnieks ir samaksājis depozītu.';
      case 'common.askProcessingRentApplication':
        return 'Vai tiešām apstrādājat šo īres īpašuma pieprasījumu?';
      case 'common.dateAndTime':
        return 'Datums un laiks';
      case 'common.applicationDetails':
        return 'Pieteikuma informācija';
      case 'common.depositStatus':
        return 'Depozīta statuss';
      case 'common.uploadRentAgreement':
        return 'Augšupielādēt īres līgumu';
      case 'common.uploadFilePDF':
        return 'Augšupielādēt failu (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Lūdzu, atlasiet līguma dokumenta failu.';
      case 'common.landlordRentAgreementPDF':
        return 'Īpašnieka īres līguma PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Īrnieka īres līguma PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Piezīme: '),
            note(
              'Apstipriniet pieteikumu tikai pēc tam, kad īrnieks ir veicis depozīta maksājumu.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Noraidījuma iemesls';
      case 'common.youveRejectedThisApplication':
        return 'Jūs esat noraidījis šo pieteikumu';
      case 'common.landlordDetails':
        return 'Informācija par īpašnieku';
      case 'common.landlordName':
        return 'Īpašnieka vārds';
      case 'common.downloadRentAgreement':
        return 'Lejupielādēt īres līgumu';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Piekrist '),
            toc('Noteikumiem un nosacījumiem'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Piezīme: '),
            note(
              'Lūdzu, lejupielādējiet un izlasiet līgumu. Lūdzu, nosūtiet parakstīto līgumu īpašniekam, izmantojot WhatsApp vai e-pastu.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Piezīme: '),
            note(
              'Īpašnieks apstiprina pieteikumu, kad īrnieks samaksā drošības naudu, komunālos maksājumus un viena mēneša avansa īri.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Īres līgums (PDF) '),
            complete('Pabeigts līgums'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Piezīme: '),
            note(
              'Īpašnieks apstiprina pieteikumu, kad īrnieks samaksā drošības naudu, komunālos maksājumus un viena mēneša avansa īri.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Pieteikumu saraksts';
      case 'common.viewDetails':
        return 'Skatīt informāciju';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Sākums';
      case 'common.dashboard':
        return 'Informācijas panelis';
      case 'common.tenants':
        return 'Īrnieki';
      case 'common.maintenance':
        return 'Apkope';
      case 'common.maintenanceList':
        return 'Apkopes saraksts';
      case 'common.maintenanceReport':
        return 'Apkopes atskaite';
      case 'common.labor':
        return 'Darbaspēks';
      case 'common.applications':
        return 'Pieteikumi';
      case 'common.rentInvitation':
        return 'Īres ielūgums';
      case 'common.payment':
        return 'Maksājums';
      case 'common.rentPayment':
        return 'Īres maksājums';
      case 'common.depositUtilityPayment':
        return 'Depozīta un komunālo maksājumu maksājums';
      case 'common.refundRequest':
        return 'Atmakas pieprasījums';
      case 'common.withdrawRequest':
        return 'Izmaksas pieprasījums';
      case 'common.myProperty':
        return 'Mans īpašums';
      case 'common.myRent':
        return 'Mana īre';
      case 'common.wishlist':
        return 'Vēlmju saraksts';
      case 'common.properties':
        return 'Īpašumi';
      case 'common.allProperties':
        return 'Visi īpašumi';
      case 'common.totalPropery':
        return 'Kopējais īpašums';
      case 'common.occupied':
        return 'Aizņemts';
      case 'common.vacant':
        return 'Brīvs';
      case 'common.accounting':
        return 'Grāmatvedība';
      case 'common.totalIncome':
        return 'Kopējie ienākumi';
      case 'common.totalExpense':
        return 'Kopējie izdevumi';
      case 'common.currentBalance':
        return 'Pašreizējais atlikums';
      case 'common.totalWithdrawal':
        return 'Kopējais (izmaksa)';
      case 'common.totalProperties':
        return 'Kopējais īpašumu skaits';
      case 'common.totalTenant':
        return 'Kopējais īrnieku skaits';
      case 'common.totalRentPaid':
        return 'Kopējā samaksātā īre';
      case 'common.totalRentDue':
        return 'Kopējā parāda īre';
      case 'common.totalApplication':
        return 'Kopējais pieteikumu skaits';
      case 'common.pendingApplication':
        return 'Gaidošs pieteikums';
      case 'common.processingApplication':
        return 'Apstrādes pieteikums';
      case 'common.approveApplication':
        return 'Apstiprināt pieteikumu';
      case 'common.rejectApplication':
        return 'Noraidīt pieteikumu';
      case 'common.maintenanceCost':
        return 'Apkopes izmaksas';
      case 'common.transactionSummary':
        return 'Darījumu kopsavilkums';
      case 'common.maintenanceRequest':
        return 'Apkopes pieprasījums';
      case 'common.notifications':
        return 'Paziņojumi';
      case 'common.myProperties':
        return 'Mani īpašumi';
      case 'common.recommendationProperties':
        return 'Ieteikumu īpašumi';
      case 'common.laborList':
        return 'Darbaspēka saraksts';
      case 'common.addLabor':
        return 'Pievienot darbaspēku';
      case 'common.laborDetails':
        return 'Informācija par darbaspēku';
      case 'common.laborSalary':
        return 'Darbaspēka alga';
      case 'common.editLabor':
        return 'Rediģēt darbaspēku';
      case 'common.addNewLabor':
        return 'Pievienot jaunu darbaspēku';
      case 'common.enterAmount':
        return 'Ievadīt summu';
      case 'common.maintenanceDetails':
        return 'Informācija par apkopi';
      case 'common.laborName':
        return 'Darbaspēka vārds';
      case 'common.comment':
        return 'Komentārs';
      case 'common.image':
        return 'Attēls';
      case 'common.complete':
        return 'Pabeigt';
      case 'common.details':
        return 'Informācija';
      case 'common.title':
        return 'Nosaukums';
      case 'common.date':
        return 'Datums';
      case 'common.reason':
        return 'Iemesls';
      case 'common.edit':
        return 'Rediģēt';
      case 'common.property':
        return 'Īpašums';
      case 'common.completeYourProfile':
        return 'Aizpildiet savu profilu';
      case 'common.profileImage':
        return 'Profila attēls';
      case 'common.imagePickHint':
        return 'Tiks pieņemts tikai JPEG un PNG attēls ar maksimālo izmēru 120x120 pikseļi.';
      case 'common.invoiceId':
        return 'Rēķina ID';
      case 'common.depositAmount':
        return 'Depozīta summa';
      case 'common.landlordPhone':
        return 'Īpašnieka tālrunis';
      case 'common.rentalAdvance':
        return 'Īre (avanss)';
      case 'common.totalAmount':
        return 'Kopējā summa';
      case 'common.rentalAmount':
        return 'Īres summa';
      case 'common.adminCharge':
        return 'Administratīvā maksa';
      case 'common.editAccount':
        return 'Rediģēt kontu';
      case 'common.addNewAccount':
        return 'Pievienot jaunu kontu';
      case 'common.transactionId':
        return 'Darījuma ID';
      case 'common.transactionType':
        return 'Darījuma veids';
      case 'common.requestDate':
        return 'Pieprasījuma datums';
      case 'common.amount':
        return 'Summa';
      case 'common.fee':
        return 'Maksa';
      case 'common.paymentStatus':
        return 'Maksājuma statuss';
      case 'common.generatedTime':
        return 'Ģenerēšanas laiks';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Šī ir sistēmas ģenerēta atskaite par '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Izmaksu vēsture';
      case 'common.history':
        return 'Vēsture';
      case 'common.withdrawAmount':
        return 'Izmaksas summa';
      case 'common.availableBalance':
        return 'Pieejamais atlikums';
      case 'common.withdrawCharge':
        return 'Izmaksas maksa';
      case 'common.paymentMethod':
        return 'Maksājuma metode';
      case 'common.requestSendSuccess':
        return 'Pieprasījums veiksmīgi nosūtīts!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Maksājuma kvīts veiksmīgi iesniegta.';
      case 'common.refundReason':
        return 'Atmakas iemesls';
      case 'common.note':
        return 'Piezīme';
      case 'common.refundReceiveSuccess':
        return 'Atmaksa veiksmīgi saņemta.';
      case 'common.downloadPaymentReceipt':
        return 'Lejupielādēt maksājuma kvīti';
      case 'common.invoice':
        return 'Rēķins';
      case 'common.selectPropertyToSeeInvoice':
        return 'Atlasiet īpašumu, lai redzētu rēķina numuru...';
      case 'common.bankAccName':
        return 'Bankas konta nosaukums';
      case 'common.bankName':
        return 'Bankas nosaukums';
      case 'common.bankAccNum':
        return 'Bankas konta numurs';
      case 'common.thankYou':
        return 'Paldies!';
      case 'common.basicInfo':
        return 'Pamatinformācija';
      case 'common.descriptionPricing':
        return 'Apraksts un cenas';
      case 'common.contact':
        return 'Kontaktinformācija';
      case 'common.photos':
        return 'Fotogrāfijas';
      case 'common.successfullySubmitted':
        return 'Veiksmīgi iesniegts!';
      case 'common.editProperty':
        return 'Rediģēt īpašumu';
      case 'common.addNewProperty':
        return 'Pievienot jaunu īpašumu';
      case 'common.propertyManageRequestSuccess':
        return 'Jūsu sludinājums ir iesniegts pārskatīšanai.';
      case 'common.postAnotherProperty':
        return 'Publicēt citu īpašumu';
      case 'common.browseYourProperty':
        return 'Pārlūkot savu īpašumu';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Solis '),
                step,
                const TextSpan(text: ' no '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Ko jūs vēlētos publicēt?';
      case 'common.category':
        return 'Kategorija';
      case 'common.invalidCategory':
        return 'Nederīga kategorija';
      case 'common.unitNumber':
        return 'Vienības numurs';
      case 'common.sqft':
        return 'kv.pēdas';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Īpašuma izmēram jābūt lielākam par nulli';
      case 'common.whatAreTheFacility':
        return 'Kādas ir iespējas?';
      case 'common.whatAreTheAmenity':
        return 'Kādas ir ērtības?';
      case 'common.parkingLot':
        return 'Autostāvvieta';
      case 'common.houseType':
        return 'Mājas tips';
      case 'common.value':
        return 'Vērtība';
      case 'common.unitLotSize':
        return 'Vienības / zemes gabala izmērs';
      case 'common.landSize':
        return 'Zemes izmērs';
      case 'common.acres':
        return 'akrs(i)';
      case 'common.roomSize':
        return 'Istabas izmērs';
      case 'common.askTenantPreference':
        return 'Kāda ir jūsu īrnieka izvēle';
      case 'common.couple':
        return 'Pāris';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Aprakstiet ${propertyType}';
      case 'common.adTitle':
        return 'Sludinājuma nosaukums';
      case 'common.minimumRentalPeriod':
        return 'Minimālais īres periods';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Slēpt vai parādīt e-pasta adresi';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Paldies, ka publicējāt vietnē ${appName}!';
      case 'common.propertyList':
        return 'Īpašumu saraksts';
      case 'common.newInviteRent':
        return 'Jauns īres uzaicinājums';
      case 'common.rentAgreement':
        return 'Īres līgums';
      case 'common.rentDetails':
        return 'Īres informācija';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Piezīme: '),
            note('Lūdzu, gaidiet, līdz īrnieks pieņems uzaicinājumu.'),
          ],
        );
      case 'common.rent':
        return 'Īre';
      case 'common.editTenant':
        return 'Rediģēt īrnieku';
      case 'common.addNewTenant':
        return 'Pievienot jaunu īrnieku';
      case 'common.shareInstallLink':
        return 'Kopīgot instalēšanas saiti';
      case 'common.tenantList':
        return 'Īrnieku saraksts';
      case 'common.editMaintenanceRequest':
        return 'Rediģēt apkopes pieprasījumu';
      case 'common.addNewMaintenance':
        return 'Pievienot jaunu apkopi';
      case 'common.landlordId':
        return 'Saimnieka ID';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Piezīme '),
            note(
              'Jūsu līgums tiek pārskatīts. Lūdzu, gaidiet, līdz saimnieks apstiprinās jūsu īri.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Rediģēt atsauksmi';
      case 'common.writeAReview':
        return 'Uzrakstīt atsauksmi';
      case 'common.selectRating':
        return 'Izvēlēties vērtējumu';
      case 'common.enterYourOpinion':
        return 'Ievadiet savu viedokli';
      case 'common.askToEnterReviewMsg':
        return 'Lūdzu, ievadiet atsauksmes ziņojumu';
      case 'common.pressBackAgainToExit':
        return 'Nospiediet atpakaļ vēlreiz, lai izietu.';
      case 'common.selectPaymentMethod':
        return 'Izvēlieties maksājuma metodi';
      case 'common.filter':
        return 'Filtrs';
      case 'common.perMonth':
        return '/1 mēnesī';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Meklējiet jebko vietnē ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Kaut kas nogāja greizi, lūdzu, mēģiniet vēlreiz';
      case 'exceptions.noNidPassport':
        return 'Nav norādīts NID/Pases attēls.';
      case 'exceptions.noRentPropertyFound':
        return 'Šim īrniekam nav atrasts īres īpašums.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Īpašums nav atrasts!\nLūdzu, mēģiniet ar citiem atslēgvārdiem';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Nav atrasts abonēšanas plāns!\nLūdzu, atsvaidziniet lapu un mēģiniet vēlreiz.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Nederīga ${dataType} informācija! Lūdzu, atsvaidziniet lapu un mēģiniet vēlreiz.';
      case 'exceptions.invalidDownloadUrl':
        return 'Nederīgs lejupielādes URL!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Neizdevās saglabāt failu! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => 'Kļūda, atverot failu! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Nav sniegta informācija par transportlīdzekli.';
      case 'exceptions.yourApplicationRejected':
        return 'Jūsu pieteikums ir noraidīts';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Pieteikums nav atrasts!\n${subject} tiks parādīts šeit, kad būs pieejams.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Jūsu pieteikums';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Īrnieka pieteikums';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Īpašums nav atrasts!\nLūdzu, mēģiniet pievienot īpašumu, lai to šeit redzētu.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Nav atrasti ieteicamie īpašumi\nLūdzu, mēģiniet vēlreiz vēlāk.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Īpašumi nav pieejami\nLūdzu, mēģiniet vēlreiz vēlāk.';
      case 'exceptions.noImageProvided':
        return 'Nav norādīts attēls';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) => 'Nav atrasta ${status} apkope.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Apkope nav atrasta! Jūs varat izveidot apkopes pieprasījumu, lai to šeit redzētu.';
      case 'exceptions.noDepositFound':
        return 'Nav atrasts drošības depozīts!\nLūdzu, varat redzēt drošības iemaksas, kad tās būs pieejamas';
      case 'exceptions.noRentPaymentFound':
        return 'Nav atrasts īres maksājums!\nLūdzu, varat redzēt īres maksājumus, kad tie būs pieejami';
      case 'exceptions.transactionSummaryApiException':
        return 'Neizdevās iegūt darījumu kopsavilkumu.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Nav atrasts pieprasījums!\nLūdzu, mēģiniet izveidot izņemšanas pieprasījumu, lai to šeit redzētu.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Šis izņemšanas pieprasījums nav apstiprināts!.';
      case 'exceptions.nonZeroError':
        return 'Lūdzu, ievadiet derīgu summu, kas lielāka par nulli.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Summai jābūt vismaz ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Summa nedrīkst pārsniegt ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Lūdzu, vispirms izvēlieties maksājuma metodi.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Nav atrasts ${status} atmaksas pieprasījums!\nJūs varat redzēt atmaksas pieprasījumu šeit, kad tas būs pieejams.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Nav atrasts atmaksas pieprasījums!\nJūs varat izveidot atmaksas pieprasījumu, lai to šeit redzētu.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Īrnieks apstiprinās atmaksu, kad viņš saņems naudu atpakaļ';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Mēs pārskatīsim atmaksas pieprasījumu un apstiprināsim to 24 stundu laikā.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Lūdzu, izvēlieties ${value} skaitu';
      case 'exceptions.invalidDateRange':
        return 'Nederīgs datumu diapazons.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} jābūt lielākam par nulli.';
      case 'exceptions.editProperty.rentalChange':
        return 'Īres īpašums mainās. Tam jābūt derīgam (spēkā) tikai nākamā mēneša īres maksājumam.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Jūsu īpašums jau ir izīrēts īrniekam. Nevar izdzēst, kamēr vispirms neizņemsit īrnieku';
      case 'exceptions.editProperty.alreayRented':
        return 'Šis īpašums jau ir izīrēts. Lūdzu, mēģiniet vēlreiz vēlāk.\nVai arī varat sazināties ar saimnieku, lai iegūtu vairāk informācijas.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Nav atrasts īres uzaicinājums!\nLūdzu, mēģiniet izveidot īres uzaicinājumu, lai to šeit redzētu.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Nav atrasts īres uzaicinājums!\nJūs varat redzēt īres uzaicinājumu šeit, kad tas būs pieejams.';
      case 'exceptions.notenantFoundList':
        return 'Nav īrnieku!\nLūdzu, mēģiniet pievienot īrnieku, lai to šeit redzētu.';
      case 'exceptions.noFeaturesProvided':
        return 'Nav norādītas funkcijas.';
      case 'exceptions.noNotificationFound':
        return 'Nav pieejams paziņojums.\nJūs varat redzēt savu paziņojumu šeit, kad tas būs pieejams.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Vai tiešām vēlaties iziet?';
      case 'prompt.application.rejectTitle':
        return 'Kāpēc jūs noraidāt šo pieteikumu?';
      case 'prompt.application.applicationSent.successfully':
        return 'Pieteikums nosūtīts veiksmīgi!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Jūs varat redzēt šo pieteikumu savā pieteikumu sarakstā';
      case 'prompt.labor.delete.title':
        return 'Dzēst darbu?';
      case 'prompt.labor.delete.description':
        return 'Vai tiešām vēlaties dzēst šo darbu?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Kāpēc šis pieprasījums tiek noraidīts?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Vai tiešām apstrādājat šo apkopes pieprasījumu?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Darbs pabeigts?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Dzēst izņemšanas metodi?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Vai tiešām vēlaties dzēst šo izņemšanas metodi?';
      case 'prompt.unsavedChanges.title':
        return 'Vai tiešām vēlaties atgriezties?';
      case 'prompt.unsavedChanges.message':
        return 'Mainītie lauki netiks saglabāti!';
      case 'prompt.property.delete.title':
        return 'Dzēst īpašumu?';
      case 'prompt.property.delete.message':
        return 'Vai tiešām vēlaties dzēst šo īpašumu?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Vai tiešām vēlaties apstiprināt šo īri?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Pārliecinieties, ka esat pārskatījis īrnieka parakstīto līgumu.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Vai tiešām vēlaties pieņemt šo uzaicinājumu?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Pārliecinieties, ka esat lejupielādējis līguma PDF failu!';
      case 'prompt.sessionExpired.title':
        return 'Sesija ir beigusies';
      case 'prompt.sessionExpired.message':
        return 'Jūsu sesija ir beigusies. Lūdzu, piesakieties vēlreiz';
      case 'prompt.sessionExpired.action':
        return 'Pieteikties';
      case 'prompt.noInternet.title':
        return 'Nav interneta savienojuma';
      case 'prompt.noInternet.message':
        return 'Lūdzu, pārbaudiet savu Wi-Fi mobilo tīkla savienojumu un mēģiniet vēlreiz';
      case 'prompt.noInternet.action':
        return 'Mēģināt vēlreiz';
      case 'prompt.permissionHandler.title':
        return 'Nepieciešama atļauja!';
      case 'prompt.permissionHandler.message':
        return 'Jums ir jāpiešķir atļaujas lietotnes iestatījumos. Vai vēlaties atvērt iestatījumus tagad?';
      case 'prompt.imagePicker.title':
        return 'Izvēlieties opciju';
      case 'prompt.imagePicker.gallery':
        return 'Galerija';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Verificējiet savu e-pastu';
      case 'prompt.verificationDialog.message':
        return 'Mēs esam nosūtījuši verifikācijas koda e-pastu';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} uz ${email}';
      case 'prompt.notification.clearTitle':
        return 'Notīrīt paziņojumus?';
      case 'prompt.notification.clearMessage':
        return 'Vai tiešām vēlaties notīrīt visus paziņojumus?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Ievadiet ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Ievadiet savu ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.common.email} adresi';
      case 'form.email.errors.invalid':
        return '⦸ Nederīgs e-pasts, lūdzu, mēģiniet vēlreiz';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Parolei jābūt vismaz ${count} rakstzīmēm!';
      case 'form.confirmPassword.label':
        return 'Apstipriniet ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Apstiprinātā parole nesakrīt!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Mājas numurs un ielas nosaukums';
      case 'form.address1.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Dzīvoklis, komplekts, vienība utt.';
      case 'form.address2.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Ievadiet ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Ievadiet ${_root.common.city} nosaukumu.';
      case 'form.city.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.common.city} nosaukumu.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Ievadiet ${_root.common.state} nosaukumu.';
      case 'form.state.errors.required':
        return 'Lūdzu, ievadiet savu ${_root.common.state} nosaukumu.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Izvēlieties ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Lūdzu, izvēlieties savu ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Lūdzu, ievadiet OTP.';
      case 'form.otp.errors.invalid':
        return 'Lūdzu, ievadiet pareizu OTP.';
      case 'form.title.label':
        return 'Nosaukums';
      case 'form.title.hint':
        return 'Ievadiet nosaukumu';
      case 'form.title.errors.required':
        return 'Lūdzu, ievadiet nosaukumu';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Izvēlieties ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Lūdzu, izvēlieties ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Iemesls';
      case 'form.reason.hint':
        return 'Ievadiet iemeslu';
      case 'form.reason.errors.required':
        return 'Lūdzu, ievadiet iemeslu';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Izvēlieties ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Lūdzu, izvēlieties ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Augšupielādējiet ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Lūdzu, izvēlieties ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Ievadiet ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Lūdzu, ievadiet ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Izvēlieties ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Lūdzu, izvēlieties ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Ievadiet ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Lūdzu, ievadiet ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Lūdzu, ievadiet derīgu @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Izvēlieties ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Lūdzu, izvēlieties ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Lūdzu, izvēlieties derīgu @form.anyDropdown.label';
      case 'action.next':
        return 'Nākamais';
      case 'action.getStarted':
        return 'Sākt darbu';
      case 'action.skip':
        return 'Izlaist';
      case 'action.select':
        return 'Atlasīt';
      case 'action.save':
        return 'Saglabāt';
      case 'action.signIn':
        return 'Pieteikties';
      case 'action.signUp':
        return 'Reģistrēties';
      case 'action.kContinue':
        return 'Turpināt';
      case 'action.clearAll':
        return 'Notīrīt visu';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Sūtīt';
      case 'action.pay':
        return 'Maksāt';
      case 'action.remove':
        return 'Noņemt';
      case 'action.goBack':
        return 'Atgriezties';
      case 'action.buyNow':
        return 'Pirkt tagad';
      case 'action.no':
        return 'Nē';
      case 'action.open':
        return 'Atvērt';
      case 'action.addProperty':
        return 'Pievienot īpašumu';
      case 'action.process':
        return 'Apstrādāt';
      case 'action.approve':
        return 'Apstiprināt';
      case 'action.reject':
        return 'Noraidīt';
      case 'action.viewRent':
        return 'Skatīt īri';
      case 'action.openNavigationMenu':
        return 'Atvērt navigācijas izvēlni';
      case 'action.seeAll':
        return 'Skatīt visu';
      case 'action.update':
        return 'Atjaunināt';
      case 'action.printTransaction':
        return 'Drukāt darījumu';
      case 'action.payoutRequest':
        return 'Izmaksas pieprasījums';
      case 'action.addNew':
        return '+ Pievienot jaunu';
      case 'action.sendRequest':
        return 'Nosūtīt pieprasījumu';
      case 'action.print':
        return 'Drukāt';
      case 'action.requestForRefund':
        return 'Pieprasīt atmaksu';
      case 'action.previous':
        return 'Iepriekšējais';
      case 'action.delete':
        return 'Dzēst';
      case 'action.applyProperty':
        return 'Pieteikties īpašumam';
      case 'action.viewApplication':
        return 'Skatīt pieteikumu';
      case 'action.inviteTenant':
        return 'Izaicināt īrnieku';
      case 'action.inviteRent':
        return 'Izaicināt uz īri';
      case 'action.cancel':
        return 'Atcelt';
      case 'action.accept':
        return 'Pieņemt';
      case 'action.submit':
        return 'Iesniegt';
      case 'action.yes':
        return 'Jā';
      case 'action.okay':
        return 'Labi';
      case 'action.confirm':
        return 'Apstiprināt';
      case 'action.apply':
        return 'Piemērot';
      case 'action.reset':
        return 'Atiestatīt';
      case 'action.retry':
        return 'Mēģināt vēlreiz';
      case 'action.viewAll':
        return 'Skatīt visu';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Atrodi savu īpašumu';
      case 'pages.onboard.onboardData.data1.description':
        return 'Mēs esam padarījuši to par vieglu, lai atrastu vietu, kas atbilst jūsu dzīvei — neatkarīgi no tā, vai tā ir istaba, dzīvoklis vai māja.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Dzīvoklis pilsētā';
      case 'pages.onboard.onboardData.data2.description':
        return 'Mēs ietaupām jūsu laiku, ātri saskaņojot jūs ar perfektu īpašumu, pirms tas ir pazudis, lai jūs varētu izbaudīt savu jauno mājokli vai bez maksas ievietot savu.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Jūsu komforta māja';
      case 'pages.onboard.onboardData.data3.description':
        return 'Ja meklējat vietu, kur dzīvot, apskatiet mūsu īres mājas. Mums ir plašs māju klāsts, no kura varat izvēlēties visā valstī.';
      case 'pages.signIn.title':
        return 'Esiet sveicināti atpakaļ';
      case 'pages.signIn.subtitle':
        return 'Piesakieties tūlīt, lai sāktu pārsteidzošu ceļojumu.';
      case 'pages.signIn.extra.rememberMe':
        return 'Atcerēties mani';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Nav konta? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Aizmirsāt paroli';
      case 'pages.forgotPassword.subtitle':
        return 'Ievadiet savu e-pasta adresi, lai atjaunotu paroli.';
      case 'pages.otpVerification.title':
        return 'Verifikācija';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4 ciparu PIN ir nosūtīts uz jūsu e-pasta adresi. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Kods nosūtīts pēc ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Atkārtoti nosūtīt kodu'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Atiestatīt paroli';
      case 'pages.resetPassword.subtitle':
        return 'Atiestatiet paroli, lai atgūtu un pieteiktos savā kontā';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Mainīts veiksmīgi!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Piesakieties ar savu jauno paroli.\nPārvirzām jūs uz Pieteikties...';
      case 'pages.signUp.title':
        return 'Izveidot kontu';
      case 'pages.signUp.subtitle':
        return 'Reģistrējieties tūlīt, lai sāktu pārsteidzošu ceļojumu';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Ir konts? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Kas tu esi?';
      case 'pages.welcome.subtitle':
        return 'Lūdzu, izvēlieties zemāk esošo opciju.';
      case 'pages.welcome.extra.landlordTag':
        return 'Pārvaldiet savus īpašumus';
      case 'pages.welcome.extra.tenantTag':
        return 'Piesakieties savā īres kontā';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Paziņojumi';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Ziņa...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Kāpēc jūs ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Uzrakstiet iemeslu';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Lūdzu, ievadiet īres atcelšanas iemeslu';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Bezsaistes maksājums';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Maksājuma piezīme (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Ievadiet tekstu...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Maksājamā summa: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Konta īpašnieka vārds';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Konta numurs';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift kods';
      case 'pages.offlinePayment.extra.branch':
        return 'Filiāle';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Izvēlieties tikai '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' vai '),
            fileType('DOC'),
            const TextSpan(text: ' formāta failus. Failu izmērs '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Skatīt rēķinu';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Mēs pārskatīsim maksājumu un apstiprināsim to 24 stundu laikā.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Mēģināt vēlreiz';
      case 'pages.paymentStatus.fail.title':
        return 'Ups! Maksājums neizdevās';
      case 'pages.paymentStatus.fail.description':
        return 'Jūsu darījums neizdevās kādas tehniskas kļūdas dēļ.';
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
            const TextSpan(text: 'Funkcijas '),
            fa('(Ērtības un aprīkojums)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Izvēlieties īres periodu';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Uzrakstīt atsauksmi';
      case 'pages.search.appbarTitle':
        return 'Meklēt';
      case 'pages.search.extra.hint':
        return 'Meklējiet zemes gabalus, dzīvokļus, istabas...';
      case 'pages.search.extra.noRecentSearch':
        return 'Jums nav nesenu meklējumu.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Izvēlieties savu plānu';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Abonementa maksājums veiksmīgs.\nTagad varat piekļūt abonētajām funkcijām.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Kopējās apkopes izmaksas: '),
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
        return 'Visi īpašumi';
      case 'enums.propertyStatus.pending':
        return 'Gaida apstiprinājumu';
      case 'enums.propertyStatus.active':
        return 'Aktīvs';
      case 'enums.propertyStatus.inactive':
        return 'Neaktīvs';
      case 'enums.propertyStatus.rejected':
        return 'Noraidīts';
      case 'enums.propertyType.apartmentCondominium':
        return 'Dzīvoklis/Kondominijs';
      case 'enums.propertyType.house':
        return 'Māja';
      case 'enums.propertyType.commercialProperty':
        return 'Komercīpašums';
      case 'enums.propertyType.land':
        return 'Zeme';
      case 'enums.propertyType.room':
        return 'Istaba';
      case 'enums.applicationStatus.all':
        return 'Visi';
      case 'enums.applicationStatus.pending':
        return 'Gaida apstiprinājumu';
      case 'enums.applicationStatus.processing':
        return 'Apstrāde';
      case 'enums.applicationStatus.approved':
        return 'Apstiprināts';
      case 'enums.applicationStatus.rejected':
        return 'Noraidīts';
      case 'enums.myRentStatus.pending':
        return 'Gaida apstiprinājumu';
      case 'enums.myRentStatus.processing':
        return 'Apstrāde';
      case 'enums.myRentStatus.active':
        return 'Aktīvs';
      case 'enums.myRentStatus.expired':
        return 'Beidzies termiņš';
      case 'enums.myRentStatus.cancelled':
        return 'Atcelts';
      case 'enums.maintenanceStatus.pending':
        return 'Gaida apstiprinājumu';
      case 'enums.maintenanceStatus.processing':
        return 'Apstrāde';
      case 'enums.maintenanceStatus.rejected':
        return 'Noraidīts';
      case 'enums.maintenanceStatus.completed':
        return 'Pabeigts';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privāts (fiziska persona)';
      case 'enums.tenantProfileType.company':
        return 'Uzņēmums';
      case 'enums.tenantType.newTenant':
        return 'Jauns īrnieks';
      case 'enums.tenantType.activeTenant':
        return 'Aktīvs īrnieks';
      case 'enums.tenantType.expiredTenant':
        return 'Beidzies termiņš īrniekam';
      case 'enums.paymentStatus.all':
        return 'Visi';
      case 'enums.paymentStatus.pending':
        return 'Gaida apstiprinājumu';
      case 'enums.paymentStatus.paid':
        return 'Samaksāts';
      case 'enums.paymentStatus.unpaid':
        return 'Nemaksāts';
      case 'enums.paymentStatus.rejected':
        return 'Noraidīts';
      case 'enums.paymentStatus.refund':
        return 'Atmaksa';
      case 'enums.paymentOptions.onlinePayment':
        return 'Tiešsaistes maksājums';
      case 'enums.paymentOptions.offlinePayment':
        return 'Bezsaistes maksājums';
      case 'enums.paymentType.securityDeposit':
        return 'Drošības depozīts';
      case 'enums.paymentType.rentPayment':
        return 'Īres maksājums';
      case 'enums.paymentType.subscription':
        return 'Abonements';
      case 'enums.gender.male':
        return 'Vīrietis';
      case 'enums.gender.female':
        return 'Sieviete';
      case 'enums.gender.other':
        return 'Cits';
      case 'enums.ecRelation.wife':
        return 'Sieva';
      case 'enums.ecRelation.parent':
        return 'Vecāks';
      case 'enums.ecRelation.friend':
        return 'Draugs';
      case 'enums.ecRelation.brother':
        return 'Brālis';
      case 'enums.ecRelation.sister':
        return 'Māsa';
      case 'enums.ecRelation.child':
        return 'Bērns';
      case 'enums.vehicleType.car':
        return 'Automašīna';
      case 'enums.vehicleType.motorcycles':
        return 'Motocikli';
      case 'enums.vehicleType.lorry':
        return 'Kravas automašīna';
      case 'enums.sortBy.lowToHigh':
        return 'No zema uz augstu';
      case 'enums.sortBy.highToLow':
        return 'No augsta uz zemu';
      case 'enums.residentialType.flat':
        return 'Dzīvoklis';
      case 'enums.residentialType.apartment':
        return 'Dzīvoklis';
      case 'enums.residentialType.condominium':
        return 'Kondominijs';
      case 'enums.residentialType.serviceResidence':
        return 'Apkalpojamā rezidence';
      case 'enums.residentialType.studio':
        return 'Studija';
      case 'enums.residentialType.duplex':
        return 'Duplekss';
      case 'enums.residentialType.townhouseCondo':
        return 'Rindu māja/Kondominijs';
      case 'enums.residentialType.others':
        return 'Citi';
      case 'enums.floorRange.high':
        return 'Augsts';
      case 'enums.floorRange.medium':
        return 'Vidējs';
      case 'enums.floorRange.low':
        return 'Zems';
      case 'enums.furnishings.fullyFurnished':
        return 'Pilnībā mēbelēts';
      case 'enums.furnishings.partiallyFurnished':
        return 'Daļēji mēbelēts';
      case 'enums.furnishings.notFurnished':
        return 'Nav mēbelēts';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Biroja telpas';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Mazumtirdzniecības telpas';
      case 'enums.commercialPropertyType.shopLot':
        return 'Veikala vieta';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Noliktava / Rūpnīca';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Viesnīca / Kūrorts';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Citi';
      case 'enums.landPropertyType.residential':
        return 'Dzīvojamā';
      case 'enums.landPropertyType.industrial':
        return 'Rūpnieciskā';
      case 'enums.landPropertyType.agricultural':
        return 'Lauksaimniecības';
      case 'enums.landPropertyType.commercial':
        return 'Komercīpašums';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Jaukta apbūve';
      case 'enums.landPropertyType.others':
        return 'Citi';
      case 'enums.residentPropertyType.condo':
        return 'Kondominijs / Apkalpojamā rezidence / Penthauss';
      case 'enums.residentPropertyType.apartment':
        return 'Dzīvoklis / Plakans';
      case 'enums.residentPropertyType.house':
        return 'Mājas';
      case 'enums.residentPropertyType.shoplot':
        return 'Veikals';
      case 'enums.residentPropertyType.sharing':
        return 'Kopīga māja / Dzīvoklis';
      case 'enums.residentPropertyType.others':
        return 'Citi';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 mēneši';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 gads';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 gadi';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 gadi';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 gadi';
      case 'enums.dropdownDateFilter.daily':
        return 'Katru dienu';
      case 'enums.dropdownDateFilter.weekly':
        return 'Katru nedēļu';
      case 'enums.dropdownDateFilter.monthly':
        return 'Katru mēnesi';
      case 'enums.dropdownDateFilter.yearly':
        return 'Katru gadu';
      case 'enums.dropdownDateFilter.custom':
        return 'Pielāgots';
      default:
        return null;
    }
  }
}
