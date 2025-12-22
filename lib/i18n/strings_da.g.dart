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
class TranslationsDa implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsDa({
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
             locale: AppLocale.da,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <da>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsDa _root = this; // ignore: unused_field

  @override
  TranslationsDa $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsDa(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonDa common = _TranslationsCommonDa._(_root);
  @override
  late final _TranslationsExceptionsDa exceptions = _TranslationsExceptionsDa._(
    _root,
  );
  @override
  late final _TranslationsPromptDa prompt = _TranslationsPromptDa._(_root);
  @override
  late final _TranslationsFormDa form = _TranslationsFormDa._(_root);
  @override
  late final _TranslationsActionDa action = _TranslationsActionDa._(_root);
  @override
  late final _TranslationsPagesDa pages = _TranslationsPagesDa._(_root);
  @override
  late final _TranslationsEnumsDa enums = _TranslationsEnumsDa._(_root);
}

// Path: common
class _TranslationsCommonDa implements TranslationsCommonEn {
  _TranslationsCommonDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Sprog';
  @override
  String get subscriptionPlan => 'Abonnementsplan';
  @override
  String get contactUs => 'Kontakt os';
  @override
  String get termsAndConditions => 'Vilkår og betingelser';
  @override
  String get aboutUs => 'Om os';
  @override
  String get logout => 'Log ud';
  @override
  String get editProfile => 'Rediger profil';
  @override
  String get fullName => 'Fulde navn';
  @override
  String get email => 'E-mail';
  @override
  String get mobileNumber => 'Mobilnummer';
  @override
  String get address => 'Adresse';
  @override
  String get postalCode => 'Postnummer';
  @override
  String get city => 'By';
  @override
  String get country => 'Land';
  @override
  String get state => 'Stat';
  @override
  String get password => 'Adgangskode';
  @override
  String get forgotPassword => 'Glemt adgangskode';
  @override
  String get tenant => 'Lejer';
  @override
  String get landlord => 'Udlejer';
  @override
  String get cancelRenting => 'Annuller leje';
  @override
  String get startDate => 'Startdato';
  @override
  String get endDate => 'Slutdato';
  @override
  String get fromDate => 'Fra dato';
  @override
  String get toDate => 'Til dato';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Bankliste';
  @override
  String get withdrawMethod => 'Udbetalingsmetode';
  @override
  String get uploadPaymentReceipt => 'Upload betalingskvittering';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Bemærk: '),
      note('Betalingen kræver manuel godkendelse af administratoren indenfor'),
      const TextSpan(text: ' '),
      duraion('24~48 timer.'),
    ],
  );
  @override
  String get reviews => 'Anmeldelser';
  @override
  String get description => 'Beskrivelse';
  @override
  String get about => 'Om';
  @override
  String get propertyTypes => 'Ejendomstyper';
  @override
  String get features => 'Funktioner';
  @override
  String get floorPlans => 'Plantegninger';
  @override
  String get buildingDetails => 'Bygningsdetaljer';
  @override
  String get buildingName => 'Bygningsnavn';
  @override
  String get propertyAddress => 'Ejendomsadresse';
  @override
  String get completionYear => 'Færdiggørelsesår';
  @override
  String get lotNumber => 'Lotnummer';
  @override
  String get residentialType => 'Boligtype';
  @override
  String get furnishings => 'Møblering';
  @override
  String get floorRange => 'Etageområde';
  @override
  String get bedrooms => 'Soveværelser';
  @override
  String get bathrooms => 'Badeværelser';
  @override
  String get propertySize => 'Ejendomsstørrelse';
  @override
  String get rentalPeriod => 'Lejeperiode';
  @override
  String get securityDeposit => 'Depositum';
  @override
  String get utilityBill => 'Forbrugsregning';
  @override
  String get facilities => 'Faciliteter';
  @override
  String get amenities => 'Faciliteter';
  @override
  String get expiringReason => 'Udløbsårsag';
  @override
  String get tenantDetails => 'Lejerdetaljer';
  @override
  String get typeOfTenant => 'Lejertype';
  @override
  String get tenantName => 'Lejernavn';
  @override
  String get nidPassport => 'NID/Pas';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Lejer-ID';
  @override
  String get dateOfBirth => 'Fødselsdato';
  @override
  String get gender => 'Køn';
  @override
  String get nominee => 'Nomineret';
  @override
  String get name => 'Navn';
  @override
  String get optional => 'Valgfrit';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileDa nomineeMobile =
      _TranslationsCommonNomineeMobileDa._(_root);
  @override
  String get emergencyContact => 'Kontaktperson i nødstilfælde';
  @override
  String get relation => 'Relation';
  @override
  String get relationWith => '${_root.common.relation} Med';
  @override
  String get relationWithYou => '${_root.common.relation} Med Dig';
  @override
  String get company => 'Firma';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} CVR-nr.';
  @override
  String get workplace => 'Arbejdsplads';
  @override
  String get officePhoneNo => 'Kontor telefonnummer';
  @override
  String get officeMobileNo => 'Kontor ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Køretøj';
  @override
  late final _TranslationsCommonVehiclesInfoDa vehiclesInfo =
      _TranslationsCommonVehiclesInfoDa._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoDa vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoDa._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Mærke';
  @override
  String get rentProperty => 'Lej ejendom';
  @override
  String get propertyDetails => 'Ejendomsdetaljer';
  @override
  String get propertyId => 'Ejendoms-ID';
  @override
  String get propertyType => 'Ejendomstype';
  @override
  String get propertyName => 'Ejendomsnavn';
  @override
  String get paymentDetails => 'Betalingsdetaljer';
  @override
  String get monthlyRent => 'Månedlig leje';
  @override
  String get thisMonthPayment => 'Denne måneds betaling';
  @override
  String get totalPaidRent => 'Samlet betalt leje';
  @override
  String get dueRent => 'Skyldig leje';
  @override
  String get rentStartDate => 'Leje ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Leje ${_root.common.endDate}';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'Lejekontrakt PDF';
  @override
  String get noFile => 'Ingen fil';
  @override
  String get tenantImageOp => 'Lejerbillede ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Tilføj nyt køretøj';
  @override
  String get uploadNidPassport => 'Upload NID/Pas';
  @override
  String get nidPassportUploadNote =>
      'Kun billedfiler vil blive accepteret. Filstørrelsen må højst være 2,5 MB.';
  @override
  String get search => 'Søg';
  @override
  String get sortBy => 'Sortér efter';
  @override
  String get subscription => 'Abonnement';
  @override
  String get downloading => 'Downloader...';
  @override
  String get downloadSuccess => 'Fil downloadet!';
  @override
  String get addPropertyBannerTitle => 'Ønsker du at udleje din ejendom?';
  @override
  String get application => 'Ansøgning';
  @override
  String get tenantHasPaidDeposit => 'Lejer har betalt depositum.';
  @override
  String get askProcessingRentApplication =>
      'Er du sikker på, at du vil behandle denne anmodning om lejebolig?';
  @override
  String get dateAndTime => 'Dato og tid';
  @override
  String get applicationDetails => 'Ansøgningsdetaljer';
  @override
  String get depositStatus => 'Depositumsstatus';
  @override
  String get uploadRentAgreement => 'Upload lejekontrakt';
  @override
  String get uploadFilePDF => 'Upload fil (PDF)';
  @override
  String get askSelectRentAgreement => 'Vælg en aftaledokumentfil.';
  @override
  String get landlordRentAgreementPDF => 'Udlejers lejekontrakt PDF';
  @override
  String get tenantRentAgreementPDF => 'Lejers lejekontrakt PDF';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Bemærk: '),
          note('Godkend kun ansøgningen, efter at lejer har betalt depositum.'),
        ],
      );
  @override
  String get reasonOfRejection => 'Årsag til afvisning';
  @override
  String get youveRejectedThisApplication => 'Du har afvist denne ansøgning';
  @override
  String get landlordDetails => 'Udlejerdetaljer';
  @override
  String get landlordName => 'Udlejernavn';
  @override
  String get downloadRentAgreement => 'Download lejekontrakt';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Acceptér '),
      toc('Vilkår og betingelser'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Bemærk: '),
      note(
        'Download og læs aftalen. Send den underskrevne aftale til udlejer via WhatsApp eller e-mail.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Bemærk: '),
      note(
        'Udlejer godkender ansøgningen, når lejer betaler sikkerheds-, forbrugs- og en måneds forudbetalt leje.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Lejekontrakt (PDF) '),
          complete('Fuldstændig aftale'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Bemærk: '),
      note(
        'Udlejer godkender ansøgningen, når lejer betaler sikkerheds-, forbrugs- og en måneds forudbetalt leje.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Ansøgningsliste';
  @override
  String get viewDetails => 'Se detaljer';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Hjem';
  @override
  String get dashboard => 'Dashboard';
  @override
  String get tenants => 'Lejere';
  @override
  String get maintenance => 'Vedligeholdelse';
  @override
  String get maintenanceList => 'Vedligeholdelsesliste';
  @override
  String get maintenanceReport => 'Vedligeholdelsesrapport';
  @override
  String get labor => 'Arbejdskraft';
  @override
  String get applications => 'Ansøgninger';
  @override
  String get rentInvitation => 'Lejeinvitation';
  @override
  String get payment => 'Betaling';
  @override
  String get rentPayment => 'Lejebetaling';
  @override
  String get depositUtilityPayment => 'Depositum & forbrugsbetaling';
  @override
  String get refundRequest => 'Anmodning om tilbagebetaling';
  @override
  String get withdrawRequest => 'Anmodning om udbetaling';
  @override
  String get myProperty => 'Min ejendom';
  @override
  String get myRent => 'Min leje';
  @override
  String get wishlist => 'Ønskeliste';
  @override
  String get properties => 'Ejendomme';
  @override
  String get allProperties => 'Alle ejendomme';
  @override
  String get totalPropery => 'Samlet antal ejendomme';
  @override
  String get occupied => 'Optaget';
  @override
  String get vacant => 'Ledig';
  @override
  String get accounting => 'Regnskab';
  @override
  String get totalIncome => 'Samlet indkomst';
  @override
  String get totalExpense => 'Samlede udgifter';
  @override
  String get currentBalance => 'Nuværende saldo';
  @override
  String get totalWithdrawal => 'Samlet (udbetaling)';
  @override
  String get totalProperties => 'Samlet antal ejendomme';
  @override
  String get totalTenant => 'Samlet antal lejere';
  @override
  String get totalRentPaid => 'Samlet betalt leje';
  @override
  String get totalRentDue => 'Samlet skyldig leje';
  @override
  String get totalApplication => 'Samlet antal ansøgninger';
  @override
  String get pendingApplication => 'Afventende ansøgning';
  @override
  String get processingApplication => 'Ansøgning under behandling';
  @override
  String get approveApplication => 'Godkend ansøgning';
  @override
  String get rejectApplication => 'Afvis ansøgning';
  @override
  String get maintenanceCost => 'Vedligeholdelsesomkostninger';
  @override
  String get transactionSummary => 'Transaktionsoversigt';
  @override
  String get maintenanceRequest => 'Vedligeholdelsesanmodning';
  @override
  String get notifications => 'Notifikationer';
  @override
  String get myProperties => 'Mine ejendomme';
  @override
  String get recommendationProperties => 'Anbefalede ejendomme';
  @override
  String get laborList => 'Arbejdskraftliste';
  @override
  String get addLabor => 'Tilføj arbejdskraft';
  @override
  String get laborDetails => 'Arbejdskraftsdetaljer';
  @override
  String get laborSalary => 'Arbejdskraftsløn';
  @override
  String get editLabor => 'Rediger arbejdskraft';
  @override
  String get addNewLabor => 'Tilføj ny arbejdskraft';
  @override
  String get enterAmount => 'Indtast beløb';
  @override
  String get maintenanceDetails => 'Vedligeholdelsesdetaljer';
  @override
  String get laborName => 'Arbejdskraftnavn';
  @override
  String get comment => 'Kommentar';
  @override
  String get image => 'Billede';
  @override
  String get complete => 'Færdigfør';
  @override
  String get details => 'Detaljer';
  @override
  String get title => 'Titel';
  @override
  String get date => 'Dato';
  @override
  String get reason => 'Årsag';
  @override
  String get edit => 'Rediger';
  @override
  String get property => 'Ejendom';
  @override
  String get completeYourProfile => 'Fuldend din profil';
  @override
  String get profileImage => 'Profilbillede';
  @override
  String get imagePickHint =>
      'Kun JPEG- og PNG-billeder med en maksimal størrelse på 120x120 pixels accepteres.';
  @override
  String get invoiceId => 'Faktura-ID';
  @override
  String get depositAmount => 'Depositumsbeløb';
  @override
  String get landlordPhone => 'Udlejertelefon';
  @override
  String get rentalAdvance => 'Leje (forudbetaling)';
  @override
  String get totalAmount => 'Samlet beløb';
  @override
  String get rentalAmount => 'Lejebeløb';
  @override
  String get adminCharge => 'Administrationsgebyr';
  @override
  String get editAccount => 'Rediger konto';
  @override
  String get addNewAccount => 'Tilføj ny konto';
  @override
  String get transactionId => 'Transaktions-ID';
  @override
  String get transactionType => 'Transaktionstype';
  @override
  String get requestDate => 'Anmodningsdato';
  @override
  String get amount => 'Beløb';
  @override
  String get fee => 'Gebyr';
  @override
  String get paymentStatus => 'Betalingsstatus';
  @override
  String get generatedTime => 'Genereringstidspunkt';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Dette er en systemgenereret rapport fra '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Udbetalingshistorik';
  @override
  String get history => 'Historik';
  @override
  String get withdrawAmount => 'Udbetalingsbeløb';
  @override
  String get availableBalance => 'Tilgængelig saldo';
  @override
  String get withdrawCharge => 'Udbetalingsgebyr';
  @override
  String get paymentMethod => 'Betalingsmetode';
  @override
  String get requestSendSuccess => 'Anmodning sendt!';
  @override
  String get paymentReceiptSubmitSuccess => 'Betalingskvittering indsendt.';
  @override
  String get refundReason => 'Årsag til tilbagebetaling';
  @override
  String get note => 'Bemærkning';
  @override
  String get refundReceiveSuccess => 'Tilbagebetaling modtaget.';
  @override
  String get downloadPaymentReceipt => 'Download betalingskvittering';
  @override
  String get invoice => 'Faktura';
  @override
  String get selectPropertyToSeeInvoice =>
      'Vælg ejendom for at se fakturanummer...';
  @override
  String get bankAccName => 'Bankkontonavn';
  @override
  String get bankName => 'Banknavn';
  @override
  String get bankAccNum => 'Bankkontonummer';
  @override
  String get thankYou => 'Tak!';
  @override
  String get basicInfo => 'Grundlæggende information';
  @override
  String get descriptionPricing => 'Beskrivelse og priser';
  @override
  String get contact => 'Kontakt';
  @override
  String get photos => 'Billeder';
  @override
  String get successfullySubmitted => 'Indsendt!';
  @override
  String get editProperty => 'Rediger ejendom';
  @override
  String get addNewProperty => 'Tilføj ny ejendom';
  @override
  String get propertyManageRequestSuccess =>
      'Din annonce er indsendt til gennemgang.';
  @override
  String get postAnotherProperty => 'Indsend endnu en ejendom';
  @override
  String get browseYourProperty => 'Gennemse din ejendom';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Trin '),
      step,
      const TextSpan(text: ' af '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Hvad vil du gerne indsende?';
  @override
  String get category => 'Kategori';
  @override
  String get invalidCategory => 'Ugyldig kategori';
  @override
  String get unitNumber => 'Enhedsnummer';
  @override
  String get sqft => 'kv.ft.';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Ejendomsstørrelsen skal være større end nul';
  @override
  String get whatAreTheFacility => 'Hvad er faciliteterne?';
  @override
  String get whatAreTheAmenity => 'Hvad er bekvemmelighederne?';
  @override
  String get parkingLot => 'Parkeringsplads';
  @override
  String get houseType => 'Hustype';
  @override
  String get value => 'Værdi';
  @override
  String get unitLotSize => 'Enhed / Grundstørrelse';
  @override
  String get landSize => 'Grundstørrelse';
  @override
  String get acres => 'acre(s)';
  @override
  String get roomSize => 'Værelsesstørrelse';
  @override
  String get askTenantPreference => 'Hvad er dine lejerpræferencer?';
  @override
  String get couple => 'Par';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Beskriv ${propertyType}';
  @override
  String get adTitle => 'Annoncetitel';
  @override
  String get minimumRentalPeriod => 'Minimum lejeperiode';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  @override
  String get hideOrDisplayEmail => 'Skjul eller vis e-mailadresse';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Tak for at have indsendt på ${appName}!';
  @override
  String get propertyList => 'Ejendomsliste';
  @override
  String get newInviteRent => 'Ny lejeinvitation';
  @override
  String get rentAgreement => 'Lejekontrakt';
  @override
  String get rentDetails => 'Lejedetaljer';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Bemærk: '),
      note('Vent på, at lejer accepterer invitationen.'),
    ],
  );
  @override
  String get rent => 'Leje';
  @override
  String get editTenant => 'Rediger lejer';
  @override
  String get addNewTenant => 'Tilføj ny lejer';
  @override
  String get shareInstallLink => 'Del installationslink';
  @override
  String get tenantList => 'Lejerliste';
  @override
  String get editMaintenanceRequest => 'Rediger vedligeholdelsesanmodning';
  @override
  String get addNewMaintenance => 'Tilføj ny vedligeholdelse';
  @override
  String get landlordId => 'Udlejer-id';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Bemærk: '),
      note(
        'Din aftale er under gennemgang. Vent, indtil udlejer godkender din leje.',
      ),
    ],
  );
  @override
  String get editReview => 'Rediger anmeldelse';
  @override
  String get writeAReview => 'Skriv en anmeldelse';
  @override
  String get selectRating => 'Vælg bedømmelse';
  @override
  String get enterYourOpinion => 'Indtast din mening';
  @override
  String get askToEnterReviewMsg => 'Indtast en anmeldelsesbesked';
  @override
  String get pressBackAgainToExit => 'Tryk på tilbage igen for at afslutte.';
  @override
  String get selectPaymentMethod => 'Vælg betalingsmetode';
  @override
  String get filter => 'Filter';
  @override
  String get perMonth => '/måned';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Søg efter alt i ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsDa implements TranslationsExceptionsEn {
  _TranslationsExceptionsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Noget gik galt, prøv igen';
  @override
  String get noNidPassport => 'Der er ikke angivet noget NID/Pas-billede.';
  @override
  String get noRentPropertyFound => 'Ingen lejeejendom fundet for denne lejer.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Ingen ejendom fundet!\nPrøv med andre søgeord';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Ingen abonnementsplan fundet!\nOpdater siden og prøv igen.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Ugyldig ${dataType}-info! Opdater siden og prøv igen.';
  @override
  String get invalidDownloadUrl => 'Ugyldig download-URL!';
  @override
  String failedToSaveFile({required String error}) =>
      'Kunne ikke gemme filen! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Fejl ved åbning af filen! ${error}';
  @override
  String get noVehicleInfoProvided => 'Ingen køretøjsinformation angivet.';
  @override
  String get yourApplicationRejected => 'Din ansøgning er blevet afvist';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintDa
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintDa._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintDa noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintDa._(_root);
  @override
  String get noImageProvided => 'Intet billede angivet';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundDa
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundDa._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Ingen sikkerhedsdepositum fundet!\nDu kan se sikkerhedsdepositum, når det er tilgængeligt';
  @override
  String get noRentPaymentFound =>
      'Ingen lejebetaling fundet!\nDu kan se lejebetalinger, når de er tilgængelige';
  @override
  String get transactionSummaryApiException =>
      'Kunne ikke hente transaktionsoversigt.';
  @override
  String get noWithdrawRequestFound =>
      'Ingen anmodning fundet!\nPrøv at oprette en udbetalingsanmodning for at se den her.';
  @override
  String get withdrawRequestNotApproved =>
      'Denne udbetalingsanmodning er ikke blevet godkendt!.';
  @override
  String get nonZeroError => 'Angiv et gyldigt beløb, der er større end nul.';
  @override
  String minAmountError({required String minValue}) =>
      'Beløbet skal være mindst ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Beløbet må ikke overstige ${maxValue}.';
  @override
  String get selectPaymentMethodHint => 'Vælg en betalingsmetode først.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundDa
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundDa._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintDa refundRequestHint =
      _TranslationsExceptionsRefundRequestHintDa._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Vælg antallet af ${value}';
  @override
  String get invalidDateRange => 'Ugyldigt datointerval.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} skal være større end nul.';
  @override
  late final _TranslationsExceptionsEditPropertyDa editProperty =
      _TranslationsExceptionsEditPropertyDa._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationDa rentInvitation =
      _TranslationsExceptionsRentInvitationDa._(_root);
  @override
  String get notenantFoundList =>
      'Ingen lejere!\nPrøv at tilføje en lejer for at se dem her.';
  @override
  String get noFeaturesProvided => 'Ingen funktioner angivet.';
  @override
  String get noNotificationFound =>
      'Ingen notifikationer tilgængelige.\nDu kan se dine notifikationer her, når de er tilgængelige.';
}

