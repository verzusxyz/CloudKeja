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
class TranslationsAf implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsAf({
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
             locale: AppLocale.af,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <af>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsAf _root = this; // ignore: unused_field

  @override
  TranslationsAf $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsAf(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonAf common = _TranslationsCommonAf._(_root);
  @override
  late final _TranslationsExceptionsAf exceptions = _TranslationsExceptionsAf._(
    _root,
  );
  @override
  late final _TranslationsPromptAf prompt = _TranslationsPromptAf._(_root);
  @override
  late final _TranslationsFormAf form = _TranslationsFormAf._(_root);
  @override
  late final _TranslationsActionAf action = _TranslationsActionAf._(_root);
  @override
  late final _TranslationsPagesAf pages = _TranslationsPagesAf._(_root);
  @override
  late final _TranslationsEnumsAf enums = _TranslationsEnumsAf._(_root);
}

// Path: common
class _TranslationsCommonAf implements TranslationsCommonEn {
  _TranslationsCommonAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profiel';
  @override
  String get language => 'Taal';
  @override
  String get subscriptionPlan => 'Intekeningplan';
  @override
  String get contactUs => 'Kontak Ons';
  @override
  String get termsAndConditions => 'Terme en Voorwaardes';
  @override
  String get aboutUs => 'Oor Ons';
  @override
  String get logout => 'Teken uit';
  @override
  String get editProfile => 'Wysig Profiel';
  @override
  String get fullName => 'Volle Naam';
  @override
  String get email => 'E-pos';
  @override
  String get mobileNumber => 'Mobiele Nommer';
  @override
  String get address => 'Adres';
  @override
  String get postalCode => 'Poskode';
  @override
  String get city => 'Stad';
  @override
  String get country => 'Land';
  @override
  String get state => 'Staat';
  @override
  String get password => 'Wagwoord';
  @override
  String get forgotPassword => 'Wagwoord vergeet';
  @override
  String get tenant => 'Huurder';
  @override
  String get landlord => 'Verhuurder';
  @override
  String get cancelRenting => 'Kanselleer Verhuring';
  @override
  String get startDate => 'Begindatum';
  @override
  String get endDate => 'Einddatum';
  @override
  String get fromDate => 'Vanaf Datum';
  @override
  String get toDate => 'Tot Datum';
  @override
  String get online => 'Aanlyn';
  @override
  String get bankList => 'Banklys';
  @override
  String get withdrawMethod => 'Onttrekkingsmetode';
  @override
  String get uploadPaymentReceipt => 'Laai Betalingsbewys op';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note('Die betaling vereis handmatige goedkeuring deur die admin binne'),
      const TextSpan(text: ' '),
      duraion('24~48 hours.'),
    ],
  );
  @override
  String get reviews => 'Resensies';
  @override
  String get description => 'Beskrywing';
  @override
  String get about => 'Oor';
  @override
  String get propertyTypes => 'Eiendomstipes';
  @override
  String get features => 'Kenmerke';
  @override
  String get floorPlans => 'Vloerplanne';
  @override
  String get buildingDetails => 'Geboubesonderhede';
  @override
  String get buildingName => 'Gebounaam';
  @override
  String get propertyAddress => 'Eiendomsadres';
  @override
  String get completionYear => 'Voltooiingsjaar';
  @override
  String get lotNumber => 'Erfnommer';
  @override
  String get residentialType => 'Residensiële Tipe';
  @override
  String get furnishings => 'Meubilering';
  @override
  String get floorRange => 'Vloerreeks';
  @override
  String get bedrooms => 'Slaapkamers';
  @override
  String get bathrooms => 'Badkamers';
  @override
  String get propertySize => 'Eiendomsgrootte';
  @override
  String get rentalPeriod => 'Huurperiode';
  @override
  String get securityDeposit => 'Sekuriteitsdeposito';
  @override
  String get utilityBill => 'Nutsrekening';
  @override
  String get facilities => 'Fasiliteite';
  @override
  String get amenities => 'Geriewe';
  @override
  String get expiringReason => 'Rede vir Verstryking';
  @override
  String get tenantDetails => 'Huurderbesonderhede';
  @override
  String get typeOfTenant => 'Tipe Huurder';
  @override
  String get tenantName => 'Huurdernaam';
  @override
  String get nidPassport => 'NID/Paspoort';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Huurder ID';
  @override
  String get dateOfBirth => 'Geboortedatum';
  @override
  String get gender => 'Geslag';
  @override
  String get nominee => 'Genomineerde';
  @override
  String get name => 'Naam';
  @override
  String get optional => 'Opsioneel';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileAf nomineeMobile =
      _TranslationsCommonNomineeMobileAf._(_root);
  @override
  String get emergencyContact => 'Noodkontak';
  @override
  String get relation => 'Verhouding';
  @override
  String get relationWith => '${_root.common.relation} Met';
  @override
  String get relationWithYou => '${_root.common.relationWith} Jou';
  @override
  String get company => 'Maatskappy';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Werkplek';
  @override
  String get officePhoneNo => 'Kantoor Telefoonnommer';
  @override
  String get officeMobileNo => 'Kantoor ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Voertuig';
  @override
  late final _TranslationsCommonVehiclesInfoAf vehiclesInfo =
      _TranslationsCommonVehiclesInfoAf._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Tipe';
  @override
  late final _TranslationsCommonVehicleRegistrationNoAf vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoAf._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Merk';
  @override
  String get rentProperty => 'Huur Eiendom';
  @override
  String get propertyDetails => 'Eiendomsbesonderhede';
  @override
  String get propertyId => 'Eiendoms ID';
  @override
  String get propertyType => 'Eiendoms Tipe';
  @override
  String get propertyName => 'Eiendomsnaam';
  @override
  String get paymentDetails => 'Betalingsbesonderhede';
  @override
  String get monthlyRent => 'Maandelikse Huur';
  @override
  String get thisMonthPayment => 'Hierdie Maand Betaling';
  @override
  String get totalPaidRent => 'Totale Betaalde Huur';
  @override
  String get dueRent => 'Verskuldigde Huur';
  @override
  String get rentStartDate => 'Huur ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Huur ${_root.common.endDate}';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'Huurooreenkoms PDF';
  @override
  String get noFile => 'Geen Lêer';
  @override
  String get tenantImageOp => 'Huurderbeeld ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Voeg Nuwe Voertuie by';
  @override
  String get uploadNidPassport => 'Laai NID/Paspoort op';
  @override
  String get nidPassportUploadNote =>
      'Slegs lêertipe-beeld sal aanvaar word. Lêerlimiet tot 2.5 MB.';
  @override
  String get search => 'Soek';
  @override
  String get sortBy => 'Sorteer Volgens';
  @override
  String get subscription => 'Subskripsie';
  @override
  String get downloading => 'Laai tans af...';
  @override
  String get downloadSuccess => 'Lêer suksesvol afgelaai!';
  @override
  String get addPropertyBannerTitle => 'Wil Jy Jou Eiendom Uitverhuur?';
  @override
  String get application => 'Aansoek';
  @override
  String get tenantHasPaidDeposit => 'Huurder het die deposito betaal.';
  @override
  String get askProcessingRentApplication =>
      'Is jy seker jy wil hierdie versoek vir huureiendom verwerk?';
  @override
  String get dateAndTime => 'Datum en Tyd';
  @override
  String get applicationDetails => 'Aansoekbesonderhede';
  @override
  String get depositStatus => 'Depositostatus';
  @override
  String get uploadRentAgreement => 'Laai Huurooreenkoms op';
  @override
  String get uploadFilePDF => 'Laai Lêer op (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Kies asseblief \'n ooreenkomsdokumentlêer.';
  @override
  String get landlordRentAgreementPDF => 'Verhuurder Huurooreenkoms PDF';
  @override
  String get tenantRentAgreementPDF => 'Huurder Huurooreenkoms PDF';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Keur die aansoek slegs goed nadat die huurder \'n depositobetaling gemaak het.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Rede vir Afkeuring';
  @override
  String get youveRejectedThisApplication => 'Jy het hierdie aansoek afgekeur';
  @override
  String get landlordDetails => 'Verhuurderbesonderhede';
  @override
  String get landlordName => 'Verhuurdernaam';
  @override
  String get downloadRentAgreement => 'Laai Huurooreenkoms af';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Aanvaar '),
      toc('Terme en Voorwaardes'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Laai die ooreenkoms asseblief af en lees dit. Stuur die ondertekende ooreenkoms aan die verhuurder via WhatsApp of e-pos.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Verhuurder keur die aansoek goed wanneer die huurder die sekuriteit, nutsdienste en een maand vooruitbetaalde huurgeld betaal.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Huurooreenkoms (PDF) '),
          complete('Volledige Ooreenkoms'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Verhuurder keur die aansoek goed wanneer die huurder die sekuriteit, nutsdienste en een maand vooruitbetaalde huurgeld betaal.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Aansoeklys';
  @override
  String get viewDetails => 'Bekyk Besonderhede';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Tuis';
  @override
  String get dashboard => 'Kontroleskerm';
  @override
  String get tenants => 'Huurders';
  @override
  String get maintenance => 'Onderhoud';
  @override
  String get maintenanceList => 'Onderhoudslys';
  @override
  String get maintenanceReport => 'Onderhoudsverslag';
  @override
  String get labor => 'Arbeid';
  @override
  String get applications => 'Aansoeke';
  @override
  String get rentInvitation => 'Huur Uitnodiging';
  @override
  String get payment => 'Betaling';
  @override
  String get rentPayment => 'Huur Betaling';
  @override
  String get depositUtilityPayment => 'Deposito & Nutsdienste Betaling';
  @override
  String get refundRequest => 'Terugbetalingsversoek';
  @override
  String get withdrawRequest => 'Onttrekkingsversoek';
  @override
  String get myProperty => 'My Eiendom';
  @override
  String get myRent => 'My Huur';
  @override
  String get wishlist => 'Wenslys';
  @override
  String get properties => 'Eiendomme';
  @override
  String get allProperties => 'Alle Eiendomme';
  @override
  String get totalPropery => 'Totale Eiendom';
  @override
  String get occupied => 'Beset';
  @override
  String get vacant => 'Leegstaande';
  @override
  String get accounting => 'Rekeningkunde';
  @override
  String get totalIncome => 'Totale Inkomste';
  @override
  String get totalExpense => 'Totale Uitgawe';
  @override
  String get currentBalance => 'Huidige Balans';
  @override
  String get totalWithdrawal => 'Totaal (Onttrekking)';
  @override
  String get totalProperties => 'Totale Eiendomme';
  @override
  String get totalTenant => 'Totale Huurder';
  @override
  String get totalRentPaid => 'Totale Huur Betaal';
  @override
  String get totalRentDue => 'Totale Huur Verskuldig';
  @override
  String get totalApplication => 'Totale Aansoek';
  @override
  String get pendingApplication => 'Hangende Aansoek';
  @override
  String get processingApplication => 'Aansoek word Verwerk';
  @override
  String get approveApplication => 'Keur Aansoek Goed';
  @override
  String get rejectApplication => 'Keur Aansoek Af';
  @override
  String get maintenanceCost => 'Onderhoudskoste';
  @override
  String get transactionSummary => 'Transaksie Opsomming';
  @override
  String get maintenanceRequest => 'Onderhoudsversoek';
  @override
  String get notifications => 'Kennisgewings';
  @override
  String get myProperties => 'My Eiendomme';
  @override
  String get recommendationProperties => 'Aanbevole Eiendomme';
  @override
  String get laborList => 'Arbeidslys';
  @override
  String get addLabor => 'Voeg Arbeid by';
  @override
  String get laborDetails => 'Arbeidsbesonderhede';
  @override
  String get laborSalary => 'Arbeidsalaris';
  @override
  String get editLabor => 'Wysig Arbeid';
  @override
  String get addNewLabor => 'Voeg Nuwe Arbeid by';
  @override
  String get enterAmount => 'Voer Bedrag in';
  @override
  String get maintenanceDetails => 'Onderhoudsbesonderhede';
  @override
  String get laborName => 'Arbeidsnaam';
  @override
  String get comment => 'Opmerking';
  @override
  String get image => 'Beeld';
  @override
  String get complete => 'Voltooi';
  @override
  String get details => 'Besonderhede';
  @override
  String get title => 'Titel';
  @override
  String get date => 'Datum';
  @override
  String get reason => 'Rede';
  @override
  String get edit => 'Wysig';
  @override
  String get property => 'Eiendom';
  @override
  String get completeYourProfile => 'Voltooi Jou Profiel';
  @override
  String get profileImage => 'Profielbeeld';
  @override
  String get imagePickHint =>
      'Slegs JPEG & PNG Beeld met maksimum grootte van 120x120 pixels.';
  @override
  String get invoiceId => 'Faktuur ID';
  @override
  String get depositAmount => 'Deposito Bedrag';
  @override
  String get landlordPhone => 'Verhuurderfoon';
  @override
  String get rentalAdvance => 'Huur (Vooruit)';
  @override
  String get totalAmount => 'Totale Bedrag';
  @override
  String get rentalAmount => 'Huur Bedrag';
  @override
  String get adminCharge => 'Admin Heffing';
  @override
  String get editAccount => 'Wysig Rekening';
  @override
  String get addNewAccount => 'Voeg Nuwe Rekening by';
  @override
  String get transactionId => 'Transaksie ID';
  @override
  String get transactionType => 'Transaksie Tipe';
  @override
  String get requestDate => 'Versoek Datum';
  @override
  String get amount => 'Bedrag';
  @override
  String get fee => 'Fooi';
  @override
  String get paymentStatus => 'Betalingstatus';
  @override
  String get generatedTime => 'Gegenereerde Tyd';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Dit is \'n stelsel gegenereerde verslag van '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Onttrekkingsgeskiedenis';
  @override
  String get history => 'Geskiedenis';
  @override
  String get withdrawAmount => 'Onttrekkingsbedrag';
  @override
  String get availableBalance => 'Beskikbare Balans';
  @override
  String get withdrawCharge => 'Onttrekkingsfooi';
  @override
  String get paymentMethod => 'Betaalmetode';
  @override
  String get requestSendSuccess => 'Versoek suksesvol gestuur!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Betalingsbewys suksesvol ingedien.';
  @override
  String get refundReason => 'Terugbetalingsrede';
  @override
  String get note => 'Nota';
  @override
  String get refundReceiveSuccess => 'Terugbetaling suksesvol ontvang.';
  @override
  String get downloadPaymentReceipt => 'Laai Betalingsbewys af';
  @override
  String get invoice => 'Faktuur';
  @override
  String get selectPropertyToSeeInvoice =>
      'Kies eiendom om die faktuurnommer te sien...';
  @override
  String get bankAccName => 'Bankrekeningnaam';
  @override
  String get bankName => 'Banknaam';
  @override
  String get bankAccNum => 'Bankrekeningnommer';
  @override
  String get thankYou => 'Dankie!';
  @override
  String get basicInfo => 'Basiese Inligting';
  @override
  String get descriptionPricing => 'Beskrywing & Prysbepaling';
  @override
  String get contact => 'Kontak';
  @override
  String get photos => 'Foto\'s';
  @override
  String get successfullySubmitted => 'Suksesvol ingedien!';
  @override
  String get editProperty => 'Wysig Eiendom';
  @override
  String get addNewProperty => 'Voeg Nuwe Eiendom by';
  @override
  String get propertyManageRequestSuccess =>
      'Jou advertensie is vir hersiening ingedien.';
  @override
  String get postAnotherProperty => 'Plaas Nog \'n Eiendom';
  @override
  String get browseYourProperty => 'Blaai Deur Jou Eiendom';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Stap '),
      step,
      const TextSpan(text: ' van '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Wat Sou Jy Graag Wil Plaas?';
  @override
  String get category => 'Kategorie';
  @override
  String get invalidCategory => 'Ongeldige Kategorie';
  @override
  String get unitNumber => 'Eenheidnommer';
  @override
  String get sqft => 'vk.vt.';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Eiendomsgrootte moet groter as nul wees';
  @override
  String get whatAreTheFacility => 'Wat is die fasiliteite?';
  @override
  String get whatAreTheAmenity => 'Wat is die geriewe?';
  @override
  String get parkingLot => 'Parkeerterrein';
  @override
  String get houseType => 'Huis tipe';
  @override
  String get value => 'Waarde';
  @override
  String get unitLotSize => 'Eenheid / Erfgrootte';
  @override
  String get landSize => 'Landgrootte';
  @override
  String get acres => 'akker(s)';
  @override
  String get roomSize => 'Kamergrootte';
  @override
  String get askTenantPreference => 'Wat is jou huurder voorkeur';
  @override
  String get couple => 'Paartjie';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Beskryf die ${propertyType}';
  @override
  String get adTitle => 'Advertensie Titel';
  @override
  String get minimumRentalPeriod => 'Minimum Huurperiode';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Nommer';
  @override
  String get hideOrDisplayEmail => 'Versteek of vertoon e-posadres';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Dankie dat jy op ${appName} geplaas het!';
  @override
  String get propertyList => 'Eiendomslys';
  @override
  String get newInviteRent => 'Nuwe Uitnodiging Huur';
  @override
  String get rentAgreement => 'Huurooreenkoms';
  @override
  String get rentDetails => 'Huur Besonderhede';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note('Wag asseblief vir die huurder om die uitnodiging te aanvaar.'),
    ],
  );
  @override
  String get rent => 'Huur';
  @override
  String get editTenant => 'Wysig Huurder';
  @override
  String get addNewTenant => 'Voeg Nuwe Huurder by';
  @override
  String get shareInstallLink => 'Deel Installeer skakel';
  @override
  String get tenantList => 'Huurderlys';
  @override
  String get editMaintenanceRequest => 'Wysig Onderhoudsversoek';
  @override
  String get addNewMaintenance => 'Voeg Nuwe Onderhoud by';
  @override
  String get landlordId => 'Verhuurder ID';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota '),
      note(
        'Jou ooreenkoms word tans hersien. Wag asseblief totdat die verhuurder jou huur goedkeur.',
      ),
    ],
  );
  @override
  String get editReview => 'Wysig Resensie';
  @override
  String get writeAReview => 'Skryf \'n resensie';
  @override
  String get selectRating => 'Kies Gradering';
  @override
  String get enterYourOpinion => 'Voer Jou Mening in';
  @override
  String get askToEnterReviewMsg => 'Voer asseblief \'n resensie boodskap in';
  @override
  String get pressBackAgainToExit => 'Druk weer terug om te verlaat.';
  @override
  String get selectPaymentMethod => 'Kies Betaalmetode';
  @override
  String get filter => 'Filter';
  @override
  String get perMonth => '/1 Maand';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Soek enigiets in ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsAf implements TranslationsExceptionsEn {
  _TranslationsExceptionsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong =>
      'Iets het verkeerd geloop, probeer asseblief weer';
  @override
  String get noNidPassport => 'Geen NID/Paspoort-beeld verskaf nie.';
  @override
  String get noRentPropertyFound =>
      'Geen huureiendom vir hierdie huurder gevind nie.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Geen eiendom gevind nie!\nProbeer asseblief met verskillende sleutelwoorde';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Geen intekeningplan gevind nie!\nHerlaai asseblief die bladsy en probeer weer.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Ongeldige ${dataType} info! Herlaai asseblief die bladsy en probeer weer.';
  @override
  String get invalidDownloadUrl => 'Ongeldige aflaai-url!';
  @override
  String failedToSaveFile({required String error}) =>
      'Kon nie die lêer stoor nie! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Fout by opening van die lêer! ${error}';
  @override
  String get noVehicleInfoProvided => 'Geen voertuiginligting verskaf nie.';
  @override
  String get yourApplicationRejected => 'Jou Aansoek is afgekeur';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintAf
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintAf._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintAf noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintAf._(_root);
  @override
  String get noImageProvided => 'Geen Beeld Verskaf nie';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundAf
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundAf._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Geen sekuriteitsdeposito gevind nie!\nJy kan asseblief die sekuriteitsdeposito\'s sien wanneer beskikbaar';
  @override
  String get noRentPaymentFound =>
      'Geen huurbetaling gevind nie!\nJy kan asseblief die huurbetalings sien wanneer beskikbaar';
  @override
  String get transactionSummaryApiException =>
      'Kon nie transaksie opsomming kry nie.';
  @override
  String get noWithdrawRequestFound =>
      'Geen versoek gevind nie!\nProbeer asseblief om \'n onttrekkingsversoek te skep om hier te sien.';
  @override
  String get withdrawRequestNotApproved =>
      'Hierdie onttrekkingsversoek is nie goedgekeur nie!.';
  @override
  String get nonZeroError =>
      'Voer asseblief \'n geldige bedrag groter as nul in.';
  @override
  String minAmountError({required String minValue}) =>
      'Die bedrag moet minstens ${minValue} wees.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Die bedrag mag nie ${maxValue} oorskry nie.';
  @override
  String get selectPaymentMethodHint => 'Kies asseblief eers \'n betaalmetode.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundAf
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundAf._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintAf refundRequestHint =
      _TranslationsExceptionsRefundRequestHintAf._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Kies asseblief die aantal ${value}';
  @override
  String get invalidDateRange => 'Ongeldige datumbereik.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} moet groter as nul wees.';
  @override
  late final _TranslationsExceptionsEditPropertyAf editProperty =
      _TranslationsExceptionsEditPropertyAf._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationAf rentInvitation =
      _TranslationsExceptionsRentInvitationAf._(_root);
  @override
  String get notenantFoundList =>
      'Geen huurders nie!\nProbeer asseblief om \'n huurder by te voeg om hier te sien.';
  @override
  String get noFeaturesProvided => 'Geen kenmerke verskaf nie.';
  @override
  String get noNotificationFound =>
      'Geen kennisgewing beskikbaar nie.\nJy kan jou kennisgewings hier sien wanneer beskikbaar.';
}

