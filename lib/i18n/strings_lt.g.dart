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
class TranslationsLt implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsLt({
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
             locale: AppLocale.lt,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <lt>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsLt _root = this; // ignore: unused_field

  @override
  TranslationsLt $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsLt(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonLt common = _TranslationsCommonLt._(_root);
  @override
  late final _TranslationsExceptionsLt exceptions = _TranslationsExceptionsLt._(
    _root,
  );
  @override
  late final _TranslationsPromptLt prompt = _TranslationsPromptLt._(_root);
  @override
  late final _TranslationsFormLt form = _TranslationsFormLt._(_root);
  @override
  late final _TranslationsActionLt action = _TranslationsActionLt._(_root);
  @override
  late final _TranslationsPagesLt pages = _TranslationsPagesLt._(_root);
  @override
  late final _TranslationsEnumsLt enums = _TranslationsEnumsLt._(_root);
}

// Path: common
class _TranslationsCommonLt implements TranslationsCommonEn {
  _TranslationsCommonLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profilis';
  @override
  String get language => 'Kalba';
  @override
  String get subscriptionPlan => 'Abonementas planas';
  @override
  String get contactUs => 'Susisiekite su mumis';
  @override
  String get termsAndConditions => 'Taisyklės ir sąlygos';
  @override
  String get aboutUs => 'Apie mus';
  @override
  String get logout => 'Atsijungti';
  @override
  String get editProfile => 'Redaguoti profilį';
  @override
  String get fullName => 'Vardas ir pavardė';
  @override
  String get email => 'El. paštas';
  @override
  String get mobileNumber => 'Mobilusis telefonas';
  @override
  String get address => 'Adresas';
  @override
  String get postalCode => 'Pašto kodas';
  @override
  String get city => 'Miestas';
  @override
  String get country => 'Šalis';
  @override
  String get state => 'Valstybė';
  @override
  String get password => 'Slaptažodis';
  @override
  String get forgotPassword => 'Pamiršau slaptažodį';
  @override
  String get tenant => 'Nuomininkas';
  @override
  String get landlord => 'Nuomotojas';
  @override
  String get cancelRenting => 'Atšaukti nuomą';
  @override
  String get startDate => 'Pradžios data';
  @override
  String get endDate => 'Pabaigos data';
  @override
  String get fromDate => 'Nuo datos';
  @override
  String get toDate => 'Iki datos';
  @override
  String get online => 'Prisijungęs';
  @override
  String get bankList => 'Bankų sąrašas';
  @override
  String get withdrawMethod => 'Lėšų išėmimo būdas';
  @override
  String get uploadPaymentReceipt => 'Įkelti mokėjimo kvitą';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pastaba: '),
      note(
        'Mokėjimas reikalauja rankinio patvirtinimo iš administratoriaus per',
      ),
      const TextSpan(text: ' '),
      duraion('24–48 valandas.'),
    ],
  );
  @override
  String get reviews => 'Atsiliepimai';
  @override
  String get description => 'Aprašymas';
  @override
  String get about => 'Apie';
  @override
  String get propertyTypes => 'Nekilnojamojo turto tipai';
  @override
  String get features => 'Savybės';
  @override
  String get floorPlans => 'Aukštų planai';
  @override
  String get buildingDetails => 'Informacija apie pastatą';
  @override
  String get buildingName => 'Pastato pavadinimas';
  @override
  String get propertyAddress => 'Nekilnojamojo turto adresas';
  @override
  String get completionYear => 'Baigimo metai';
  @override
  String get lotNumber => 'Sklypo numeris';
  @override
  String get residentialType => 'Gyvenamasis tipas';
  @override
  String get furnishings => 'Baldai';
  @override
  String get floorRange => 'Aukštų diapazonas';
  @override
  String get bedrooms => 'Miegamieji';
  @override
  String get bathrooms => 'Vonios kambariai';
  @override
  String get propertySize => 'Nekilnojamojo turto dydis';
  @override
  String get rentalPeriod => 'Nuomos laikotarpis';
  @override
  String get securityDeposit => 'Užstatas';
  @override
  String get utilityBill => 'Komunalinis mokestis';
  @override
  String get facilities => 'Patogumai';
  @override
  String get amenities => 'Patogumai';
  @override
  String get expiringReason => 'Pasibaigimo priežastis';
  @override
  String get tenantDetails => 'Nuomininko informacija';
  @override
  String get typeOfTenant => 'Nuomininko tipas';
  @override
  String get tenantName => 'Nuomininko vardas';
  @override
  String get nidPassport => 'NID/Pasas';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Nuomininko ID';
  @override
  String get dateOfBirth => 'Gimimo data';
  @override
  String get gender => 'Lytis';
  @override
  String get nominee => 'Kandidatas';
  @override
  String get name => 'Vardas';
  @override
  String get optional => 'Neprivaloma';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileLt nomineeMobile =
      _TranslationsCommonNomineeMobileLt._(_root);
  @override
  String get emergencyContact => 'Avarinis kontaktas';
  @override
  String get relation => 'Ryšys';
  @override
  String get relationWith => '${_root.common.relation} With';
  @override
  String get relationWithYou => '${_root.common.relationWith} You';
  @override
  String get company => 'Įmonė';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Darbo vieta';
  @override
  String get officePhoneNo => 'Telefono numeris biure';
  @override
  String get officeMobileNo => 'Biuro ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Transporto priemonė';
  @override
  late final _TranslationsCommonVehiclesInfoLt vehiclesInfo =
      _TranslationsCommonVehiclesInfoLt._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoLt vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoLt._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Brand';
  @override
  String get rentProperty => 'Nuomoti nekilnojamąjį turtą';
  @override
  String get propertyDetails => 'Informacija apie nekilnojamąjį turtą';
  @override
  String get propertyId => 'Nekilnojamojo turto ID';
  @override
  String get propertyType => 'Nekilnojamojo turto tipas';
  @override
  String get propertyName => 'Nekilnojamojo turto pavadinimas';
  @override
  String get paymentDetails => 'Mokėjimo informacija';
  @override
  String get monthlyRent => 'Mėnesinė nuoma';
  @override
  String get thisMonthPayment => 'Šio mėnesio mokėjimas';
  @override
  String get totalPaidRent => 'Visa sumokėta nuoma';
  @override
  String get dueRent => 'Nesumokėta nuoma';
  @override
  String get rentStartDate => 'Nuoma ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Nuoma ${_root.common.endDate}';
  @override
  String get status => 'Būsena';
  @override
  String get rentAgreementPdf => 'Nuomos sutarties PDF';
  @override
  String get noFile => 'Nėra failo';
  @override
  String get tenantImageOp => 'Nuomininko nuotrauka ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Pridėti naują transporto priemonę';
  @override
  String get uploadNidPassport => 'Įkelti NID/Pasą';
  @override
  String get nidPassportUploadNote =>
      'Bus priimami tik failo tipo vaizdai. Failo dydžio apribojimas iki 2,5 MB.';
  @override
  String get search => 'Paieška';
  @override
  String get sortBy => 'Rūšiuoti pagal';
  @override
  String get subscription => 'Abonementas';
  @override
  String get downloading => 'Atsisiunčiama...';
  @override
  String get downloadSuccess => 'Failas sėkmingai atsisiųstas!';
  @override
  String get addPropertyBannerTitle =>
      'Norite išnuomoti savo nekilnojamąjį turtą?';
  @override
  String get application => 'Paraiška';
  @override
  String get tenantHasPaidDeposit => 'Nuomininkas sumokėjo užstatą.';
  @override
  String get askProcessingRentApplication =>
      'Ar tikrai apdorojate šį prašymą dėl nuomojamo nekilnojamojo turto?';
  @override
  String get dateAndTime => 'Data ir laikas';
  @override
  String get applicationDetails => 'Išsami paraiškos informacija';
  @override
  String get depositStatus => 'Užstato būsena';
  @override
  String get uploadRentAgreement => 'Įkelti nuomos sutartį';
  @override
  String get uploadFilePDF => 'Įkelti failą (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Prašome pasirinkti sutarties dokumento failą.';
  @override
  String get landlordRentAgreementPDF => 'Nuomotojo nuomos sutarties PDF';
  @override
  String get tenantRentAgreementPDF => 'Nuomininko nuomos sutarties PDF';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pastaba: '),
      note(
        'Patvirtinkite paraišką tik po to, kai nuomininkas sumokės užstatą.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Atmetimo priežastis';
  @override
  String get youveRejectedThisApplication => 'Jūs atmetėte šią paraišką';
  @override
  String get landlordDetails => 'Nuomotojo informacija';
  @override
  String get landlordName => 'Nuomotojo vardas';
  @override
  String get downloadRentAgreement => 'Atsisiųsti nuomos sutartį';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Priimti '),
      toc('Taisyklės ir sąlygos'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pastaba: '),
      note(
        'Prašome atsisiųsti ir perskaityti sutartį. Prašome nusiųsti pasirašytą sutartį nuomotojui per „WhatsApp“ arba el. paštu.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pastaba: '),
      note(
        'Nuomotojas patvirtina paraišką, kai nuomininkas sumoka užstatą, komunalinius mokesčius ir vieno mėnesio avansinį nuomos mokestį.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Nuomos sutartis (PDF) '),
          complete('Visa sutartis'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pastaba: '),
      note(
        'Nuomotojas patvirtina paraišką, kai nuomininkas sumoka užstatą, komunalinius mokesčius ir vieno mėnesio avansinį nuomos mokestį.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Paraiškų sąrašas';
  @override
  String get viewDetails => 'Peržiūrėti išsamią informaciją';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Pagrindinis';
  @override
  String get dashboard => 'Informacijos suvestinė';
  @override
  String get tenants => 'Nuomininkai';
  @override
  String get maintenance => 'Priežiūra';
  @override
  String get maintenanceList => 'Priežiūros sąrašas';
  @override
  String get maintenanceReport => 'Priežiūros ataskaita';
  @override
  String get labor => 'Darbas';
  @override
  String get applications => 'Paraiškos';
  @override
  String get rentInvitation => 'Kvietimas nuomotis';
  @override
  String get payment => 'Mokėjimas';
  @override
  String get rentPayment => 'Nuomos mokėjimas';
  @override
  String get depositUtilityPayment =>
      'Užstatas ir komunalinių mokesčių mokėjimas';
  @override
  String get refundRequest => 'Prašymas grąžinti pinigus';
  @override
  String get withdrawRequest => 'Prašymas išsiimti lėšas';
  @override
  String get myProperty => 'Mano nekilnojamasis turtas';
  @override
  String get myRent => 'Mano nuoma';
  @override
  String get wishlist => 'Pageidavimų sąrašas';
  @override
  String get properties => 'Nekilnojamasis turtas';
  @override
  String get allProperties => 'Visas nekilnojamasis turtas';
  @override
  String get totalPropery => 'Iš viso nekilnojamojo turto';
  @override
  String get occupied => 'Užimtas';
  @override
  String get vacant => 'Laisvas';
  @override
  String get accounting => 'Apskaita';
  @override
  String get totalIncome => 'Visos pajamos';
  @override
  String get totalExpense => 'Visos išlaidos';
  @override
  String get currentBalance => 'Esamas balansas';
  @override
  String get totalWithdrawal => 'Iš viso (išėmimas)';
  @override
  String get totalProperties => 'Iš viso nekilnojamojo turto';
  @override
  String get totalTenant => 'Iš viso nuomininkų';
  @override
  String get totalRentPaid => 'Iš viso sumokėta nuoma';
  @override
  String get totalRentDue => 'Iš viso nesumokėta nuoma';
  @override
  String get totalApplication => 'Iš viso paraiškų';
  @override
  String get pendingApplication => 'Neapdorota paraiška';
  @override
  String get processingApplication => 'Apdorojama paraiška';
  @override
  String get approveApplication => 'Patvirtinti paraišką';
  @override
  String get rejectApplication => 'Atmesti paraišką';
  @override
  String get maintenanceCost => 'Priežiūros kaina';
  @override
  String get transactionSummary => 'Operacijų suvestinė';
  @override
  String get maintenanceRequest => 'Priežiūros prašymas';
  @override
  String get notifications => 'Pranešimai';
  @override
  String get myProperties => 'Mano nekilnojamasis turtas';
  @override
  String get recommendationProperties =>
      'Rekomenduojamas nekilnojamasis turtas';
  @override
  String get laborList => 'Darbo sąrašas';
  @override
  String get addLabor => 'Pridėti darbą';
  @override
  String get laborDetails => 'Informacija apie darbą';
  @override
  String get laborSalary => 'Darbo atlyginimas';
  @override
  String get editLabor => 'Redaguoti darbą';
  @override
  String get addNewLabor => 'Pridėti naują darbą';
  @override
  String get enterAmount => 'Įvesti sumą';
  @override
  String get maintenanceDetails => 'Išsami priežiūros informacija';
  @override
  String get laborName => 'Darbininko vardas';
  @override
  String get comment => 'Komentaras';
  @override
  String get image => 'Vaizdas';
  @override
  String get complete => 'Baigti';
  @override
  String get details => 'Išsami informacija';
  @override
  String get title => 'Pavadinimas';
  @override
  String get date => 'Data';
  @override
  String get reason => 'Priežastis';
  @override
  String get edit => 'Redaguoti';
  @override
  String get property => 'Nekilnojamasis turtas';
  @override
  String get completeYourProfile => 'Užpildykite savo profilį';
  @override
  String get profileImage => 'Profilio nuotrauka';
  @override
  String get imagePickHint =>
      'Tik JPEG ir PNG vaizdas, maksimalus dydis 120x120 pikselių.';
  @override
  String get invoiceId => 'Sąskaitos faktūros ID';
  @override
  String get depositAmount => 'Užstato suma';
  @override
  String get landlordPhone => 'Nuomotojo telefonas';
  @override
  String get rentalAdvance => 'Nuoma (avansas)';
  @override
  String get totalAmount => 'Visa suma';
  @override
  String get rentalAmount => 'Nuomos suma';
  @override
  String get adminCharge => 'Administracinis mokestis';
  @override
  String get editAccount => 'Redaguoti paskyrą';
  @override
  String get addNewAccount => 'Pridėti naują paskyrą';
  @override
  String get transactionId => 'Operacijos ID';
  @override
  String get transactionType => 'Operacijos tipas';
  @override
  String get requestDate => 'Prašymo data';
  @override
  String get amount => 'Suma';
  @override
  String get fee => 'Mokestis';
  @override
  String get paymentStatus => 'Mokėjimo būsena';
  @override
  String get generatedTime => 'Sugeneravimo laikas';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Tai yra sistemos sugeneruota ataskaita apie '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Išėmimo istorija';
  @override
  String get history => 'Istorija';
  @override
  String get withdrawAmount => 'Išėmimo suma';
  @override
  String get availableBalance => 'Turimas balansas';
  @override
  String get withdrawCharge => 'Išėmimo mokestis';
  @override
  String get paymentMethod => 'Mokėjimo būdas';
  @override
  String get requestSendSuccess => 'Prašymas sėkmingai išsiųstas!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Mokėjimo kvitas sėkmingai pateiktas.';
  @override
  String get refundReason => 'Grąžinimo priežastis';
  @override
  String get note => 'Pastaba';
  @override
  String get refundReceiveSuccess => 'Pinigai sėkmingai grąžinti.';
  @override
  String get downloadPaymentReceipt => 'Atsisiųsti mokėjimo kvitą';
  @override
  String get invoice => 'Sąskaita faktūra';
  @override
  String get selectPropertyToSeeInvoice =>
      'Pasirinkite nekilnojamąjį turtą, kad pamatytumėte sąskaitos faktūros numerį...';
  @override
  String get bankAccName => 'Banko sąskaitos pavadinimas';
  @override
  String get bankName => 'Banko pavadinimas';
  @override
  String get bankAccNum => 'Banko sąskaitos numeris';
  @override
  String get thankYou => 'Ačiū!';
  @override
  String get basicInfo => 'Pagrindinė informacija';
  @override
  String get descriptionPricing => 'Aprašymas ir kainos';
  @override
  String get contact => 'Kontaktas';
  @override
  String get photos => 'Nuotraukos';
  @override
  String get successfullySubmitted => 'Sėkmingai pateikta!';
  @override
  String get editProperty => 'Redaguoti nekilnojamąjį turtą';
  @override
  String get addNewProperty => 'Pridėti naują nekilnojamąjį turtą';
  @override
  String get propertyManageRequestSuccess =>
      'Jūsų skelbimas buvo pateiktas peržiūrai.';
  @override
  String get postAnotherProperty => 'Paskelbti kitą nekilnojamąjį turtą';
  @override
  String get browseYourProperty => 'Naršyti savo nekilnojamąjį turtą';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Žingsnis '),
      step,
      const TextSpan(text: ' iš '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Ką norėtumėte paskelbti?';
  @override
  String get category => 'Kategorija';
  @override
  String get invalidCategory => 'Netinkama kategorija';
  @override
  String get unitNumber => 'Vieneto numeris';
  @override
  String get sqft => 'kv. pėdos';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Nekilnojamojo turto dydis turi būti didesnis nei nulis';
  @override
  String get whatAreTheFacility => 'Kokie yra patogumai?';
  @override
  String get whatAreTheAmenity => 'Kokie yra patogumai?';
  @override
  String get parkingLot => 'Automobilių stovėjimo aikštelė';
  @override
  String get houseType => 'Namo tipas';
  @override
  String get value => 'Vertė';
  @override
  String get unitLotSize => 'Vieneto / sklypo dydis';
  @override
  String get landSize => 'Žemės dydis';
  @override
  String get acres => 'Akras(ai)';
  @override
  String get roomSize => 'Kambario dydis';
  @override
  String get askTenantPreference => 'Koks yra jūsų nuomininko pageidavimas';
  @override
  String get couple => 'Pora';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Apibūdinkite ${propertyType}';
  @override
  String get adTitle => 'Skelbimo pavadinimas';
  @override
  String get minimumRentalPeriod => 'Minimalus nuomos laikotarpis';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  @override
  String get hideOrDisplayEmail => 'Slėpti arba rodyti el. pašto adresą';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Ačiū, kad paskelbėte svetainėje ${appName}!';
  @override
  String get propertyList => 'Nekilnojamojo turto sąrašas';
  @override
  String get newInviteRent => 'Naujas kvietimas nuomotis';
  @override
  String get rentAgreement => 'Nuomos sutartis';
  @override
  String get rentDetails => 'Išsami nuomos informacija';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pastaba: '),
      note('Prašome palaukti, kol nuomininkas priims kvietimą.'),
    ],
  );
  @override
  String get rent => 'Nuoma';
  @override
  String get editTenant => 'Redaguoti nuomininką';
  @override
  String get addNewTenant => 'Pridėti naują nuomininką';
  @override
  String get shareInstallLink => 'Bendrinti diegimo nuorodą';
  @override
  String get tenantList => 'Nuomininkų sąrašas';
  @override
  String get editMaintenanceRequest => 'Redaguoti priežiūros užklausą';
  @override
  String get addNewMaintenance => 'Pridėti naują priežiūrą';
  @override
  String get landlordId => 'Nuomotojo ID';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pastaba '),
      note(
        'Jūsų sutartis yra peržiūrima. Prašome palaukti, kol nuomotojas patvirtins jūsų nuomą.',
      ),
    ],
  );
  @override
  String get editReview => 'Redaguoti atsiliepimą';
  @override
  String get writeAReview => 'Parašyti atsiliepimą';
  @override
  String get selectRating => 'Pasirinkti įvertinimą';
  @override
  String get enterYourOpinion => 'Įveskite savo nuomonę';
  @override
  String get askToEnterReviewMsg => 'Prašome įvesti atsiliepimo pranešimą';
  @override
  String get pressBackAgainToExit =>
      'Paspauskite atgal dar kartą, kad išeitumėte.';
  @override
  String get selectPaymentMethod => 'Pasirinkite mokėjimo būdą';
  @override
  String get filter => 'Filtras';
  @override
  String get perMonth => '/1 mėnesį';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Ieškokite bet ko svetainėje ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsLt implements TranslationsExceptionsEn {
  _TranslationsExceptionsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Kažkas nutiko, bandykite dar kartą';
  @override
  String get noNidPassport => 'Nėra pateikta NID/Paso nuotrauka.';
  @override
  String get noRentPropertyFound => 'Nerasta nuomojamo turto šiam nuomininkui.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Nekilnojamasis turtas nerastas!\nIšbandykite kitus raktažodžius';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Nerastas prenumeratos planas!\nAtnaujinkite puslapį ir bandykite dar kartą.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Netinkama ${dataType} informacija! Atnaujinkite puslapį ir bandykite dar kartą.';
  @override
  String get invalidDownloadUrl => 'Netinkamas atsisiuntimo URL!';
  @override
  String failedToSaveFile({required String error}) =>
      'Nepavyko išsaugoti failo! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Klaida atidarant failą! ${error}';
  @override
  String get noVehicleInfoProvided =>
      'Nepateikta informacija apie transporto priemonę.';
  @override
  String get yourApplicationRejected => 'Jūsų paraiška buvo atmesta';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintLt
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintLt._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintLt noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintLt._(_root);
  @override
  String get noImageProvided => 'Nepateiktas vaizdas';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundLt
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundLt._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Nerastas užstatas!\nPrašome pamatyti užstatus, kai jie bus prieinami';
  @override
  String get noRentPaymentFound =>
      'Nerastas nuomos mokėjimas!\nPrašome pamatyti nuomos mokėjimus, kai jie bus prieinami';
  @override
  String get transactionSummaryApiException =>
      'Nepavyko gauti operacijų suvestinės.';
  @override
  String get noWithdrawRequestFound =>
      'Nerastas prašymas!\nPrašome pabandyti sukurti išėmimo prašymą, kad pamatytumėte jį čia.';
  @override
  String get withdrawRequestNotApproved =>
      'Šis išėmimo prašymas nebuvo patvirtintas!.';
  @override
  String get nonZeroError => 'Įveskite galiojančią sumą, didesnę už nulį.';
  @override
  String minAmountError({required String minValue}) =>
      'Suma turi būti ne mažesnė kaip ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Suma neturi viršyti ${maxValue}.';
  @override
  String get selectPaymentMethodHint => 'Pirmiausia pasirinkite mokėjimo būdą.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundLt
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundLt._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintLt refundRequestHint =
      _TranslationsExceptionsRefundRequestHintLt._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Pasirinkite ${value} skaičių';
  @override
  String get invalidDateRange => 'Netinkamas datų diapazonas.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} turi būti didesnis nei nulis.';
  @override
  late final _TranslationsExceptionsEditPropertyLt editProperty =
      _TranslationsExceptionsEditPropertyLt._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationLt rentInvitation =
      _TranslationsExceptionsRentInvitationLt._(_root);
  @override
  String get notenantFoundList =>
      'Nėra nuomininkų!\nPrašome pabandyti pridėti nuomininką, kad pamatytumėte jį čia.';
  @override
  String get noFeaturesProvided => 'Nepateikta jokių funkcijų.';
  @override
  String get noNotificationFound =>
      'Pranešimas neprieinamas.\nGalite pamatyti savo pranešimą čia, kai jis bus prieinamas.';
}

// Path: prompt
class _TranslationsPromptLt implements TranslationsPromptEn {
  _TranslationsPromptLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutLt logout = _TranslationsPromptLogoutLt._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationLt application =
      _TranslationsPromptApplicationLt._(_root);
  @override
  late final _TranslationsPromptLaborLt labor = _TranslationsPromptLaborLt._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestLt maintenanceRequest =
      _TranslationsPromptMaintenanceRequestLt._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodLt withdrawMethod =
      _TranslationsPromptWithdrawMethodLt._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesLt unsavedChanges =
      _TranslationsPromptUnsavedChangesLt._(_root);
  @override
  late final _TranslationsPromptPropertyLt property =
      _TranslationsPromptPropertyLt._(_root);
  @override
  late final _TranslationsPromptRentInvitationLt rentInvitation =
      _TranslationsPromptRentInvitationLt._(_root);
  @override
  late final _TranslationsPromptSessionExpiredLt sessionExpired =
      _TranslationsPromptSessionExpiredLt._(_root);
  @override
  late final _TranslationsPromptNoInternetLt noInternet =
      _TranslationsPromptNoInternetLt._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerLt permissionHandler =
      _TranslationsPromptPermissionHandlerLt._(_root);
  @override
  late final _TranslationsPromptImagePickerLt imagePicker =
      _TranslationsPromptImagePickerLt._(_root);
  @override
  late final _TranslationsPromptVerificationDialogLt verificationDialog =
      _TranslationsPromptVerificationDialogLt._(_root);
  @override
  late final _TranslationsPromptNotificationLt notification =
      _TranslationsPromptNotificationLt._(_root);
}

// Path: form
class _TranslationsFormLt implements TranslationsFormEn {
  _TranslationsFormLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameLt fullName =
      _TranslationsFormFullNameLt._(_root);
  @override
  late final _TranslationsFormEmailLt email = _TranslationsFormEmailLt._(_root);
  @override
  late final _TranslationsFormPasswordLt password =
      _TranslationsFormPasswordLt._(_root);
  @override
  late final _TranslationsFormConfirmPasswordLt confirmPassword =
      _TranslationsFormConfirmPasswordLt._(_root);
  @override
  late final _TranslationsFormMobileNumberLt mobileNumber =
      _TranslationsFormMobileNumberLt._(_root);
  @override
  late final _TranslationsFormAddress1Lt address1 =
      _TranslationsFormAddress1Lt._(_root);
  @override
  late final _TranslationsFormAddress2Lt address2 =
      _TranslationsFormAddress2Lt._(_root);
  @override
  late final _TranslationsFormPostalCodeLt postalCode =
      _TranslationsFormPostalCodeLt._(_root);
  @override
  late final _TranslationsFormCityLt city = _TranslationsFormCityLt._(_root);
  @override
  late final _TranslationsFormStateLt state = _TranslationsFormStateLt._(_root);
  @override
  late final _TranslationsFormCountryLt country = _TranslationsFormCountryLt._(
    _root,
  );
  @override
  late final _TranslationsFormOtpLt otp = _TranslationsFormOtpLt._(_root);
  @override
  late final _TranslationsFormTitleLt title = _TranslationsFormTitleLt._(_root);
  @override
  late final _TranslationsFormDateLt date = _TranslationsFormDateLt._(_root);
  @override
  late final _TranslationsFormReasonLt reason = _TranslationsFormReasonLt._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodLt withdrawMethod =
      _TranslationsFormWithdrawMethodLt._(_root);
  @override
  late final _TranslationsFormFileFieldLt fileField =
      _TranslationsFormFileFieldLt._(_root);
  @override
  late final _TranslationsFormNoteLt note = _TranslationsFormNoteLt._(_root);
  @override
  late final _TranslationsFormGenderLt gender = _TranslationsFormGenderLt._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldLt anyField =
      _TranslationsFormAnyFieldLt._(_root);
  @override
  late final _TranslationsFormAnyDropdownLt anyDropdown =
      _TranslationsFormAnyDropdownLt._(_root);
}

// Path: action
class _TranslationsActionLt implements TranslationsActionEn {
  _TranslationsActionLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Kitas';
  @override
  String get getStarted => 'Pradėti';
  @override
  String get skip => 'Praleisti';
  @override
  String get select => 'Pasirinkti';
  @override
  String get save => 'Išsaugoti';
  @override
  String get signIn => 'Prisijungti';
  @override
  String get signUp => 'Registruotis';
  @override
  String get kContinue => 'Tęsti';
  @override
  String get clearAll => 'Išvalyti viską';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Siųsti';
  @override
  String get pay => 'Mokėti';
  @override
  String get remove => 'Pašalinti';
  @override
  String get goBack => 'Grįžti atgal';
  @override
  String get buyNow => 'Pirkti dabar';
  @override
  String get no => 'Ne';
  @override
  String get open => 'Atidaryti';
  @override
  String get addProperty => 'Pridėti nekilnojamąjį turtą';
  @override
  String get process => 'Apdoroti';
  @override
  String get approve => 'Patvirtinti';
  @override
  String get reject => 'Atmesti';
  @override
  String get viewRent => 'Peržiūrėti nuomą';
  @override
  String get openNavigationMenu => 'Atidaryti navigacijos meniu';
  @override
  String get seeAll => 'Pamatyti viską';
  @override
  String get update => 'Atnaujinti';
  @override
  String get printTransaction => 'Spausdinti operaciją';
  @override
  String get payoutRequest => 'Išmokėjimo prašymas';
  @override
  String get addNew => '+ Pridėti naują';
  @override
  String get sendRequest => 'Siųsti prašymą';
  @override
  String get print => 'Spausdinti';
  @override
  String get requestForRefund => 'Prašyti grąžinimo';
  @override
  String get previous => 'Ankstesnis';
  @override
  String get delete => 'Ištrinti';
  @override
  String get applyProperty => 'Pateikti paraišką dėl nekilnojamojo turto';
  @override
  String get viewApplication => 'Peržiūrėti paraišką';
  @override
  String get inviteTenant => 'Pakviesti nuomininką';
  @override
  String get inviteRent => 'Pakviesti nuomotis';
  @override
  String get cancel => 'Atšaukti';
  @override
  String get accept => 'Priimti';
  @override
  String get submit => 'Pateikti';
  @override
  String get yes => 'Taip';
  @override
  String get okay => 'Gerai';
  @override
  String get confirm => 'Patvirtinti';
  @override
  String get apply => 'Taikyti';
  @override
  String get reset => 'Atstatyti';
  @override
  String get retry => 'Bandyti dar kartą';
  @override
  String get viewAll => 'Peržiūrėti viską';
}

// Path: pages
class _TranslationsPagesLt implements TranslationsPagesEn {
  _TranslationsPagesLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageLt language =
      _TranslationsPagesLanguageLt._(_root);
  @override
  late final _TranslationsPagesOnboardLt onboard =
      _TranslationsPagesOnboardLt._(_root);
  @override
  late final _TranslationsPagesSignInLt signIn = _TranslationsPagesSignInLt._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordLt forgotPassword =
      _TranslationsPagesForgotPasswordLt._(_root);
  @override
  late final _TranslationsPagesOtpVerificationLt otpVerification =
      _TranslationsPagesOtpVerificationLt._(_root);
  @override
  late final _TranslationsPagesResetPasswordLt resetPassword =
      _TranslationsPagesResetPasswordLt._(_root);
  @override
  late final _TranslationsPagesSignUpLt signUp = _TranslationsPagesSignUpLt._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeLt welcome =
      _TranslationsPagesWelcomeLt._(_root);
  @override
  late final _TranslationsPagesAboutUsLt aboutUs =
      _TranslationsPagesAboutUsLt._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsLt termsAndConditions =
      _TranslationsPagesTermsAndConditionsLt._(_root);
  @override
  late final _TranslationsPagesNotificationListLt notificationList =
      _TranslationsPagesNotificationListLt._(_root);
  @override
  late final _TranslationsPagesContactUsLt contactUs =
      _TranslationsPagesContactUsLt._(_root);
  @override
  late final _TranslationsPagesCancelRentingLt cancelRenting =
      _TranslationsPagesCancelRentingLt._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsLt invoiceDetails =
      _TranslationsPagesInvoiceDetailsLt._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentLt offlinePayment =
      _TranslationsPagesOfflinePaymentLt._(_root);
  @override
  late final _TranslationsPagesPaymentStatusLt paymentStatus =
      _TranslationsPagesPaymentStatusLt._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsLt propertyDetails =
      _TranslationsPagesPropertyDetailsLt._(_root);
  @override
  late final _TranslationsPagesSearchLt search = _TranslationsPagesSearchLt._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanLt subscriptionPlan =
      _TranslationsPagesSubscriptionPlanLt._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportLt
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportLt._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsLt implements TranslationsEnumsEn {
  _TranslationsEnumsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusLt propertyStatus =
      _TranslationsEnumsPropertyStatusLt._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeLt propertyType =
      _TranslationsEnumsPropertyTypeLt._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusLt applicationStatus =
      _TranslationsEnumsApplicationStatusLt._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusLt myRentStatus =
      _TranslationsEnumsMyRentStatusLt._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusLt maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusLt._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeLt tenantProfileType =
      _TranslationsEnumsTenantProfileTypeLt._(_root);
  @override
  late final _TranslationsEnumsTenantTypeLt tenantType =
      _TranslationsEnumsTenantTypeLt._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusLt paymentStatus =
      _TranslationsEnumsPaymentStatusLt._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsLt paymentOptions =
      _TranslationsEnumsPaymentOptionsLt._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeLt paymentType =
      _TranslationsEnumsPaymentTypeLt._(_root);
  @override
  late final _TranslationsEnumsGenderLt gender = _TranslationsEnumsGenderLt._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationLt ecRelation =
      _TranslationsEnumsEcRelationLt._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeLt vehicleType =
      _TranslationsEnumsVehicleTypeLt._(_root);
  @override
  late final _TranslationsEnumsSortByLt sortBy = _TranslationsEnumsSortByLt._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeLt residentialType =
      _TranslationsEnumsResidentialTypeLt._(_root);
  @override
  late final _TranslationsEnumsFloorRangeLt floorRange =
      _TranslationsEnumsFloorRangeLt._(_root);
  @override
  late final _TranslationsEnumsFurnishingsLt furnishings =
      _TranslationsEnumsFurnishingsLt._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeLt commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeLt._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeLt landPropertyType =
      _TranslationsEnumsLandPropertyTypeLt._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeLt residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeLt._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodLt minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodLt._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterLt dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterLt._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileLt
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoLt
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informacija apie transporto priemones';
  @override
  String get optional =>
      'Informacija apie transporto priemones (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoLt
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Transporto priemonės registracijos Nr.';
  @override
  String get short => 'Registracijos Nr.';
  @override
  String get alt => 'Valstybinis numeris';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintLt
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Paraiška nerasta!\n${subject} bus rodoma čia, kai bus prieinama.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsLt subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsLt._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintLt
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Nekilnojamasis turtas nerastas!\nPrašome pabandyti pridėti nekilnojamąjį turtą, kad pamatytumėte čia.';
  @override
  String get tenantRecommended =>
      'Nerasta rekomenduojamo nekilnojamojo turto\nBandykite dar kartą vėliau.';
  @override
  String get tenantAllProperty =>
      'Nekilnojamasis turtas neprieinamas\nBandykite dar kartą vėliau.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundLt
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) => 'Nerasta ${status} priežiūra.';
  @override
  String get tenant =>
      'Priežiūra nerasta! Galite sukurti priežiūros užklausą, kad pamatytumėte ją čia.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundLt
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nerastas ${status} grąžinimo prašymas!\nGalite pamatyti grąžinimo prašymą čia, kai jis bus prieinamas.';
  @override
  String get tenant =>
      'Nerastas grąžinimo prašymas!\nGalite sukurti grąžinimo prašymą, kad pamatytumėte jį čia.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintLt
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Nuomininkas patvirtins grąžinimą, kai atgaus pinigus';
  @override
  String get tenantReqSuccess =>
      'Mes peržiūrėsime grąžinimo prašymą ir patvirtinsime jį per 24 valandas.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyLt
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Nuomojamas nekilnojamasis turtas keičiasi. Jis turi būti galiojantis (galioti) tik kito mėnesio nuomos mokėjimui.';
  @override
  String get deleteOnRent =>
      'Jūsų nekilnojamasis turtas jau yra išnuomotas nuomininkui. Negalima ištrinti, kol pirmiausia nepašalinsite nuomininko';
  @override
  String get alreayRented =>
      'Šis nekilnojamasis turtas jau yra išnuomotas. Bandykite dar kartą vėliau.\nArba galite susisiekti su nuomotoju, kad gautumėte daugiau informacijos.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationLt
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Nerastas kvietimas nuomotis!\nPrašome pabandyti sukurti kvietimą nuomotis, kad pamatytumėte jį čia.';
  @override
  String get tenantNoRentInvitation =>
      'Nerastas kvietimas nuomotis!\nGalite pamatyti kvietimą nuomotis čia, kai jis bus prieinamas.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutLt implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Ar tikrai norite atsijungti?';
}

// Path: prompt.application
class _TranslationsPromptApplicationLt
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Kodėl atmetate šią paraišką?';
  @override
  late final _TranslationsPromptApplicationApplicationSentLt applicationSent =
      _TranslationsPromptApplicationApplicationSentLt._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborLt implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteLt delete =
      _TranslationsPromptLaborDeleteLt._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestLt
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Kodėl ši užklausa atmetama?';
  @override
  String get processTitle => 'Ar tikrai apdorojate šią priežiūros užklausą?';
  @override
  String get completeTitle => 'Darbas baigtas?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodLt
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Ištrinti lėšų išėmimo būdą?';
  @override
  String get deleteDescription =>
      'Ar tikrai norite ištrinti šį lėšų išėmimo būdą?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesLt
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ar tikrai norite grįžti atgal?';
  @override
  String get message => 'Pakeisti laukai nebus išsaugoti!';
}

// Path: prompt.property
class _TranslationsPromptPropertyLt implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteLt delete =
      _TranslationsPromptPropertyDeleteLt._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationLt
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveLt
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveLt._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptLt tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptLt._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredLt
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sesija baigėsi';
  @override
  String get message => 'Jūsų sesija baigėsi. Prašome prisijungti dar kartą';
  @override
  String get action => 'Prisijungti';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetLt
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nėra interneto ryšio';
  @override
  String get message =>
      'Prašome patikrinti savo „Wi-Fi“ mobiliojo tinklo ryšį ir bandyti dar kartą';
  @override
  String get action => 'Bandyti dar kartą';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerLt
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Reikalingas leidimas!';
  @override
  String get message =>
      'Turite suteikti leidimus programos nustatymuose. Ar norėtumėte atidaryti nustatymus dabar?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerLt
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pasirinkite parinktį';
  @override
  String get gallery => 'Galerija';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogLt
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Patvirtinkite savo el. paštą';
  @override
  String get message => 'Mes išsiuntėme patvirtinimo kodo el. laišką';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} į ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationLt
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Išvalyti pranešimus?';
  @override
  String get clearMessage => 'Ar tikrai norite išvalyti visus pranešimus?';
}