// Path: prompt
class _TranslationsPromptDa implements TranslationsPromptEn {
  _TranslationsPromptDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutDa logout = _TranslationsPromptLogoutDa._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationDa application =
      _TranslationsPromptApplicationDa._(_root);
  @override
  late final _TranslationsPromptLaborDa labor = _TranslationsPromptLaborDa._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestDa maintenanceRequest =
      _TranslationsPromptMaintenanceRequestDa._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodDa withdrawMethod =
      _TranslationsPromptWithdrawMethodDa._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesDa unsavedChanges =
      _TranslationsPromptUnsavedChangesDa._(_root);
  @override
  late final _TranslationsPromptPropertyDa property =
      _TranslationsPromptPropertyDa._(_root);
  @override
  late final _TranslationsPromptRentInvitationDa rentInvitation =
      _TranslationsPromptRentInvitationDa._(_root);
  @override
  late final _TranslationsPromptSessionExpiredDa sessionExpired =
      _TranslationsPromptSessionExpiredDa._(_root);
  @override
  late final _TranslationsPromptNoInternetDa noInternet =
      _TranslationsPromptNoInternetDa._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerDa permissionHandler =
      _TranslationsPromptPermissionHandlerDa._(_root);
  @override
  late final _TranslationsPromptImagePickerDa imagePicker =
      _TranslationsPromptImagePickerDa._(_root);
  @override
  late final _TranslationsPromptVerificationDialogDa verificationDialog =
      _TranslationsPromptVerificationDialogDa._(_root);
  @override
  late final _TranslationsPromptNotificationDa notification =
      _TranslationsPromptNotificationDa._(_root);
}