// Path: prompt
class _TranslationsPromptAf implements TranslationsPromptEn {
  _TranslationsPromptAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutAf logout = _TranslationsPromptLogoutAf._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationAf application =
      _TranslationsPromptApplicationAf._(_root);
  @override
  late final _TranslationsPromptLaborAf labor = _TranslationsPromptLaborAf._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestAf maintenanceRequest =
      _TranslationsPromptMaintenanceRequestAf._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodAf withdrawMethod =
      _TranslationsPromptWithdrawMethodAf._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesAf unsavedChanges =
      _TranslationsPromptUnsavedChangesAf._(_root);
  @override
  late final _TranslationsPromptPropertyAf property =
      _TranslationsPromptPropertyAf._(_root);
  @override
  late final _TranslationsPromptRentInvitationAf rentInvitation =
      _TranslationsPromptRentInvitationAf._(_root);
  @override
  late final _TranslationsPromptSessionExpiredAf sessionExpired =
      _TranslationsPromptSessionExpiredAf._(_root);
  @override
  late final _TranslationsPromptNoInternetAf noInternet =
      _TranslationsPromptNoInternetAf._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerAf permissionHandler =
      _TranslationsPromptPermissionHandlerAf._(_root);
  @override
  late final _TranslationsPromptImagePickerAf imagePicker =
      _TranslationsPromptImagePickerAf._(_root);
  @override
  late final _TranslationsPromptVerificationDialogAf verificationDialog =
      _TranslationsPromptVerificationDialogAf._(_root);
  @override
  late final _TranslationsPromptNotificationAf notification =
      _TranslationsPromptNotificationAf._(_root);
}