// Path: form.fullName
class _TranslationsFormFullNameLt implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Įveskite ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsLt errors =
      _TranslationsFormFullNameErrorsLt._(_root);
}

// Path: form.email
class _TranslationsFormEmailLt implements TranslationsFormEmailEn {
  _TranslationsFormEmailLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Įveskite savo ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsLt errors =
      _TranslationsFormEmailErrorsLt._(_root);
}

// Path: form.password
class _TranslationsFormPasswordLt implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsLt errors =
      _TranslationsFormPasswordErrorsLt._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordLt
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Patvirtinkite ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsLt errors =
      _TranslationsFormConfirmPasswordErrorsLt._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberLt
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsLt errors =
      _TranslationsFormMobileNumberErrorsLt._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Lt implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Lt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Namo numeris ir gatvės pavadinimas';
  @override
  late final _TranslationsFormAddress1ErrorsLt errors =
      _TranslationsFormAddress1ErrorsLt._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Lt implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Lt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Butas, liukso numeris, vienetas ir kt.';
  @override
  late final _TranslationsFormAddress2ErrorsLt errors =
      _TranslationsFormAddress2ErrorsLt._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeLt implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Įveskite ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsLt errors =
      _TranslationsFormPostalCodeErrorsLt._(_root);
}