// Path: form
class _TranslationsFormDa implements TranslationsFormEn {
  _TranslationsFormDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameDa fullName =
      _TranslationsFormFullNameDa._(_root);
  @override
  late final _TranslationsFormEmailDa email = _TranslationsFormEmailDa._(_root);
  @override
  late final _TranslationsFormPasswordDa password =
      _TranslationsFormPasswordDa._(_root);
  @override
  late final _TranslationsFormConfirmPasswordDa confirmPassword =
      _TranslationsFormConfirmPasswordDa._(_root);
  @override
  late final _TranslationsFormMobileNumberDa mobileNumber =
      _TranslationsFormMobileNumberDa._(_root);
  @override
  late final _TranslationsFormAddress1Da address1 =
      _TranslationsFormAddress1Da._(_root);
  @override
  late final _TranslationsFormAddress2Da address2 =
      _TranslationsFormAddress2Da._(_root);
  @override
  late final _TranslationsFormPostalCodeDa postalCode =
      _TranslationsFormPostalCodeDa._(_root);
  @override
  late final _TranslationsFormCityDa city = _TranslationsFormCityDa._(_root);
  @override
  late final _TranslationsFormStateDa state = _TranslationsFormStateDa._(_root);
  @override
  late final _TranslationsFormCountryDa country = _TranslationsFormCountryDa._(
    _root,
  );
  @override
  late final _TranslationsFormOtpDa otp = _TranslationsFormOtpDa._(_root);
  @override
  late final _TranslationsFormTitleDa title = _TranslationsFormTitleDa._(_root);
  @override
  late final _TranslationsFormDateDa date = _TranslationsFormDateDa._(_root);
  @override
  late final _TranslationsFormReasonDa reason = _TranslationsFormReasonDa._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodDa withdrawMethod =
      _TranslationsFormWithdrawMethodDa._(_root);
  @override
  late final _TranslationsFormFileFieldDa fileField =
      _TranslationsFormFileFieldDa._(_root);
  @override
  late final _TranslationsFormNoteDa note = _TranslationsFormNoteDa._(_root);
  @override
  late final _TranslationsFormGenderDa gender = _TranslationsFormGenderDa._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldDa anyField =
      _TranslationsFormAnyFieldDa._(_root);
  @override
  late final _TranslationsFormAnyDropdownDa anyDropdown =
      _TranslationsFormAnyDropdownDa._(_root);
}

// Path: action
class _TranslationsActionDa implements TranslationsActionEn {
  _TranslationsActionDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Næste';
  @override
  String get getStarted => 'Kom i gang';
  @override
  String get skip => 'Spring over';
  @override
  String get select => 'Vælg';
  @override
  String get save => 'Gem';
  @override
  String get signIn => 'Log ind';
  @override
  String get signUp => 'Tilmeld dig';
  @override
  String get kContinue => 'Fortsæt';
  @override
  String get clearAll => 'Ryd alle';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Send';
  @override
  String get pay => 'Betal';
  @override
  String get remove => 'Fjern';
  @override
  String get goBack => 'Gå tilbage';
  @override
  String get buyNow => 'Køb nu';
  @override
  String get no => 'Nej';
  @override
  String get open => 'Åbn';
  @override
  String get addProperty => 'Tilføj ejendom';
  @override
  String get process => 'Behandl';
  @override
  String get approve => 'Godkend';
  @override
  String get reject => 'Afvis';
  @override
  String get viewRent => 'Se leje';
  @override
  String get openNavigationMenu => 'Åbn navigationsmenu';
  @override
  String get seeAll => 'Se alle';
  @override
  String get update => 'Opdater';
  @override
  String get printTransaction => 'Udskriv transaktion';
  @override
  String get payoutRequest => 'Udbetalingsanmodning';
  @override
  String get addNew => '+ Tilføj ny';
  @override
  String get sendRequest => 'Send anmodning';
  @override
  String get print => 'Udskriv';
  @override
  String get requestForRefund => 'Anmod om tilbagebetaling';
  @override
  String get previous => 'Forrige';
  @override
  String get delete => 'Slet';
  @override
  String get applyProperty => 'Anvend ejendom';
  @override
  String get viewApplication => 'Se ansøgning';
  @override
  String get inviteTenant => 'Inviter lejer';
  @override
  String get inviteRent => 'Inviter til leje';
  @override
  String get cancel => 'Annuller';
  @override
  String get accept => 'Accepter';
  @override
  String get submit => 'Indsend';
  @override
  String get yes => 'Ja';
  @override
  String get okay => 'Okay';
  @override
  String get confirm => 'Bekræft';
  @override
  String get apply => 'Anvend';
  @override
  String get reset => 'Nulstil';
  @override
  String get retry => 'Prøv igen';
  @override
  String get viewAll => 'Se alle';
}

// Path: pages
class _TranslationsPagesDa implements TranslationsPagesEn {
  _TranslationsPagesDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageDa language =
      _TranslationsPagesLanguageDa._(_root);
  @override
  late final _TranslationsPagesOnboardDa onboard =
      _TranslationsPagesOnboardDa._(_root);
  @override
  late final _TranslationsPagesSignInDa signIn = _TranslationsPagesSignInDa._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordDa forgotPassword =
      _TranslationsPagesForgotPasswordDa._(_root);
  @override
  late final _TranslationsPagesOtpVerificationDa otpVerification =
      _TranslationsPagesOtpVerificationDa._(_root);
  @override
  late final _TranslationsPagesResetPasswordDa resetPassword =
      _TranslationsPagesResetPasswordDa._(_root);
  @override
  late final _TranslationsPagesSignUpDa signUp = _TranslationsPagesSignUpDa._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeDa welcome =
      _TranslationsPagesWelcomeDa._(_root);
  @override
  late final _TranslationsPagesAboutUsDa aboutUs =
      _TranslationsPagesAboutUsDa._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsDa termsAndConditions =
      _TranslationsPagesTermsAndConditionsDa._(_root);
  @override
  late final _TranslationsPagesNotificationListDa notificationList =
      _TranslationsPagesNotificationListDa._(_root);
  @override
  late final _TranslationsPagesContactUsDa contactUs =
      _TranslationsPagesContactUsDa._(_root);
  @override
  late final _TranslationsPagesCancelRentingDa cancelRenting =
      _TranslationsPagesCancelRentingDa._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsDa invoiceDetails =
      _TranslationsPagesInvoiceDetailsDa._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentDa offlinePayment =
      _TranslationsPagesOfflinePaymentDa._(_root);
  @override
  late final _TranslationsPagesPaymentStatusDa paymentStatus =
      _TranslationsPagesPaymentStatusDa._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsDa propertyDetails =
      _TranslationsPagesPropertyDetailsDa._(_root);
  @override
  late final _TranslationsPagesSearchDa search = _TranslationsPagesSearchDa._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanDa subscriptionPlan =
      _TranslationsPagesSubscriptionPlanDa._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportDa
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportDa._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsDa implements TranslationsEnumsEn {
  _TranslationsEnumsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusDa propertyStatus =
      _TranslationsEnumsPropertyStatusDa._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeDa propertyType =
      _TranslationsEnumsPropertyTypeDa._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusDa applicationStatus =
      _TranslationsEnumsApplicationStatusDa._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusDa myRentStatus =
      _TranslationsEnumsMyRentStatusDa._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusDa maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusDa._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeDa tenantProfileType =
      _TranslationsEnumsTenantProfileTypeDa._(_root);
  @override
  late final _TranslationsEnumsTenantTypeDa tenantType =
      _TranslationsEnumsTenantTypeDa._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusDa paymentStatus =
      _TranslationsEnumsPaymentStatusDa._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsDa paymentOptions =
      _TranslationsEnumsPaymentOptionsDa._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeDa paymentType =
      _TranslationsEnumsPaymentTypeDa._(_root);
  @override
  late final _TranslationsEnumsGenderDa gender = _TranslationsEnumsGenderDa._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationDa ecRelation =
      _TranslationsEnumsEcRelationDa._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeDa vehicleType =
      _TranslationsEnumsVehicleTypeDa._(_root);
  @override
  late final _TranslationsEnumsSortByDa sortBy = _TranslationsEnumsSortByDa._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeDa residentialType =
      _TranslationsEnumsResidentialTypeDa._(_root);
  @override
  late final _TranslationsEnumsFloorRangeDa floorRange =
      _TranslationsEnumsFloorRangeDa._(_root);
  @override
  late final _TranslationsEnumsFurnishingsDa furnishings =
      _TranslationsEnumsFurnishingsDa._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeDa commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeDa._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeDa landPropertyType =
      _TranslationsEnumsLandPropertyTypeDa._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeDa residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeDa._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodDa minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodDa._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterDa dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterDa._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileDa
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. Nr.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoDa
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Køretøjsinformation';
  @override
  String get optional => 'Køretøjsinformation (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoDa
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Køretøjsregistreringsnummer';
  @override
  String get short => 'Registreringsnummer';
  @override
  String get alt => 'Nummerplade';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintDa
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Ingen ansøgning fundet!\n${subject} vil blive vist her, når den er tilgængelig.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsDa subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsDa._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintDa
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Ingen ejendom fundet!\nPrøv at tilføje en ejendom for at se den her.';
  @override
  String get tenantRecommended =>
      'Ingen anbefalede ejendomme fundet\nPrøv igen senere.';
  @override
  String get tenantAllProperty =>
      'Ejendomme ikke tilgængelige\nPrøv igen senere.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundDa
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Ingen ${status} vedligeholdelse fundet.';
  @override
  String get tenant =>
      'Ingen vedligeholdelse fundet! Du kan oprette en vedligeholdelsesanmodning for at se den her.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundDa
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Ingen ${status} anmodning om tilbagebetaling fundet!\nDu kan se anmodning om tilbagebetaling her, når den er tilgængelig.';
  @override
  String get tenant =>
      'Ingen anmodning om tilbagebetaling fundet!\nDu kan oprette en anmodning om tilbagebetaling for at se den her.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintDa
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Lejer godkender tilbagebetalingen, når han har fået pengene tilbage';
  @override
  String get tenantReqSuccess =>
      'Vi vil gennemgå anmodningen om tilbagebetaling og godkende den inden for 24 timer.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyDa
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Lejeejendommen er ved at ændre sig. Den skal kun være gyldig (effektiv) for næste måneds lejebetaling.';
  @override
  String get deleteOnRent =>
      'Din ejendom er allerede udlejet af lejer. Kan ikke slette den, før du fjerner lejer først';
  @override
  String get alreayRented =>
      'Denne ejendom er allerede udlejet. Prøv igen senere.\nEller du kan kontakte udlejeren for mere information.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationDa
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Ingen lejeinvitation fundet!\nPrøv at oprette en lejeinvitation for at se den her.';
  @override
  String get tenantNoRentInvitation =>
      'Ingen lejeinvitation fundet!\nDu kan se lejeinvitation her, når den er tilgængelig.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutDa implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Er du sikker på, at du vil logge ud?';
}

// Path: prompt.application
class _TranslationsPromptApplicationDa
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Hvorfor afviser du denne ansøgning?';
  @override
  late final _TranslationsPromptApplicationApplicationSentDa applicationSent =
      _TranslationsPromptApplicationApplicationSentDa._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborDa implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteDa delete =
      _TranslationsPromptLaborDeleteDa._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestDa
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Hvorfor bliver denne anmodning afvist?';
  @override
  String get processTitle =>
      'Er du sikker på, at du vil behandle denne vedligeholdelsesanmodning?';
  @override
  String get completeTitle => 'Arbejdet udført?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodDa
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Slet udbetalingsmetode?';
  @override
  String get deleteDescription =>
      'Er du sikker på, at du vil slette denne udbetalingsmetode?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesDa
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Er du sikker på, at du vil gå tilbage?';
  @override
  String get message => 'Felter, der er ændret, vil ikke blive gemt!';
}