// Path: form
class _TranslationsFormAf implements TranslationsFormEn {
  _TranslationsFormAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameAf fullName =
      _TranslationsFormFullNameAf._(_root);
  @override
  late final _TranslationsFormEmailAf email = _TranslationsFormEmailAf._(_root);
  @override
  late final _TranslationsFormPasswordAf password =
      _TranslationsFormPasswordAf._(_root);
  @override
  late final _TranslationsFormConfirmPasswordAf confirmPassword =
      _TranslationsFormConfirmPasswordAf._(_root);
  @override
  late final _TranslationsFormMobileNumberAf mobileNumber =
      _TranslationsFormMobileNumberAf._(_root);
  @override
  late final _TranslationsFormAddress1Af address1 =
      _TranslationsFormAddress1Af._(_root);
  @override
  late final _TranslationsFormAddress2Af address2 =
      _TranslationsFormAddress2Af._(_root);
  @override
  late final _TranslationsFormPostalCodeAf postalCode =
      _TranslationsFormPostalCodeAf._(_root);
  @override
  late final _TranslationsFormCityAf city = _TranslationsFormCityAf._(_root);
  @override
  late final _TranslationsFormStateAf state = _TranslationsFormStateAf._(_root);
  @override
  late final _TranslationsFormCountryAf country = _TranslationsFormCountryAf._(
    _root,
  );
  @override
  late final _TranslationsFormOtpAf otp = _TranslationsFormOtpAf._(_root);
  @override
  late final _TranslationsFormTitleAf title = _TranslationsFormTitleAf._(_root);
  @override
  late final _TranslationsFormDateAf date = _TranslationsFormDateAf._(_root);
  @override
  late final _TranslationsFormReasonAf reason = _TranslationsFormReasonAf._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodAf withdrawMethod =
      _TranslationsFormWithdrawMethodAf._(_root);
  @override
  late final _TranslationsFormFileFieldAf fileField =
      _TranslationsFormFileFieldAf._(_root);
  @override
  late final _TranslationsFormNoteAf note = _TranslationsFormNoteAf._(_root);
  @override
  late final _TranslationsFormGenderAf gender = _TranslationsFormGenderAf._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldAf anyField =
      _TranslationsFormAnyFieldAf._(_root);
  @override
  late final _TranslationsFormAnyDropdownAf anyDropdown =
      _TranslationsFormAnyDropdownAf._(_root);
}

// Path: action
class _TranslationsActionAf implements TranslationsActionEn {
  _TranslationsActionAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Volgende';
  @override
  String get getStarted => 'Begin';
  @override
  String get skip => 'Slaan oor';
  @override
  String get select => 'Kies';
  @override
  String get save => 'Stoor';
  @override
  String get signIn => 'Meld Aan';
  @override
  String get signUp => 'Teken Aan';
  @override
  String get kContinue => 'Gaan voort';
  @override
  String get clearAll => 'Vee Alles Uit';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Stuur';
  @override
  String get pay => 'Betaal';
  @override
  String get remove => 'Verwyder';
  @override
  String get goBack => 'Gaan Terug';
  @override
  String get buyNow => 'Koop Nou';
  @override
  String get no => 'Nee';
  @override
  String get open => 'Oop';
  @override
  String get addProperty => 'Voeg Eiendom by';
  @override
  String get process => 'Verwerk';
  @override
  String get approve => 'Keur Goed';
  @override
  String get reject => 'Keur Af';
  @override
  String get viewRent => 'Bekyk Huur';
  @override
  String get openNavigationMenu => 'Maak navigasiemenu oop';
  @override
  String get seeAll => 'Sien Alles';
  @override
  String get update => 'Opdateer';
  @override
  String get printTransaction => 'Druk Transaksie';
  @override
  String get payoutRequest => 'Uitbetalingsversoek';
  @override
  String get addNew => '+ Voeg Nuwe by';
  @override
  String get sendRequest => 'Stuur Versoek';
  @override
  String get print => 'Druk';
  @override
  String get requestForRefund => 'Versoek Terugbetaling';
  @override
  String get previous => 'Vorige';
  @override
  String get delete => 'Verwyder';
  @override
  String get applyProperty => 'Doen Aansoek vir Eiendom';
  @override
  String get viewApplication => 'Bekyk Aansoek';
  @override
  String get inviteTenant => 'Nooi Huurder uit';
  @override
  String get inviteRent => 'Nooi Huur uit';
  @override
  String get cancel => 'Kanselleer';
  @override
  String get accept => 'Aanvaar';
  @override
  String get submit => 'Dien in';
  @override
  String get yes => 'Ja';
  @override
  String get okay => 'Okay';
  @override
  String get confirm => 'Bevestig';
  @override
  String get apply => 'Doen Aansoek';
  @override
  String get reset => 'Herstel';
  @override
  String get retry => 'Probeer Weer';
  @override
  String get viewAll => 'Sien alles';
}

// Path: pages
class _TranslationsPagesAf implements TranslationsPagesEn {
  _TranslationsPagesAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageAf language =
      _TranslationsPagesLanguageAf._(_root);
  @override
  late final _TranslationsPagesOnboardAf onboard =
      _TranslationsPagesOnboardAf._(_root);
  @override
  late final _TranslationsPagesSignInAf signIn = _TranslationsPagesSignInAf._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordAf forgotPassword =
      _TranslationsPagesForgotPasswordAf._(_root);
  @override
  late final _TranslationsPagesOtpVerificationAf otpVerification =
      _TranslationsPagesOtpVerificationAf._(_root);
  @override
  late final _TranslationsPagesResetPasswordAf resetPassword =
      _TranslationsPagesResetPasswordAf._(_root);
  @override
  late final _TranslationsPagesSignUpAf signUp = _TranslationsPagesSignUpAf._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeAf welcome =
      _TranslationsPagesWelcomeAf._(_root);
  @override
  late final _TranslationsPagesAboutUsAf aboutUs =
      _TranslationsPagesAboutUsAf._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsAf termsAndConditions =
      _TranslationsPagesTermsAndConditionsAf._(_root);
  @override
  late final _TranslationsPagesNotificationListAf notificationList =
      _TranslationsPagesNotificationListAf._(_root);
  @override
  late final _TranslationsPagesContactUsAf contactUs =
      _TranslationsPagesContactUsAf._(_root);
  @override
  late final _TranslationsPagesCancelRentingAf cancelRenting =
      _TranslationsPagesCancelRentingAf._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsAf invoiceDetails =
      _TranslationsPagesInvoiceDetailsAf._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentAf offlinePayment =
      _TranslationsPagesOfflinePaymentAf._(_root);
  @override
  late final _TranslationsPagesPaymentStatusAf paymentStatus =
      _TranslationsPagesPaymentStatusAf._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsAf propertyDetails =
      _TranslationsPagesPropertyDetailsAf._(_root);
  @override
  late final _TranslationsPagesSearchAf search = _TranslationsPagesSearchAf._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanAf subscriptionPlan =
      _TranslationsPagesSubscriptionPlanAf._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportAf
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportAf._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsAf implements TranslationsEnumsEn {
  _TranslationsEnumsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusAf propertyStatus =
      _TranslationsEnumsPropertyStatusAf._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeAf propertyType =
      _TranslationsEnumsPropertyTypeAf._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusAf applicationStatus =
      _TranslationsEnumsApplicationStatusAf._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusAf myRentStatus =
      _TranslationsEnumsMyRentStatusAf._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusAf maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusAf._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeAf tenantProfileType =
      _TranslationsEnumsTenantProfileTypeAf._(_root);
  @override
  late final _TranslationsEnumsTenantTypeAf tenantType =
      _TranslationsEnumsTenantTypeAf._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusAf paymentStatus =
      _TranslationsEnumsPaymentStatusAf._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsAf paymentOptions =
      _TranslationsEnumsPaymentOptionsAf._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeAf paymentType =
      _TranslationsEnumsPaymentTypeAf._(_root);
  @override
  late final _TranslationsEnumsGenderAf gender = _TranslationsEnumsGenderAf._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationAf ecRelation =
      _TranslationsEnumsEcRelationAf._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeAf vehicleType =
      _TranslationsEnumsVehicleTypeAf._(_root);
  @override
  late final _TranslationsEnumsSortByAf sortBy = _TranslationsEnumsSortByAf._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeAf residentialType =
      _TranslationsEnumsResidentialTypeAf._(_root);
  @override
  late final _TranslationsEnumsFloorRangeAf floorRange =
      _TranslationsEnumsFloorRangeAf._(_root);
  @override
  late final _TranslationsEnumsFurnishingsAf furnishings =
      _TranslationsEnumsFurnishingsAf._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeAf commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeAf._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeAf landPropertyType =
      _TranslationsEnumsLandPropertyTypeAf._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeAf residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeAf._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodAf minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodAf._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterAf dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterAf._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileAf
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Foon No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoAf
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Voertuiginligting';
  @override
  String get optional => 'Voertuiginligting (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoAf
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Voertuigregistrasienr.';
  @override
  String get short => 'Registrasienr.';
  @override
  String get alt => 'Plaatnr.';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintAf
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Geen aansoek gevind nie!\n${subject} sal hier vertoon word wanneer beskikbaar.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsAf subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsAf._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintAf
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Geen eiendom gevind nie!\nProbeer asseblief om \'n eiendom by te voeg om hier te sien.';
  @override
  String get tenantRecommended =>
      'Geen Aanbevole Eiendomme gevind nie\nProbeer asseblief later weer.';
  @override
  String get tenantAllProperty =>
      'Eiendomme nie beskikbaar nie\nProbeer asseblief later weer.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundAf
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Geen ${status} onderhoud gevind nie.';
  @override
  String get tenant =>
      'Geen onderhoud gevind nie! Jy kan \'n onderhoudsversoek skep om dit hier te sien.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundAf
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Geen ${status} terugbetalingsversoek gevind nie!\nJy kan terugbetalingsversoeke hier sien wanneer beskikbaar.';
  @override
  String get tenant =>
      'Geen terugbetalingsversoek gevind nie!\nJy kan \'n terugbetalingsversoek skep om dit hier te sien.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintAf
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Huurder sal die terugbetaling goedkeur wanneer hy die geld teruggekry het';
  @override
  String get tenantReqSuccess =>
      'Ons sal die Terugbetalingsversoek hersien en dit binne 24 uur goedkeur.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyAf
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Huureiendom verander. Dit moet slegs geldig (effektief) wees vir die volgende maand se huurbetaling.';
  @override
  String get deleteOnRent =>
      'Jou eiendom word reeds deur \'n huurder gehuur. Kan dit nie uitvee voordat die huurder eers verwyder is nie';
  @override
  String get alreayRented =>
      'Hierdie eiendom is reeds verhuur. Probeer asseblief later weer.\nOf jy kan die verhuurder kontak vir meer inligting.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationAf
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Geen huuruitnodiging gevind nie!\nProbeer asseblief om \'n huuruitnodiging te skep om hier te sien.';
  @override
  String get tenantNoRentInvitation =>
      'Geen huuruitnodiging gevind nie!\nJy kan huuruitnodigings hier sien wanneer beskikbaar.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutAf implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Is jy seker jy wil uitlog?';
}

// Path: prompt.application
class _TranslationsPromptApplicationAf
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Waarom keur jy hierdie aansoek af?';
  @override
  late final _TranslationsPromptApplicationApplicationSentAf applicationSent =
      _TranslationsPromptApplicationApplicationSentAf._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborAf implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteAf delete =
      _TranslationsPromptLaborDeleteAf._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestAf
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Waarom word hierdie versoek afgekeur?';
  @override
  String get processTitle =>
      'Is jy seker jy wil hierdie Onderhoudsversoek Verwerk?';
  @override
  String get completeTitle => 'Werk voltooi?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodAf
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Verwyder Onttrekkingsmetode?';
  @override
  String get deleteDescription =>
      'Is jy seker jy wil hierdie onttrekkingsmetode verwyder?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesAf
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Is jy seker jy wil teruggaan?';
  @override
  String get message => 'Velde wat verander is, sal nie gestoor word nie!';
}