// Path: form.city
class _TranslationsFormCityLt implements TranslationsFormCityEn {
  _TranslationsFormCityLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Įveskite ${_root.common.city} pavadinimą.';
  @override
  late final _TranslationsFormCityErrorsLt errors =
      _TranslationsFormCityErrorsLt._(_root);
}

// Path: form.state
class _TranslationsFormStateLt implements TranslationsFormStateEn {
  _TranslationsFormStateLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Įveskite ${_root.common.state} pavadinimą.';
  @override
  late final _TranslationsFormStateErrorsLt errors =
      _TranslationsFormStateErrorsLt._(_root);
}

// Path: form.country
class _TranslationsFormCountryLt implements TranslationsFormCountryEn {
  _TranslationsFormCountryLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Pasirinkite ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsLt errors =
      _TranslationsFormCountryErrorsLt._(_root);
}

// Path: form.otp
class _TranslationsFormOtpLt implements TranslationsFormOtpEn {
  _TranslationsFormOtpLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsLt errors =
      _TranslationsFormOtpErrorsLt._(_root);
}

// Path: form.title
class _TranslationsFormTitleLt implements TranslationsFormTitleEn {
  _TranslationsFormTitleLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Pavadinimas';
  @override
  String get hint => 'Įveskite pavadinimą';
  @override
  late final _TranslationsFormTitleErrorsLt errors =
      _TranslationsFormTitleErrorsLt._(_root);
}