// Path: prompt.property
class _TranslationsPromptPropertyDa implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteDa delete =
      _TranslationsPromptPropertyDeleteDa._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationDa
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveDa
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveDa._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptDa tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptDa._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredDa
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Session udløbet';
  @override
  String get message => 'Din session er udløbet. Log ind igen';
  @override
  String get action => 'Log ind';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetDa
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ingen internetforbindelse';
  @override
  String get message => 'Tjek din Wi-Fi-mobilnetværksforbindelse, og prøv igen';
  @override
  String get action => 'Prøv igen';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerDa
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tilladelse kræves!';
  @override
  String get message =>
      'Du skal give tilladelser i appens indstillinger. Vil du åbne indstillingerne nu?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerDa
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vælg indstilling';
  @override
  String get gallery => 'Galleri';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogDa
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bekræft din e-mail';
  @override
  String get message => 'Vi har sendt en e-mail med en bekræftelseskode';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} til ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationDa
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Ryd notifikationer?';
  @override
  String get clearMessage =>
      'Er du sikker på, at du vil rydde alle notifikationer?';
}

// Path: form.fullName
class _TranslationsFormFullNameDa implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Indtast ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsDa errors =
      _TranslationsFormFullNameErrorsDa._(_root);
}

// Path: form.email
class _TranslationsFormEmailDa implements TranslationsFormEmailEn {
  _TranslationsFormEmailDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Indtast din ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsDa errors =
      _TranslationsFormEmailErrorsDa._(_root);
}

// Path: form.password
class _TranslationsFormPasswordDa implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsDa errors =
      _TranslationsFormPasswordErrorsDa._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordDa
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Bekræft ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsDa errors =
      _TranslationsFormConfirmPasswordErrorsDa._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberDa
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsDa errors =
      _TranslationsFormMobileNumberErrorsDa._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Da implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Da._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Husnummer og gadenavn';
  @override
  late final _TranslationsFormAddress1ErrorsDa errors =
      _TranslationsFormAddress1ErrorsDa._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Da implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Da._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Lejlighed, suite, enhed osv.';
  @override
  late final _TranslationsFormAddress2ErrorsDa errors =
      _TranslationsFormAddress2ErrorsDa._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeDa implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Indtast ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsDa errors =
      _TranslationsFormPostalCodeErrorsDa._(_root);
}

// Path: form.city
class _TranslationsFormCityDa implements TranslationsFormCityEn {
  _TranslationsFormCityDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Indtast ${_root.common.city} navn.';
  @override
  late final _TranslationsFormCityErrorsDa errors =
      _TranslationsFormCityErrorsDa._(_root);
}

// Path: form.state
class _TranslationsFormStateDa implements TranslationsFormStateEn {
  _TranslationsFormStateDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Indtast ${_root.common.state} navn.';
  @override
  late final _TranslationsFormStateErrorsDa errors =
      _TranslationsFormStateErrorsDa._(_root);
}

// Path: form.country
class _TranslationsFormCountryDa implements TranslationsFormCountryEn {
  _TranslationsFormCountryDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Vælg ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsDa errors =
      _TranslationsFormCountryErrorsDa._(_root);
}

// Path: form.otp
class _TranslationsFormOtpDa implements TranslationsFormOtpEn {
  _TranslationsFormOtpDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsDa errors =
      _TranslationsFormOtpErrorsDa._(_root);
}

// Path: form.title
class _TranslationsFormTitleDa implements TranslationsFormTitleEn {
  _TranslationsFormTitleDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Titel';
  @override
  String get hint => 'Indtast titel';
  @override
  late final _TranslationsFormTitleErrorsDa errors =
      _TranslationsFormTitleErrorsDa._(_root);
}

// Path: form.date
class _TranslationsFormDateDa implements TranslationsFormDateEn {
  _TranslationsFormDateDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Vælg ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsDa errors =
      _TranslationsFormDateErrorsDa._(_root);
}

// Path: form.reason
class _TranslationsFormReasonDa implements TranslationsFormReasonEn {
  _TranslationsFormReasonDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Årsag';
  @override
  String get hint => 'Indtast årsag';
  @override
  late final _TranslationsFormReasonErrorsDa errors =
      _TranslationsFormReasonErrorsDa._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodDa
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Vælg ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsDa errors =
      _TranslationsFormWithdrawMethodErrorsDa._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldDa implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Upload ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsDa errors =
      _TranslationsFormFileFieldErrorsDa._(_root);
}

// Path: form.note
class _TranslationsFormNoteDa implements TranslationsFormNoteEn {
  _TranslationsFormNoteDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Indtast ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsDa errors =
      _TranslationsFormNoteErrorsDa._(_root);
}

// Path: form.gender
class _TranslationsFormGenderDa implements TranslationsFormGenderEn {
  _TranslationsFormGenderDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Vælg ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsDa errors =
      _TranslationsFormGenderErrorsDa._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldDa implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Indtast ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsDa errors =
      _TranslationsFormAnyFieldErrorsDa._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownDa implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Vælg ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsDa errors =
      _TranslationsFormAnyDropdownErrorsDa._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageDa implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardDa implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataDa onboardData =
      _TranslationsPagesOnboardOnboardDataDa._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInDa implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Velkommen tilbage';
  @override
  String get subtitle => 'Log ind nu for at begynde en fantastisk rejse.';
  @override
  late final _TranslationsPagesSignInExtraDa extra =
      _TranslationsPagesSignInExtraDa._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordDa
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Glemt adgangskode';
  @override
  String get subtitle =>
      'Indtast din e-mailadresse for at gendanne din adgangskode.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationDa
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifikation';
  @override
  String subtitle({required String email}) =>
      'En 4-cifret kode er blevet sendt til din e-mailadresse. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraDa extra =
      _TranslationsPagesOtpVerificationExtraDa._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordDa
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nulstil adgangskode';
  @override
  String get subtitle =>
      'Nulstil din adgangskode for at gendanne og logge ind på din konto';
  @override
  late final _TranslationsPagesResetPasswordExtraDa extra =
      _TranslationsPagesResetPasswordExtraDa._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpDa implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Opret en konto';
  @override
  String get subtitle => 'Tilmeld dig nu for at begynde en fantastisk rejse';
  @override
  late final _TranslationsPagesSignUpExtraDa extra =
      _TranslationsPagesSignUpExtraDa._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeDa implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Hvem er du?';
  @override
  String get subtitle => 'Vælg venligst nedenstående mulighed.';
  @override
  late final _TranslationsPagesWelcomeExtraDa extra =
      _TranslationsPagesWelcomeExtraDa._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsDa implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsDa
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListDa
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Notifikationer';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsDa implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraDa extra =
      _TranslationsPagesContactUsExtraDa._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingDa
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Hvorfor ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormDa form =
      _TranslationsPagesCancelRentingFormDa._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsDa
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentDa
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Offline betaling';
  @override
  late final _TranslationsPagesOfflinePaymentFormDa form =
      _TranslationsPagesOfflinePaymentFormDa._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraDa extra =
      _TranslationsPagesOfflinePaymentExtraDa._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusDa
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessDa success =
      _TranslationsPagesPaymentStatusSuccessDa._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailDa fail =
      _TranslationsPagesPaymentStatusFailDa._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsDa
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraDa extra =
      _TranslationsPagesPropertyDetailsExtraDa._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchDa implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Søg';
  @override
  late final _TranslationsPagesSearchExtraDa extra =
      _TranslationsPagesSearchExtraDa._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanDa
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Vælg din plan';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraDa extra =
      _TranslationsPagesSubscriptionPlanExtraDa._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportDa
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Samlede vedligeholdelsesomkostninger: '),
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
class _TranslationsEnumsPropertyStatusDa
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Alle ejendomme';
  @override
  String get pending => 'Afventende';
  @override
  String get active => 'Aktiv';
  @override
  String get inactive => 'Inaktiv';
  @override
  String get rejected => 'Afvist';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeDa
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Lejlighed/Ejerlejlighed';
  @override
  String get house => 'Hus';
  @override
  String get commercialProperty => 'Erhvervsejendom';
  @override
  String get land => 'Grund';
  @override
  String get room => 'Værelse';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusDa
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'Afventende';
  @override
  String get processing => 'Under behandling';
  @override
  String get approved => 'Godkendt';
  @override
  String get rejected => 'Afvist';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusDa
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Afventende';
  @override
  String get processing => 'Under behandling';
  @override
  String get active => 'Aktiv';
  @override
  String get expired => 'Udløbet';
  @override
  String get cancelled => 'Annulleret';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusDa
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Afventende';
  @override
  String get processing => 'Under behandling';
  @override
  String get rejected => 'Afvist';
  @override
  String get completed => 'Fuldført';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeDa
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privatperson';
  @override
  String get company => 'Firma';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeDa implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Ny lejer';
  @override
  String get activeTenant => 'Aktiv lejer';
  @override
  String get expiredTenant => 'Udløbet lejer';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusDa
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'Afventende';
  @override
  String get paid => 'Betalt';
  @override
  String get unpaid => 'Ubetalt';
  @override
  String get rejected => 'Afvist';
  @override
  String get refund => 'Tilbagebetaling';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsDa
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Online betaling';
  @override
  String get offlinePayment => 'Offline betaling';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeDa
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Depositum';
  @override
  String get rentPayment => 'Lejebetaling';
  @override
  String get subscription => 'Abonnement';
}