// Path: prompt.property
class _TranslationsPromptPropertyAf implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteAf delete =
      _TranslationsPromptPropertyDeleteAf._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationAf
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveAf
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveAf._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptAf tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptAf._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredAf
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sessie verstryk';
  @override
  String get message => 'Jou sessie het verstryk. Meld asseblief weer aan';
  @override
  String get action => 'Meld Aan';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetAf
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Geen Internetverbinding';
  @override
  String get message =>
      'Kontroleer asseblief jou Wi-Fi mobiele netwerkverbinding en probeer weer';
  @override
  String get action => 'Probeer Weer';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerAf
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Toestemming word vereis!';
  @override
  String get message =>
      'Jy moet toestemmings in die programinstellings verleen. Wil jy nou die instellings oopmaak?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerAf
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kies Opsie';
  @override
  String get gallery => 'Gallery';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogAf
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifieer Jou E-pos';
  @override
  String get message => 'Ons het \'n verifikasiekode e-pos gestuur';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} na ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationAf
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Vee kennisgewings uit?';
  @override
  String get clearMessage => 'Is jy seker jy wil alle kennisgewings uitvee?';
}

// Path: form.fullName
class _TranslationsFormFullNameAf implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Voer ${_root.common.fullName} in';
  @override
  late final _TranslationsFormFullNameErrorsAf errors =
      _TranslationsFormFullNameErrorsAf._(_root);
}

// Path: form.email
class _TranslationsFormEmailAf implements TranslationsFormEmailEn {
  _TranslationsFormEmailAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Voer jou ${_root.common.email} in';
  @override
  late final _TranslationsFormEmailErrorsAf errors =
      _TranslationsFormEmailErrorsAf._(_root);
}

// Path: form.password
class _TranslationsFormPasswordAf implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsAf errors =
      _TranslationsFormPasswordErrorsAf._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordAf
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Bevestig ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsAf errors =
      _TranslationsFormConfirmPasswordErrorsAf._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberAf
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsAf errors =
      _TranslationsFormMobileNumberErrorsAf._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Af implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Af._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Huisnommer en straatnaam';
  @override
  late final _TranslationsFormAddress1ErrorsAf errors =
      _TranslationsFormAddress1ErrorsAf._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Af implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Af._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Appartement, suite, eenheid, ens';
  @override
  late final _TranslationsFormAddress2ErrorsAf errors =
      _TranslationsFormAddress2ErrorsAf._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeAf implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Voer ${_root.common.postalCode} in';
  @override
  late final _TranslationsFormPostalCodeErrorsAf errors =
      _TranslationsFormPostalCodeErrorsAf._(_root);
}

// Path: form.city
class _TranslationsFormCityAf implements TranslationsFormCityEn {
  _TranslationsFormCityAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Voer ${_root.common.city} naam in.';
  @override
  late final _TranslationsFormCityErrorsAf errors =
      _TranslationsFormCityErrorsAf._(_root);
}

// Path: form.state
class _TranslationsFormStateAf implements TranslationsFormStateEn {
  _TranslationsFormStateAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Voer ${_root.common.state} naam in.';
  @override
  late final _TranslationsFormStateErrorsAf errors =
      _TranslationsFormStateErrorsAf._(_root);
}

// Path: form.country
class _TranslationsFormCountryAf implements TranslationsFormCountryEn {
  _TranslationsFormCountryAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Kies ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsAf errors =
      _TranslationsFormCountryErrorsAf._(_root);
}

// Path: form.otp
class _TranslationsFormOtpAf implements TranslationsFormOtpEn {
  _TranslationsFormOtpAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsAf errors =
      _TranslationsFormOtpErrorsAf._(_root);
}

// Path: form.title
class _TranslationsFormTitleAf implements TranslationsFormTitleEn {
  _TranslationsFormTitleAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Titel';
  @override
  String get hint => 'Voer titel in';
  @override
  late final _TranslationsFormTitleErrorsAf errors =
      _TranslationsFormTitleErrorsAf._(_root);
}

// Path: form.date
class _TranslationsFormDateAf implements TranslationsFormDateEn {
  _TranslationsFormDateAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Kies ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsAf errors =
      _TranslationsFormDateErrorsAf._(_root);
}

// Path: form.reason
class _TranslationsFormReasonAf implements TranslationsFormReasonEn {
  _TranslationsFormReasonAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Rede';
  @override
  String get hint => 'Voer rede in';
  @override
  late final _TranslationsFormReasonErrorsAf errors =
      _TranslationsFormReasonErrorsAf._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodAf
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Kies ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsAf errors =
      _TranslationsFormWithdrawMethodErrorsAf._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldAf implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Laai ${label} op';
  @override
  late final _TranslationsFormFileFieldErrorsAf errors =
      _TranslationsFormFileFieldErrorsAf._(_root);
}

// Path: form.note
class _TranslationsFormNoteAf implements TranslationsFormNoteEn {
  _TranslationsFormNoteAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Voer ${_root.form.note.label(note: note)} in';
  @override
  late final _TranslationsFormNoteErrorsAf errors =
      _TranslationsFormNoteErrorsAf._(_root);
}

// Path: form.gender
class _TranslationsFormGenderAf implements TranslationsFormGenderEn {
  _TranslationsFormGenderAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Kies ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsAf errors =
      _TranslationsFormGenderErrorsAf._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldAf implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Voer ${_root.form.anyField.label(label: label)} in';
  @override
  late final _TranslationsFormAnyFieldErrorsAf errors =
      _TranslationsFormAnyFieldErrorsAf._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownAf implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Kies ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsAf errors =
      _TranslationsFormAnyDropdownErrorsAf._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageAf implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardAf implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataAf onboardData =
      _TranslationsPagesOnboardOnboardDataAf._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInAf implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Welkom Terug';
  @override
  String get subtitle => 'Meld Nou Aan om \'n wonderlike reis te begin.';
  @override
  late final _TranslationsPagesSignInExtraAf extra =
      _TranslationsPagesSignInExtraAf._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordAf
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wagwoord vergeet';
  @override
  String get subtitle => 'Voer jou e-posadres in om jou wagwoord te herstel.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationAf
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifikasie';
  @override
  String subtitle({required String email}) =>
      '4-syfer pen is na jou e-posadres gestuur. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraAf extra =
      _TranslationsPagesOtpVerificationExtraAf._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordAf
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Herstel wagwoord';
  @override
  String get subtitle =>
      'Herstel jou wagwoord om te herstel en by jou rekening aan te meld';
  @override
  late final _TranslationsPagesResetPasswordExtraAf extra =
      _TranslationsPagesResetPasswordExtraAf._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpAf implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Skep \'n Rekening';
  @override
  String get subtitle => 'Teken Nou Aan om \'n wonderlike reis te begin';
  @override
  late final _TranslationsPagesSignUpExtraAf extra =
      _TranslationsPagesSignUpExtraAf._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeAf implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wie is jy?';
  @override
  String get subtitle => 'Kies asseblief die opsie hieronder.';
  @override
  late final _TranslationsPagesWelcomeExtraAf extra =
      _TranslationsPagesWelcomeExtraAf._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsAf implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsAf
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListAf
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Kennisgewings';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsAf implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraAf extra =
      _TranslationsPagesContactUsExtraAf._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingAf
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Waarom ${_root.common.cancelRenting} jy?';
  @override
  late final _TranslationsPagesCancelRentingFormAf form =
      _TranslationsPagesCancelRentingFormAf._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsAf
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentAf
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Vanlyn Betaling';
  @override
  late final _TranslationsPagesOfflinePaymentFormAf form =
      _TranslationsPagesOfflinePaymentFormAf._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraAf extra =
      _TranslationsPagesOfflinePaymentExtraAf._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusAf
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessAf success =
      _TranslationsPagesPaymentStatusSuccessAf._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailAf fail =
      _TranslationsPagesPaymentStatusFailAf._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsAf
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraAf extra =
      _TranslationsPagesPropertyDetailsExtraAf._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchAf implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Soek';
  @override
  late final _TranslationsPagesSearchExtraAf extra =
      _TranslationsPagesSearchExtraAf._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanAf
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Kies jou Plan';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraAf extra =
      _TranslationsPagesSubscriptionPlanExtraAf._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportAf
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Totale Onderhoudskoste: '),
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
class _TranslationsEnumsPropertyStatusAf
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Alle Eiendomme';
  @override
  String get pending => 'Hangende';
  @override
  String get active => 'Aktief';
  @override
  String get inactive => 'Onaktief';
  @override
  String get rejected => 'Afgekeur';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeAf
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Woonstel/Condominium';
  @override
  String get house => 'Huis';
  @override
  String get commercialProperty => 'Kommersiële Eiendom';
  @override
  String get land => 'Grond';
  @override
  String get room => 'Kamer';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusAf
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'Hangende';
  @override
  String get processing => 'Verwerking';
  @override
  String get approved => 'Goedgekeur';
  @override
  String get rejected => 'Afgekeur';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusAf
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Hangende';
  @override
  String get processing => 'Verwerking';
  @override
  String get active => 'Aktief';
  @override
  String get expired => 'Verstreke';
  @override
  String get cancelled => 'Gekanselleer';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusAf
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Hangende';
  @override
  String get processing => 'Verwerking';
  @override
  String get rejected => 'Afgekeur';
  @override
  String get completed => 'Voltooi';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeAf
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privaat (Individueel)';
  @override
  String get company => 'Maatskappy';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeAf implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Nuwe Huurder';
  @override
  String get activeTenant => 'Aktiewe Huurder';
  @override
  String get expiredTenant => 'Verstreke Huurder';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusAf
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'Hangende';
  @override
  String get paid => 'Betaal';
  @override
  String get unpaid => 'Onbetaal';
  @override
  String get rejected => 'Afgekeur';
  @override
  String get refund => 'Terugbetaling';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsAf
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Aanlyn Betaling';
  @override
  String get offlinePayment => 'Vanlyn Betaling';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeAf
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Sekuriteitsdeposito';
  @override
  String get rentPayment => 'Huur Betaling';
  @override
  String get subscription => 'Subskripsie';
}