// Path: form.date
class _TranslationsFormDateLt implements TranslationsFormDateEn {
  _TranslationsFormDateLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Pasirinkite ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsLt errors =
      _TranslationsFormDateErrorsLt._(_root);
}

// Path: form.reason
class _TranslationsFormReasonLt implements TranslationsFormReasonEn {
  _TranslationsFormReasonLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Priežastis';
  @override
  String get hint => 'Įveskite priežastį';
  @override
  late final _TranslationsFormReasonErrorsLt errors =
      _TranslationsFormReasonErrorsLt._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodLt
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Pasirinkite ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsLt errors =
      _TranslationsFormWithdrawMethodErrorsLt._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldLt implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Įkelkite ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsLt errors =
      _TranslationsFormFileFieldErrorsLt._(_root);
}

// Path: form.note
class _TranslationsFormNoteLt implements TranslationsFormNoteEn {
  _TranslationsFormNoteLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Įveskite ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsLt errors =
      _TranslationsFormNoteErrorsLt._(_root);
}

// Path: form.gender
class _TranslationsFormGenderLt implements TranslationsFormGenderEn {
  _TranslationsFormGenderLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Pasirinkite ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsLt errors =
      _TranslationsFormGenderErrorsLt._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldLt implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Įveskite ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsLt errors =
      _TranslationsFormAnyFieldErrorsLt._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownLt implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Pasirinkite ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsLt errors =
      _TranslationsFormAnyDropdownErrorsLt._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageLt implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardLt implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataLt onboardData =
      _TranslationsPagesOnboardOnboardDataLt._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInLt implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sveiki sugrįžę';
  @override
  String get subtitle =>
      'Prisijunkite dabar, kad pradėtumėte nuostabų kelionę.';
  @override
  late final _TranslationsPagesSignInExtraLt extra =
      _TranslationsPagesSignInExtraLt._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordLt
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pamiršote slaptažodį';
  @override
  String get subtitle =>
      'Įveskite savo el. pašto adresą, kad atgautumėte slaptažodį.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationLt
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Patvirtinimas';
  @override
  String subtitle({required String email}) =>
      '4 skaitmenų PIN kodas buvo išsiųstas jūsų el. pašto adresu. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraLt extra =
      _TranslationsPagesOtpVerificationExtraLt._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordLt
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Atstatyti slaptažodį';
  @override
  String get subtitle =>
      'Atstatykite slaptažodį, kad atgautumėte ir prisijungtumėte prie savo paskyros';
  @override
  late final _TranslationsPagesResetPasswordExtraLt extra =
      _TranslationsPagesResetPasswordExtraLt._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpLt implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sukurti paskyrą';
  @override
  String get subtitle =>
      'Prisiregistruokite dabar, kad pradėtumėte nuostabų kelionę';
  @override
  late final _TranslationsPagesSignUpExtraLt extra =
      _TranslationsPagesSignUpExtraLt._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeLt implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kas tu esi?';
  @override
  String get subtitle => 'Prašome pasirinkti toliau pateiktą parinktį.';
  @override
  late final _TranslationsPagesWelcomeExtraLt extra =
      _TranslationsPagesWelcomeExtraLt._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsLt implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsLt
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListLt
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pranešimai';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsLt implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraLt extra =
      _TranslationsPagesContactUsExtraLt._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingLt
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Kodėl jūs ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormLt form =
      _TranslationsPagesCancelRentingFormLt._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsLt
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentLt
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Atsiskaitymas neprisijungus';
  @override
  late final _TranslationsPagesOfflinePaymentFormLt form =
      _TranslationsPagesOfflinePaymentFormLt._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraLt extra =
      _TranslationsPagesOfflinePaymentExtraLt._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusLt
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessLt success =
      _TranslationsPagesPaymentStatusSuccessLt._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailLt fail =
      _TranslationsPagesPaymentStatusFailLt._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsLt
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraLt extra =
      _TranslationsPagesPropertyDetailsExtraLt._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchLt implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Paieška';
  @override
  late final _TranslationsPagesSearchExtraLt extra =
      _TranslationsPagesSearchExtraLt._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanLt
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pasirinkite savo planą';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraLt extra =
      _TranslationsPagesSubscriptionPlanExtraLt._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportLt
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Bendros priežiūros išlaidos: '),
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
class _TranslationsEnumsPropertyStatusLt
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Visas nekilnojamasis turtas';
  @override
  String get pending => 'Laukiama';
  @override
  String get active => 'Aktyvus';
  @override
  String get inactive => 'Neaktyvus';
  @override
  String get rejected => 'Atmestas';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeLt
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Butas/Kondominiumas';
  @override
  String get house => 'Namas';
  @override
  String get commercialProperty => 'Komercinis nekilnojamasis turtas';
  @override
  String get land => 'Žemė';
  @override
  String get room => 'Kambarys';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusLt
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Visi';
  @override
  String get pending => 'Laukiama';
  @override
  String get processing => 'Apdorojama';
  @override
  String get approved => 'Patvirtinta';
  @override
  String get rejected => 'Atmesta';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusLt
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Laukiama';
  @override
  String get processing => 'Apdorojama';
  @override
  String get active => 'Aktyvi';
  @override
  String get expired => 'Pasibaigęs';
  @override
  String get cancelled => 'Atšaukta';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusLt
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Laukiama';
  @override
  String get processing => 'Apdorojama';
  @override
  String get rejected => 'Atmesta';
  @override
  String get completed => 'Baigta';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeLt
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privatus (fizinis asmuo)';
  @override
  String get company => 'Įmonė';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeLt implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Naujas nuomininkas';
  @override
  String get activeTenant => 'Aktyvus nuomininkas';
  @override
  String get expiredTenant => 'Pasibaigęs nuomininkas';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusLt
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Visi';
  @override
  String get pending => 'Laukiama';
  @override
  String get paid => 'Sumokėta';
  @override
  String get unpaid => 'Nesumokėta';
  @override
  String get rejected => 'Atmesta';
  @override
  String get refund => 'Grąžinimas';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsLt
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Mokėjimas internetu';
  @override
  String get offlinePayment => 'Mokėjimas neprisijungus';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeLt
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Užstatas';
  @override
  String get rentPayment => 'Nuomos mokėjimas';
  @override
  String get subscription => 'Prenumerata';
}