// Path: enums.gender
class _TranslationsEnumsGenderDa implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Mand';
  @override
  String get female => 'Kvinde';
  @override
  String get other => 'Andet';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationDa implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Hustru';
  @override
  String get parent => 'Forælder';
  @override
  String get friend => 'Ven';
  @override
  String get brother => 'Bror';
  @override
  String get sister => 'Søster';
  @override
  String get child => 'Barn';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeDa
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Bil';
  @override
  String get motorcycles => 'Motorcykler';
  @override
  String get lorry => 'Lastbil';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByDa implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Lav til Høj';
  @override
  String get highToLow => 'Høj til Lav';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeDa
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Lejlighed';
  @override
  String get apartment => 'Apartment';
  @override
  String get condominium => 'Ejerlejlighed';
  @override
  String get serviceResidence => 'Servicebolig';
  @override
  String get studio => 'Studiolejlighed';
  @override
  String get duplex => 'Duplexlejlighed';
  @override
  String get townhouseCondo => 'Rækkehus';
  @override
  String get others => 'Andre';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeDa implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Høj';
  @override
  String get medium => 'Mellem';
  @override
  String get low => 'Lav';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsDa
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Fuldt møbleret';
  @override
  String get partiallyFurnished => 'Delvist møbleret';
  @override
  String get notFurnished => 'Ikke møbleret';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeDa
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Kontorlokaler';
  @override
  String get retailSpace => 'Butikslokaler';
  @override
  String get shopLot => 'Butikslokale';
  @override
  String get warehouseFactory => 'Lager/Fabrik';
  @override
  String get hotelResort => 'Hotel/Resort';
  @override
  String get sofo => 'SOFO';
  @override
  String get soho => 'SOHO';
  @override
  String get sovo => 'SOVO';
  @override
  String get others => 'Andre';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeDa
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Bolig';
  @override
  String get industrial => 'Industri';
  @override
  String get agricultural => 'Landbrug';
  @override
  String get commercial => 'Erhverv';
  @override
  String get mixedDevelopment => 'Blandet bebyggelse';
  @override
  String get others => 'Andre';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeDa
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Ejerlejlighed/Servicebolig/Penthouse';
  @override
  String get apartment => 'Lejlighed/Etagebolig';
  @override
  String get house => 'Huse';
  @override
  String get shoplot => 'Butikslokale';
  @override
  String get sharing => 'Delebolig/Lejlighed';
  @override
  String get others => 'Andre';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodDa
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 måneder';
  @override
  String get oneYear => '1 år';
  @override
  String get oneAndHalfYears => '1,5 år';
  @override
  String get twoYears => '2 år';
  @override
  String get twoAndHalfYears => '2,5 år';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterDa
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Dagligt';
  @override
  String get weekly => 'Ugentligt';
  @override
  String get monthly => 'Månedligt';
  @override
  String get yearly => 'Årligt';
  @override
  String get custom => 'Tilpasset';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsDa
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Din ansøgning';
  @override
  String get landlord => 'Lejerens ansøgning';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentDa
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Ansøgning sendt!';
  @override
  String get sucessDescription =>
      'Du kan se denne ansøgning på din ansøgningsliste';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteDa
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Slet medarbejder?';
  @override
  String get description =>
      'Er du sikker på, at du vil slette denne medarbejder?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteDa
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Slet ejendom?';
  @override
  String get message => 'Er du sikker på, at du vil slette denne ejendom?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveDa
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Er du sikker på, at du vil godkende denne leje?';
  @override
  String get description =>
      'Sørg for, at du har gennemgået aftalen, der er underskrevet af lejer.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptDa
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Er du sikker på, at du vil acceptere denne invitation?';
  @override
  String get description => 'Sørg for, at du har downloadet aftalens pdf-fil!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsDa
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv dit ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsDa implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv din ${_root.common.email}-adresse';
  @override
  String get invalid => '⦸ Ugyldig e-mail, prøv igen';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsDa
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv dit ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Adgangskoden skal være mindst ${count} tegn!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsDa
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv dit ${_root.common.password}';
  @override
  String get notMatched => 'Bekræft adgangskoden stemmer ikke overens!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsDa
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv dit ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsDa
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv din ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsDa
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv din ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsDa
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv dit ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsDa implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv dit ${_root.common.city} navn.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsDa implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv dit ${_root.common.state} navn.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsDa
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vælg dit ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsDa implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv OTP\'en.';
  @override
  String get invalid => 'Angiv korrekt OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsDa implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv titel';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsDa implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vælg ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsDa
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv årsag';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsDa
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vælg ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsDa
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Vælg ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsDa implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Angiv ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsDa
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vælg ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsDa
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Angiv ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Angiv gyldig @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsDa
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vælg ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Vælg gyldig @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataDa
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Da data1 =
      _TranslationsPagesOnboardOnboardDataData1Da._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Da data2 =
      _TranslationsPagesOnboardOnboardDataData2Da._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Da data3 =
      _TranslationsPagesOnboardOnboardDataData3Da._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraDa
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Husk mig';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Har du ikke en konto? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraDa
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendDa codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendDa._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraDa
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogDa dialog =
      _TranslationsPagesResetPasswordExtraDialogDa._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraDa
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Har du en konto? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraDa
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Administrer dine egne ejendomme';
  @override
  String get tenantTag => 'Log ind på din lejekonto';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraDa
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Besked...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormDa
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonDa reason =
      _TranslationsPagesCancelRentingFormReasonDa._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormDa
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteDa paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteDa._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraDa
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Betalingsbeløb: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Kontohaverens navn';
  @override
  String get accountNumber => 'Kontonummer';
  @override
  String get swiftCode => 'Swift-kode';
  @override
  String get branch => 'Filial';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Vælg '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' eller '),
      fileType('DOC'),
      const TextSpan(text: '-formatfiler. Filstørrelse '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessDa
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Se faktura';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Vi vil gennemgå betalingen og godkende den inden for 24 timer.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailDa
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Prøv igen';
  @override
  String get title => 'Ups! Betaling mislykkedes';
  @override
  String get description =>
      'Din transaktion er mislykkedes på grund af en teknisk fejl.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraDa
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

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
      const TextSpan(text: 'Funktioner '),
      fa('(Faciliteter og bekvemmeligheder)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Vælg lejeperiode';
  @override
  String get writeAReview => '+ Skriv en anmeldelse';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraDa
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Søg efter grunde, lejligheder, værelser...';
  @override
  String get noRecentSearch => 'Du har ingen nylige søgninger.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraDa
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Abonnementsbetaling gennemført.\nDu har nu adgang til de abonnerede funktioner.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Da
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Da._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Find din ejendom';
  @override
  String get description =>
      'Vi har gjort det nemt at finde et sted, der passer til dit liv – uanset om det er et værelse, en lejlighed eller et hus.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Da
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Da._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Lejlighed i byen';
  @override
  String get description =>
      'Vi sparer dig tid ved hurtigt at matche dig med den perfekte ejendom, inden den er væk, så du kan nyde dit nye hjem, eller du kan gratis annoncere din egen.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Da
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Da._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Dit komfortable hus';
  @override
  String get description =>
      'Hvis du leder efter et sted at bo, så tag et kig på vores huse til leje. Vi har et bredt udvalg af huse, du kan vælge imellem over hele landet.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendDa
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Koden sendes om ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Send kode igen'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogDa
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ændret succesfuldt!';
  @override
  String get subtitle =>
      'Log ind med din nye adgangskode.\nDu bliver omdirigeret til Log ind...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonDa
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Skriv årsag';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsDa errors =
      _TranslationsPagesCancelRentingFormReasonErrorsDa._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteDa
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Betalingsnote (${_root.common.optional})';
  @override
  String get hint => 'Indtast noget tekst...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsDa
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsDa._(this._root);

  final TranslationsDa _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Angiv venligst årsagen til annullering af leje';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDa {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Sprog';
      case 'common.subscriptionPlan':
        return 'Abonnementsplan';
      case 'common.contactUs':
        return 'Kontakt os';
      case 'common.termsAndConditions':
        return 'Vilkår og betingelser';
      case 'common.aboutUs':
        return 'Om os';
      case 'common.logout':
        return 'Log ud';
      case 'common.editProfile':
        return 'Rediger profil';
      case 'common.fullName':
        return 'Fulde navn';
      case 'common.email':
        return 'E-mail';
      case 'common.mobileNumber':
        return 'Mobilnummer';
      case 'common.address':
        return 'Adresse';
      case 'common.postalCode':
        return 'Postnummer';
      case 'common.city':
        return 'By';
      case 'common.country':
        return 'Land';
      case 'common.state':
        return 'Stat';
      case 'common.password':
        return 'Adgangskode';
      case 'common.forgotPassword':
        return 'Glemt adgangskode';
      case 'common.tenant':
        return 'Lejer';
      case 'common.landlord':
        return 'Udlejer';
      case 'common.cancelRenting':
        return 'Annuller leje';
      case 'common.startDate':
        return 'Startdato';
      case 'common.endDate':
        return 'Slutdato';
      case 'common.fromDate':
        return 'Fra dato';
      case 'common.toDate':
        return 'Til dato';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Bankliste';
      case 'common.withdrawMethod':
        return 'Udbetalingsmetode';
      case 'common.uploadPaymentReceipt':
        return 'Upload betalingskvittering';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Bemærk: '),
            note(
              'Betalingen kræver manuel godkendelse af administratoren indenfor',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 timer.'),
          ],
        );
      case 'common.reviews':
        return 'Anmeldelser';
      case 'common.description':
        return 'Beskrivelse';
      case 'common.about':
        return 'Om';
      case 'common.propertyTypes':
        return 'Ejendomstyper';
      case 'common.features':
        return 'Funktioner';
      case 'common.floorPlans':
        return 'Plantegninger';
      case 'common.buildingDetails':
        return 'Bygningsdetaljer';
      case 'common.buildingName':
        return 'Bygningsnavn';
      case 'common.propertyAddress':
        return 'Ejendomsadresse';
      case 'common.completionYear':
        return 'Færdiggørelsesår';
      case 'common.lotNumber':
        return 'Lotnummer';
      case 'common.residentialType':
        return 'Boligtype';
      case 'common.furnishings':
        return 'Møblering';
      case 'common.floorRange':
        return 'Etageområde';
      case 'common.bedrooms':
        return 'Soveværelser';
      case 'common.bathrooms':
        return 'Badeværelser';
      case 'common.propertySize':
        return 'Ejendomsstørrelse';
      case 'common.rentalPeriod':
        return 'Lejeperiode';
      case 'common.securityDeposit':
        return 'Depositum';
      case 'common.utilityBill':
        return 'Forbrugsregning';
      case 'common.facilities':
        return 'Faciliteter';
      case 'common.amenities':
        return 'Faciliteter';
      case 'common.expiringReason':
        return 'Udløbsårsag';
      case 'common.tenantDetails':
        return 'Lejerdetaljer';
      case 'common.typeOfTenant':
        return 'Lejertype';
      case 'common.tenantName':
        return 'Lejernavn';
      case 'common.nidPassport':
        return 'NID/Pas';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Lejer-ID';
      case 'common.dateOfBirth':
        return 'Fødselsdato';
      case 'common.gender':
        return 'Køn';
      case 'common.nominee':
        return 'Nomineret';
      case 'common.name':
        return 'Navn';
      case 'common.optional':
        return 'Valgfrit';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. Nr.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Kontaktperson i nødstilfælde';
      case 'common.relation':
        return 'Relation';
      case 'common.relationWith':
        return '${_root.common.relation} Med';
      case 'common.relationWithYou':
        return '${_root.common.relation} Med Dig';
      case 'common.company':
        return 'Firma';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} CVR-nr.';
      case 'common.workplace':
        return 'Arbejdsplads';
      case 'common.officePhoneNo':
        return 'Kontor telefonnummer';
      case 'common.officeMobileNo':
        return 'Kontor ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Køretøj';
      case 'common.vehiclesInfo.plain':
        return 'Køretøjsinformation';
      case 'common.vehiclesInfo.optional':
        return 'Køretøjsinformation (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Køretøjsregistreringsnummer';
      case 'common.vehicleRegistrationNo.short':
        return 'Registreringsnummer';
      case 'common.vehicleRegistrationNo.alt':
        return 'Nummerplade';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Mærke';
      case 'common.rentProperty':
        return 'Lej ejendom';
      case 'common.propertyDetails':
        return 'Ejendomsdetaljer';
      case 'common.propertyId':
        return 'Ejendoms-ID';
      case 'common.propertyType':
        return 'Ejendomstype';
      case 'common.propertyName':
        return 'Ejendomsnavn';
      case 'common.paymentDetails':
        return 'Betalingsdetaljer';
      case 'common.monthlyRent':
        return 'Månedlig leje';
      case 'common.thisMonthPayment':
        return 'Denne måneds betaling';
      case 'common.totalPaidRent':
        return 'Samlet betalt leje';
      case 'common.dueRent':
        return 'Skyldig leje';
      case 'common.rentStartDate':
        return 'Leje ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Leje ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'Lejekontrakt PDF';
      case 'common.noFile':
        return 'Ingen fil';
      case 'common.tenantImageOp':
        return 'Lejerbillede ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Tilføj nyt køretøj';
      case 'common.uploadNidPassport':
        return 'Upload NID/Pas';
      case 'common.nidPassportUploadNote':
        return 'Kun billedfiler vil blive accepteret. Filstørrelsen må højst være 2,5 MB.';
      case 'common.search':
        return 'Søg';
      case 'common.sortBy':
        return 'Sortér efter';
      case 'common.subscription':
        return 'Abonnement';
      case 'common.downloading':
        return 'Downloader...';
      case 'common.downloadSuccess':
        return 'Fil downloadet!';
      case 'common.addPropertyBannerTitle':
        return 'Ønsker du at udleje din ejendom?';
      case 'common.application':
        return 'Ansøgning';
      case 'common.tenantHasPaidDeposit':
        return 'Lejer har betalt depositum.';
      case 'common.askProcessingRentApplication':
        return 'Er du sikker på, at du vil behandle denne anmodning om lejebolig?';
      case 'common.dateAndTime':
        return 'Dato og tid';
      case 'common.applicationDetails':
        return 'Ansøgningsdetaljer';
      case 'common.depositStatus':
        return 'Depositumsstatus';
      case 'common.uploadRentAgreement':
        return 'Upload lejekontrakt';
      case 'common.uploadFilePDF':
        return 'Upload fil (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Vælg en aftaledokumentfil.';
      case 'common.landlordRentAgreementPDF':
        return 'Udlejers lejekontrakt PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Lejers lejekontrakt PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Bemærk: '),
            note(
              'Godkend kun ansøgningen, efter at lejer har betalt depositum.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Årsag til afvisning';
      case 'common.youveRejectedThisApplication':
        return 'Du har afvist denne ansøgning';
      case 'common.landlordDetails':
        return 'Udlejerdetaljer';
      case 'common.landlordName':
        return 'Udlejernavn';
      case 'common.downloadRentAgreement':
        return 'Download lejekontrakt';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Acceptér '),
            toc('Vilkår og betingelser'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Bemærk: '),
            note(
              'Download og læs aftalen. Send den underskrevne aftale til udlejer via WhatsApp eller e-mail.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Bemærk: '),
            note(
              'Udlejer godkender ansøgningen, når lejer betaler sikkerheds-, forbrugs- og en måneds forudbetalt leje.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Lejekontrakt (PDF) '),
            complete('Fuldstændig aftale'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Bemærk: '),
            note(
              'Udlejer godkender ansøgningen, når lejer betaler sikkerheds-, forbrugs- og en måneds forudbetalt leje.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Ansøgningsliste';
      case 'common.viewDetails':
        return 'Se detaljer';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Hjem';
      case 'common.dashboard':
        return 'Dashboard';
      case 'common.tenants':
        return 'Lejere';
      case 'common.maintenance':
        return 'Vedligeholdelse';
      case 'common.maintenanceList':
        return 'Vedligeholdelsesliste';
      case 'common.maintenanceReport':
        return 'Vedligeholdelsesrapport';
      case 'common.labor':
        return 'Arbejdskraft';
      case 'common.applications':
        return 'Ansøgninger';
      case 'common.rentInvitation':
        return 'Lejeinvitation';
      case 'common.payment':
        return 'Betaling';
      case 'common.rentPayment':
        return 'Lejebetaling';
      case 'common.depositUtilityPayment':
        return 'Depositum & forbrugsbetaling';
      case 'common.refundRequest':
        return 'Anmodning om tilbagebetaling';
      case 'common.withdrawRequest':
        return 'Anmodning om udbetaling';
      case 'common.myProperty':
        return 'Min ejendom';
      case 'common.myRent':
        return 'Min leje';
      case 'common.wishlist':
        return 'Ønskeliste';
      case 'common.properties':
        return 'Ejendomme';
      case 'common.allProperties':
        return 'Alle ejendomme';
      case 'common.totalPropery':
        return 'Samlet antal ejendomme';
      case 'common.occupied':
        return 'Optaget';
      case 'common.vacant':
        return 'Ledig';
      case 'common.accounting':
        return 'Regnskab';
      case 'common.totalIncome':
        return 'Samlet indkomst';
      case 'common.totalExpense':
        return 'Samlede udgifter';
      case 'common.currentBalance':
        return 'Nuværende saldo';
      case 'common.totalWithdrawal':
        return 'Samlet (udbetaling)';
      case 'common.totalProperties':
        return 'Samlet antal ejendomme';
      case 'common.totalTenant':
        return 'Samlet antal lejere';
      case 'common.totalRentPaid':
        return 'Samlet betalt leje';
      case 'common.totalRentDue':
        return 'Samlet skyldig leje';
      case 'common.totalApplication':
        return 'Samlet antal ansøgninger';
      case 'common.pendingApplication':
        return 'Afventende ansøgning';
      case 'common.processingApplication':
        return 'Ansøgning under behandling';
      case 'common.approveApplication':
        return 'Godkend ansøgning';
      case 'common.rejectApplication':
        return 'Afvis ansøgning';
      case 'common.maintenanceCost':
        return 'Vedligeholdelsesomkostninger';
      case 'common.transactionSummary':
        return 'Transaktionsoversigt';
      case 'common.maintenanceRequest':
        return 'Vedligeholdelsesanmodning';
      case 'common.notifications':
        return 'Notifikationer';
      case 'common.myProperties':
        return 'Mine ejendomme';
      case 'common.recommendationProperties':
        return 'Anbefalede ejendomme';
      case 'common.laborList':
        return 'Arbejdskraftliste';
      case 'common.addLabor':
        return 'Tilføj arbejdskraft';
      case 'common.laborDetails':
        return 'Arbejdskraftsdetaljer';
      case 'common.laborSalary':
        return 'Arbejdskraftsløn';
      case 'common.editLabor':
        return 'Rediger arbejdskraft';
      case 'common.addNewLabor':
        return 'Tilføj ny arbejdskraft';
      case 'common.enterAmount':
        return 'Indtast beløb';
      case 'common.maintenanceDetails':
        return 'Vedligeholdelsesdetaljer';
      case 'common.laborName':
        return 'Arbejdskraftnavn';
      case 'common.comment':
        return 'Kommentar';
      case 'common.image':
        return 'Billede';
      case 'common.complete':
        return 'Færdigfør';
      case 'common.details':
        return 'Detaljer';
      case 'common.title':
        return 'Titel';
      case 'common.date':
        return 'Dato';
      case 'common.reason':
        return 'Årsag';
      case 'common.edit':
        return 'Rediger';
      case 'common.property':
        return 'Ejendom';
      case 'common.completeYourProfile':
        return 'Fuldend din profil';
      case 'common.profileImage':
        return 'Profilbillede';
      case 'common.imagePickHint':
        return 'Kun JPEG- og PNG-billeder med en maksimal størrelse på 120x120 pixels accepteres.';
      case 'common.invoiceId':
        return 'Faktura-ID';
      case 'common.depositAmount':
        return 'Depositumsbeløb';
      case 'common.landlordPhone':
        return 'Udlejertelefon';
      case 'common.rentalAdvance':
        return 'Leje (forudbetaling)';
      case 'common.totalAmount':
        return 'Samlet beløb';
      case 'common.rentalAmount':
        return 'Lejebeløb';
      case 'common.adminCharge':
        return 'Administrationsgebyr';
      case 'common.editAccount':
        return 'Rediger konto';
      case 'common.addNewAccount':
        return 'Tilføj ny konto';
      case 'common.transactionId':
        return 'Transaktions-ID';
      case 'common.transactionType':
        return 'Transaktionstype';
      case 'common.requestDate':
        return 'Anmodningsdato';
      case 'common.amount':
        return 'Beløb';
      case 'common.fee':
        return 'Gebyr';
      case 'common.paymentStatus':
        return 'Betalingsstatus';
      case 'common.generatedTime':
        return 'Genereringstidspunkt';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Dette er en systemgenereret rapport fra '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Udbetalingshistorik';
      case 'common.history':
        return 'Historik';
      case 'common.withdrawAmount':
        return 'Udbetalingsbeløb';
      case 'common.availableBalance':
        return 'Tilgængelig saldo';
      case 'common.withdrawCharge':
        return 'Udbetalingsgebyr';
      case 'common.paymentMethod':
        return 'Betalingsmetode';
      case 'common.requestSendSuccess':
        return 'Anmodning sendt!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Betalingskvittering indsendt.';
      case 'common.refundReason':
        return 'Årsag til tilbagebetaling';
      case 'common.note':
        return 'Bemærkning';
      case 'common.refundReceiveSuccess':
        return 'Tilbagebetaling modtaget.';
      case 'common.downloadPaymentReceipt':
        return 'Download betalingskvittering';
      case 'common.invoice':
        return 'Faktura';
      case 'common.selectPropertyToSeeInvoice':
        return 'Vælg ejendom for at se fakturanummer...';
      case 'common.bankAccName':
        return 'Bankkontonavn';
      case 'common.bankName':
        return 'Banknavn';
      case 'common.bankAccNum':
        return 'Bankkontonummer';
      case 'common.thankYou':
        return 'Tak!';
      case 'common.basicInfo':
        return 'Grundlæggende information';
      case 'common.descriptionPricing':
        return 'Beskrivelse og priser';
      case 'common.contact':
        return 'Kontakt';
      case 'common.photos':
        return 'Billeder';
      case 'common.successfullySubmitted':
        return 'Indsendt!';
      case 'common.editProperty':
        return 'Rediger ejendom';
      case 'common.addNewProperty':
        return 'Tilføj ny ejendom';
      case 'common.propertyManageRequestSuccess':
        return 'Din annonce er indsendt til gennemgang.';
      case 'common.postAnotherProperty':
        return 'Indsend endnu en ejendom';
      case 'common.browseYourProperty':
        return 'Gennemse din ejendom';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Trin '),
                step,
                const TextSpan(text: ' af '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Hvad vil du gerne indsende?';
      case 'common.category':
        return 'Kategori';
      case 'common.invalidCategory':
        return 'Ugyldig kategori';
      case 'common.unitNumber':
        return 'Enhedsnummer';
      case 'common.sqft':
        return 'kv.ft.';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Ejendomsstørrelsen skal være større end nul';
      case 'common.whatAreTheFacility':
        return 'Hvad er faciliteterne?';
      case 'common.whatAreTheAmenity':
        return 'Hvad er bekvemmelighederne?';
      case 'common.parkingLot':
        return 'Parkeringsplads';
      case 'common.houseType':
        return 'Hustype';
      case 'common.value':
        return 'Værdi';
      case 'common.unitLotSize':
        return 'Enhed / Grundstørrelse';
      case 'common.landSize':
        return 'Grundstørrelse';
      case 'common.acres':
        return 'acre(s)';
      case 'common.roomSize':
        return 'Værelsesstørrelse';
      case 'common.askTenantPreference':
        return 'Hvad er dine lejerpræferencer?';
      case 'common.couple':
        return 'Par';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Beskriv ${propertyType}';
      case 'common.adTitle':
        return 'Annoncetitel';
      case 'common.minimumRentalPeriod':
        return 'Minimum lejeperiode';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Skjul eller vis e-mailadresse';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Tak for at have indsendt på ${appName}!';
      case 'common.propertyList':
        return 'Ejendomsliste';
      case 'common.newInviteRent':
        return 'Ny lejeinvitation';
      case 'common.rentAgreement':
        return 'Lejekontrakt';
      case 'common.rentDetails':
        return 'Lejedetaljer';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Bemærk: '),
            note('Vent på, at lejer accepterer invitationen.'),
          ],
        );
      case 'common.rent':
        return 'Leje';
      case 'common.editTenant':
        return 'Rediger lejer';
      case 'common.addNewTenant':
        return 'Tilføj ny lejer';
      case 'common.shareInstallLink':
        return 'Del installationslink';
      case 'common.tenantList':
        return 'Lejerliste';
      case 'common.editMaintenanceRequest':
        return 'Rediger vedligeholdelsesanmodning';
      case 'common.addNewMaintenance':
        return 'Tilføj ny vedligeholdelse';
      case 'common.landlordId':
        return 'Udlejer-id';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Bemærk: '),
            note(
              'Din aftale er under gennemgang. Vent, indtil udlejer godkender din leje.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Rediger anmeldelse';
      case 'common.writeAReview':
        return 'Skriv en anmeldelse';
      case 'common.selectRating':
        return 'Vælg bedømmelse';
      case 'common.enterYourOpinion':
        return 'Indtast din mening';
      case 'common.askToEnterReviewMsg':
        return 'Indtast en anmeldelsesbesked';
      case 'common.pressBackAgainToExit':
        return 'Tryk på tilbage igen for at afslutte.';
      case 'common.selectPaymentMethod':
        return 'Vælg betalingsmetode';
      case 'common.filter':
        return 'Filter';
      case 'common.perMonth':
        return '/måned';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => 'Søg efter alt i ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Noget gik galt, prøv igen';
      case 'exceptions.noNidPassport':
        return 'Der er ikke angivet noget NID/Pas-billede.';
      case 'exceptions.noRentPropertyFound':
        return 'Ingen lejeejendom fundet for denne lejer.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Ingen ejendom fundet!\nPrøv med andre søgeord';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Ingen abonnementsplan fundet!\nOpdater siden og prøv igen.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Ugyldig ${dataType}-info! Opdater siden og prøv igen.';
      case 'exceptions.invalidDownloadUrl':
        return 'Ugyldig download-URL!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => 'Kunne ikke gemme filen! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Fejl ved åbning af filen! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Ingen køretøjsinformation angivet.';
      case 'exceptions.yourApplicationRejected':
        return 'Din ansøgning er blevet afvist';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Ingen ansøgning fundet!\n${subject} vil blive vist her, når den er tilgængelig.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Din ansøgning';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Lejerens ansøgning';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Ingen ejendom fundet!\nPrøv at tilføje en ejendom for at se den her.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Ingen anbefalede ejendomme fundet\nPrøv igen senere.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Ejendomme ikke tilgængelige\nPrøv igen senere.';
      case 'exceptions.noImageProvided':
        return 'Intet billede angivet';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Ingen ${status} vedligeholdelse fundet.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Ingen vedligeholdelse fundet! Du kan oprette en vedligeholdelsesanmodning for at se den her.';
      case 'exceptions.noDepositFound':
        return 'Ingen sikkerhedsdepositum fundet!\nDu kan se sikkerhedsdepositum, når det er tilgængeligt';
      case 'exceptions.noRentPaymentFound':
        return 'Ingen lejebetaling fundet!\nDu kan se lejebetalinger, når de er tilgængelige';
      case 'exceptions.transactionSummaryApiException':
        return 'Kunne ikke hente transaktionsoversigt.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Ingen anmodning fundet!\nPrøv at oprette en udbetalingsanmodning for at se den her.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Denne udbetalingsanmodning er ikke blevet godkendt!.';
      case 'exceptions.nonZeroError':
        return 'Angiv et gyldigt beløb, der er større end nul.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Beløbet skal være mindst ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Beløbet må ikke overstige ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Vælg en betalingsmetode først.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Ingen ${status} anmodning om tilbagebetaling fundet!\nDu kan se anmodning om tilbagebetaling her, når den er tilgængelig.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Ingen anmodning om tilbagebetaling fundet!\nDu kan oprette en anmodning om tilbagebetaling for at se den her.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Lejer godkender tilbagebetalingen, når han har fået pengene tilbage';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Vi vil gennemgå anmodningen om tilbagebetaling og godkende den inden for 24 timer.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Vælg antallet af ${value}';
      case 'exceptions.invalidDateRange':
        return 'Ugyldigt datointerval.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} skal være større end nul.';
      case 'exceptions.editProperty.rentalChange':
        return 'Lejeejendommen er ved at ændre sig. Den skal kun være gyldig (effektiv) for næste måneds lejebetaling.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Din ejendom er allerede udlejet af lejer. Kan ikke slette den, før du fjerner lejer først';
      case 'exceptions.editProperty.alreayRented':
        return 'Denne ejendom er allerede udlejet. Prøv igen senere.\nEller du kan kontakte udlejeren for mere information.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Ingen lejeinvitation fundet!\nPrøv at oprette en lejeinvitation for at se den her.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Ingen lejeinvitation fundet!\nDu kan se lejeinvitation her, når den er tilgængelig.';
      case 'exceptions.notenantFoundList':
        return 'Ingen lejere!\nPrøv at tilføje en lejer for at se dem her.';
      case 'exceptions.noFeaturesProvided':
        return 'Ingen funktioner angivet.';
      case 'exceptions.noNotificationFound':
        return 'Ingen notifikationer tilgængelige.\nDu kan se dine notifikationer her, når de er tilgængelige.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Er du sikker på, at du vil logge ud?';
      case 'prompt.application.rejectTitle':
        return 'Hvorfor afviser du denne ansøgning?';
      case 'prompt.application.applicationSent.successfully':
        return 'Ansøgning sendt!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Du kan se denne ansøgning på din ansøgningsliste';
      case 'prompt.labor.delete.title':
        return 'Slet medarbejder?';
      case 'prompt.labor.delete.description':
        return 'Er du sikker på, at du vil slette denne medarbejder?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Hvorfor bliver denne anmodning afvist?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Er du sikker på, at du vil behandle denne vedligeholdelsesanmodning?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Arbejdet udført?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Slet udbetalingsmetode?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Er du sikker på, at du vil slette denne udbetalingsmetode?';
      case 'prompt.unsavedChanges.title':
        return 'Er du sikker på, at du vil gå tilbage?';
      case 'prompt.unsavedChanges.message':
        return 'Felter, der er ændret, vil ikke blive gemt!';
      case 'prompt.property.delete.title':
        return 'Slet ejendom?';
      case 'prompt.property.delete.message':
        return 'Er du sikker på, at du vil slette denne ejendom?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Er du sikker på, at du vil godkende denne leje?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Sørg for, at du har gennemgået aftalen, der er underskrevet af lejer.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Er du sikker på, at du vil acceptere denne invitation?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Sørg for, at du har downloadet aftalens pdf-fil!';
      case 'prompt.sessionExpired.title':
        return 'Session udløbet';
      case 'prompt.sessionExpired.message':
        return 'Din session er udløbet. Log ind igen';
      case 'prompt.sessionExpired.action':
        return 'Log ind';
      case 'prompt.noInternet.title':
        return 'Ingen internetforbindelse';
      case 'prompt.noInternet.message':
        return 'Tjek din Wi-Fi-mobilnetværksforbindelse, og prøv igen';
      case 'prompt.noInternet.action':
        return 'Prøv igen';
      case 'prompt.permissionHandler.title':
        return 'Tilladelse kræves!';
      case 'prompt.permissionHandler.message':
        return 'Du skal give tilladelser i appens indstillinger. Vil du åbne indstillingerne nu?';
      case 'prompt.imagePicker.title':
        return 'Vælg indstilling';
      case 'prompt.imagePicker.gallery':
        return 'Galleri';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Bekræft din e-mail';
      case 'prompt.verificationDialog.message':
        return 'Vi har sendt en e-mail med en bekræftelseskode';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} til ${email}';
      case 'prompt.notification.clearTitle':
        return 'Ryd notifikationer?';
      case 'prompt.notification.clearMessage':
        return 'Er du sikker på, at du vil rydde alle notifikationer?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Indtast ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Angiv dit ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Indtast din ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Angiv din ${_root.common.email}-adresse';
      case 'form.email.errors.invalid':
        return '⦸ Ugyldig e-mail, prøv igen';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Angiv dit ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Adgangskoden skal være mindst ${count} tegn!';
      case 'form.confirmPassword.label':
        return 'Bekræft ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Angiv dit ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Bekræft adgangskoden stemmer ikke overens!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Angiv dit ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Husnummer og gadenavn';
      case 'form.address1.errors.required':
        return 'Angiv din ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Lejlighed, suite, enhed osv.';
      case 'form.address2.errors.required':
        return 'Angiv din ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Indtast ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Angiv dit ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Indtast ${_root.common.city} navn.';
      case 'form.city.errors.required':
        return 'Angiv dit ${_root.common.city} navn.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Indtast ${_root.common.state} navn.';
      case 'form.state.errors.required':
        return 'Angiv dit ${_root.common.state} navn.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Vælg ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Vælg dit ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Angiv OTP\'en.';
      case 'form.otp.errors.invalid':
        return 'Angiv korrekt OTP.';
      case 'form.title.label':
        return 'Titel';
      case 'form.title.hint':
        return 'Indtast titel';
      case 'form.title.errors.required':
        return 'Angiv titel';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Vælg ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Vælg ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Årsag';
      case 'form.reason.hint':
        return 'Indtast årsag';
      case 'form.reason.errors.required':
        return 'Angiv årsag';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Vælg ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Vælg ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Upload ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Vælg ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Indtast ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Angiv ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Vælg ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Vælg ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Indtast ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Angiv ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Angiv gyldig @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Vælg ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Vælg ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Vælg gyldig @form.anyDropdown.label';
      case 'action.next':
        return 'Næste';
      case 'action.getStarted':
        return 'Kom i gang';
      case 'action.skip':
        return 'Spring over';
      case 'action.select':
        return 'Vælg';
      case 'action.save':
        return 'Gem';
      case 'action.signIn':
        return 'Log ind';
      case 'action.signUp':
        return 'Tilmeld dig';
      case 'action.kContinue':
        return 'Fortsæt';
      case 'action.clearAll':
        return 'Ryd alle';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Send';
      case 'action.pay':
        return 'Betal';
      case 'action.remove':
        return 'Fjern';
      case 'action.goBack':
        return 'Gå tilbage';
      case 'action.buyNow':
        return 'Køb nu';
      case 'action.no':
        return 'Nej';
      case 'action.open':
        return 'Åbn';
      case 'action.addProperty':
        return 'Tilføj ejendom';
      case 'action.process':
        return 'Behandl';
      case 'action.approve':
        return 'Godkend';
      case 'action.reject':
        return 'Afvis';
      case 'action.viewRent':
        return 'Se leje';
      case 'action.openNavigationMenu':
        return 'Åbn navigationsmenu';
      case 'action.seeAll':
        return 'Se alle';
      case 'action.update':
        return 'Opdater';
      case 'action.printTransaction':
        return 'Udskriv transaktion';
      case 'action.payoutRequest':
        return 'Udbetalingsanmodning';
      case 'action.addNew':
        return '+ Tilføj ny';
      case 'action.sendRequest':
        return 'Send anmodning';
      case 'action.print':
        return 'Udskriv';
      case 'action.requestForRefund':
        return 'Anmod om tilbagebetaling';
      case 'action.previous':
        return 'Forrige';
      case 'action.delete':
        return 'Slet';
      case 'action.applyProperty':
        return 'Anvend ejendom';
      case 'action.viewApplication':
        return 'Se ansøgning';
      case 'action.inviteTenant':
        return 'Inviter lejer';
      case 'action.inviteRent':
        return 'Inviter til leje';
      case 'action.cancel':
        return 'Annuller';
      case 'action.accept':
        return 'Accepter';
      case 'action.submit':
        return 'Indsend';
      case 'action.yes':
        return 'Ja';
      case 'action.okay':
        return 'Okay';
      case 'action.confirm':
        return 'Bekræft';
      case 'action.apply':
        return 'Anvend';
      case 'action.reset':
        return 'Nulstil';
      case 'action.retry':
        return 'Prøv igen';
      case 'action.viewAll':
        return 'Se alle';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Find din ejendom';
      case 'pages.onboard.onboardData.data1.description':
        return 'Vi har gjort det nemt at finde et sted, der passer til dit liv – uanset om det er et værelse, en lejlighed eller et hus.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Lejlighed i byen';
      case 'pages.onboard.onboardData.data2.description':
        return 'Vi sparer dig tid ved hurtigt at matche dig med den perfekte ejendom, inden den er væk, så du kan nyde dit nye hjem, eller du kan gratis annoncere din egen.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Dit komfortable hus';
      case 'pages.onboard.onboardData.data3.description':
        return 'Hvis du leder efter et sted at bo, så tag et kig på vores huse til leje. Vi har et bredt udvalg af huse, du kan vælge imellem over hele landet.';
      case 'pages.signIn.title':
        return 'Velkommen tilbage';
      case 'pages.signIn.subtitle':
        return 'Log ind nu for at begynde en fantastisk rejse.';
      case 'pages.signIn.extra.rememberMe':
        return 'Husk mig';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Har du ikke en konto? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Glemt adgangskode';
      case 'pages.forgotPassword.subtitle':
        return 'Indtast din e-mailadresse for at gendanne din adgangskode.';
      case 'pages.otpVerification.title':
        return 'Verifikation';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'En 4-cifret kode er blevet sendt til din e-mailadresse. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Koden sendes om ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Send kode igen'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Nulstil adgangskode';
      case 'pages.resetPassword.subtitle':
        return 'Nulstil din adgangskode for at gendanne og logge ind på din konto';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Ændret succesfuldt!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Log ind med din nye adgangskode.\nDu bliver omdirigeret til Log ind...';
      case 'pages.signUp.title':
        return 'Opret en konto';
      case 'pages.signUp.subtitle':
        return 'Tilmeld dig nu for at begynde en fantastisk rejse';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Har du en konto? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Hvem er du?';
      case 'pages.welcome.subtitle':
        return 'Vælg venligst nedenstående mulighed.';
      case 'pages.welcome.extra.landlordTag':
        return 'Administrer dine egne ejendomme';
      case 'pages.welcome.extra.tenantTag':
        return 'Log ind på din lejekonto';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Notifikationer';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Besked...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Hvorfor ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Skriv årsag';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Angiv venligst årsagen til annullering af leje';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Offline betaling';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Betalingsnote (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Indtast noget tekst...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Betalingsbeløb: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Kontohaverens navn';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Kontonummer';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift-kode';
      case 'pages.offlinePayment.extra.branch':
        return 'Filial';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Vælg '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' eller '),
            fileType('DOC'),
            const TextSpan(text: '-formatfiler. Filstørrelse '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Se faktura';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Vi vil gennemgå betalingen og godkende den inden for 24 timer.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Prøv igen';
      case 'pages.paymentStatus.fail.title':
        return 'Ups! Betaling mislykkedes';
      case 'pages.paymentStatus.fail.description':
        return 'Din transaktion er mislykkedes på grund af en teknisk fejl.';
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
            const TextSpan(text: 'Funktioner '),
            fa('(Faciliteter og bekvemmeligheder)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Vælg lejeperiode';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Skriv en anmeldelse';
      case 'pages.search.appbarTitle':
        return 'Søg';
      case 'pages.search.extra.hint':
        return 'Søg efter grunde, lejligheder, værelser...';
      case 'pages.search.extra.noRecentSearch':
        return 'Du har ingen nylige søgninger.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Vælg din plan';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Abonnementsbetaling gennemført.\nDu har nu adgang til de abonnerede funktioner.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Samlede vedligeholdelsesomkostninger: '),
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
        return 'Alle ejendomme';
      case 'enums.propertyStatus.pending':
        return 'Afventende';
      case 'enums.propertyStatus.active':
        return 'Aktiv';
      case 'enums.propertyStatus.inactive':
        return 'Inaktiv';
      case 'enums.propertyStatus.rejected':
        return 'Afvist';
      case 'enums.propertyType.apartmentCondominium':
        return 'Lejlighed/Ejerlejlighed';
      case 'enums.propertyType.house':
        return 'Hus';
      case 'enums.propertyType.commercialProperty':
        return 'Erhvervsejendom';
      case 'enums.propertyType.land':
        return 'Grund';
      case 'enums.propertyType.room':
        return 'Værelse';
      case 'enums.applicationStatus.all':
        return 'Alle';
      case 'enums.applicationStatus.pending':
        return 'Afventende';
      case 'enums.applicationStatus.processing':
        return 'Under behandling';
      case 'enums.applicationStatus.approved':
        return 'Godkendt';
      case 'enums.applicationStatus.rejected':
        return 'Afvist';
      case 'enums.myRentStatus.pending':
        return 'Afventende';
      case 'enums.myRentStatus.processing':
        return 'Under behandling';
      case 'enums.myRentStatus.active':
        return 'Aktiv';
      case 'enums.myRentStatus.expired':
        return 'Udløbet';
      case 'enums.myRentStatus.cancelled':
        return 'Annulleret';
      case 'enums.maintenanceStatus.pending':
        return 'Afventende';
      case 'enums.maintenanceStatus.processing':
        return 'Under behandling';
      case 'enums.maintenanceStatus.rejected':
        return 'Afvist';
      case 'enums.maintenanceStatus.completed':
        return 'Fuldført';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privatperson';
      case 'enums.tenantProfileType.company':
        return 'Firma';
      case 'enums.tenantType.newTenant':
        return 'Ny lejer';
      case 'enums.tenantType.activeTenant':
        return 'Aktiv lejer';
      case 'enums.tenantType.expiredTenant':
        return 'Udløbet lejer';
      case 'enums.paymentStatus.all':
        return 'Alle';
      case 'enums.paymentStatus.pending':
        return 'Afventende';
      case 'enums.paymentStatus.paid':
        return 'Betalt';
      case 'enums.paymentStatus.unpaid':
        return 'Ubetalt';
      case 'enums.paymentStatus.rejected':
        return 'Afvist';
      case 'enums.paymentStatus.refund':
        return 'Tilbagebetaling';
      case 'enums.paymentOptions.onlinePayment':
        return 'Online betaling';
      case 'enums.paymentOptions.offlinePayment':
        return 'Offline betaling';
      case 'enums.paymentType.securityDeposit':
        return 'Depositum';
      case 'enums.paymentType.rentPayment':
        return 'Lejebetaling';
      case 'enums.paymentType.subscription':
        return 'Abonnement';
      case 'enums.gender.male':
        return 'Mand';
      case 'enums.gender.female':
        return 'Kvinde';
      case 'enums.gender.other':
        return 'Andet';
      case 'enums.ecRelation.wife':
        return 'Hustru';
      case 'enums.ecRelation.parent':
        return 'Forælder';
      case 'enums.ecRelation.friend':
        return 'Ven';
      case 'enums.ecRelation.brother':
        return 'Bror';
      case 'enums.ecRelation.sister':
        return 'Søster';
      case 'enums.ecRelation.child':
        return 'Barn';
      case 'enums.vehicleType.car':
        return 'Bil';
      case 'enums.vehicleType.motorcycles':
        return 'Motorcykler';
      case 'enums.vehicleType.lorry':
        return 'Lastbil';
      case 'enums.sortBy.lowToHigh':
        return 'Lav til Høj';
      case 'enums.sortBy.highToLow':
        return 'Høj til Lav';
      case 'enums.residentialType.flat':
        return 'Lejlighed';
      case 'enums.residentialType.apartment':
        return 'Apartment';
      case 'enums.residentialType.condominium':
        return 'Ejerlejlighed';
      case 'enums.residentialType.serviceResidence':
        return 'Servicebolig';
      case 'enums.residentialType.studio':
        return 'Studiolejlighed';
      case 'enums.residentialType.duplex':
        return 'Duplexlejlighed';
      case 'enums.residentialType.townhouseCondo':
        return 'Rækkehus';
      case 'enums.residentialType.others':
        return 'Andre';
      case 'enums.floorRange.high':
        return 'Høj';
      case 'enums.floorRange.medium':
        return 'Mellem';
      case 'enums.floorRange.low':
        return 'Lav';
      case 'enums.furnishings.fullyFurnished':
        return 'Fuldt møbleret';
      case 'enums.furnishings.partiallyFurnished':
        return 'Delvist møbleret';
      case 'enums.furnishings.notFurnished':
        return 'Ikke møbleret';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Kontorlokaler';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Butikslokaler';
      case 'enums.commercialPropertyType.shopLot':
        return 'Butikslokale';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Lager/Fabrik';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel/Resort';
      case 'enums.commercialPropertyType.sofo':
        return 'SOFO';
      case 'enums.commercialPropertyType.soho':
        return 'SOHO';
      case 'enums.commercialPropertyType.sovo':
        return 'SOVO';
      case 'enums.commercialPropertyType.others':
        return 'Andre';
      case 'enums.landPropertyType.residential':
        return 'Bolig';
      case 'enums.landPropertyType.industrial':
        return 'Industri';
      case 'enums.landPropertyType.agricultural':
        return 'Landbrug';
      case 'enums.landPropertyType.commercial':
        return 'Erhverv';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Blandet bebyggelse';
      case 'enums.landPropertyType.others':
        return 'Andre';
      case 'enums.residentPropertyType.condo':
        return 'Ejerlejlighed/Servicebolig/Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Lejlighed/Etagebolig';
      case 'enums.residentPropertyType.house':
        return 'Huse';
      case 'enums.residentPropertyType.shoplot':
        return 'Butikslokale';
      case 'enums.residentPropertyType.sharing':
        return 'Delebolig/Lejlighed';
      case 'enums.residentPropertyType.others':
        return 'Andre';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 måneder';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 år';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 år';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 år';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 år';
      case 'enums.dropdownDateFilter.daily':
        return 'Dagligt';
      case 'enums.dropdownDateFilter.weekly':
        return 'Ugentligt';
      case 'enums.dropdownDateFilter.monthly':
        return 'Månedligt';
      case 'enums.dropdownDateFilter.yearly':
        return 'Årligt';
      case 'enums.dropdownDateFilter.custom':
        return 'Tilpasset';
      default:
        return null;
    }
  }
}