// Path: enums.gender
class _TranslationsEnumsGenderAf implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Manlik';
  @override
  String get female => 'Vroulik';
  @override
  String get other => 'Ander';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationAf implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Vrou';
  @override
  String get parent => 'Ouer';
  @override
  String get friend => 'Vriend';
  @override
  String get brother => 'Broer';
  @override
  String get sister => 'Suster';
  @override
  String get child => 'Kind';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeAf
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Motor';
  @override
  String get motorcycles => 'Motorfietse';
  @override
  String get lorry => 'Lorrie';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByAf implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Laag na Hoog';
  @override
  String get highToLow => 'Hoog na Laag';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeAf
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Plat';
  @override
  String get apartment => 'Woonstel';
  @override
  String get condominium => 'Condominium';
  @override
  String get serviceResidence => 'Dienswoonstel';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Duplex';
  @override
  String get townhouseCondo => 'Meenthuis Condominium';
  @override
  String get others => 'Ander';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeAf implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Hoog';
  @override
  String get medium => 'Medium';
  @override
  String get low => 'Laag';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsAf
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Ten volle Gemeubileer';
  @override
  String get partiallyFurnished => 'Gedeeltelik Gemeubileer';
  @override
  String get notFurnished => 'Nie Gemeubileer nie';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeAf
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Kantoorruimte';
  @override
  String get retailSpace => 'Kleinhandelruimte';
  @override
  String get shopLot => 'Winkelperseel';
  @override
  String get warehouseFactory => 'Pakhuis / Fabriek';
  @override
  String get hotelResort => 'Hotel / Oord';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Ander';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeAf
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Residensieel';
  @override
  String get industrial => 'Industrieel';
  @override
  String get agricultural => 'Landboukundig';
  @override
  String get commercial => 'Kommersieel';
  @override
  String get mixedDevelopment => 'Gemengde Ontwikkeling';
  @override
  String get others => 'Ander';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeAf
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Condo / Dienswoonstel / Penthouse';
  @override
  String get apartment => 'Woonstel / Plat';
  @override
  String get house => 'Huise';
  @override
  String get shoplot => 'Winkelperseel';
  @override
  String get sharing => 'Deel \'n huis / Plat';
  @override
  String get others => 'Ander';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodAf
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 Maande';
  @override
  String get oneYear => '1 Jaar';
  @override
  String get oneAndHalfYears => '1.5 Jaar';
  @override
  String get twoYears => '2 Jaar';
  @override
  String get twoAndHalfYears => '2.5 Jaar';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterAf
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Daagliks';
  @override
  String get weekly => 'Weekliks';
  @override
  String get monthly => 'Maandeliks';
  @override
  String get yearly => 'Jaarliks';
  @override
  String get custom => 'Gepasmaak';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsAf
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Jou aansoek';
  @override
  String get landlord => 'Huurder se aansoek';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentAf
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Aansoek suksesvol gestuur!';
  @override
  String get sucessDescription =>
      'Jy kan hierdie aansoek in jou aansoeklys sien';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteAf
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verwyder Arbeid?';
  @override
  String get description => 'Is jy seker jy wil hierdie arbeid verwyder?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteAf
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verwyder Eiendom?';
  @override
  String get message => 'Is jy seker jy wil hierdie eiendom verwyder?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveAf
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Is jy seker jy wil hierdie huur goedkeur?';
  @override
  String get description =>
      'Maak seker jy het die ooreenkoms wat deur die huurder onderteken is, hersien.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptAf
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Is jy seker jy wil hierdie uitnodiging aanvaar?';
  @override
  String get description =>
      'Maak seker jy het die ooreenkoms pdf-lêer afgelaai!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsAf
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.common.fullName} in';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsAf implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.common.email} adres in';
  @override
  String get invalid => '⦸ Ongeldige E-pos, Probeer asseblief Weer';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsAf
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.common.password} in';
  @override
  String minLength({required Object count}) =>
      'Wagwoord moet ten minste ${count} karakters wees!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsAf
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.common.password} in';
  @override
  String get notMatched => 'Bevestig wagwoord stem nie ooreen nie!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsAf
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.common.mobileNumber} in';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsAf
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.form.address1.label} in';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsAf
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.form.address2.label} in';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsAf
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.common.postalCode} in';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsAf implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.common.city} naam in.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsAf implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief jou ${_root.common.state} naam in.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsAf
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Kies asseblief jou ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsAf implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief die otp in.';
  @override
  String get invalid => 'Voer asseblief korrekte otp in.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsAf implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief titel in';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsAf implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Kies asseblief ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsAf
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief rede in';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsAf
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Kies asseblief ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsAf
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Kies asseblief ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsAf implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Voer asseblief ${_root.form.note.label(note: note)} in';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsAf
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Kies asseblief ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsAf
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Voer asseblief ${_root.form.anyField.label(label: label)} in';
  @override
  String get invalid => 'Voer asseblief geldige @form.anyField.label in';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsAf
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Kies asseblief ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Kies asseblief geldige @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataAf
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Af data1 =
      _TranslationsPagesOnboardOnboardDataData1Af._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Af data2 =
      _TranslationsPagesOnboardOnboardDataData2Af._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Af data3 =
      _TranslationsPagesOnboardOnboardDataData3Af._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraAf
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Onthou My';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Het jy nie \'n rekening nie? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraAf
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendAf codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendAf._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraAf
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogAf dialog =
      _TranslationsPagesResetPasswordExtraDialogAf._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraAf
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Het jy \'n rekening? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraAf
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Bestuur jou eie eiendomme';
  @override
  String get tenantTag => 'Meld aan by jou huurrekening';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraAf
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Boodskap...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormAf
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonAf reason =
      _TranslationsPagesCancelRentingFormReasonAf._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormAf
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteAf paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteAf._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraAf
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Betaal Bedrag: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Rekeninghouer Naam';
  @override
  String get accountNumber => 'Rekeningnommer';
  @override
  String get swiftCode => 'Swift Kode';
  @override
  String get branch => 'Tak';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Kies slegs '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' Of '),
      fileType('DOC'),
      const TextSpan(text: ' formaat lêers. Lêergrootte '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessAf
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Bekyk Faktuur';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Ons sal die betaling hersien en dit binne 24 uur goedkeur.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailAf
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Probeer Weer';
  @override
  String get title => 'Oeps! Betaling Misluk';
  @override
  String get description =>
      'Jou transaksie het misluk as gevolg van \'n tegniese fout.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraAf
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

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
      const TextSpan(text: 'Kenmerke '),
      fa('(Fasiliteite & Geriewe)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Kies Huurperiode';
  @override
  String get writeAReview => '+ Skryf \'n resensie';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraAf
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Soek vir erwe, woonstelle, kamers...';
  @override
  String get noRecentSearch => 'Jy het geen onlangse soektogte nie.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraAf
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Subskripsiebetaling suksesvol.\nJy kan nou toegang kry tot die geabonneerde kenmerke.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Af
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Af._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vind Jou Eiendom';
  @override
  String get description =>
      'Ons het dit maklik gemaak om \'n plek te vind wat by jou lewe pas - of dit nou \'n kamer, \'n woonstel of \'n huis is.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Af
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Af._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Woonstel In Die Stad';
  @override
  String get description =>
      'Ons spaar jou tyd deur jou vinnig te pas by die perfekte eiendom voordat dit weg is, sodat jy jou nuwe huis kan geniet, of jou eie gratis kan lys.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Af
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Af._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Jou Gerieflike Huis';
  @override
  String get description =>
      'As jy op soek is na \'n plek om te woon, kyk dan na ons huise te huur. Ons het \'n wye verskeidenheid huise waaruit jy regoor die land kan kies.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendAf
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Kode word gestuur oor ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Stuur kode weer'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogAf
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Suksesvol verander!';
  @override
  String get subtitle =>
      'Meld aan met jou nuwe wagwoord.\nHerlei jou na Aanmeld...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonAf
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Skryf rede';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsAf errors =
      _TranslationsPagesCancelRentingFormReasonErrorsAf._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteAf
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Betalingsnota (${_root.common.optional})';
  @override
  String get hint => 'Voer \'n bietjie teks in...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsAf
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsAf._(this._root);

  final TranslationsAf _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer asseblief die rede vir die huurkansellasie in';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsAf {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profiel';
      case 'common.language':
        return 'Taal';
      case 'common.subscriptionPlan':
        return 'Intekeningplan';
      case 'common.contactUs':
        return 'Kontak Ons';
      case 'common.termsAndConditions':
        return 'Terme en Voorwaardes';
      case 'common.aboutUs':
        return 'Oor Ons';
      case 'common.logout':
        return 'Teken uit';
      case 'common.editProfile':
        return 'Wysig Profiel';
      case 'common.fullName':
        return 'Volle Naam';
      case 'common.email':
        return 'E-pos';
      case 'common.mobileNumber':
        return 'Mobiele Nommer';
      case 'common.address':
        return 'Adres';
      case 'common.postalCode':
        return 'Poskode';
      case 'common.city':
        return 'Stad';
      case 'common.country':
        return 'Land';
      case 'common.state':
        return 'Staat';
      case 'common.password':
        return 'Wagwoord';
      case 'common.forgotPassword':
        return 'Wagwoord vergeet';
      case 'common.tenant':
        return 'Huurder';
      case 'common.landlord':
        return 'Verhuurder';
      case 'common.cancelRenting':
        return 'Kanselleer Verhuring';
      case 'common.startDate':
        return 'Begindatum';
      case 'common.endDate':
        return 'Einddatum';
      case 'common.fromDate':
        return 'Vanaf Datum';
      case 'common.toDate':
        return 'Tot Datum';
      case 'common.online':
        return 'Aanlyn';
      case 'common.bankList':
        return 'Banklys';
      case 'common.withdrawMethod':
        return 'Onttrekkingsmetode';
      case 'common.uploadPaymentReceipt':
        return 'Laai Betalingsbewys op';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Die betaling vereis handmatige goedkeuring deur die admin binne',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 hours.'),
          ],
        );
      case 'common.reviews':
        return 'Resensies';
      case 'common.description':
        return 'Beskrywing';
      case 'common.about':
        return 'Oor';
      case 'common.propertyTypes':
        return 'Eiendomstipes';
      case 'common.features':
        return 'Kenmerke';
      case 'common.floorPlans':
        return 'Vloerplanne';
      case 'common.buildingDetails':
        return 'Geboubesonderhede';
      case 'common.buildingName':
        return 'Gebounaam';
      case 'common.propertyAddress':
        return 'Eiendomsadres';
      case 'common.completionYear':
        return 'Voltooiingsjaar';
      case 'common.lotNumber':
        return 'Erfnommer';
      case 'common.residentialType':
        return 'Residensiële Tipe';
      case 'common.furnishings':
        return 'Meubilering';
      case 'common.floorRange':
        return 'Vloerreeks';
      case 'common.bedrooms':
        return 'Slaapkamers';
      case 'common.bathrooms':
        return 'Badkamers';
      case 'common.propertySize':
        return 'Eiendomsgrootte';
      case 'common.rentalPeriod':
        return 'Huurperiode';
      case 'common.securityDeposit':
        return 'Sekuriteitsdeposito';
      case 'common.utilityBill':
        return 'Nutsrekening';
      case 'common.facilities':
        return 'Fasiliteite';
      case 'common.amenities':
        return 'Geriewe';
      case 'common.expiringReason':
        return 'Rede vir Verstryking';
      case 'common.tenantDetails':
        return 'Huurderbesonderhede';
      case 'common.typeOfTenant':
        return 'Tipe Huurder';
      case 'common.tenantName':
        return 'Huurdernaam';
      case 'common.nidPassport':
        return 'NID/Paspoort';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Huurder ID';
      case 'common.dateOfBirth':
        return 'Geboortedatum';
      case 'common.gender':
        return 'Geslag';
      case 'common.nominee':
        return 'Genomineerde';
      case 'common.name':
        return 'Naam';
      case 'common.optional':
        return 'Opsioneel';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Foon No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Noodkontak';
      case 'common.relation':
        return 'Verhouding';
      case 'common.relationWith':
        return '${_root.common.relation} Met';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} Jou';
      case 'common.company':
        return 'Maatskappy';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Werkplek';
      case 'common.officePhoneNo':
        return 'Kantoor Telefoonnommer';
      case 'common.officeMobileNo':
        return 'Kantoor ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Voertuig';
      case 'common.vehiclesInfo.plain':
        return 'Voertuiginligting';
      case 'common.vehiclesInfo.optional':
        return 'Voertuiginligting (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Tipe';
      case 'common.vehicleRegistrationNo.normal':
        return 'Voertuigregistrasienr.';
      case 'common.vehicleRegistrationNo.short':
        return 'Registrasienr.';
      case 'common.vehicleRegistrationNo.alt':
        return 'Plaatnr.';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Merk';
      case 'common.rentProperty':
        return 'Huur Eiendom';
      case 'common.propertyDetails':
        return 'Eiendomsbesonderhede';
      case 'common.propertyId':
        return 'Eiendoms ID';
      case 'common.propertyType':
        return 'Eiendoms Tipe';
      case 'common.propertyName':
        return 'Eiendomsnaam';
      case 'common.paymentDetails':
        return 'Betalingsbesonderhede';
      case 'common.monthlyRent':
        return 'Maandelikse Huur';
      case 'common.thisMonthPayment':
        return 'Hierdie Maand Betaling';
      case 'common.totalPaidRent':
        return 'Totale Betaalde Huur';
      case 'common.dueRent':
        return 'Verskuldigde Huur';
      case 'common.rentStartDate':
        return 'Huur ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Huur ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'Huurooreenkoms PDF';
      case 'common.noFile':
        return 'Geen Lêer';
      case 'common.tenantImageOp':
        return 'Huurderbeeld ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Voeg Nuwe Voertuie by';
      case 'common.uploadNidPassport':
        return 'Laai NID/Paspoort op';
      case 'common.nidPassportUploadNote':
        return 'Slegs lêertipe-beeld sal aanvaar word. Lêerlimiet tot 2.5 MB.';
      case 'common.search':
        return 'Soek';
      case 'common.sortBy':
        return 'Sorteer Volgens';
      case 'common.subscription':
        return 'Subskripsie';
      case 'common.downloading':
        return 'Laai tans af...';
      case 'common.downloadSuccess':
        return 'Lêer suksesvol afgelaai!';
      case 'common.addPropertyBannerTitle':
        return 'Wil Jy Jou Eiendom Uitverhuur?';
      case 'common.application':
        return 'Aansoek';
      case 'common.tenantHasPaidDeposit':
        return 'Huurder het die deposito betaal.';
      case 'common.askProcessingRentApplication':
        return 'Is jy seker jy wil hierdie versoek vir huureiendom verwerk?';
      case 'common.dateAndTime':
        return 'Datum en Tyd';
      case 'common.applicationDetails':
        return 'Aansoekbesonderhede';
      case 'common.depositStatus':
        return 'Depositostatus';
      case 'common.uploadRentAgreement':
        return 'Laai Huurooreenkoms op';
      case 'common.uploadFilePDF':
        return 'Laai Lêer op (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Kies asseblief \'n ooreenkomsdokumentlêer.';
      case 'common.landlordRentAgreementPDF':
        return 'Verhuurder Huurooreenkoms PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Huurder Huurooreenkoms PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Keur die aansoek slegs goed nadat die huurder \'n depositobetaling gemaak het.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Rede vir Afkeuring';
      case 'common.youveRejectedThisApplication':
        return 'Jy het hierdie aansoek afgekeur';
      case 'common.landlordDetails':
        return 'Verhuurderbesonderhede';
      case 'common.landlordName':
        return 'Verhuurdernaam';
      case 'common.downloadRentAgreement':
        return 'Laai Huurooreenkoms af';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Aanvaar '),
            toc('Terme en Voorwaardes'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Laai die ooreenkoms asseblief af en lees dit. Stuur die ondertekende ooreenkoms aan die verhuurder via WhatsApp of e-pos.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Verhuurder keur die aansoek goed wanneer die huurder die sekuriteit, nutsdienste en een maand vooruitbetaalde huurgeld betaal.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Huurooreenkoms (PDF) '),
            complete('Volledige Ooreenkoms'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Verhuurder keur die aansoek goed wanneer die huurder die sekuriteit, nutsdienste en een maand vooruitbetaalde huurgeld betaal.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Aansoeklys';
      case 'common.viewDetails':
        return 'Bekyk Besonderhede';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Tuis';
      case 'common.dashboard':
        return 'Kontroleskerm';
      case 'common.tenants':
        return 'Huurders';
      case 'common.maintenance':
        return 'Onderhoud';
      case 'common.maintenanceList':
        return 'Onderhoudslys';
      case 'common.maintenanceReport':
        return 'Onderhoudsverslag';
      case 'common.labor':
        return 'Arbeid';
      case 'common.applications':
        return 'Aansoeke';
      case 'common.rentInvitation':
        return 'Huur Uitnodiging';
      case 'common.payment':
        return 'Betaling';
      case 'common.rentPayment':
        return 'Huur Betaling';
      case 'common.depositUtilityPayment':
        return 'Deposito & Nutsdienste Betaling';
      case 'common.refundRequest':
        return 'Terugbetalingsversoek';
      case 'common.withdrawRequest':
        return 'Onttrekkingsversoek';
      case 'common.myProperty':
        return 'My Eiendom';
      case 'common.myRent':
        return 'My Huur';
      case 'common.wishlist':
        return 'Wenslys';
      case 'common.properties':
        return 'Eiendomme';
      case 'common.allProperties':
        return 'Alle Eiendomme';
      case 'common.totalPropery':
        return 'Totale Eiendom';
      case 'common.occupied':
        return 'Beset';
      case 'common.vacant':
        return 'Leegstaande';
      case 'common.accounting':
        return 'Rekeningkunde';
      case 'common.totalIncome':
        return 'Totale Inkomste';
      case 'common.totalExpense':
        return 'Totale Uitgawe';
      case 'common.currentBalance':
        return 'Huidige Balans';
      case 'common.totalWithdrawal':
        return 'Totaal (Onttrekking)';
      case 'common.totalProperties':
        return 'Totale Eiendomme';
      case 'common.totalTenant':
        return 'Totale Huurder';
      case 'common.totalRentPaid':
        return 'Totale Huur Betaal';
      case 'common.totalRentDue':
        return 'Totale Huur Verskuldig';
      case 'common.totalApplication':
        return 'Totale Aansoek';
      case 'common.pendingApplication':
        return 'Hangende Aansoek';
      case 'common.processingApplication':
        return 'Aansoek word Verwerk';
      case 'common.approveApplication':
        return 'Keur Aansoek Goed';
      case 'common.rejectApplication':
        return 'Keur Aansoek Af';
      case 'common.maintenanceCost':
        return 'Onderhoudskoste';
      case 'common.transactionSummary':
        return 'Transaksie Opsomming';
      case 'common.maintenanceRequest':
        return 'Onderhoudsversoek';
      case 'common.notifications':
        return 'Kennisgewings';
      case 'common.myProperties':
        return 'My Eiendomme';
      case 'common.recommendationProperties':
        return 'Aanbevole Eiendomme';
      case 'common.laborList':
        return 'Arbeidslys';
      case 'common.addLabor':
        return 'Voeg Arbeid by';
      case 'common.laborDetails':
        return 'Arbeidsbesonderhede';
      case 'common.laborSalary':
        return 'Arbeidsalaris';
      case 'common.editLabor':
        return 'Wysig Arbeid';
      case 'common.addNewLabor':
        return 'Voeg Nuwe Arbeid by';
      case 'common.enterAmount':
        return 'Voer Bedrag in';
      case 'common.maintenanceDetails':
        return 'Onderhoudsbesonderhede';
      case 'common.laborName':
        return 'Arbeidsnaam';
      case 'common.comment':
        return 'Opmerking';
      case 'common.image':
        return 'Beeld';
      case 'common.complete':
        return 'Voltooi';
      case 'common.details':
        return 'Besonderhede';
      case 'common.title':
        return 'Titel';
      case 'common.date':
        return 'Datum';
      case 'common.reason':
        return 'Rede';
      case 'common.edit':
        return 'Wysig';
      case 'common.property':
        return 'Eiendom';
      case 'common.completeYourProfile':
        return 'Voltooi Jou Profiel';
      case 'common.profileImage':
        return 'Profielbeeld';
      case 'common.imagePickHint':
        return 'Slegs JPEG & PNG Beeld met maksimum grootte van 120x120 pixels.';
      case 'common.invoiceId':
        return 'Faktuur ID';
      case 'common.depositAmount':
        return 'Deposito Bedrag';
      case 'common.landlordPhone':
        return 'Verhuurderfoon';
      case 'common.rentalAdvance':
        return 'Huur (Vooruit)';
      case 'common.totalAmount':
        return 'Totale Bedrag';
      case 'common.rentalAmount':
        return 'Huur Bedrag';
      case 'common.adminCharge':
        return 'Admin Heffing';
      case 'common.editAccount':
        return 'Wysig Rekening';
      case 'common.addNewAccount':
        return 'Voeg Nuwe Rekening by';
      case 'common.transactionId':
        return 'Transaksie ID';
      case 'common.transactionType':
        return 'Transaksie Tipe';
      case 'common.requestDate':
        return 'Versoek Datum';
      case 'common.amount':
        return 'Bedrag';
      case 'common.fee':
        return 'Fooi';
      case 'common.paymentStatus':
        return 'Betalingstatus';
      case 'common.generatedTime':
        return 'Gegenereerde Tyd';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text: 'Dit is \'n stelsel gegenereerde verslag van ',
            ),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Onttrekkingsgeskiedenis';
      case 'common.history':
        return 'Geskiedenis';
      case 'common.withdrawAmount':
        return 'Onttrekkingsbedrag';
      case 'common.availableBalance':
        return 'Beskikbare Balans';
      case 'common.withdrawCharge':
        return 'Onttrekkingsfooi';
      case 'common.paymentMethod':
        return 'Betaalmetode';
      case 'common.requestSendSuccess':
        return 'Versoek suksesvol gestuur!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Betalingsbewys suksesvol ingedien.';
      case 'common.refundReason':
        return 'Terugbetalingsrede';
      case 'common.note':
        return 'Nota';
      case 'common.refundReceiveSuccess':
        return 'Terugbetaling suksesvol ontvang.';
      case 'common.downloadPaymentReceipt':
        return 'Laai Betalingsbewys af';
      case 'common.invoice':
        return 'Faktuur';
      case 'common.selectPropertyToSeeInvoice':
        return 'Kies eiendom om die faktuurnommer te sien...';
      case 'common.bankAccName':
        return 'Bankrekeningnaam';
      case 'common.bankName':
        return 'Banknaam';
      case 'common.bankAccNum':
        return 'Bankrekeningnommer';
      case 'common.thankYou':
        return 'Dankie!';
      case 'common.basicInfo':
        return 'Basiese Inligting';
      case 'common.descriptionPricing':
        return 'Beskrywing & Prysbepaling';
      case 'common.contact':
        return 'Kontak';
      case 'common.photos':
        return 'Foto\'s';
      case 'common.successfullySubmitted':
        return 'Suksesvol ingedien!';
      case 'common.editProperty':
        return 'Wysig Eiendom';
      case 'common.addNewProperty':
        return 'Voeg Nuwe Eiendom by';
      case 'common.propertyManageRequestSuccess':
        return 'Jou advertensie is vir hersiening ingedien.';
      case 'common.postAnotherProperty':
        return 'Plaas Nog \'n Eiendom';
      case 'common.browseYourProperty':
        return 'Blaai Deur Jou Eiendom';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Stap '),
                step,
                const TextSpan(text: ' van '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Wat Sou Jy Graag Wil Plaas?';
      case 'common.category':
        return 'Kategorie';
      case 'common.invalidCategory':
        return 'Ongeldige Kategorie';
      case 'common.unitNumber':
        return 'Eenheidnommer';
      case 'common.sqft':
        return 'vk.vt.';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Eiendomsgrootte moet groter as nul wees';
      case 'common.whatAreTheFacility':
        return 'Wat is die fasiliteite?';
      case 'common.whatAreTheAmenity':
        return 'Wat is die geriewe?';
      case 'common.parkingLot':
        return 'Parkeerterrein';
      case 'common.houseType':
        return 'Huis tipe';
      case 'common.value':
        return 'Waarde';
      case 'common.unitLotSize':
        return 'Eenheid / Erfgrootte';
      case 'common.landSize':
        return 'Landgrootte';
      case 'common.acres':
        return 'akker(s)';
      case 'common.roomSize':
        return 'Kamergrootte';
      case 'common.askTenantPreference':
        return 'Wat is jou huurder voorkeur';
      case 'common.couple':
        return 'Paartjie';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            'Beskryf die ${propertyType}';
      case 'common.adTitle':
        return 'Advertensie Titel';
      case 'common.minimumRentalPeriod':
        return 'Minimum Huurperiode';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Nommer';
      case 'common.hideOrDisplayEmail':
        return 'Versteek of vertoon e-posadres';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Dankie dat jy op ${appName} geplaas het!';
      case 'common.propertyList':
        return 'Eiendomslys';
      case 'common.newInviteRent':
        return 'Nuwe Uitnodiging Huur';
      case 'common.rentAgreement':
        return 'Huurooreenkoms';
      case 'common.rentDetails':
        return 'Huur Besonderhede';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Wag asseblief vir die huurder om die uitnodiging te aanvaar.',
            ),
          ],
        );
      case 'common.rent':
        return 'Huur';
      case 'common.editTenant':
        return 'Wysig Huurder';
      case 'common.addNewTenant':
        return 'Voeg Nuwe Huurder by';
      case 'common.shareInstallLink':
        return 'Deel Installeer skakel';
      case 'common.tenantList':
        return 'Huurderlys';
      case 'common.editMaintenanceRequest':
        return 'Wysig Onderhoudsversoek';
      case 'common.addNewMaintenance':
        return 'Voeg Nuwe Onderhoud by';
      case 'common.landlordId':
        return 'Verhuurder ID';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota '),
            note(
              'Jou ooreenkoms word tans hersien. Wag asseblief totdat die verhuurder jou huur goedkeur.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Wysig Resensie';
      case 'common.writeAReview':
        return 'Skryf \'n resensie';
      case 'common.selectRating':
        return 'Kies Gradering';
      case 'common.enterYourOpinion':
        return 'Voer Jou Mening in';
      case 'common.askToEnterReviewMsg':
        return 'Voer asseblief \'n resensie boodskap in';
      case 'common.pressBackAgainToExit':
        return 'Druk weer terug om te verlaat.';
      case 'common.selectPaymentMethod':
        return 'Kies Betaalmetode';
      case 'common.filter':
        return 'Filter';
      case 'common.perMonth':
        return '/1 Maand';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => 'Soek enigiets in ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Iets het verkeerd geloop, probeer asseblief weer';
      case 'exceptions.noNidPassport':
        return 'Geen NID/Paspoort-beeld verskaf nie.';
      case 'exceptions.noRentPropertyFound':
        return 'Geen huureiendom vir hierdie huurder gevind nie.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Geen eiendom gevind nie!\nProbeer asseblief met verskillende sleutelwoorde';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Geen intekeningplan gevind nie!\nHerlaai asseblief die bladsy en probeer weer.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Ongeldige ${dataType} info! Herlaai asseblief die bladsy en probeer weer.';
      case 'exceptions.invalidDownloadUrl':
        return 'Ongeldige aflaai-url!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Kon nie die lêer stoor nie! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Fout by opening van die lêer! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Geen voertuiginligting verskaf nie.';
      case 'exceptions.yourApplicationRejected':
        return 'Jou Aansoek is afgekeur';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Geen aansoek gevind nie!\n${subject} sal hier vertoon word wanneer beskikbaar.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Jou aansoek';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Huurder se aansoek';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Geen eiendom gevind nie!\nProbeer asseblief om \'n eiendom by te voeg om hier te sien.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Geen Aanbevole Eiendomme gevind nie\nProbeer asseblief later weer.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Eiendomme nie beskikbaar nie\nProbeer asseblief later weer.';
      case 'exceptions.noImageProvided':
        return 'Geen Beeld Verskaf nie';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Geen ${status} onderhoud gevind nie.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Geen onderhoud gevind nie! Jy kan \'n onderhoudsversoek skep om dit hier te sien.';
      case 'exceptions.noDepositFound':
        return 'Geen sekuriteitsdeposito gevind nie!\nJy kan asseblief die sekuriteitsdeposito\'s sien wanneer beskikbaar';
      case 'exceptions.noRentPaymentFound':
        return 'Geen huurbetaling gevind nie!\nJy kan asseblief die huurbetalings sien wanneer beskikbaar';
      case 'exceptions.transactionSummaryApiException':
        return 'Kon nie transaksie opsomming kry nie.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Geen versoek gevind nie!\nProbeer asseblief om \'n onttrekkingsversoek te skep om hier te sien.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Hierdie onttrekkingsversoek is nie goedgekeur nie!.';
      case 'exceptions.nonZeroError':
        return 'Voer asseblief \'n geldige bedrag groter as nul in.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Die bedrag moet minstens ${minValue} wees.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Die bedrag mag nie ${maxValue} oorskry nie.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Kies asseblief eers \'n betaalmetode.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Geen ${status} terugbetalingsversoek gevind nie!\nJy kan terugbetalingsversoeke hier sien wanneer beskikbaar.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Geen terugbetalingsversoek gevind nie!\nJy kan \'n terugbetalingsversoek skep om dit hier te sien.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Huurder sal die terugbetaling goedkeur wanneer hy die geld teruggekry het';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Ons sal die Terugbetalingsversoek hersien en dit binne 24 uur goedkeur.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Kies asseblief die aantal ${value}';
      case 'exceptions.invalidDateRange':
        return 'Ongeldige datumbereik.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) => '${value} moet groter as nul wees.';
      case 'exceptions.editProperty.rentalChange':
        return 'Huureiendom verander. Dit moet slegs geldig (effektief) wees vir die volgende maand se huurbetaling.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Jou eiendom word reeds deur \'n huurder gehuur. Kan dit nie uitvee voordat die huurder eers verwyder is nie';
      case 'exceptions.editProperty.alreayRented':
        return 'Hierdie eiendom is reeds verhuur. Probeer asseblief later weer.\nOf jy kan die verhuurder kontak vir meer inligting.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Geen huuruitnodiging gevind nie!\nProbeer asseblief om \'n huuruitnodiging te skep om hier te sien.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Geen huuruitnodiging gevind nie!\nJy kan huuruitnodigings hier sien wanneer beskikbaar.';
      case 'exceptions.notenantFoundList':
        return 'Geen huurders nie!\nProbeer asseblief om \'n huurder by te voeg om hier te sien.';
      case 'exceptions.noFeaturesProvided':
        return 'Geen kenmerke verskaf nie.';
      case 'exceptions.noNotificationFound':
        return 'Geen kennisgewing beskikbaar nie.\nJy kan jou kennisgewings hier sien wanneer beskikbaar.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Is jy seker jy wil uitlog?';
      case 'prompt.application.rejectTitle':
        return 'Waarom keur jy hierdie aansoek af?';
      case 'prompt.application.applicationSent.successfully':
        return 'Aansoek suksesvol gestuur!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Jy kan hierdie aansoek in jou aansoeklys sien';
      case 'prompt.labor.delete.title':
        return 'Verwyder Arbeid?';
      case 'prompt.labor.delete.description':
        return 'Is jy seker jy wil hierdie arbeid verwyder?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Waarom word hierdie versoek afgekeur?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Is jy seker jy wil hierdie Onderhoudsversoek Verwerk?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Werk voltooi?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Verwyder Onttrekkingsmetode?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Is jy seker jy wil hierdie onttrekkingsmetode verwyder?';
      case 'prompt.unsavedChanges.title':
        return 'Is jy seker jy wil teruggaan?';
      case 'prompt.unsavedChanges.message':
        return 'Velde wat verander is, sal nie gestoor word nie!';
      case 'prompt.property.delete.title':
        return 'Verwyder Eiendom?';
      case 'prompt.property.delete.message':
        return 'Is jy seker jy wil hierdie eiendom verwyder?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Is jy seker jy wil hierdie huur goedkeur?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Maak seker jy het die ooreenkoms wat deur die huurder onderteken is, hersien.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Is jy seker jy wil hierdie uitnodiging aanvaar?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Maak seker jy het die ooreenkoms pdf-lêer afgelaai!';
      case 'prompt.sessionExpired.title':
        return 'Sessie verstryk';
      case 'prompt.sessionExpired.message':
        return 'Jou sessie het verstryk. Meld asseblief weer aan';
      case 'prompt.sessionExpired.action':
        return 'Meld Aan';
      case 'prompt.noInternet.title':
        return 'Geen Internetverbinding';
      case 'prompt.noInternet.message':
        return 'Kontroleer asseblief jou Wi-Fi mobiele netwerkverbinding en probeer weer';
      case 'prompt.noInternet.action':
        return 'Probeer Weer';
      case 'prompt.permissionHandler.title':
        return 'Toestemming word vereis!';
      case 'prompt.permissionHandler.message':
        return 'Jy moet toestemmings in die programinstellings verleen. Wil jy nou die instellings oopmaak?';
      case 'prompt.imagePicker.title':
        return 'Kies Opsie';
      case 'prompt.imagePicker.gallery':
        return 'Gallery';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Verifieer Jou E-pos';
      case 'prompt.verificationDialog.message':
        return 'Ons het \'n verifikasiekode e-pos gestuur';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} na ${email}';
      case 'prompt.notification.clearTitle':
        return 'Vee kennisgewings uit?';
      case 'prompt.notification.clearMessage':
        return 'Is jy seker jy wil alle kennisgewings uitvee?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Voer ${_root.common.fullName} in';
      case 'form.fullName.errors.required':
        return 'Voer asseblief jou ${_root.common.fullName} in';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Voer jou ${_root.common.email} in';
      case 'form.email.errors.required':
        return 'Voer asseblief jou ${_root.common.email} adres in';
      case 'form.email.errors.invalid':
        return '⦸ Ongeldige E-pos, Probeer asseblief Weer';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Voer asseblief jou ${_root.common.password} in';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Wagwoord moet ten minste ${count} karakters wees!';
      case 'form.confirmPassword.label':
        return 'Bevestig ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Voer asseblief jou ${_root.common.password} in';
      case 'form.confirmPassword.errors.notMatched':
        return 'Bevestig wagwoord stem nie ooreen nie!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Voer asseblief jou ${_root.common.mobileNumber} in';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Huisnommer en straatnaam';
      case 'form.address1.errors.required':
        return 'Voer asseblief jou ${_root.form.address1.label} in';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Appartement, suite, eenheid, ens';
      case 'form.address2.errors.required':
        return 'Voer asseblief jou ${_root.form.address2.label} in';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Voer ${_root.common.postalCode} in';
      case 'form.postalCode.errors.required':
        return 'Voer asseblief jou ${_root.common.postalCode} in';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Voer ${_root.common.city} naam in.';
      case 'form.city.errors.required':
        return 'Voer asseblief jou ${_root.common.city} naam in.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Voer ${_root.common.state} naam in.';
      case 'form.state.errors.required':
        return 'Voer asseblief jou ${_root.common.state} naam in.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Kies ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Kies asseblief jou ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Voer asseblief die otp in.';
      case 'form.otp.errors.invalid':
        return 'Voer asseblief korrekte otp in.';
      case 'form.title.label':
        return 'Titel';
      case 'form.title.hint':
        return 'Voer titel in';
      case 'form.title.errors.required':
        return 'Voer asseblief titel in';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Kies ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Kies asseblief ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Rede';
      case 'form.reason.hint':
        return 'Voer rede in';
      case 'form.reason.errors.required':
        return 'Voer asseblief rede in';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Kies ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Kies asseblief ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Laai ${label} op';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Kies asseblief ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Voer ${_root.form.note.label(note: note)} in';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Voer asseblief ${_root.form.note.label(note: note)} in';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Kies ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Kies asseblief ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Voer ${_root.form.anyField.label(label: label)} in';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Voer asseblief ${_root.form.anyField.label(label: label)} in';
      case 'form.anyField.errors.invalid':
        return 'Voer asseblief geldige @form.anyField.label in';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Kies ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Kies asseblief ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Kies asseblief geldige @form.anyDropdown.label';
      case 'action.next':
        return 'Volgende';
      case 'action.getStarted':
        return 'Begin';
      case 'action.skip':
        return 'Slaan oor';
      case 'action.select':
        return 'Kies';
      case 'action.save':
        return 'Stoor';
      case 'action.signIn':
        return 'Meld Aan';
      case 'action.signUp':
        return 'Teken Aan';
      case 'action.kContinue':
        return 'Gaan voort';
      case 'action.clearAll':
        return 'Vee Alles Uit';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Stuur';
      case 'action.pay':
        return 'Betaal';
      case 'action.remove':
        return 'Verwyder';
      case 'action.goBack':
        return 'Gaan Terug';
      case 'action.buyNow':
        return 'Koop Nou';
      case 'action.no':
        return 'Nee';
      case 'action.open':
        return 'Oop';
      case 'action.addProperty':
        return 'Voeg Eiendom by';
      case 'action.process':
        return 'Verwerk';
      case 'action.approve':
        return 'Keur Goed';
      case 'action.reject':
        return 'Keur Af';
      case 'action.viewRent':
        return 'Bekyk Huur';
      case 'action.openNavigationMenu':
        return 'Maak navigasiemenu oop';
      case 'action.seeAll':
        return 'Sien Alles';
      case 'action.update':
        return 'Opdateer';
      case 'action.printTransaction':
        return 'Druk Transaksie';
      case 'action.payoutRequest':
        return 'Uitbetalingsversoek';
      case 'action.addNew':
        return '+ Voeg Nuwe by';
      case 'action.sendRequest':
        return 'Stuur Versoek';
      case 'action.print':
        return 'Druk';
      case 'action.requestForRefund':
        return 'Versoek Terugbetaling';
      case 'action.previous':
        return 'Vorige';
      case 'action.delete':
        return 'Verwyder';
      case 'action.applyProperty':
        return 'Doen Aansoek vir Eiendom';
      case 'action.viewApplication':
        return 'Bekyk Aansoek';
      case 'action.inviteTenant':
        return 'Nooi Huurder uit';
      case 'action.inviteRent':
        return 'Nooi Huur uit';
      case 'action.cancel':
        return 'Kanselleer';
      case 'action.accept':
        return 'Aanvaar';
      case 'action.submit':
        return 'Dien in';
      case 'action.yes':
        return 'Ja';
      case 'action.okay':
        return 'Okay';
      case 'action.confirm':
        return 'Bevestig';
      case 'action.apply':
        return 'Doen Aansoek';
      case 'action.reset':
        return 'Herstel';
      case 'action.retry':
        return 'Probeer Weer';
      case 'action.viewAll':
        return 'Sien alles';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Vind Jou Eiendom';
      case 'pages.onboard.onboardData.data1.description':
        return 'Ons het dit maklik gemaak om \'n plek te vind wat by jou lewe pas - of dit nou \'n kamer, \'n woonstel of \'n huis is.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Woonstel In Die Stad';
      case 'pages.onboard.onboardData.data2.description':
        return 'Ons spaar jou tyd deur jou vinnig te pas by die perfekte eiendom voordat dit weg is, sodat jy jou nuwe huis kan geniet, of jou eie gratis kan lys.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Jou Gerieflike Huis';
      case 'pages.onboard.onboardData.data3.description':
        return 'As jy op soek is na \'n plek om te woon, kyk dan na ons huise te huur. Ons het \'n wye verskeidenheid huise waaruit jy regoor die land kan kies.';
      case 'pages.signIn.title':
        return 'Welkom Terug';
      case 'pages.signIn.subtitle':
        return 'Meld Nou Aan om \'n wonderlike reis te begin.';
      case 'pages.signIn.extra.rememberMe':
        return 'Onthou My';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Het jy nie \'n rekening nie? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Wagwoord vergeet';
      case 'pages.forgotPassword.subtitle':
        return 'Voer jou e-posadres in om jou wagwoord te herstel.';
      case 'pages.otpVerification.title':
        return 'Verifikasie';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-syfer pen is na jou e-posadres gestuur. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Kode word gestuur oor ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Stuur kode weer'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Herstel wagwoord';
      case 'pages.resetPassword.subtitle':
        return 'Herstel jou wagwoord om te herstel en by jou rekening aan te meld';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Suksesvol verander!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Meld aan met jou nuwe wagwoord.\nHerlei jou na Aanmeld...';
      case 'pages.signUp.title':
        return 'Skep \'n Rekening';
      case 'pages.signUp.subtitle':
        return 'Teken Nou Aan om \'n wonderlike reis te begin';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Het jy \'n rekening? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Wie is jy?';
      case 'pages.welcome.subtitle':
        return 'Kies asseblief die opsie hieronder.';
      case 'pages.welcome.extra.landlordTag':
        return 'Bestuur jou eie eiendomme';
      case 'pages.welcome.extra.tenantTag':
        return 'Meld aan by jou huurrekening';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Kennisgewings';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Boodskap...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Waarom ${_root.common.cancelRenting} jy?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Skryf rede';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Voer asseblief die rede vir die huurkansellasie in';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Vanlyn Betaling';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Betalingsnota (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Voer \'n bietjie teks in...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Betaal Bedrag: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Rekeninghouer Naam';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Rekeningnommer';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift Kode';
      case 'pages.offlinePayment.extra.branch':
        return 'Tak';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Kies slegs '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' Of '),
            fileType('DOC'),
            const TextSpan(text: ' formaat lêers. Lêergrootte '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Bekyk Faktuur';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Ons sal die betaling hersien en dit binne 24 uur goedkeur.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Probeer Weer';
      case 'pages.paymentStatus.fail.title':
        return 'Oeps! Betaling Misluk';
      case 'pages.paymentStatus.fail.description':
        return 'Jou transaksie het misluk as gevolg van \'n tegniese fout.';
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
            const TextSpan(text: 'Kenmerke '),
            fa('(Fasiliteite & Geriewe)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Kies Huurperiode';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Skryf \'n resensie';
      case 'pages.search.appbarTitle':
        return 'Soek';
      case 'pages.search.extra.hint':
        return 'Soek vir erwe, woonstelle, kamers...';
      case 'pages.search.extra.noRecentSearch':
        return 'Jy het geen onlangse soektogte nie.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Kies jou Plan';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Subskripsiebetaling suksesvol.\nJy kan nou toegang kry tot die geabonneerde kenmerke.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Totale Onderhoudskoste: '),
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
        return 'Alle Eiendomme';
      case 'enums.propertyStatus.pending':
        return 'Hangende';
      case 'enums.propertyStatus.active':
        return 'Aktief';
      case 'enums.propertyStatus.inactive':
        return 'Onaktief';
      case 'enums.propertyStatus.rejected':
        return 'Afgekeur';
      case 'enums.propertyType.apartmentCondominium':
        return 'Woonstel/Condominium';
      case 'enums.propertyType.house':
        return 'Huis';
      case 'enums.propertyType.commercialProperty':
        return 'Kommersiële Eiendom';
      case 'enums.propertyType.land':
        return 'Grond';
      case 'enums.propertyType.room':
        return 'Kamer';
      case 'enums.applicationStatus.all':
        return 'Alle';
      case 'enums.applicationStatus.pending':
        return 'Hangende';
      case 'enums.applicationStatus.processing':
        return 'Verwerking';
      case 'enums.applicationStatus.approved':
        return 'Goedgekeur';
      case 'enums.applicationStatus.rejected':
        return 'Afgekeur';
      case 'enums.myRentStatus.pending':
        return 'Hangende';
      case 'enums.myRentStatus.processing':
        return 'Verwerking';
      case 'enums.myRentStatus.active':
        return 'Aktief';
      case 'enums.myRentStatus.expired':
        return 'Verstreke';
      case 'enums.myRentStatus.cancelled':
        return 'Gekanselleer';
      case 'enums.maintenanceStatus.pending':
        return 'Hangende';
      case 'enums.maintenanceStatus.processing':
        return 'Verwerking';
      case 'enums.maintenanceStatus.rejected':
        return 'Afgekeur';
      case 'enums.maintenanceStatus.completed':
        return 'Voltooi';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privaat (Individueel)';
      case 'enums.tenantProfileType.company':
        return 'Maatskappy';
      case 'enums.tenantType.newTenant':
        return 'Nuwe Huurder';
      case 'enums.tenantType.activeTenant':
        return 'Aktiewe Huurder';
      case 'enums.tenantType.expiredTenant':
        return 'Verstreke Huurder';
      case 'enums.paymentStatus.all':
        return 'Alle';
      case 'enums.paymentStatus.pending':
        return 'Hangende';
      case 'enums.paymentStatus.paid':
        return 'Betaal';
      case 'enums.paymentStatus.unpaid':
        return 'Onbetaal';
      case 'enums.paymentStatus.rejected':
        return 'Afgekeur';
      case 'enums.paymentStatus.refund':
        return 'Terugbetaling';
      case 'enums.paymentOptions.onlinePayment':
        return 'Aanlyn Betaling';
      case 'enums.paymentOptions.offlinePayment':
        return 'Vanlyn Betaling';
      case 'enums.paymentType.securityDeposit':
        return 'Sekuriteitsdeposito';
      case 'enums.paymentType.rentPayment':
        return 'Huur Betaling';
      case 'enums.paymentType.subscription':
        return 'Subskripsie';
      case 'enums.gender.male':
        return 'Manlik';
      case 'enums.gender.female':
        return 'Vroulik';
      case 'enums.gender.other':
        return 'Ander';
      case 'enums.ecRelation.wife':
        return 'Vrou';
      case 'enums.ecRelation.parent':
        return 'Ouer';
      case 'enums.ecRelation.friend':
        return 'Vriend';
      case 'enums.ecRelation.brother':
        return 'Broer';
      case 'enums.ecRelation.sister':
        return 'Suster';
      case 'enums.ecRelation.child':
        return 'Kind';
      case 'enums.vehicleType.car':
        return 'Motor';
      case 'enums.vehicleType.motorcycles':
        return 'Motorfietse';
      case 'enums.vehicleType.lorry':
        return 'Lorrie';
      case 'enums.sortBy.lowToHigh':
        return 'Laag na Hoog';
      case 'enums.sortBy.highToLow':
        return 'Hoog na Laag';
      case 'enums.residentialType.flat':
        return 'Plat';
      case 'enums.residentialType.apartment':
        return 'Woonstel';
      case 'enums.residentialType.condominium':
        return 'Condominium';
      case 'enums.residentialType.serviceResidence':
        return 'Dienswoonstel';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Duplex';
      case 'enums.residentialType.townhouseCondo':
        return 'Meenthuis Condominium';
      case 'enums.residentialType.others':
        return 'Ander';
      case 'enums.floorRange.high':
        return 'Hoog';
      case 'enums.floorRange.medium':
        return 'Medium';
      case 'enums.floorRange.low':
        return 'Laag';
      case 'enums.furnishings.fullyFurnished':
        return 'Ten volle Gemeubileer';
      case 'enums.furnishings.partiallyFurnished':
        return 'Gedeeltelik Gemeubileer';
      case 'enums.furnishings.notFurnished':
        return 'Nie Gemeubileer nie';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Kantoorruimte';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Kleinhandelruimte';
      case 'enums.commercialPropertyType.shopLot':
        return 'Winkelperseel';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Pakhuis / Fabriek';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Oord';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Ander';
      case 'enums.landPropertyType.residential':
        return 'Residensieel';
      case 'enums.landPropertyType.industrial':
        return 'Industrieel';
      case 'enums.landPropertyType.agricultural':
        return 'Landboukundig';
      case 'enums.landPropertyType.commercial':
        return 'Kommersieel';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Gemengde Ontwikkeling';
      case 'enums.landPropertyType.others':
        return 'Ander';
      case 'enums.residentPropertyType.condo':
        return 'Condo / Dienswoonstel / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Woonstel / Plat';
      case 'enums.residentPropertyType.house':
        return 'Huise';
      case 'enums.residentPropertyType.shoplot':
        return 'Winkelperseel';
      case 'enums.residentPropertyType.sharing':
        return 'Deel \'n huis / Plat';
      case 'enums.residentPropertyType.others':
        return 'Ander';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 Maande';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 Jaar';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1.5 Jaar';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 Jaar';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2.5 Jaar';
      case 'enums.dropdownDateFilter.daily':
        return 'Daagliks';
      case 'enums.dropdownDateFilter.weekly':
        return 'Weekliks';
      case 'enums.dropdownDateFilter.monthly':
        return 'Maandeliks';
      case 'enums.dropdownDateFilter.yearly':
        return 'Jaarliks';
      case 'enums.dropdownDateFilter.custom':
        return 'Gepasmaak';
      default:
        return null;
    }
  }
}