// Path: enums.gender
class _TranslationsEnumsGenderLt implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Vyras';
  @override
  String get female => 'Moteris';
  @override
  String get other => 'Kita';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationLt implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Žmona';
  @override
  String get parent => 'Tėvas';
  @override
  String get friend => 'Draugas';
  @override
  String get brother => 'Brolis';
  @override
  String get sister => 'Sesuo';
  @override
  String get child => 'Vaikas';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeLt
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Automobilis';
  @override
  String get motorcycles => 'Motociklai';
  @override
  String get lorry => 'Sunkvežimis';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByLt implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Nuo žemiausio iki aukščiausio';
  @override
  String get highToLow => 'Nuo aukščiausio iki žemiausio';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeLt
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Butas';
  @override
  String get apartment => 'Butas';
  @override
  String get condominium => 'Kondominiumas';
  @override
  String get serviceResidence => 'Aptarnaujama rezidencija';
  @override
  String get studio => 'Studija';
  @override
  String get duplex => 'Dupleksas';
  @override
  String get townhouseCondo => 'Kotedžas/Kondominiumas';
  @override
  String get others => 'Kita';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeLt implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Aukštas';
  @override
  String get medium => 'Vidutinis';
  @override
  String get low => 'Žemas';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsLt
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Visiškai įrengtas';
  @override
  String get partiallyFurnished => 'Iš dalies įrengtas';
  @override
  String get notFurnished => 'Neįrengtas';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeLt
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Biroo patalpos';
  @override
  String get retailSpace => 'Mažmeninės prekybos patalpos';
  @override
  String get shopLot => 'Parduotuvės vieta';
  @override
  String get warehouseFactory => 'Sandėlis / Gamykla';
  @override
  String get hotelResort => 'Viešbutis / Kurortas';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Kita';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeLt
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Gyvenamoji';
  @override
  String get industrial => 'Pramoninė';
  @override
  String get agricultural => 'Žemės ūkio';
  @override
  String get commercial => 'Komercinė';
  @override
  String get mixedDevelopment => 'Mišri plėtra';
  @override
  String get others => 'Kita';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeLt
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Kondominiumas / Aptarnaujama rezidencija / Penthausas';
  @override
  String get apartment => 'Butas / Plokščias';
  @override
  String get house => 'Namai';
  @override
  String get shoplot => 'Parduotuvė';
  @override
  String get sharing => 'Dalijimasis namu / Butu';
  @override
  String get others => 'Kita';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodLt
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 mėnesiai';
  @override
  String get oneYear => '1 metai';
  @override
  String get oneAndHalfYears => '1,5 metai';
  @override
  String get twoYears => '2 metai';
  @override
  String get twoAndHalfYears => '2,5 metai';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterLt
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Kasdien';
  @override
  String get weekly => 'Kas savaitę';
  @override
  String get monthly => 'Kas mėnesį';
  @override
  String get yearly => 'Kasmet';
  @override
  String get custom => 'Pritaikytas';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsLt
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Jūsų paraiška';
  @override
  String get landlord => 'Nuomininko paraiška';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentLt
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Paraiška sėkmingai išsiųsta!';
  @override
  String get sucessDescription =>
      'Šią paraišką galite pamatyti savo paraiškų sąraše';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteLt
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ištrinti darbą?';
  @override
  String get description => 'Ar tikrai norite ištrinti šį darbą?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteLt
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ištrinti nekilnojamąjį turtą?';
  @override
  String get message => 'Ar tikrai norite ištrinti šį nekilnojamąjį turtą?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveLt
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ar tikrai norite patvirtinti šią nuomą?';
  @override
  String get description =>
      'Įsitikinkite, kad peržiūrėjote nuomininko pasirašytą sutartį.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptLt
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ar tikrai norite priimti šį kvietimą?';
  @override
  String get description =>
      'Įsitikinkite, kad atsisiuntėte sutarties PDF failą!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsLt
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsLt implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.common.email} adresą';
  @override
  String get invalid => '⦸ Netinkamas el. paštas, bandykite dar kartą';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsLt
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Slaptažodis turi būti bent ${count} simbolių!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsLt
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.common.password}';
  @override
  String get notMatched => 'Patvirtinimo slaptažodis nesutampa!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsLt
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsLt
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsLt
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsLt
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsLt implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.common.city} pavadinimą.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsLt implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite savo ${_root.common.state} pavadinimą.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsLt
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Pasirinkite savo ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsLt implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite OTP.';
  @override
  String get invalid => 'Įveskite teisingą OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsLt implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite pavadinimą';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsLt implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Pasirinkite ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsLt
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite priežastį';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsLt
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Pasirinkite ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsLt
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Pasirinkite ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsLt implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Įveskite ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsLt
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Pasirinkite ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsLt
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Įveskite ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Įveskite galiojantį @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsLt
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Pasirinkite ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Pasirinkite galiojantį @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataLt
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Lt data1 =
      _TranslationsPagesOnboardOnboardDataData1Lt._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Lt data2 =
      _TranslationsPagesOnboardOnboardDataData2Lt._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Lt data3 =
      _TranslationsPagesOnboardOnboardDataData3Lt._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraLt
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Prisiminti mane';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Neturite paskyros? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraLt
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendLt codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendLt._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraLt
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogLt dialog =
      _TranslationsPagesResetPasswordExtraDialogLt._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraLt
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Turite paskyrą? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraLt
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Valdykite savo nekilnojamąjį turtą';
  @override
  String get tenantTag => 'Prisijunkite prie savo nuomos paskyros';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraLt
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Žinutė...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormLt
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonLt reason =
      _TranslationsPagesCancelRentingFormReasonLt._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormLt
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteLt paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteLt._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraLt
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Mokėtina suma: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Sąskaitos savininko vardas';
  @override
  String get accountNumber => 'Sąskaitos numeris';
  @override
  String get swiftCode => 'SWIFT kodas';
  @override
  String get branch => 'Filialas';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pasirinkite tik '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' arba '),
      fileType('DOC'),
      const TextSpan(text: ' formato failus. Failo dydis '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessLt
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Peržiūrėti sąskaitą faktūrą';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Mes peržiūrėsime mokėjimą ir patvirtinsime jį per 24 valandas.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailLt
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Bandyti dar kartą';
  @override
  String get title => 'Oi! Mokėjimas nepavyko';
  @override
  String get description =>
      'Jūsų operacija nepavyko dėl kai kurių techninių klaidų.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraLt
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

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
      const TextSpan(text: 'Savybės '),
      fa('(Patogumai ir paslaugos)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Pasirinkite nuomos laikotarpį';
  @override
  String get writeAReview => '+ Parašyti atsiliepimą';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraLt
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Ieškokite sklypų, butų, kambarių...';
  @override
  String get noRecentSearch => 'Neturite nesenų paieškų.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraLt
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Prenumeratos mokėjimas sėkmingas.\nDabar galite pasiekti prenumeruojamas funkcijas.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Lt
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Lt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Raskite savo nekilnojamąjį turtą';
  @override
  String get description =>
      'Mes padarėme tai labai paprasta, kad rastumėte vietą, kuri atitiktų jūsų gyvenimą – nesvarbu, ar tai būtų kambarys, butas ar namas.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Lt
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Lt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Butas mieste';
  @override
  String get description =>
      'Mes taupome jūsų laiką, greitai suderindami jus su puikiu nekilnojamuoju turtu, kol jis neprapuls, kad galėtumėte mėgautis savo nauju būstu arba nemokamai įtraukti savo.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Lt
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Lt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Jūsų patogus namas';
  @override
  String get description =>
      'Jei ieškote vietos, kur gyventi, peržiūrėkite mūsų nuomojamus namus. Mes turime platų namų pasirinkimą visoje šalyje.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendLt
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Kodas išsiųstas po ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Siųsti kodą dar kartą'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogLt
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sėkmingai pakeista!';
  @override
  String get subtitle =>
      'Prisijunkite su savo nauju slaptažodžiu.\nJus nukreipiame į Prisijungimą...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonLt
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Parašykite priežastį';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsLt errors =
      _TranslationsPagesCancelRentingFormReasonErrorsLt._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteLt
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Mokėjimo pastaba (${_root.common.optional})';
  @override
  String get hint => 'Įveskite tekstą...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsLt
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsLt._(this._root);

  final TranslationsLt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Įveskite nuomos atšaukimo priežastį';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsLt {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profilis';
      case 'common.language':
        return 'Kalba';
      case 'common.subscriptionPlan':
        return 'Abonementas planas';
      case 'common.contactUs':
        return 'Susisiekite su mumis';
      case 'common.termsAndConditions':
        return 'Taisyklės ir sąlygos';
      case 'common.aboutUs':
        return 'Apie mus';
      case 'common.logout':
        return 'Atsijungti';
      case 'common.editProfile':
        return 'Redaguoti profilį';
      case 'common.fullName':
        return 'Vardas ir pavardė';
      case 'common.email':
        return 'El. paštas';
      case 'common.mobileNumber':
        return 'Mobilusis telefonas';
      case 'common.address':
        return 'Adresas';
      case 'common.postalCode':
        return 'Pašto kodas';
      case 'common.city':
        return 'Miestas';
      case 'common.country':
        return 'Šalis';
      case 'common.state':
        return 'Valstybė';
      case 'common.password':
        return 'Slaptažodis';
      case 'common.forgotPassword':
        return 'Pamiršau slaptažodį';
      case 'common.tenant':
        return 'Nuomininkas';
      case 'common.landlord':
        return 'Nuomotojas';
      case 'common.cancelRenting':
        return 'Atšaukti nuomą';
      case 'common.startDate':
        return 'Pradžios data';
      case 'common.endDate':
        return 'Pabaigos data';
      case 'common.fromDate':
        return 'Nuo datos';
      case 'common.toDate':
        return 'Iki datos';
      case 'common.online':
        return 'Prisijungęs';
      case 'common.bankList':
        return 'Bankų sąrašas';
      case 'common.withdrawMethod':
        return 'Lėšų išėmimo būdas';
      case 'common.uploadPaymentReceipt':
        return 'Įkelti mokėjimo kvitą';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Pastaba: '),
            note(
              'Mokėjimas reikalauja rankinio patvirtinimo iš administratoriaus per',
            ),
            const TextSpan(text: ' '),
            duraion('24–48 valandas.'),
          ],
        );
      case 'common.reviews':
        return 'Atsiliepimai';
      case 'common.description':
        return 'Aprašymas';
      case 'common.about':
        return 'Apie';
      case 'common.propertyTypes':
        return 'Nekilnojamojo turto tipai';
      case 'common.features':
        return 'Savybės';
      case 'common.floorPlans':
        return 'Aukštų planai';
      case 'common.buildingDetails':
        return 'Informacija apie pastatą';
      case 'common.buildingName':
        return 'Pastato pavadinimas';
      case 'common.propertyAddress':
        return 'Nekilnojamojo turto adresas';
      case 'common.completionYear':
        return 'Baigimo metai';
      case 'common.lotNumber':
        return 'Sklypo numeris';
      case 'common.residentialType':
        return 'Gyvenamasis tipas';
      case 'common.furnishings':
        return 'Baldai';
      case 'common.floorRange':
        return 'Aukštų diapazonas';
      case 'common.bedrooms':
        return 'Miegamieji';
      case 'common.bathrooms':
        return 'Vonios kambariai';
      case 'common.propertySize':
        return 'Nekilnojamojo turto dydis';
      case 'common.rentalPeriod':
        return 'Nuomos laikotarpis';
      case 'common.securityDeposit':
        return 'Užstatas';
      case 'common.utilityBill':
        return 'Komunalinis mokestis';
      case 'common.facilities':
        return 'Patogumai';
      case 'common.amenities':
        return 'Patogumai';
      case 'common.expiringReason':
        return 'Pasibaigimo priežastis';
      case 'common.tenantDetails':
        return 'Nuomininko informacija';
      case 'common.typeOfTenant':
        return 'Nuomininko tipas';
      case 'common.tenantName':
        return 'Nuomininko vardas';
      case 'common.nidPassport':
        return 'NID/Pasas';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Nuomininko ID';
      case 'common.dateOfBirth':
        return 'Gimimo data';
      case 'common.gender':
        return 'Lytis';
      case 'common.nominee':
        return 'Kandidatas';
      case 'common.name':
        return 'Vardas';
      case 'common.optional':
        return 'Neprivaloma';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Avarinis kontaktas';
      case 'common.relation':
        return 'Ryšys';
      case 'common.relationWith':
        return '${_root.common.relation} With';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} You';
      case 'common.company':
        return 'Įmonė';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Darbo vieta';
      case 'common.officePhoneNo':
        return 'Telefono numeris biure';
      case 'common.officeMobileNo':
        return 'Biuro ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Transporto priemonė';
      case 'common.vehiclesInfo.plain':
        return 'Informacija apie transporto priemones';
      case 'common.vehiclesInfo.optional':
        return 'Informacija apie transporto priemones (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Transporto priemonės registracijos Nr.';
      case 'common.vehicleRegistrationNo.short':
        return 'Registracijos Nr.';
      case 'common.vehicleRegistrationNo.alt':
        return 'Valstybinis numeris';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Brand';
      case 'common.rentProperty':
        return 'Nuomoti nekilnojamąjį turtą';
      case 'common.propertyDetails':
        return 'Informacija apie nekilnojamąjį turtą';
      case 'common.propertyId':
        return 'Nekilnojamojo turto ID';
      case 'common.propertyType':
        return 'Nekilnojamojo turto tipas';
      case 'common.propertyName':
        return 'Nekilnojamojo turto pavadinimas';
      case 'common.paymentDetails':
        return 'Mokėjimo informacija';
      case 'common.monthlyRent':
        return 'Mėnesinė nuoma';
      case 'common.thisMonthPayment':
        return 'Šio mėnesio mokėjimas';
      case 'common.totalPaidRent':
        return 'Visa sumokėta nuoma';
      case 'common.dueRent':
        return 'Nesumokėta nuoma';
      case 'common.rentStartDate':
        return 'Nuoma ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Nuoma ${_root.common.endDate}';
      case 'common.status':
        return 'Būsena';
      case 'common.rentAgreementPdf':
        return 'Nuomos sutarties PDF';
      case 'common.noFile':
        return 'Nėra failo';
      case 'common.tenantImageOp':
        return 'Nuomininko nuotrauka ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Pridėti naują transporto priemonę';
      case 'common.uploadNidPassport':
        return 'Įkelti NID/Pasą';
      case 'common.nidPassportUploadNote':
        return 'Bus priimami tik failo tipo vaizdai. Failo dydžio apribojimas iki 2,5 MB.';
      case 'common.search':
        return 'Paieška';
      case 'common.sortBy':
        return 'Rūšiuoti pagal';
      case 'common.subscription':
        return 'Abonementas';
      case 'common.downloading':
        return 'Atsisiunčiama...';
      case 'common.downloadSuccess':
        return 'Failas sėkmingai atsisiųstas!';
      case 'common.addPropertyBannerTitle':
        return 'Norite išnuomoti savo nekilnojamąjį turtą?';
      case 'common.application':
        return 'Paraiška';
      case 'common.tenantHasPaidDeposit':
        return 'Nuomininkas sumokėjo užstatą.';
      case 'common.askProcessingRentApplication':
        return 'Ar tikrai apdorojate šį prašymą dėl nuomojamo nekilnojamojo turto?';
      case 'common.dateAndTime':
        return 'Data ir laikas';
      case 'common.applicationDetails':
        return 'Išsami paraiškos informacija';
      case 'common.depositStatus':
        return 'Užstato būsena';
      case 'common.uploadRentAgreement':
        return 'Įkelti nuomos sutartį';
      case 'common.uploadFilePDF':
        return 'Įkelti failą (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Prašome pasirinkti sutarties dokumento failą.';
      case 'common.landlordRentAgreementPDF':
        return 'Nuomotojo nuomos sutarties PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Nuomininko nuomos sutarties PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Pastaba: '),
            note(
              'Patvirtinkite paraišką tik po to, kai nuomininkas sumokės užstatą.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Atmetimo priežastis';
      case 'common.youveRejectedThisApplication':
        return 'Jūs atmetėte šią paraišką';
      case 'common.landlordDetails':
        return 'Nuomotojo informacija';
      case 'common.landlordName':
        return 'Nuomotojo vardas';
      case 'common.downloadRentAgreement':
        return 'Atsisiųsti nuomos sutartį';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Priimti '),
            toc('Taisyklės ir sąlygos'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Pastaba: '),
            note(
              'Prašome atsisiųsti ir perskaityti sutartį. Prašome nusiųsti pasirašytą sutartį nuomotojui per „WhatsApp“ arba el. paštu.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Pastaba: '),
            note(
              'Nuomotojas patvirtina paraišką, kai nuomininkas sumoka užstatą, komunalinius mokesčius ir vieno mėnesio avansinį nuomos mokestį.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Nuomos sutartis (PDF) '),
            complete('Visa sutartis'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Pastaba: '),
            note(
              'Nuomotojas patvirtina paraišką, kai nuomininkas sumoka užstatą, komunalinius mokesčius ir vieno mėnesio avansinį nuomos mokestį.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Paraiškų sąrašas';
      case 'common.viewDetails':
        return 'Peržiūrėti išsamią informaciją';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Pagrindinis';
      case 'common.dashboard':
        return 'Informacijos suvestinė';
      case 'common.tenants':
        return 'Nuomininkai';
      case 'common.maintenance':
        return 'Priežiūra';
      case 'common.maintenanceList':
        return 'Priežiūros sąrašas';
      case 'common.maintenanceReport':
        return 'Priežiūros ataskaita';
      case 'common.labor':
        return 'Darbas';
      case 'common.applications':
        return 'Paraiškos';
      case 'common.rentInvitation':
        return 'Kvietimas nuomotis';
      case 'common.payment':
        return 'Mokėjimas';
      case 'common.rentPayment':
        return 'Nuomos mokėjimas';
      case 'common.depositUtilityPayment':
        return 'Užstatas ir komunalinių mokesčių mokėjimas';
      case 'common.refundRequest':
        return 'Prašymas grąžinti pinigus';
      case 'common.withdrawRequest':
        return 'Prašymas išsiimti lėšas';
      case 'common.myProperty':
        return 'Mano nekilnojamasis turtas';
      case 'common.myRent':
        return 'Mano nuoma';
      case 'common.wishlist':
        return 'Pageidavimų sąrašas';
      case 'common.properties':
        return 'Nekilnojamasis turtas';
      case 'common.allProperties':
        return 'Visas nekilnojamasis turtas';
      case 'common.totalPropery':
        return 'Iš viso nekilnojamojo turto';
      case 'common.occupied':
        return 'Užimtas';
      case 'common.vacant':
        return 'Laisvas';
      case 'common.accounting':
        return 'Apskaita';
      case 'common.totalIncome':
        return 'Visos pajamos';
      case 'common.totalExpense':
        return 'Visos išlaidos';
      case 'common.currentBalance':
        return 'Esamas balansas';
      case 'common.totalWithdrawal':
        return 'Iš viso (išėmimas)';
      case 'common.totalProperties':
        return 'Iš viso nekilnojamojo turto';
      case 'common.totalTenant':
        return 'Iš viso nuomininkų';
      case 'common.totalRentPaid':
        return 'Iš viso sumokėta nuoma';
      case 'common.totalRentDue':
        return 'Iš viso nesumokėta nuoma';
      case 'common.totalApplication':
        return 'Iš viso paraiškų';
      case 'common.pendingApplication':
        return 'Neapdorota paraiška';
      case 'common.processingApplication':
        return 'Apdorojama paraiška';
      case 'common.approveApplication':
        return 'Patvirtinti paraišką';
      case 'common.rejectApplication':
        return 'Atmesti paraišką';
      case 'common.maintenanceCost':
        return 'Priežiūros kaina';
      case 'common.transactionSummary':
        return 'Operacijų suvestinė';
      case 'common.maintenanceRequest':
        return 'Priežiūros prašymas';
      case 'common.notifications':
        return 'Pranešimai';
      case 'common.myProperties':
        return 'Mano nekilnojamasis turtas';
      case 'common.recommendationProperties':
        return 'Rekomenduojamas nekilnojamasis turtas';
      case 'common.laborList':
        return 'Darbo sąrašas';
      case 'common.addLabor':
        return 'Pridėti darbą';
      case 'common.laborDetails':
        return 'Informacija apie darbą';
      case 'common.laborSalary':
        return 'Darbo atlyginimas';
      case 'common.editLabor':
        return 'Redaguoti darbą';
      case 'common.addNewLabor':
        return 'Pridėti naują darbą';
      case 'common.enterAmount':
        return 'Įvesti sumą';
      case 'common.maintenanceDetails':
        return 'Išsami priežiūros informacija';
      case 'common.laborName':
        return 'Darbininko vardas';
      case 'common.comment':
        return 'Komentaras';
      case 'common.image':
        return 'Vaizdas';
      case 'common.complete':
        return 'Baigti';
      case 'common.details':
        return 'Išsami informacija';
      case 'common.title':
        return 'Pavadinimas';
      case 'common.date':
        return 'Data';
      case 'common.reason':
        return 'Priežastis';
      case 'common.edit':
        return 'Redaguoti';
      case 'common.property':
        return 'Nekilnojamasis turtas';
      case 'common.completeYourProfile':
        return 'Užpildykite savo profilį';
      case 'common.profileImage':
        return 'Profilio nuotrauka';
      case 'common.imagePickHint':
        return 'Tik JPEG ir PNG vaizdas, maksimalus dydis 120x120 pikselių.';
      case 'common.invoiceId':
        return 'Sąskaitos faktūros ID';
      case 'common.depositAmount':
        return 'Užstato suma';
      case 'common.landlordPhone':
        return 'Nuomotojo telefonas';
      case 'common.rentalAdvance':
        return 'Nuoma (avansas)';
      case 'common.totalAmount':
        return 'Visa suma';
      case 'common.rentalAmount':
        return 'Nuomos suma';
      case 'common.adminCharge':
        return 'Administracinis mokestis';
      case 'common.editAccount':
        return 'Redaguoti paskyrą';
      case 'common.addNewAccount':
        return 'Pridėti naują paskyrą';
      case 'common.transactionId':
        return 'Operacijos ID';
      case 'common.transactionType':
        return 'Operacijos tipas';
      case 'common.requestDate':
        return 'Prašymo data';
      case 'common.amount':
        return 'Suma';
      case 'common.fee':
        return 'Mokestis';
      case 'common.paymentStatus':
        return 'Mokėjimo būsena';
      case 'common.generatedTime':
        return 'Sugeneravimo laikas';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text: 'Tai yra sistemos sugeneruota ataskaita apie ',
            ),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Išėmimo istorija';
      case 'common.history':
        return 'Istorija';
      case 'common.withdrawAmount':
        return 'Išėmimo suma';
      case 'common.availableBalance':
        return 'Turimas balansas';
      case 'common.withdrawCharge':
        return 'Išėmimo mokestis';
      case 'common.paymentMethod':
        return 'Mokėjimo būdas';
      case 'common.requestSendSuccess':
        return 'Prašymas sėkmingai išsiųstas!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Mokėjimo kvitas sėkmingai pateiktas.';
      case 'common.refundReason':
        return 'Grąžinimo priežastis';
      case 'common.note':
        return 'Pastaba';
      case 'common.refundReceiveSuccess':
        return 'Pinigai sėkmingai grąžinti.';
      case 'common.downloadPaymentReceipt':
        return 'Atsisiųsti mokėjimo kvitą';
      case 'common.invoice':
        return 'Sąskaita faktūra';
      case 'common.selectPropertyToSeeInvoice':
        return 'Pasirinkite nekilnojamąjį turtą, kad pamatytumėte sąskaitos faktūros numerį...';
      case 'common.bankAccName':
        return 'Banko sąskaitos pavadinimas';
      case 'common.bankName':
        return 'Banko pavadinimas';
      case 'common.bankAccNum':
        return 'Banko sąskaitos numeris';
      case 'common.thankYou':
        return 'Ačiū!';
      case 'common.basicInfo':
        return 'Pagrindinė informacija';
      case 'common.descriptionPricing':
        return 'Aprašymas ir kainos';
      case 'common.contact':
        return 'Kontaktas';
      case 'common.photos':
        return 'Nuotraukos';
      case 'common.successfullySubmitted':
        return 'Sėkmingai pateikta!';
      case 'common.editProperty':
        return 'Redaguoti nekilnojamąjį turtą';
      case 'common.addNewProperty':
        return 'Pridėti naują nekilnojamąjį turtą';
      case 'common.propertyManageRequestSuccess':
        return 'Jūsų skelbimas buvo pateiktas peržiūrai.';
      case 'common.postAnotherProperty':
        return 'Paskelbti kitą nekilnojamąjį turtą';
      case 'common.browseYourProperty':
        return 'Naršyti savo nekilnojamąjį turtą';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Žingsnis '),
                step,
                const TextSpan(text: ' iš '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Ką norėtumėte paskelbti?';
      case 'common.category':
        return 'Kategorija';
      case 'common.invalidCategory':
        return 'Netinkama kategorija';
      case 'common.unitNumber':
        return 'Vieneto numeris';
      case 'common.sqft':
        return 'kv. pėdos';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Nekilnojamojo turto dydis turi būti didesnis nei nulis';
      case 'common.whatAreTheFacility':
        return 'Kokie yra patogumai?';
      case 'common.whatAreTheAmenity':
        return 'Kokie yra patogumai?';
      case 'common.parkingLot':
        return 'Automobilių stovėjimo aikštelė';
      case 'common.houseType':
        return 'Namo tipas';
      case 'common.value':
        return 'Vertė';
      case 'common.unitLotSize':
        return 'Vieneto / sklypo dydis';
      case 'common.landSize':
        return 'Žemės dydis';
      case 'common.acres':
        return 'Akras(ai)';
      case 'common.roomSize':
        return 'Kambario dydis';
      case 'common.askTenantPreference':
        return 'Koks yra jūsų nuomininko pageidavimas';
      case 'common.couple':
        return 'Pora';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            'Apibūdinkite ${propertyType}';
      case 'common.adTitle':
        return 'Skelbimo pavadinimas';
      case 'common.minimumRentalPeriod':
        return 'Minimalus nuomos laikotarpis';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Slėpti arba rodyti el. pašto adresą';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Ačiū, kad paskelbėte svetainėje ${appName}!';
      case 'common.propertyList':
        return 'Nekilnojamojo turto sąrašas';
      case 'common.newInviteRent':
        return 'Naujas kvietimas nuomotis';
      case 'common.rentAgreement':
        return 'Nuomos sutartis';
      case 'common.rentDetails':
        return 'Išsami nuomos informacija';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Pastaba: '),
            note('Prašome palaukti, kol nuomininkas priims kvietimą.'),
          ],
        );
      case 'common.rent':
        return 'Nuoma';
      case 'common.editTenant':
        return 'Redaguoti nuomininką';
      case 'common.addNewTenant':
        return 'Pridėti naują nuomininką';
      case 'common.shareInstallLink':
        return 'Bendrinti diegimo nuorodą';
      case 'common.tenantList':
        return 'Nuomininkų sąrašas';
      case 'common.editMaintenanceRequest':
        return 'Redaguoti priežiūros užklausą';
      case 'common.addNewMaintenance':
        return 'Pridėti naują priežiūrą';
      case 'common.landlordId':
        return 'Nuomotojo ID';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Pastaba '),
            note(
              'Jūsų sutartis yra peržiūrima. Prašome palaukti, kol nuomotojas patvirtins jūsų nuomą.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Redaguoti atsiliepimą';
      case 'common.writeAReview':
        return 'Parašyti atsiliepimą';
      case 'common.selectRating':
        return 'Pasirinkti įvertinimą';
      case 'common.enterYourOpinion':
        return 'Įveskite savo nuomonę';
      case 'common.askToEnterReviewMsg':
        return 'Prašome įvesti atsiliepimo pranešimą';
      case 'common.pressBackAgainToExit':
        return 'Paspauskite atgal dar kartą, kad išeitumėte.';
      case 'common.selectPaymentMethod':
        return 'Pasirinkite mokėjimo būdą';
      case 'common.filter':
        return 'Filtras';
      case 'common.perMonth':
        return '/1 mėnesį';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Ieškokite bet ko svetainėje ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Kažkas nutiko, bandykite dar kartą';
      case 'exceptions.noNidPassport':
        return 'Nėra pateikta NID/Paso nuotrauka.';
      case 'exceptions.noRentPropertyFound':
        return 'Nerasta nuomojamo turto šiam nuomininkui.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Nekilnojamasis turtas nerastas!\nIšbandykite kitus raktažodžius';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Nerastas prenumeratos planas!\nAtnaujinkite puslapį ir bandykite dar kartą.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Netinkama ${dataType} informacija! Atnaujinkite puslapį ir bandykite dar kartą.';
      case 'exceptions.invalidDownloadUrl':
        return 'Netinkamas atsisiuntimo URL!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Nepavyko išsaugoti failo! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => 'Klaida atidarant failą! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Nepateikta informacija apie transporto priemonę.';
      case 'exceptions.yourApplicationRejected':
        return 'Jūsų paraiška buvo atmesta';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Paraiška nerasta!\n${subject} bus rodoma čia, kai bus prieinama.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Jūsų paraiška';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Nuomininko paraiška';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Nekilnojamasis turtas nerastas!\nPrašome pabandyti pridėti nekilnojamąjį turtą, kad pamatytumėte čia.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Nerasta rekomenduojamo nekilnojamojo turto\nBandykite dar kartą vėliau.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Nekilnojamasis turtas neprieinamas\nBandykite dar kartą vėliau.';
      case 'exceptions.noImageProvided':
        return 'Nepateiktas vaizdas';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) => 'Nerasta ${status} priežiūra.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Priežiūra nerasta! Galite sukurti priežiūros užklausą, kad pamatytumėte ją čia.';
      case 'exceptions.noDepositFound':
        return 'Nerastas užstatas!\nPrašome pamatyti užstatus, kai jie bus prieinami';
      case 'exceptions.noRentPaymentFound':
        return 'Nerastas nuomos mokėjimas!\nPrašome pamatyti nuomos mokėjimus, kai jie bus prieinami';
      case 'exceptions.transactionSummaryApiException':
        return 'Nepavyko gauti operacijų suvestinės.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Nerastas prašymas!\nPrašome pabandyti sukurti išėmimo prašymą, kad pamatytumėte jį čia.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Šis išėmimo prašymas nebuvo patvirtintas!.';
      case 'exceptions.nonZeroError':
        return 'Įveskite galiojančią sumą, didesnę už nulį.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Suma turi būti ne mažesnė kaip ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Suma neturi viršyti ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Pirmiausia pasirinkite mokėjimo būdą.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Nerastas ${status} grąžinimo prašymas!\nGalite pamatyti grąžinimo prašymą čia, kai jis bus prieinamas.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Nerastas grąžinimo prašymas!\nGalite sukurti grąžinimo prašymą, kad pamatytumėte jį čia.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Nuomininkas patvirtins grąžinimą, kai atgaus pinigus';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Mes peržiūrėsime grąžinimo prašymą ir patvirtinsime jį per 24 valandas.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Pasirinkite ${value} skaičių';
      case 'exceptions.invalidDateRange':
        return 'Netinkamas datų diapazonas.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} turi būti didesnis nei nulis.';
      case 'exceptions.editProperty.rentalChange':
        return 'Nuomojamas nekilnojamasis turtas keičiasi. Jis turi būti galiojantis (galioti) tik kito mėnesio nuomos mokėjimui.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Jūsų nekilnojamasis turtas jau yra išnuomotas nuomininkui. Negalima ištrinti, kol pirmiausia nepašalinsite nuomininko';
      case 'exceptions.editProperty.alreayRented':
        return 'Šis nekilnojamasis turtas jau yra išnuomotas. Bandykite dar kartą vėliau.\nArba galite susisiekti su nuomotoju, kad gautumėte daugiau informacijos.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Nerastas kvietimas nuomotis!\nPrašome pabandyti sukurti kvietimą nuomotis, kad pamatytumėte jį čia.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Nerastas kvietimas nuomotis!\nGalite pamatyti kvietimą nuomotis čia, kai jis bus prieinamas.';
      case 'exceptions.notenantFoundList':
        return 'Nėra nuomininkų!\nPrašome pabandyti pridėti nuomininką, kad pamatytumėte jį čia.';
      case 'exceptions.noFeaturesProvided':
        return 'Nepateikta jokių funkcijų.';
      case 'exceptions.noNotificationFound':
        return 'Pranešimas neprieinamas.\nGalite pamatyti savo pranešimą čia, kai jis bus prieinamas.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Ar tikrai norite atsijungti?';
      case 'prompt.application.rejectTitle':
        return 'Kodėl atmetate šią paraišką?';
      case 'prompt.application.applicationSent.successfully':
        return 'Paraiška sėkmingai išsiųsta!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Šią paraišką galite pamatyti savo paraiškų sąraše';
      case 'prompt.labor.delete.title':
        return 'Ištrinti darbą?';
      case 'prompt.labor.delete.description':
        return 'Ar tikrai norite ištrinti šį darbą?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Kodėl ši užklausa atmetama?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Ar tikrai apdorojate šią priežiūros užklausą?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Darbas baigtas?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Ištrinti lėšų išėmimo būdą?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Ar tikrai norite ištrinti šį lėšų išėmimo būdą?';
      case 'prompt.unsavedChanges.title':
        return 'Ar tikrai norite grįžti atgal?';
      case 'prompt.unsavedChanges.message':
        return 'Pakeisti laukai nebus išsaugoti!';
      case 'prompt.property.delete.title':
        return 'Ištrinti nekilnojamąjį turtą?';
      case 'prompt.property.delete.message':
        return 'Ar tikrai norite ištrinti šį nekilnojamąjį turtą?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Ar tikrai norite patvirtinti šią nuomą?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Įsitikinkite, kad peržiūrėjote nuomininko pasirašytą sutartį.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Ar tikrai norite priimti šį kvietimą?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Įsitikinkite, kad atsisiuntėte sutarties PDF failą!';
      case 'prompt.sessionExpired.title':
        return 'Sesija baigėsi';
      case 'prompt.sessionExpired.message':
        return 'Jūsų sesija baigėsi. Prašome prisijungti dar kartą';
      case 'prompt.sessionExpired.action':
        return 'Prisijungti';
      case 'prompt.noInternet.title':
        return 'Nėra interneto ryšio';
      case 'prompt.noInternet.message':
        return 'Prašome patikrinti savo „Wi-Fi“ mobiliojo tinklo ryšį ir bandyti dar kartą';
      case 'prompt.noInternet.action':
        return 'Bandyti dar kartą';
      case 'prompt.permissionHandler.title':
        return 'Reikalingas leidimas!';
      case 'prompt.permissionHandler.message':
        return 'Turite suteikti leidimus programos nustatymuose. Ar norėtumėte atidaryti nustatymus dabar?';
      case 'prompt.imagePicker.title':
        return 'Pasirinkite parinktį';
      case 'prompt.imagePicker.gallery':
        return 'Galerija';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Patvirtinkite savo el. paštą';
      case 'prompt.verificationDialog.message':
        return 'Mes išsiuntėme patvirtinimo kodo el. laišką';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} į ${email}';
      case 'prompt.notification.clearTitle':
        return 'Išvalyti pranešimus?';
      case 'prompt.notification.clearMessage':
        return 'Ar tikrai norite išvalyti visus pranešimus?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Įveskite ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Įveskite savo ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Įveskite savo ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Įveskite savo ${_root.common.email} adresą';
      case 'form.email.errors.invalid':
        return '⦸ Netinkamas el. paštas, bandykite dar kartą';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Įveskite savo ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Slaptažodis turi būti bent ${count} simbolių!';
      case 'form.confirmPassword.label':
        return 'Patvirtinkite ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Įveskite savo ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Patvirtinimo slaptažodis nesutampa!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Įveskite savo ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Namo numeris ir gatvės pavadinimas';
      case 'form.address1.errors.required':
        return 'Įveskite savo ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Butas, liukso numeris, vienetas ir kt.';
      case 'form.address2.errors.required':
        return 'Įveskite savo ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Įveskite ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Įveskite savo ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Įveskite ${_root.common.city} pavadinimą.';
      case 'form.city.errors.required':
        return 'Įveskite savo ${_root.common.city} pavadinimą.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Įveskite ${_root.common.state} pavadinimą.';
      case 'form.state.errors.required':
        return 'Įveskite savo ${_root.common.state} pavadinimą.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Pasirinkite ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Pasirinkite savo ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Įveskite OTP.';
      case 'form.otp.errors.invalid':
        return 'Įveskite teisingą OTP.';
      case 'form.title.label':
        return 'Pavadinimas';
      case 'form.title.hint':
        return 'Įveskite pavadinimą';
      case 'form.title.errors.required':
        return 'Įveskite pavadinimą';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Pasirinkite ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Pasirinkite ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Priežastis';
      case 'form.reason.hint':
        return 'Įveskite priežastį';
      case 'form.reason.errors.required':
        return 'Įveskite priežastį';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Pasirinkite ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Pasirinkite ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Įkelkite ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Pasirinkite ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Įveskite ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Įveskite ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Pasirinkite ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Pasirinkite ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Įveskite ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Įveskite ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Įveskite galiojantį @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Pasirinkite ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Pasirinkite ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Pasirinkite galiojantį @form.anyDropdown.label';
      case 'action.next':
        return 'Kitas';
      case 'action.getStarted':
        return 'Pradėti';
      case 'action.skip':
        return 'Praleisti';
      case 'action.select':
        return 'Pasirinkti';
      case 'action.save':
        return 'Išsaugoti';
      case 'action.signIn':
        return 'Prisijungti';
      case 'action.signUp':
        return 'Registruotis';
      case 'action.kContinue':
        return 'Tęsti';
      case 'action.clearAll':
        return 'Išvalyti viską';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Siųsti';
      case 'action.pay':
        return 'Mokėti';
      case 'action.remove':
        return 'Pašalinti';
      case 'action.goBack':
        return 'Grįžti atgal';
      case 'action.buyNow':
        return 'Pirkti dabar';
      case 'action.no':
        return 'Ne';
      case 'action.open':
        return 'Atidaryti';
      case 'action.addProperty':
        return 'Pridėti nekilnojamąjį turtą';
      case 'action.process':
        return 'Apdoroti';
      case 'action.approve':
        return 'Patvirtinti';
      case 'action.reject':
        return 'Atmesti';
      case 'action.viewRent':
        return 'Peržiūrėti nuomą';
      case 'action.openNavigationMenu':
        return 'Atidaryti navigacijos meniu';
      case 'action.seeAll':
        return 'Pamatyti viską';
      case 'action.update':
        return 'Atnaujinti';
      case 'action.printTransaction':
        return 'Spausdinti operaciją';
      case 'action.payoutRequest':
        return 'Išmokėjimo prašymas';
      case 'action.addNew':
        return '+ Pridėti naują';
      case 'action.sendRequest':
        return 'Siųsti prašymą';
      case 'action.print':
        return 'Spausdinti';
      case 'action.requestForRefund':
        return 'Prašyti grąžinimo';
      case 'action.previous':
        return 'Ankstesnis';
      case 'action.delete':
        return 'Ištrinti';
      case 'action.applyProperty':
        return 'Pateikti paraišką dėl nekilnojamojo turto';
      case 'action.viewApplication':
        return 'Peržiūrėti paraišką';
      case 'action.inviteTenant':
        return 'Pakviesti nuomininką';
      case 'action.inviteRent':
        return 'Pakviesti nuomotis';
      case 'action.cancel':
        return 'Atšaukti';
      case 'action.accept':
        return 'Priimti';
      case 'action.submit':
        return 'Pateikti';
      case 'action.yes':
        return 'Taip';
      case 'action.okay':
        return 'Gerai';
      case 'action.confirm':
        return 'Patvirtinti';
      case 'action.apply':
        return 'Taikyti';
      case 'action.reset':
        return 'Atstatyti';
      case 'action.retry':
        return 'Bandyti dar kartą';
      case 'action.viewAll':
        return 'Peržiūrėti viską';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Raskite savo nekilnojamąjį turtą';
      case 'pages.onboard.onboardData.data1.description':
        return 'Mes padarėme tai labai paprasta, kad rastumėte vietą, kuri atitiktų jūsų gyvenimą – nesvarbu, ar tai būtų kambarys, butas ar namas.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Butas mieste';
      case 'pages.onboard.onboardData.data2.description':
        return 'Mes taupome jūsų laiką, greitai suderindami jus su puikiu nekilnojamuoju turtu, kol jis neprapuls, kad galėtumėte mėgautis savo nauju būstu arba nemokamai įtraukti savo.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Jūsų patogus namas';
      case 'pages.onboard.onboardData.data3.description':
        return 'Jei ieškote vietos, kur gyventi, peržiūrėkite mūsų nuomojamus namus. Mes turime platų namų pasirinkimą visoje šalyje.';
      case 'pages.signIn.title':
        return 'Sveiki sugrįžę';
      case 'pages.signIn.subtitle':
        return 'Prisijunkite dabar, kad pradėtumėte nuostabų kelionę.';
      case 'pages.signIn.extra.rememberMe':
        return 'Prisiminti mane';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Neturite paskyros? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Pamiršote slaptažodį';
      case 'pages.forgotPassword.subtitle':
        return 'Įveskite savo el. pašto adresą, kad atgautumėte slaptažodį.';
      case 'pages.otpVerification.title':
        return 'Patvirtinimas';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4 skaitmenų PIN kodas buvo išsiųstas jūsų el. pašto adresu. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Kodas išsiųstas po ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Siųsti kodą dar kartą'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Atstatyti slaptažodį';
      case 'pages.resetPassword.subtitle':
        return 'Atstatykite slaptažodį, kad atgautumėte ir prisijungtumėte prie savo paskyros';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Sėkmingai pakeista!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Prisijunkite su savo nauju slaptažodžiu.\nJus nukreipiame į Prisijungimą...';
      case 'pages.signUp.title':
        return 'Sukurti paskyrą';
      case 'pages.signUp.subtitle':
        return 'Prisiregistruokite dabar, kad pradėtumėte nuostabų kelionę';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Turite paskyrą? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Kas tu esi?';
      case 'pages.welcome.subtitle':
        return 'Prašome pasirinkti toliau pateiktą parinktį.';
      case 'pages.welcome.extra.landlordTag':
        return 'Valdykite savo nekilnojamąjį turtą';
      case 'pages.welcome.extra.tenantTag':
        return 'Prisijunkite prie savo nuomos paskyros';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Pranešimai';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Žinutė...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Kodėl jūs ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Parašykite priežastį';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Įveskite nuomos atšaukimo priežastį';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Atsiskaitymas neprisijungus';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Mokėjimo pastaba (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Įveskite tekstą...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Mokėtina suma: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Sąskaitos savininko vardas';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Sąskaitos numeris';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'SWIFT kodas';
      case 'pages.offlinePayment.extra.branch':
        return 'Filialas';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Pasirinkite tik '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' arba '),
            fileType('DOC'),
            const TextSpan(text: ' formato failus. Failo dydis '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Peržiūrėti sąskaitą faktūrą';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Mes peržiūrėsime mokėjimą ir patvirtinsime jį per 24 valandas.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Bandyti dar kartą';
      case 'pages.paymentStatus.fail.title':
        return 'Oi! Mokėjimas nepavyko';
      case 'pages.paymentStatus.fail.description':
        return 'Jūsų operacija nepavyko dėl kai kurių techninių klaidų.';
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
            const TextSpan(text: 'Savybės '),
            fa('(Patogumai ir paslaugos)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Pasirinkite nuomos laikotarpį';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Parašyti atsiliepimą';
      case 'pages.search.appbarTitle':
        return 'Paieška';
      case 'pages.search.extra.hint':
        return 'Ieškokite sklypų, butų, kambarių...';
      case 'pages.search.extra.noRecentSearch':
        return 'Neturite nesenų paieškų.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Pasirinkite savo planą';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Prenumeratos mokėjimas sėkmingas.\nDabar galite pasiekti prenumeruojamas funkcijas.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Bendros priežiūros išlaidos: '),
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
        return 'Visas nekilnojamasis turtas';
      case 'enums.propertyStatus.pending':
        return 'Laukiama';
      case 'enums.propertyStatus.active':
        return 'Aktyvus';
      case 'enums.propertyStatus.inactive':
        return 'Neaktyvus';
      case 'enums.propertyStatus.rejected':
        return 'Atmestas';
      case 'enums.propertyType.apartmentCondominium':
        return 'Butas/Kondominiumas';
      case 'enums.propertyType.house':
        return 'Namas';
      case 'enums.propertyType.commercialProperty':
        return 'Komercinis nekilnojamasis turtas';
      case 'enums.propertyType.land':
        return 'Žemė';
      case 'enums.propertyType.room':
        return 'Kambarys';
      case 'enums.applicationStatus.all':
        return 'Visi';
      case 'enums.applicationStatus.pending':
        return 'Laukiama';
      case 'enums.applicationStatus.processing':
        return 'Apdorojama';
      case 'enums.applicationStatus.approved':
        return 'Patvirtinta';
      case 'enums.applicationStatus.rejected':
        return 'Atmesta';
      case 'enums.myRentStatus.pending':
        return 'Laukiama';
      case 'enums.myRentStatus.processing':
        return 'Apdorojama';
      case 'enums.myRentStatus.active':
        return 'Aktyvi';
      case 'enums.myRentStatus.expired':
        return 'Pasibaigęs';
      case 'enums.myRentStatus.cancelled':
        return 'Atšaukta';
      case 'enums.maintenanceStatus.pending':
        return 'Laukiama';
      case 'enums.maintenanceStatus.processing':
        return 'Apdorojama';
      case 'enums.maintenanceStatus.rejected':
        return 'Atmesta';
      case 'enums.maintenanceStatus.completed':
        return 'Baigta';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privatus (fizinis asmuo)';
      case 'enums.tenantProfileType.company':
        return 'Įmonė';
      case 'enums.tenantType.newTenant':
        return 'Naujas nuomininkas';
      case 'enums.tenantType.activeTenant':
        return 'Aktyvus nuomininkas';
      case 'enums.tenantType.expiredTenant':
        return 'Pasibaigęs nuomininkas';
      case 'enums.paymentStatus.all':
        return 'Visi';
      case 'enums.paymentStatus.pending':
        return 'Laukiama';
      case 'enums.paymentStatus.paid':
        return 'Sumokėta';
      case 'enums.paymentStatus.unpaid':
        return 'Nesumokėta';
      case 'enums.paymentStatus.rejected':
        return 'Atmesta';
      case 'enums.paymentStatus.refund':
        return 'Grąžinimas';
      case 'enums.paymentOptions.onlinePayment':
        return 'Mokėjimas internetu';
      case 'enums.paymentOptions.offlinePayment':
        return 'Mokėjimas neprisijungus';
      case 'enums.paymentType.securityDeposit':
        return 'Užstatas';
      case 'enums.paymentType.rentPayment':
        return 'Nuomos mokėjimas';
      case 'enums.paymentType.subscription':
        return 'Prenumerata';
      case 'enums.gender.male':
        return 'Vyras';
      case 'enums.gender.female':
        return 'Moteris';
      case 'enums.gender.other':
        return 'Kita';
      case 'enums.ecRelation.wife':
        return 'Žmona';
      case 'enums.ecRelation.parent':
        return 'Tėvas';
      case 'enums.ecRelation.friend':
        return 'Draugas';
      case 'enums.ecRelation.brother':
        return 'Brolis';
      case 'enums.ecRelation.sister':
        return 'Sesuo';
      case 'enums.ecRelation.child':
        return 'Vaikas';
      case 'enums.vehicleType.car':
        return 'Automobilis';
      case 'enums.vehicleType.motorcycles':
        return 'Motociklai';
      case 'enums.vehicleType.lorry':
        return 'Sunkvežimis';
      case 'enums.sortBy.lowToHigh':
        return 'Nuo žemiausio iki aukščiausio';
      case 'enums.sortBy.highToLow':
        return 'Nuo aukščiausio iki žemiausio';
      case 'enums.residentialType.flat':
        return 'Butas';
      case 'enums.residentialType.apartment':
        return 'Butas';
      case 'enums.residentialType.condominium':
        return 'Kondominiumas';
      case 'enums.residentialType.serviceResidence':
        return 'Aptarnaujama rezidencija';
      case 'enums.residentialType.studio':
        return 'Studija';
      case 'enums.residentialType.duplex':
        return 'Dupleksas';
      case 'enums.residentialType.townhouseCondo':
        return 'Kotedžas/Kondominiumas';
      case 'enums.residentialType.others':
        return 'Kita';
      case 'enums.floorRange.high':
        return 'Aukštas';
      case 'enums.floorRange.medium':
        return 'Vidutinis';
      case 'enums.floorRange.low':
        return 'Žemas';
      case 'enums.furnishings.fullyFurnished':
        return 'Visiškai įrengtas';
      case 'enums.furnishings.partiallyFurnished':
        return 'Iš dalies įrengtas';
      case 'enums.furnishings.notFurnished':
        return 'Neįrengtas';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Biroo patalpos';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Mažmeninės prekybos patalpos';
      case 'enums.commercialPropertyType.shopLot':
        return 'Parduotuvės vieta';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Sandėlis / Gamykla';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Viešbutis / Kurortas';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Kita';
      case 'enums.landPropertyType.residential':
        return 'Gyvenamoji';
      case 'enums.landPropertyType.industrial':
        return 'Pramoninė';
      case 'enums.landPropertyType.agricultural':
        return 'Žemės ūkio';
      case 'enums.landPropertyType.commercial':
        return 'Komercinė';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Mišri plėtra';
      case 'enums.landPropertyType.others':
        return 'Kita';
      case 'enums.residentPropertyType.condo':
        return 'Kondominiumas / Aptarnaujama rezidencija / Penthausas';
      case 'enums.residentPropertyType.apartment':
        return 'Butas / Plokščias';
      case 'enums.residentPropertyType.house':
        return 'Namai';
      case 'enums.residentPropertyType.shoplot':
        return 'Parduotuvė';
      case 'enums.residentPropertyType.sharing':
        return 'Dalijimasis namu / Butu';
      case 'enums.residentPropertyType.others':
        return 'Kita';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 mėnesiai';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 metai';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 metai';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 metai';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 metai';
      case 'enums.dropdownDateFilter.daily':
        return 'Kasdien';
      case 'enums.dropdownDateFilter.weekly':
        return 'Kas savaitę';
      case 'enums.dropdownDateFilter.monthly':
        return 'Kas mėnesį';
      case 'enums.dropdownDateFilter.yearly':
        return 'Kasmet';
      case 'enums.dropdownDateFilter.custom':
        return 'Pritaikytas';
      default:
        return null;
    }
  }
}
