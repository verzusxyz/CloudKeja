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
class TranslationsNo implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsNo({
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
             locale: AppLocale.no,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <no>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsNo _root = this; // ignore: unused_field

  @override
  TranslationsNo $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsNo(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonNo common = _TranslationsCommonNo._(_root);
  @override
  late final _TranslationsExceptionsNo exceptions = _TranslationsExceptionsNo._(
    _root,
  );
  @override
  late final _TranslationsPromptNo prompt = _TranslationsPromptNo._(_root);
  @override
  late final _TranslationsFormNo form = _TranslationsFormNo._(_root);
  @override
  late final _TranslationsActionNo action = _TranslationsActionNo._(_root);
  @override
  late final _TranslationsPagesNo pages = _TranslationsPagesNo._(_root);
  @override
  late final _TranslationsEnumsNo enums = _TranslationsEnumsNo._(_root);
}

// Path: common
class _TranslationsCommonNo implements TranslationsCommonEn {
  _TranslationsCommonNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Språk';
  @override
  String get subscriptionPlan => 'Abonnementsplan';
  @override
  String get contactUs => 'Kontakt oss';
  @override
  String get termsAndConditions => 'Vilkår og betingelser';
  @override
  String get aboutUs => 'Om oss';
  @override
  String get logout => 'Logg ut';
  @override
  String get editProfile => 'Rediger profil';
  @override
  String get fullName => 'Fullt navn';
  @override
  String get email => 'E-post';
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
  String get state => 'Fylke';
  @override
  String get password => 'Passord';
  @override
  String get forgotPassword => 'Glemt passord';
  @override
  String get tenant => 'Leietaker';
  @override
  String get landlord => 'Uteleier';
  @override
  String get cancelRenting => 'Avbryt leie';
  @override
  String get startDate => 'Startdato';
  @override
  String get endDate => 'Sluttdato';
  @override
  String get fromDate => 'Fra dato';
  @override
  String get toDate => 'Til dato';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Bankliste';
  @override
  String get withdrawMethod => 'Uttaksmetode';
  @override
  String get uploadPaymentReceipt => 'Last opp betalingskvittering';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Merk: '),
      note('Betalingen krever manuell godkjenning av admin innen'),
      const TextSpan(text: ' '),
      duraion('24–48 timer.'),
    ],
  );
  @override
  String get reviews => 'Anmeldelser';
  @override
  String get description => 'Beskrivelse';
  @override
  String get about => 'Om';
  @override
  String get propertyTypes => 'EiendomsTyper';
  @override
  String get features => 'Funksjoner';
  @override
  String get floorPlans => 'Plantegninger';
  @override
  String get buildingDetails => 'Bygningsdetaljer';
  @override
  String get buildingName => 'Bygningsnavn';
  @override
  String get propertyAddress => 'Eiendomsadresse';
  @override
  String get completionYear => 'Fullføringsår';
  @override
  String get lotNumber => 'Lotnummer';
  @override
  String get residentialType => 'Boligtype';
  @override
  String get furnishings => 'Møblering';
  @override
  String get floorRange => 'Etasjeområde';
  @override
  String get bedrooms => 'Soverom';
  @override
  String get bathrooms => 'Bad';
  @override
  String get propertySize => 'Eiendomsstørrelse';
  @override
  String get rentalPeriod => 'Leieperiode';
  @override
  String get securityDeposit => 'Sikkerhetsdepositum';
  @override
  String get utilityBill => 'Strømregning';
  @override
  String get facilities => 'Fasiliteter';
  @override
  String get amenities => 'Fasiliteter';
  @override
  String get expiringReason => 'Utløpsårsak';
  @override
  String get tenantDetails => 'Leietakerdetaljer';
  @override
  String get typeOfTenant => 'Leietakertype';
  @override
  String get tenantName => 'Leietakernavn';
  @override
  String get nidPassport => 'NID/Pass';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Leietaker-ID';
  @override
  String get dateOfBirth => 'Fødselsdato';
  @override
  String get gender => 'Kjønn';
  @override
  String get nominee => 'Kandidat';
  @override
  String get name => 'Navn';
  @override
  String get optional => 'Valgfritt';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileNo nomineeMobile =
      _TranslationsCommonNomineeMobileNo._(_root);
  @override
  String get emergencyContact => 'Kontaktperson ved nødsituasjoner';
  @override
  String get relation => 'Forhold';
  @override
  String get relationWith => '${_root.common.relation} With';
  @override
  String get relationWithYou => '${_root.common.relationWith} You';
  @override
  String get company => 'Firma';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Arbeidsplass';
  @override
  String get officePhoneNo => 'Kontortelefonnummer';
  @override
  String get officeMobileNo => 'Kontor ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Kjøretøy';
  @override
  late final _TranslationsCommonVehiclesInfoNo vehiclesInfo =
      _TranslationsCommonVehiclesInfoNo._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoNo vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoNo._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Brand';
  @override
  String get rentProperty => 'Lei eiendom';
  @override
  String get propertyDetails => 'Eiendomsdetaljer';
  @override
  String get propertyId => 'Eiendoms-ID';
  @override
  String get propertyType => 'Eierskapstype';
  @override
  String get propertyName => 'Eiendomsnavn';
  @override
  String get paymentDetails => 'Betalingsdetaljer';
  @override
  String get monthlyRent => 'Månedlig leie';
  @override
  String get thisMonthPayment => 'Denne månedens betaling';
  @override
  String get totalPaidRent => 'Total betalt leie';
  @override
  String get dueRent => 'Forfalt leie';
  @override
  String get rentStartDate => 'Leie ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Leie ${_root.common.endDate}';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'Leieavtale PDF';
  @override
  String get noFile => 'Ingen fil';
  @override
  String get tenantImageOp => 'Leietakerbilde ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Legg til nye kjøretøy';
  @override
  String get uploadNidPassport => 'Last opp NID/Pass';
  @override
  String get nidPassportUploadNote =>
      'Bare filtypebilde vil bli akseptert. Filgrense opptil 2,5 MB.';
  @override
  String get search => 'Søk';
  @override
  String get sortBy => 'Sorter etter';
  @override
  String get subscription => 'Abonnement';
  @override
  String get downloading => 'Laster ned...';
  @override
  String get downloadSuccess => 'Filen er lastet ned!';
  @override
  String get addPropertyBannerTitle => 'Ønsker du å leie ut eiendommen din?';
  @override
  String get application => 'Søknad';
  @override
  String get tenantHasPaidDeposit => 'Leietaker har betalt depositumet.';
  @override
  String get askProcessingRentApplication =>
      'Er du sikker på at du behandler denne forespørselen om leie av eiendom?';
  @override
  String get dateAndTime => 'Dato og tid';
  @override
  String get applicationDetails => 'Søknadsdetaljer';
  @override
  String get depositStatus => 'Depositumstatus';
  @override
  String get uploadRentAgreement => 'Last opp leieavtale';
  @override
  String get uploadFilePDF => 'Last opp fil (PDF)';
  @override
  String get askSelectRentAgreement => 'Velg en avtaledokumentfil.';
  @override
  String get landlordRentAgreementPDF => 'Uteleiers leieavtale PDF';
  @override
  String get tenantRentAgreementPDF => 'Leietakers leieavtale PDF';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Merk: '),
      note(
        'Godkjenn søknaden først etter at leietaker har betalt et depositum.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Årsak til avvisning';
  @override
  String get youveRejectedThisApplication => 'Du har avvist denne søknaden';
  @override
  String get landlordDetails => 'Uteleierdetaljer';
  @override
  String get landlordName => 'Uteleiernavn';
  @override
  String get downloadRentAgreement => 'Last ned leieavtale';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Aksepter '),
      toc('Vilkår og betingelser'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Merk: '),
      note(
        'Last ned og les avtalen. Send den signerte avtalen til utleier via WhatsApp eller e-post.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Merk: '),
      note(
        'Uteleier godkjenner søknaden når leietaker betaler sikkerhet, strøm og en måneds forskuddsbetaling av leie.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Leieavtale (PDF) '),
          complete('Fullfør avtale'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Merk: '),
      note(
        'Uteleier godkjenner søknaden når leietaker betaler sikkerhet, strøm og en måneds forskuddsbetaling av leie.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Søknadsliste';
  @override
  String get viewDetails => 'Vis detaljer';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Hjem';
  @override
  String get dashboard => 'Dashboard';
  @override
  String get tenants => 'Leietakere';
  @override
  String get maintenance => 'Vedlikehold';
  @override
  String get maintenanceList => 'Vedlikeholdsliste';
  @override
  String get maintenanceReport => 'Vedlikeholdsrapport';
  @override
  String get labor => 'Arbeidskraft';
  @override
  String get applications => 'Søknader';
  @override
  String get rentInvitation => 'Leieinvitasjon';
  @override
  String get payment => 'Betaling';
  @override
  String get rentPayment => 'Leiebetaling';
  @override
  String get depositUtilityPayment => 'Depositum og strømbetaling';
  @override
  String get refundRequest => 'Refusjonsforespørsel';
  @override
  String get withdrawRequest => 'Uttaksforespørsel';
  @override
  String get myProperty => 'Min eiendom';
  @override
  String get myRent => 'Min leie';
  @override
  String get wishlist => 'Ønskeliste';
  @override
  String get properties => 'Egenskaper';
  @override
  String get allProperties => 'Alle eiendommer';
  @override
  String get totalPropery => 'Total eiendom';
  @override
  String get occupied => 'Beboet';
  @override
  String get vacant => 'Ledig';
  @override
  String get accounting => 'Regnskap';
  @override
  String get totalIncome => 'Total inntekt';
  @override
  String get totalExpense => 'Total utgift';
  @override
  String get currentBalance => 'Nåværende balanse';
  @override
  String get totalWithdrawal => 'Total (uttak)';
  @override
  String get totalProperties => 'Totalt antall eiendommer';
  @override
  String get totalTenant => 'Totalt antall leietakere';
  @override
  String get totalRentPaid => 'Total betalt leie';
  @override
  String get totalRentDue => 'Total forfalt leie';
  @override
  String get totalApplication => 'Totalt antall søknader';
  @override
  String get pendingApplication => 'Ventende søknad';
  @override
  String get processingApplication => 'Behandling av søknad';
  @override
  String get approveApplication => 'Godkjenn søknad';
  @override
  String get rejectApplication => 'Avvis søknad';
  @override
  String get maintenanceCost => 'Vedlikeholdskostnad';
  @override
  String get transactionSummary => 'Transaksjonssammendrag';
  @override
  String get maintenanceRequest => 'Vedlikeholdsforespørsel';
  @override
  String get notifications => 'Varsler';
  @override
  String get myProperties => 'Mine eiendommer';
  @override
  String get recommendationProperties => 'Anbefalingseiendommer';
  @override
  String get laborList => 'Arbeidskraftliste';
  @override
  String get addLabor => 'Legg til arbeidskraft';
  @override
  String get laborDetails => 'Arbeidskraftdetaljer';
  @override
  String get laborSalary => 'Arbeidskraftlønn';
  @override
  String get editLabor => 'Rediger arbeidskraft';
  @override
  String get addNewLabor => 'Legg til ny arbeidskraft';
  @override
  String get enterAmount => 'Skriv inn beløp';
  @override
  String get maintenanceDetails => 'Vedlikeholdsdetaljer';
  @override
  String get laborName => 'Arbeidskraftnavn';
  @override
  String get comment => 'Kommentar';
  @override
  String get image => 'Bilde';
  @override
  String get complete => 'Fullfør';
  @override
  String get details => 'Detaljer';
  @override
  String get title => 'Tittel';
  @override
  String get date => 'Dato';
  @override
  String get reason => 'Årsak';
  @override
  String get edit => 'Rediger';
  @override
  String get property => 'Eiendom';
  @override
  String get completeYourProfile => 'Fullfør profilen din';
  @override
  String get profileImage => 'Profilbilde';
  @override
  String get imagePickHint =>
      'Bare JPEG- og PNG-bilde med maks størrelse på 120x120 piksler.';
  @override
  String get invoiceId => 'Faktura-ID';
  @override
  String get depositAmount => 'Depositumsbeløp';
  @override
  String get landlordPhone => 'Uteleiertelefon';
  @override
  String get rentalAdvance => 'Leie (forskudd)';
  @override
  String get totalAmount => 'Totalbeløp';
  @override
  String get rentalAmount => 'Leiebeløp';
  @override
  String get adminCharge => 'Administrasjonsgebyr';
  @override
  String get editAccount => 'Rediger konto';
  @override
  String get addNewAccount => 'Legg til ny konto';
  @override
  String get transactionId => 'Transaksjons-ID';
  @override
  String get transactionType => 'Transaksjonstype';
  @override
  String get requestDate => 'Forespørselsdato';
  @override
  String get amount => 'Beløp';
  @override
  String get fee => 'Gebyr';
  @override
  String get paymentStatus => 'Betalingsstatus';
  @override
  String get generatedTime => 'Generert tid';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Dette er en systemgenerert rapport av '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Uttakshistorikk';
  @override
  String get history => 'Historikk';
  @override
  String get withdrawAmount => 'Uttaksbeløp';
  @override
  String get availableBalance => 'Tilgjengelig saldo';
  @override
  String get withdrawCharge => 'Uttaksgebyr';
  @override
  String get paymentMethod => 'Betalingsmetode';
  @override
  String get requestSendSuccess => 'Forespørsel sendt!';
  @override
  String get paymentReceiptSubmitSuccess => 'Betalingskvittering sendt.';
  @override
  String get refundReason => 'Årsak til refusjon';
  @override
  String get note => 'Merknad';
  @override
  String get refundReceiveSuccess => 'Refusjon mottatt.';
  @override
  String get downloadPaymentReceipt => 'Last ned betalingskvittering';
  @override
  String get invoice => 'Faktura';
  @override
  String get selectPropertyToSeeInvoice =>
      'Velg eiendom for å se fakturanummeret...';
  @override
  String get bankAccName => 'Bankkontonavn';
  @override
  String get bankName => 'Banknavn';
  @override
  String get bankAccNum => 'Bankkontonummer';
  @override
  String get thankYou => 'Takk!';
  @override
  String get basicInfo => 'Grunnleggende informasjon';
  @override
  String get descriptionPricing => 'Beskrivelse og priser';
  @override
  String get contact => 'Kontakt';
  @override
  String get photos => 'Bilder';
  @override
  String get successfullySubmitted => 'Sendt!';
  @override
  String get editProperty => 'Rediger eiendom';
  @override
  String get addNewProperty => 'Legg til ny eiendom';
  @override
  String get propertyManageRequestSuccess =>
      'Annonnsen din er sendt til vurdering.';
  @override
  String get postAnotherProperty => 'Legg til en annen eiendom';
  @override
  String get browseYourProperty => 'Bla gjennom eiendommen din';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Trinn '),
      step,
      const TextSpan(text: ' av '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Hva vil du legge ut?';
  @override
  String get category => 'Kategori';
  @override
  String get invalidCategory => 'Ugyldig kategori';
  @override
  String get unitNumber => 'Enhetsnummer';
  @override
  String get sqft => 'kv.ft.';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Eiendomsstørrelsen må være større enn null';
  @override
  String get whatAreTheFacility => 'Hvilke fasiliteter finnes?';
  @override
  String get whatAreTheAmenity => 'Hvilke fasiliteter finnes?';
  @override
  String get parkingLot => 'Parkeringsplass';
  @override
  String get houseType => 'Hustype';
  @override
  String get value => 'Verdi';
  @override
  String get unitLotSize => 'Enhet / Lotstørrelse';
  @override
  String get landSize => 'Landstørrelse';
  @override
  String get acres => 'acre(s)';
  @override
  String get roomSize => 'Romstørrelse';
  @override
  String get askTenantPreference => 'Hva er din leietakerpreferanse';
  @override
  String get couple => 'Par';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Beskriv ${propertyType}';
  @override
  String get adTitle => 'Annonsetittel';
  @override
  String get minimumRentalPeriod => 'Minimum leieperiode';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  @override
  String get hideOrDisplayEmail => 'Skjul eller vis e-postadresse';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Takk for at du la ut på ${appName}!';
  @override
  String get propertyList => 'Eiendomsliste';
  @override
  String get newInviteRent => 'Ny invitasjon til leie';
  @override
  String get rentAgreement => 'Leieavtale';
  @override
  String get rentDetails => 'Leiedetaljer';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Merk: '),
      note('Vennligst vent på at leietakeren godtar invitasjonen.'),
    ],
  );
  @override
  String get rent => 'Leie';
  @override
  String get editTenant => 'Rediger leietaker';
  @override
  String get addNewTenant => 'Legg til ny leietaker';
  @override
  String get shareInstallLink => 'Del installasjonslenke';
  @override
  String get tenantList => 'Leietakerliste';
  @override
  String get editMaintenanceRequest => 'Rediger vedlikeholdsforespørsel';
  @override
  String get addNewMaintenance => 'Legg til nytt vedlikehold';
  @override
  String get landlordId => 'Uteleier-ID';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Merk '),
      note(
        'Avtalen din er under vurdering. Vent til utleier godkjenner leien din.',
      ),
    ],
  );
  @override
  String get editReview => 'Rediger anmeldelse';
  @override
  String get writeAReview => 'Skriv en anmeldelse';
  @override
  String get selectRating => 'Velg vurdering';
  @override
  String get enterYourOpinion => 'Skriv inn din mening';
  @override
  String get askToEnterReviewMsg => 'Vennligst skriv inn en anmeldelsesmelding';
  @override
  String get pressBackAgainToExit => 'Trykk tilbake igjen for å avslutte.';
  @override
  String get selectPaymentMethod => 'Velg betalingsmetode';
  @override
  String get filter => 'Filter';
  @override
  String get perMonth => '/1 måned';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Søk etter hva som helst i ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsNo implements TranslationsExceptionsEn {
  _TranslationsExceptionsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Noe gikk galt, prøv igjen';
  @override
  String get noNidPassport => 'Ingen NID/Pass-bilde er gitt.';
  @override
  String get noRentPropertyFound =>
      'Ingen leieeiendom funnet for denne leietakeren.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Ingen eiendom funnet!\nPrøv med forskjellige søkeord';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Ingen abonnementsplan funnet!\nOppdater siden og prøv igjen.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Ugyldig ${dataType}-info! Oppdater siden og prøv igjen.';
  @override
  String get invalidDownloadUrl => 'Ugyldig nedlastings-URL!';
  @override
  String failedToSaveFile({required String error}) =>
      'Kunne ikke lagre filen! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Feil ved åpning av filen! ${error}';
  @override
  String get noVehicleInfoProvided => 'Ingen kjøretøyinformasjon oppgitt.';
  @override
  String get yourApplicationRejected => 'Søknaden din er avvist';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintNo
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintNo._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintNo noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintNo._(_root);
  @override
  String get noImageProvided => 'Ingen bilde oppgitt';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundNo
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundNo._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Ingen sikkerhetsdepositum funnet!\nDu kan se sikkerhetsdepositumene når de er tilgjengelige';
  @override
  String get noRentPaymentFound =>
      'Ingen leiebetaling funnet!\nDu kan se leiebetalingene når de er tilgjengelige';
  @override
  String get transactionSummaryApiException =>
      'Kunne ikke hente transaksjonssammendrag.';
  @override
  String get noWithdrawRequestFound =>
      'Ingen forespørsel funnet!\nPrøv å opprette en uttaksforespørsel for å se den her.';
  @override
  String get withdrawRequestNotApproved =>
      'Denne uttaksforespørselen er ikke godkjent!.';
  @override
  String get nonZeroError =>
      'Vennligst skriv inn et gyldig beløp større enn null.';
  @override
  String minAmountError({required String minValue}) =>
      'Beløpet må være minst ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Beløpet må ikke overstige ${maxValue}.';
  @override
  String get selectPaymentMethodHint =>
      'Vennligst velg en betalingsmetode først.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundNo
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundNo._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintNo refundRequestHint =
      _TranslationsExceptionsRefundRequestHintNo._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Velg antall ${value}';
  @override
  String get invalidDateRange => 'Ugyldig datoperiode.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} må være større enn null.';
  @override
  late final _TranslationsExceptionsEditPropertyNo editProperty =
      _TranslationsExceptionsEditPropertyNo._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationNo rentInvitation =
      _TranslationsExceptionsRentInvitationNo._(_root);
  @override
  String get notenantFoundList =>
      'Ingen leietakere!\nPrøv å legge til en leietaker for å se han/henne her.';
  @override
  String get noFeaturesProvided => 'Ingen funksjoner oppgitt.';
  @override
  String get noNotificationFound =>
      'Ingen varsling tilgjengelig.\nDu kan se varselet ditt her når det er tilgjengelig.';
}

// Path: prompt
class _TranslationsPromptNo implements TranslationsPromptEn {
  _TranslationsPromptNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutNo logout = _TranslationsPromptLogoutNo._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationNo application =
      _TranslationsPromptApplicationNo._(_root);
  @override
  late final _TranslationsPromptLaborNo labor = _TranslationsPromptLaborNo._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestNo maintenanceRequest =
      _TranslationsPromptMaintenanceRequestNo._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodNo withdrawMethod =
      _TranslationsPromptWithdrawMethodNo._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesNo unsavedChanges =
      _TranslationsPromptUnsavedChangesNo._(_root);
  @override
  late final _TranslationsPromptPropertyNo property =
      _TranslationsPromptPropertyNo._(_root);
  @override
  late final _TranslationsPromptRentInvitationNo rentInvitation =
      _TranslationsPromptRentInvitationNo._(_root);
  @override
  late final _TranslationsPromptSessionExpiredNo sessionExpired =
      _TranslationsPromptSessionExpiredNo._(_root);
  @override
  late final _TranslationsPromptNoInternetNo noInternet =
      _TranslationsPromptNoInternetNo._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerNo permissionHandler =
      _TranslationsPromptPermissionHandlerNo._(_root);
  @override
  late final _TranslationsPromptImagePickerNo imagePicker =
      _TranslationsPromptImagePickerNo._(_root);
  @override
  late final _TranslationsPromptVerificationDialogNo verificationDialog =
      _TranslationsPromptVerificationDialogNo._(_root);
  @override
  late final _TranslationsPromptNotificationNo notification =
      _TranslationsPromptNotificationNo._(_root);
}

// Path: form
class _TranslationsFormNo implements TranslationsFormEn {
  _TranslationsFormNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameNo fullName =
      _TranslationsFormFullNameNo._(_root);
  @override
  late final _TranslationsFormEmailNo email = _TranslationsFormEmailNo._(_root);
  @override
  late final _TranslationsFormPasswordNo password =
      _TranslationsFormPasswordNo._(_root);
  @override
  late final _TranslationsFormConfirmPasswordNo confirmPassword =
      _TranslationsFormConfirmPasswordNo._(_root);
  @override
  late final _TranslationsFormMobileNumberNo mobileNumber =
      _TranslationsFormMobileNumberNo._(_root);
  @override
  late final _TranslationsFormAddress1No address1 =
      _TranslationsFormAddress1No._(_root);
  @override
  late final _TranslationsFormAddress2No address2 =
      _TranslationsFormAddress2No._(_root);
  @override
  late final _TranslationsFormPostalCodeNo postalCode =
      _TranslationsFormPostalCodeNo._(_root);
  @override
  late final _TranslationsFormCityNo city = _TranslationsFormCityNo._(_root);
  @override
  late final _TranslationsFormStateNo state = _TranslationsFormStateNo._(_root);
  @override
  late final _TranslationsFormCountryNo country = _TranslationsFormCountryNo._(
    _root,
  );
  @override
  late final _TranslationsFormOtpNo otp = _TranslationsFormOtpNo._(_root);
  @override
  late final _TranslationsFormTitleNo title = _TranslationsFormTitleNo._(_root);
  @override
  late final _TranslationsFormDateNo date = _TranslationsFormDateNo._(_root);
  @override
  late final _TranslationsFormReasonNo reason = _TranslationsFormReasonNo._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodNo withdrawMethod =
      _TranslationsFormWithdrawMethodNo._(_root);
  @override
  late final _TranslationsFormFileFieldNo fileField =
      _TranslationsFormFileFieldNo._(_root);
  @override
  late final _TranslationsFormNoteNo note = _TranslationsFormNoteNo._(_root);
  @override
  late final _TranslationsFormGenderNo gender = _TranslationsFormGenderNo._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldNo anyField =
      _TranslationsFormAnyFieldNo._(_root);
  @override
  late final _TranslationsFormAnyDropdownNo anyDropdown =
      _TranslationsFormAnyDropdownNo._(_root);
}

// Path: action
class _TranslationsActionNo implements TranslationsActionEn {
  _TranslationsActionNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Neste';
  @override
  String get getStarted => 'Kom i gang';
  @override
  String get skip => 'Hopp over';
  @override
  String get select => 'Velg';
  @override
  String get save => 'Lagre';
  @override
  String get signIn => 'Logg inn';
  @override
  String get signUp => 'Registrer deg';
  @override
  String get kContinue => 'Fortsett';
  @override
  String get clearAll => 'Fjern alt';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Send';
  @override
  String get pay => 'Betal';
  @override
  String get remove => 'Fjern';
  @override
  String get goBack => 'Gå tilbake';
  @override
  String get buyNow => 'Kjøp nå';
  @override
  String get no => 'Nei';
  @override
  String get open => 'Åpne';
  @override
  String get addProperty => 'Legg til eiendom';
  @override
  String get process => 'Behandle';
  @override
  String get approve => 'Godkjenn';
  @override
  String get reject => 'Avvis';
  @override
  String get viewRent => 'Vis leie';
  @override
  String get openNavigationMenu => 'Åpne navigasjonsmeny';
  @override
  String get seeAll => 'Se alle';
  @override
  String get update => 'Oppdater';
  @override
  String get printTransaction => 'Skriv ut transaksjon';
  @override
  String get payoutRequest => 'Ubetalingsforespørsel';
  @override
  String get addNew => '+ Legg til ny';
  @override
  String get sendRequest => 'Send forespørsel';
  @override
  String get print => 'Skriv ut';
  @override
  String get requestForRefund => 'Be om refusjon';
  @override
  String get previous => 'Forrige';
  @override
  String get delete => 'Slett';
  @override
  String get applyProperty => 'Søk på eiendom';
  @override
  String get viewApplication => 'Vis søknad';
  @override
  String get inviteTenant => 'Inviter leietaker';
  @override
  String get inviteRent => 'Inviter til leie';
  @override
  String get cancel => 'Avbryt';
  @override
  String get accept => 'Aksepter';
  @override
  String get submit => 'Send inn';
  @override
  String get yes => 'Ja';
  @override
  String get okay => 'Ok';
  @override
  String get confirm => 'Bekreft';
  @override
  String get apply => 'Bruk';
  @override
  String get reset => 'Tilbakestill';
  @override
  String get retry => 'Prøv igjen';
  @override
  String get viewAll => 'Vis alle';
}

// Path: pages
class _TranslationsPagesNo implements TranslationsPagesEn {
  _TranslationsPagesNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageNo language =
      _TranslationsPagesLanguageNo._(_root);
  @override
  late final _TranslationsPagesOnboardNo onboard =
      _TranslationsPagesOnboardNo._(_root);
  @override
  late final _TranslationsPagesSignInNo signIn = _TranslationsPagesSignInNo._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordNo forgotPassword =
      _TranslationsPagesForgotPasswordNo._(_root);
  @override
  late final _TranslationsPagesOtpVerificationNo otpVerification =
      _TranslationsPagesOtpVerificationNo._(_root);
  @override
  late final _TranslationsPagesResetPasswordNo resetPassword =
      _TranslationsPagesResetPasswordNo._(_root);
  @override
  late final _TranslationsPagesSignUpNo signUp = _TranslationsPagesSignUpNo._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeNo welcome =
      _TranslationsPagesWelcomeNo._(_root);
  @override
  late final _TranslationsPagesAboutUsNo aboutUs =
      _TranslationsPagesAboutUsNo._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsNo termsAndConditions =
      _TranslationsPagesTermsAndConditionsNo._(_root);
  @override
  late final _TranslationsPagesNotificationListNo notificationList =
      _TranslationsPagesNotificationListNo._(_root);
  @override
  late final _TranslationsPagesContactUsNo contactUs =
      _TranslationsPagesContactUsNo._(_root);
  @override
  late final _TranslationsPagesCancelRentingNo cancelRenting =
      _TranslationsPagesCancelRentingNo._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsNo invoiceDetails =
      _TranslationsPagesInvoiceDetailsNo._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentNo offlinePayment =
      _TranslationsPagesOfflinePaymentNo._(_root);
  @override
  late final _TranslationsPagesPaymentStatusNo paymentStatus =
      _TranslationsPagesPaymentStatusNo._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsNo propertyDetails =
      _TranslationsPagesPropertyDetailsNo._(_root);
  @override
  late final _TranslationsPagesSearchNo search = _TranslationsPagesSearchNo._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanNo subscriptionPlan =
      _TranslationsPagesSubscriptionPlanNo._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportNo
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportNo._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsNo implements TranslationsEnumsEn {
  _TranslationsEnumsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusNo propertyStatus =
      _TranslationsEnumsPropertyStatusNo._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeNo propertyType =
      _TranslationsEnumsPropertyTypeNo._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusNo applicationStatus =
      _TranslationsEnumsApplicationStatusNo._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusNo myRentStatus =
      _TranslationsEnumsMyRentStatusNo._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusNo maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusNo._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeNo tenantProfileType =
      _TranslationsEnumsTenantProfileTypeNo._(_root);
  @override
  late final _TranslationsEnumsTenantTypeNo tenantType =
      _TranslationsEnumsTenantTypeNo._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusNo paymentStatus =
      _TranslationsEnumsPaymentStatusNo._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsNo paymentOptions =
      _TranslationsEnumsPaymentOptionsNo._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeNo paymentType =
      _TranslationsEnumsPaymentTypeNo._(_root);
  @override
  late final _TranslationsEnumsGenderNo gender = _TranslationsEnumsGenderNo._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationNo ecRelation =
      _TranslationsEnumsEcRelationNo._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeNo vehicleType =
      _TranslationsEnumsVehicleTypeNo._(_root);
  @override
  late final _TranslationsEnumsSortByNo sortBy = _TranslationsEnumsSortByNo._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeNo residentialType =
      _TranslationsEnumsResidentialTypeNo._(_root);
  @override
  late final _TranslationsEnumsFloorRangeNo floorRange =
      _TranslationsEnumsFloorRangeNo._(_root);
  @override
  late final _TranslationsEnumsFurnishingsNo furnishings =
      _TranslationsEnumsFurnishingsNo._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeNo commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeNo._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeNo landPropertyType =
      _TranslationsEnumsLandPropertyTypeNo._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeNo residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeNo._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodNo minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodNo._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterNo dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterNo._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileNo
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoNo
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Kjøretøyinformasjon';
  @override
  String get optional => 'Kjøretøyinformasjon (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoNo
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Kjøretøyets registreringsnummer.';
  @override
  String get short => 'Registreringsnummer.';
  @override
  String get alt => 'Skiltnummer.';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintNo
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Ingen søknad funnet!\n${subject} vil bli vist her når tilgjengelig.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsNo subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsNo._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintNo
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Ingen eiendom funnet!\nPrøv å legge til en eiendom for å se den her.';
  @override
  String get tenantRecommended =>
      'Ingen anbefalte eiendommer funnet\nPrøv igjen senere.';
  @override
  String get tenantAllProperty =>
      'Eiendommene er ikke tilgjengelige\nPrøv igjen senere.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundNo
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Ingen ${status} vedlikehold funnet.';
  @override
  String get tenant =>
      'Ingen vedlikehold funnet! Du kan opprette en vedlikeholdsforespørsel for å se den her.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundNo
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Ingen ${status} refusjonsforespørsel funnet!\nDu kan se refusjonsforespørsel her når den er tilgjengelig.';
  @override
  String get tenant =>
      'Ingen refusjonsforespørsel funnet!\nDu kan opprette en refusjonsforespørsel for å se den her.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintNo
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Leietakeren vil godkjenne refusjonen når han får pengene tilbake';
  @override
  String get tenantReqSuccess =>
      'Vi vil gjennomgå refusjonsforespørselen og godkjenne den innen 24 timer.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyNo
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Leieeiendommen endres. Den må bare være gyldig (effektiv) for neste måneds leiebetaling.';
  @override
  String get deleteOnRent =>
      'Eiendommen din er allerede leid av leietaker. Kan ikke slette den før du fjerner leietakeren først';
  @override
  String get alreayRented =>
      'Denne eiendommen er allerede leid. Prøv igjen senere.\nEller du kan kontakte utleieren for mer informasjon.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationNo
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Ingen leieinvitasjon funnet!\nPrøv å opprette en leieinvitasjon for å se den her.';
  @override
  String get tenantNoRentInvitation =>
      'Ingen leieinvitasjon funnet!\nDu kan se leieinvitasjon her når den er tilgjengelig.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutNo implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Er du sikker på at du vil logge ut?';
}

// Path: prompt.application
class _TranslationsPromptApplicationNo
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Hvorfor avviser du denne søknaden?';
  @override
  late final _TranslationsPromptApplicationApplicationSentNo applicationSent =
      _TranslationsPromptApplicationApplicationSentNo._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborNo implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteNo delete =
      _TranslationsPromptLaborDeleteNo._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestNo
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Hvorfor blir denne forespørselen avvist?';
  @override
  String get processTitle =>
      'Er du sikker på at du behandler denne vedlikeholdsforespørselen?';
  @override
  String get completeTitle => 'Arbeidet er fullført?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodNo
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Slette uttaksmetode?';
  @override
  String get deleteDescription =>
      'Er du sikker på at du vil slette denne uttaksmetoden?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesNo
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Er du sikker på at du vil gå tilbake?';
  @override
  String get message => 'Felt som er endret, blir ikke lagret!';
}

// Path: prompt.property
class _TranslationsPromptPropertyNo implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteNo delete =
      _TranslationsPromptPropertyDeleteNo._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationNo
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveNo
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveNo._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptNo tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptNo._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredNo
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sesjonen er utløpt';
  @override
  String get message => 'Sesjonen din er utløpt. Logg inn igjen';
  @override
  String get action => 'Logg inn';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetNo
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ingen internettforbindelse';
  @override
  String get message =>
      'Sjekk Wi-Fi-mobilnettverksforbindelsen din og prøv igjen';
  @override
  String get action => 'Prøv igjen';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerNo
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tillatelse kreves!';
  @override
  String get message =>
      'Du må gi tillatelser i appens innstillinger. Vil du åpne innstillingene nå?';
  @override
  String get action => 'Innstillinger';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerNo
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Velg alternativ';
  @override
  String get gallery => 'Galleri';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogNo
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bekreft e-posten din';
  @override
  String get message => 'Vi har sendt en e-post med bekreftelseskode';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} til ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationNo
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Fjerne varsler?';
  @override
  String get clearMessage => 'Er du sikker på at du vil fjerne alle varsler?';
}

// Path: form.fullName
class _TranslationsFormFullNameNo implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Skriv inn ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsNo errors =
      _TranslationsFormFullNameErrorsNo._(_root);
}

// Path: form.email
class _TranslationsFormEmailNo implements TranslationsFormEmailEn {
  _TranslationsFormEmailNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Skriv inn din ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsNo errors =
      _TranslationsFormEmailErrorsNo._(_root);
}

// Path: form.password
class _TranslationsFormPasswordNo implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsNo errors =
      _TranslationsFormPasswordErrorsNo._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordNo
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Bekreft ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsNo errors =
      _TranslationsFormConfirmPasswordErrorsNo._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberNo
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsNo errors =
      _TranslationsFormMobileNumberErrorsNo._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1No implements TranslationsFormAddress1En {
  _TranslationsFormAddress1No._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Husnummer og gatenavn';
  @override
  late final _TranslationsFormAddress1ErrorsNo errors =
      _TranslationsFormAddress1ErrorsNo._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2No implements TranslationsFormAddress2En {
  _TranslationsFormAddress2No._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Leilighet, suite, enhet osv.';
  @override
  late final _TranslationsFormAddress2ErrorsNo errors =
      _TranslationsFormAddress2ErrorsNo._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeNo implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Skriv inn ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsNo errors =
      _TranslationsFormPostalCodeErrorsNo._(_root);
}

// Path: form.city
class _TranslationsFormCityNo implements TranslationsFormCityEn {
  _TranslationsFormCityNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Skriv inn ${_root.common.city}-navnet ditt.';
  @override
  late final _TranslationsFormCityErrorsNo errors =
      _TranslationsFormCityErrorsNo._(_root);
}

// Path: form.state
class _TranslationsFormStateNo implements TranslationsFormStateEn {
  _TranslationsFormStateNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Skriv inn ${_root.common.state}-navnet ditt.';
  @override
  late final _TranslationsFormStateErrorsNo errors =
      _TranslationsFormStateErrorsNo._(_root);
}

// Path: form.country
class _TranslationsFormCountryNo implements TranslationsFormCountryEn {
  _TranslationsFormCountryNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Velg ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsNo errors =
      _TranslationsFormCountryErrorsNo._(_root);
}

// Path: form.otp
class _TranslationsFormOtpNo implements TranslationsFormOtpEn {
  _TranslationsFormOtpNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsNo errors =
      _TranslationsFormOtpErrorsNo._(_root);
}

// Path: form.title
class _TranslationsFormTitleNo implements TranslationsFormTitleEn {
  _TranslationsFormTitleNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Tittel';
  @override
  String get hint => 'Skriv inn tittel';
  @override
  late final _TranslationsFormTitleErrorsNo errors =
      _TranslationsFormTitleErrorsNo._(_root);
}

// Path: form.date
class _TranslationsFormDateNo implements TranslationsFormDateEn {
  _TranslationsFormDateNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Velg ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsNo errors =
      _TranslationsFormDateErrorsNo._(_root);
}

// Path: form.reason
class _TranslationsFormReasonNo implements TranslationsFormReasonEn {
  _TranslationsFormReasonNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Årsak';
  @override
  String get hint => 'Skriv inn årsak';
  @override
  late final _TranslationsFormReasonErrorsNo errors =
      _TranslationsFormReasonErrorsNo._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodNo
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Velg ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsNo errors =
      _TranslationsFormWithdrawMethodErrorsNo._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldNo implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Last opp ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsNo errors =
      _TranslationsFormFileFieldErrorsNo._(_root);
}

// Path: form.note
class _TranslationsFormNoteNo implements TranslationsFormNoteEn {
  _TranslationsFormNoteNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Skriv inn ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsNo errors =
      _TranslationsFormNoteErrorsNo._(_root);
}

// Path: form.gender
class _TranslationsFormGenderNo implements TranslationsFormGenderEn {
  _TranslationsFormGenderNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Velg ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsNo errors =
      _TranslationsFormGenderErrorsNo._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldNo implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Skriv inn ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsNo errors =
      _TranslationsFormAnyFieldErrorsNo._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownNo implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Velg ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsNo errors =
      _TranslationsFormAnyDropdownErrorsNo._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageNo implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardNo implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataNo onboardData =
      _TranslationsPagesOnboardOnboardDataNo._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInNo implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Velkommen tilbake';
  @override
  String get subtitle => 'Logg inn nå for å begynne en fantastisk reise.';
  @override
  late final _TranslationsPagesSignInExtraNo extra =
      _TranslationsPagesSignInExtraNo._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordNo
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Glemt passord';
  @override
  String get subtitle =>
      'Skriv inn e-postadressen din for å gjenopprette passordet ditt.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationNo
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bekreftelse';
  @override
  String subtitle({required String email}) =>
      '4-sifret pin-kode er sendt til e-postadressen din. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraNo extra =
      _TranslationsPagesOtpVerificationExtraNo._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordNo
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tilbakestill passord';
  @override
  String get subtitle =>
      'Tilbakestill passordet ditt for å gjenopprette og logge inn på kontoen din';
  @override
  late final _TranslationsPagesResetPasswordExtraNo extra =
      _TranslationsPagesResetPasswordExtraNo._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpNo implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Opprett en konto';
  @override
  String get subtitle => 'Registrer deg nå for å begynne en fantastisk reise';
  @override
  late final _TranslationsPagesSignUpExtraNo extra =
      _TranslationsPagesSignUpExtraNo._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeNo implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Hvem er du?';
  @override
  String get subtitle => 'Velg alternativet nedenfor.';
  @override
  late final _TranslationsPagesWelcomeExtraNo extra =
      _TranslationsPagesWelcomeExtraNo._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsNo implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsNo
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListNo
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Varsler';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsNo implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraNo extra =
      _TranslationsPagesContactUsExtraNo._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingNo
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Hvorfor ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormNo form =
      _TranslationsPagesCancelRentingFormNo._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsNo
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentNo
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Offline betaling';
  @override
  late final _TranslationsPagesOfflinePaymentFormNo form =
      _TranslationsPagesOfflinePaymentFormNo._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraNo extra =
      _TranslationsPagesOfflinePaymentExtraNo._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusNo
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessNo success =
      _TranslationsPagesPaymentStatusSuccessNo._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailNo fail =
      _TranslationsPagesPaymentStatusFailNo._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsNo
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraNo extra =
      _TranslationsPagesPropertyDetailsExtraNo._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchNo implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Søk';
  @override
  late final _TranslationsPagesSearchExtraNo extra =
      _TranslationsPagesSearchExtraNo._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanNo
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Velg din plan';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraNo extra =
      _TranslationsPagesSubscriptionPlanExtraNo._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportNo
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Totale vedlikeholdskostnader: '),
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
class _TranslationsEnumsPropertyStatusNo
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'All eiendom';
  @override
  String get pending => 'Ventende';
  @override
  String get active => 'Aktiv';
  @override
  String get inactive => 'Inaktiv';
  @override
  String get rejected => 'Avvist';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeNo
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Leilighet/Kondominium';
  @override
  String get house => 'Hus';
  @override
  String get commercialProperty => 'Næringseiendom';
  @override
  String get land => 'Tomt';
  @override
  String get room => 'Rom';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusNo
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'Ventende';
  @override
  String get processing => 'Behandling';
  @override
  String get approved => 'Godkjent';
  @override
  String get rejected => 'Avvist';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusNo
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Ventende';
  @override
  String get processing => 'Behandling';
  @override
  String get active => 'Aktiv';
  @override
  String get expired => 'Utløpt';
  @override
  String get cancelled => 'Avlyst';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusNo
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Ventende';
  @override
  String get processing => 'Behandling';
  @override
  String get rejected => 'Avvist';
  @override
  String get completed => 'Fullført';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeNo
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privat (Individuell)';
  @override
  String get company => 'Selskap';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeNo implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Ny leietaker';
  @override
  String get activeTenant => 'Aktiv leietaker';
  @override
  String get expiredTenant => 'Utløpt leietaker';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusNo
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'Ventende';
  @override
  String get paid => 'Betalt';
  @override
  String get unpaid => 'Ubetalt';
  @override
  String get rejected => 'Avvist';
  @override
  String get refund => 'Refusjon';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsNo
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Nettbetaling';
  @override
  String get offlinePayment => 'Offline betaling';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeNo
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Sikkerhetsdepositum';
  @override
  String get rentPayment => 'Leiebetaling';
  @override
  String get subscription => 'Abonnement';
}

// Path: enums.gender
class _TranslationsEnumsGenderNo implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Mann';
  @override
  String get female => 'Kvinne';
  @override
  String get other => 'Annet';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationNo implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Kone';
  @override
  String get parent => 'Forelder';
  @override
  String get friend => 'Venn';
  @override
  String get brother => 'Bror';
  @override
  String get sister => 'Søster';
  @override
  String get child => 'Barn';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeNo
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Bil';
  @override
  String get motorcycles => 'Motorsykler';
  @override
  String get lorry => 'Lastebil';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByNo implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Lav til høy';
  @override
  String get highToLow => 'Høy til lav';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeNo
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Leilighet';
  @override
  String get apartment => 'Leilighet';
  @override
  String get condominium => 'Kondominium';
  @override
  String get serviceResidence => 'Servicebolig';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Dupleks';
  @override
  String get townhouseCondo => 'Rekkehus/Kondominium';
  @override
  String get others => 'Andre';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeNo implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Høy';
  @override
  String get medium => 'Middels';
  @override
  String get low => 'Lav';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsNo
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Fullt møblert';
  @override
  String get partiallyFurnished => 'Delvis møblert';
  @override
  String get notFurnished => 'Ikke møblert';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeNo
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Kontorlokaler';
  @override
  String get retailSpace => 'Butikklokaler';
  @override
  String get shopLot => 'Butikklokale';
  @override
  String get warehouseFactory => 'Lager/Fabrikk';
  @override
  String get hotelResort => 'Hotell/Resort';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Andre';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeNo
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Bolig';
  @override
  String get industrial => 'Industriell';
  @override
  String get agricultural => 'Landbruk';
  @override
  String get commercial => 'Kommersiell';
  @override
  String get mixedDevelopment => 'Blandet utbygging';
  @override
  String get others => 'Andre';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeNo
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Kondominium/Servicebolig/Penthouse';
  @override
  String get apartment => 'Leilighet/Bolig';
  @override
  String get house => 'Hus';
  @override
  String get shoplot => 'Butikklokale';
  @override
  String get sharing => 'Deling av hus/leilighet';
  @override
  String get others => 'Andre';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodNo
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

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
class _TranslationsEnumsDropdownDateFilterNo
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Daglig';
  @override
  String get weekly => 'Ukentlig';
  @override
  String get monthly => 'Månedlig';
  @override
  String get yearly => 'Årlig';
  @override
  String get custom => 'Tilpasset';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsNo
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Din søknad';
  @override
  String get landlord => 'Leietakers søknad';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentNo
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Søknaden er sendt!';
  @override
  String get sucessDescription =>
      'Du kan se denne søknaden i søknadslisten din';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteNo
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Slette arbeidskraft?';
  @override
  String get description =>
      'Er du sikker på at du vil slette denne arbeidskraften?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteNo
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Slette eiendom?';
  @override
  String get message => 'Er du sikker på at du vil slette denne eiendommen?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveNo
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Er du sikker på at du vil godkjenne denne leien?';
  @override
  String get description =>
      'Forsikre deg om at du har gjennomgått avtalen som er signert av leietakeren.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptNo
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Er du sikker på at du vil akseptere denne invitasjonen?';
  @override
  String get description =>
      'Forsikre deg om at du har lastet ned avtalens PDF-fil!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsNo
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn ditt ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsNo implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Vennligst skriv inn din ${_root.common.email}-adresse';
  @override
  String get invalid => '⦸ Ugyldig e-post, prøv igjen';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsNo
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn ditt ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Passordet må være minst ${count} tegn langt!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsNo
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn ditt ${_root.common.password}';
  @override
  String get notMatched => 'Bekreft passordet stemmer ikke!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsNo
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Vennligst skriv inn ditt ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsNo
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn din ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsNo
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn din ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsNo
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn ditt ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsNo implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn ditt ${_root.common.city}-navn.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsNo implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn ditt ${_root.common.state}-navn.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsNo
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst velg ditt ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsNo implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn OTP-en.';
  @override
  String get invalid => 'Vennligst skriv inn riktig OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsNo implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn tittel';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsNo implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vennligst velg ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsNo
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst skriv inn årsak';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsNo
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst velg ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsNo
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Vennligst velg ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsNo implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Vennligst skriv inn ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsNo
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst velg ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsNo
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vennligst skriv inn ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Vennligst skriv inn gyldig @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsNo
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vennligst velg ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Vennligst velg gyldig @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataNo
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1No data1 =
      _TranslationsPagesOnboardOnboardDataData1No._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2No data2 =
      _TranslationsPagesOnboardOnboardDataData2No._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3No data3 =
      _TranslationsPagesOnboardOnboardDataData3No._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraNo
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Husk meg';
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
class _TranslationsPagesOtpVerificationExtraNo
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendNo codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendNo._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraNo
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogNo dialog =
      _TranslationsPagesResetPasswordExtraDialogNo._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraNo
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

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
class _TranslationsPagesWelcomeExtraNo
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Administrer dine egne eiendommer';
  @override
  String get tenantTag => 'Logg inn på leiekontoen din';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraNo
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Melding...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormNo
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonNo reason =
      _TranslationsPagesCancelRentingFormReasonNo._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormNo
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteNo paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteNo._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraNo
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Betalingsbeløp: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Kontoholders navn';
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
      const TextSpan(text: 'Velg kun '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' eller '),
      fileType('DOC'),
      const TextSpan(text: '-formatfiler. Filstørrelse '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessNo
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Vis faktura';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Vi vil gjennomgå betalingen og godkjenne den innen 24 timer.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailNo
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Prøv igjen';
  @override
  String get title => 'Oops! Betaling mislyktes';
  @override
  String get description =>
      'Transaksjonen din mislyktes på grunn av en teknisk feil.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraNo
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

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
      const TextSpan(text: 'Funksjoner '),
      fa('(Fasiliteter og bekvemmeligheter)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Velg leieperiode';
  @override
  String get writeAReview => '+ Skriv en anmeldelse';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraNo
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Søk etter tomter, leiligheter, rom...';
  @override
  String get noRecentSearch => 'Du har ingen nylige søk.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraNo
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Abonnementsbetaling vellykket.\nDu har nå tilgang til de abonnerte funksjonene.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1No
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1No._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finn din eiendom';
  @override
  String get description =>
      'Vi har gjort det enkelt å finne et sted som passer ditt liv – enten det er et rom, en leilighet eller et hus.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2No
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2No._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Leilighet i byen';
  @override
  String get description =>
      'Vi sparer deg tid ved raskt å matche deg med den perfekte eiendommen før den er borte, slik at du kan nyte ditt nye hjem, eller liste din egen gratis.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3No
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3No._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ditt komfortable hus';
  @override
  String get description =>
      'Hvis du leter etter et sted å bo, ta en titt på husene våre til leie. Vi har et bredt utvalg av hus du kan velge mellom over hele landet.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendNo
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Koden sendes om ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Send kode på nytt'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogNo
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Endret!';
  @override
  String get subtitle =>
      'Logg inn med ditt nye passord.\nOmdirigerer deg til Logg inn...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonNo
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Skriv årsak';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsNo errors =
      _TranslationsPagesCancelRentingFormReasonErrorsNo._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteNo
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Betalingsmerknad (${_root.common.optional})';
  @override
  String get hint => 'Skriv inn tekst...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsNo
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsNo._(this._root);

  final TranslationsNo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vennligst oppgi årsaken til leieavbestillingen';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsNo {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Språk';
      case 'common.subscriptionPlan':
        return 'Abonnementsplan';
      case 'common.contactUs':
        return 'Kontakt oss';
      case 'common.termsAndConditions':
        return 'Vilkår og betingelser';
      case 'common.aboutUs':
        return 'Om oss';
      case 'common.logout':
        return 'Logg ut';
      case 'common.editProfile':
        return 'Rediger profil';
      case 'common.fullName':
        return 'Fullt navn';
      case 'common.email':
        return 'E-post';
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
        return 'Fylke';
      case 'common.password':
        return 'Passord';
      case 'common.forgotPassword':
        return 'Glemt passord';
      case 'common.tenant':
        return 'Leietaker';
      case 'common.landlord':
        return 'Uteleier';
      case 'common.cancelRenting':
        return 'Avbryt leie';
      case 'common.startDate':
        return 'Startdato';
      case 'common.endDate':
        return 'Sluttdato';
      case 'common.fromDate':
        return 'Fra dato';
      case 'common.toDate':
        return 'Til dato';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Bankliste';
      case 'common.withdrawMethod':
        return 'Uttaksmetode';
      case 'common.uploadPaymentReceipt':
        return 'Last opp betalingskvittering';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Merk: '),
            note('Betalingen krever manuell godkjenning av admin innen'),
            const TextSpan(text: ' '),
            duraion('24–48 timer.'),
          ],
        );
      case 'common.reviews':
        return 'Anmeldelser';
      case 'common.description':
        return 'Beskrivelse';
      case 'common.about':
        return 'Om';
      case 'common.propertyTypes':
        return 'EiendomsTyper';
      case 'common.features':
        return 'Funksjoner';
      case 'common.floorPlans':
        return 'Plantegninger';
      case 'common.buildingDetails':
        return 'Bygningsdetaljer';
      case 'common.buildingName':
        return 'Bygningsnavn';
      case 'common.propertyAddress':
        return 'Eiendomsadresse';
      case 'common.completionYear':
        return 'Fullføringsår';
      case 'common.lotNumber':
        return 'Lotnummer';
      case 'common.residentialType':
        return 'Boligtype';
      case 'common.furnishings':
        return 'Møblering';
      case 'common.floorRange':
        return 'Etasjeområde';
      case 'common.bedrooms':
        return 'Soverom';
      case 'common.bathrooms':
        return 'Bad';
      case 'common.propertySize':
        return 'Eiendomsstørrelse';
      case 'common.rentalPeriod':
        return 'Leieperiode';
      case 'common.securityDeposit':
        return 'Sikkerhetsdepositum';
      case 'common.utilityBill':
        return 'Strømregning';
      case 'common.facilities':
        return 'Fasiliteter';
      case 'common.amenities':
        return 'Fasiliteter';
      case 'common.expiringReason':
        return 'Utløpsårsak';
      case 'common.tenantDetails':
        return 'Leietakerdetaljer';
      case 'common.typeOfTenant':
        return 'Leietakertype';
      case 'common.tenantName':
        return 'Leietakernavn';
      case 'common.nidPassport':
        return 'NID/Pass';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Leietaker-ID';
      case 'common.dateOfBirth':
        return 'Fødselsdato';
      case 'common.gender':
        return 'Kjønn';
      case 'common.nominee':
        return 'Kandidat';
      case 'common.name':
        return 'Navn';
      case 'common.optional':
        return 'Valgfritt';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Kontaktperson ved nødsituasjoner';
      case 'common.relation':
        return 'Forhold';
      case 'common.relationWith':
        return '${_root.common.relation} With';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} You';
      case 'common.company':
        return 'Firma';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Arbeidsplass';
      case 'common.officePhoneNo':
        return 'Kontortelefonnummer';
      case 'common.officeMobileNo':
        return 'Kontor ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Kjøretøy';
      case 'common.vehiclesInfo.plain':
        return 'Kjøretøyinformasjon';
      case 'common.vehiclesInfo.optional':
        return 'Kjøretøyinformasjon (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Kjøretøyets registreringsnummer.';
      case 'common.vehicleRegistrationNo.short':
        return 'Registreringsnummer.';
      case 'common.vehicleRegistrationNo.alt':
        return 'Skiltnummer.';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Brand';
      case 'common.rentProperty':
        return 'Lei eiendom';
      case 'common.propertyDetails':
        return 'Eiendomsdetaljer';
      case 'common.propertyId':
        return 'Eiendoms-ID';
      case 'common.propertyType':
        return 'Eierskapstype';
      case 'common.propertyName':
        return 'Eiendomsnavn';
      case 'common.paymentDetails':
        return 'Betalingsdetaljer';
      case 'common.monthlyRent':
        return 'Månedlig leie';
      case 'common.thisMonthPayment':
        return 'Denne månedens betaling';
      case 'common.totalPaidRent':
        return 'Total betalt leie';
      case 'common.dueRent':
        return 'Forfalt leie';
      case 'common.rentStartDate':
        return 'Leie ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Leie ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'Leieavtale PDF';
      case 'common.noFile':
        return 'Ingen fil';
      case 'common.tenantImageOp':
        return 'Leietakerbilde ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Legg til nye kjøretøy';
      case 'common.uploadNidPassport':
        return 'Last opp NID/Pass';
      case 'common.nidPassportUploadNote':
        return 'Bare filtypebilde vil bli akseptert. Filgrense opptil 2,5 MB.';
      case 'common.search':
        return 'Søk';
      case 'common.sortBy':
        return 'Sorter etter';
      case 'common.subscription':
        return 'Abonnement';
      case 'common.downloading':
        return 'Laster ned...';
      case 'common.downloadSuccess':
        return 'Filen er lastet ned!';
      case 'common.addPropertyBannerTitle':
        return 'Ønsker du å leie ut eiendommen din?';
      case 'common.application':
        return 'Søknad';
      case 'common.tenantHasPaidDeposit':
        return 'Leietaker har betalt depositumet.';
      case 'common.askProcessingRentApplication':
        return 'Er du sikker på at du behandler denne forespørselen om leie av eiendom?';
      case 'common.dateAndTime':
        return 'Dato og tid';
      case 'common.applicationDetails':
        return 'Søknadsdetaljer';
      case 'common.depositStatus':
        return 'Depositumstatus';
      case 'common.uploadRentAgreement':
        return 'Last opp leieavtale';
      case 'common.uploadFilePDF':
        return 'Last opp fil (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Velg en avtaledokumentfil.';
      case 'common.landlordRentAgreementPDF':
        return 'Uteleiers leieavtale PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Leietakers leieavtale PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Merk: '),
            note(
              'Godkjenn søknaden først etter at leietaker har betalt et depositum.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Årsak til avvisning';
      case 'common.youveRejectedThisApplication':
        return 'Du har avvist denne søknaden';
      case 'common.landlordDetails':
        return 'Uteleierdetaljer';
      case 'common.landlordName':
        return 'Uteleiernavn';
      case 'common.downloadRentAgreement':
        return 'Last ned leieavtale';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Aksepter '),
            toc('Vilkår og betingelser'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Merk: '),
            note(
              'Last ned og les avtalen. Send den signerte avtalen til utleier via WhatsApp eller e-post.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Merk: '),
            note(
              'Uteleier godkjenner søknaden når leietaker betaler sikkerhet, strøm og en måneds forskuddsbetaling av leie.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Leieavtale (PDF) '),
            complete('Fullfør avtale'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Merk: '),
            note(
              'Uteleier godkjenner søknaden når leietaker betaler sikkerhet, strøm og en måneds forskuddsbetaling av leie.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Søknadsliste';
      case 'common.viewDetails':
        return 'Vis detaljer';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Hjem';
      case 'common.dashboard':
        return 'Dashboard';
      case 'common.tenants':
        return 'Leietakere';
      case 'common.maintenance':
        return 'Vedlikehold';
      case 'common.maintenanceList':
        return 'Vedlikeholdsliste';
      case 'common.maintenanceReport':
        return 'Vedlikeholdsrapport';
      case 'common.labor':
        return 'Arbeidskraft';
      case 'common.applications':
        return 'Søknader';
      case 'common.rentInvitation':
        return 'Leieinvitasjon';
      case 'common.payment':
        return 'Betaling';
      case 'common.rentPayment':
        return 'Leiebetaling';
      case 'common.depositUtilityPayment':
        return 'Depositum og strømbetaling';
      case 'common.refundRequest':
        return 'Refusjonsforespørsel';
      case 'common.withdrawRequest':
        return 'Uttaksforespørsel';
      case 'common.myProperty':
        return 'Min eiendom';
      case 'common.myRent':
        return 'Min leie';
      case 'common.wishlist':
        return 'Ønskeliste';
      case 'common.properties':
        return 'Egenskaper';
      case 'common.allProperties':
        return 'Alle eiendommer';
      case 'common.totalPropery':
        return 'Total eiendom';
      case 'common.occupied':
        return 'Beboet';
      case 'common.vacant':
        return 'Ledig';
      case 'common.accounting':
        return 'Regnskap';
      case 'common.totalIncome':
        return 'Total inntekt';
      case 'common.totalExpense':
        return 'Total utgift';
      case 'common.currentBalance':
        return 'Nåværende balanse';
      case 'common.totalWithdrawal':
        return 'Total (uttak)';
      case 'common.totalProperties':
        return 'Totalt antall eiendommer';
      case 'common.totalTenant':
        return 'Totalt antall leietakere';
      case 'common.totalRentPaid':
        return 'Total betalt leie';
      case 'common.totalRentDue':
        return 'Total forfalt leie';
      case 'common.totalApplication':
        return 'Totalt antall søknader';
      case 'common.pendingApplication':
        return 'Ventende søknad';
      case 'common.processingApplication':
        return 'Behandling av søknad';
      case 'common.approveApplication':
        return 'Godkjenn søknad';
      case 'common.rejectApplication':
        return 'Avvis søknad';
      case 'common.maintenanceCost':
        return 'Vedlikeholdskostnad';
      case 'common.transactionSummary':
        return 'Transaksjonssammendrag';
      case 'common.maintenanceRequest':
        return 'Vedlikeholdsforespørsel';
      case 'common.notifications':
        return 'Varsler';
      case 'common.myProperties':
        return 'Mine eiendommer';
      case 'common.recommendationProperties':
        return 'Anbefalingseiendommer';
      case 'common.laborList':
        return 'Arbeidskraftliste';
      case 'common.addLabor':
        return 'Legg til arbeidskraft';
      case 'common.laborDetails':
        return 'Arbeidskraftdetaljer';
      case 'common.laborSalary':
        return 'Arbeidskraftlønn';
      case 'common.editLabor':
        return 'Rediger arbeidskraft';
      case 'common.addNewLabor':
        return 'Legg til ny arbeidskraft';
      case 'common.enterAmount':
        return 'Skriv inn beløp';
      case 'common.maintenanceDetails':
        return 'Vedlikeholdsdetaljer';
      case 'common.laborName':
        return 'Arbeidskraftnavn';
      case 'common.comment':
        return 'Kommentar';
      case 'common.image':
        return 'Bilde';
      case 'common.complete':
        return 'Fullfør';
      case 'common.details':
        return 'Detaljer';
      case 'common.title':
        return 'Tittel';
      case 'common.date':
        return 'Dato';
      case 'common.reason':
        return 'Årsak';
      case 'common.edit':
        return 'Rediger';
      case 'common.property':
        return 'Eiendom';
      case 'common.completeYourProfile':
        return 'Fullfør profilen din';
      case 'common.profileImage':
        return 'Profilbilde';
      case 'common.imagePickHint':
        return 'Bare JPEG- og PNG-bilde med maks størrelse på 120x120 piksler.';
      case 'common.invoiceId':
        return 'Faktura-ID';
      case 'common.depositAmount':
        return 'Depositumsbeløp';
      case 'common.landlordPhone':
        return 'Uteleiertelefon';
      case 'common.rentalAdvance':
        return 'Leie (forskudd)';
      case 'common.totalAmount':
        return 'Totalbeløp';
      case 'common.rentalAmount':
        return 'Leiebeløp';
      case 'common.adminCharge':
        return 'Administrasjonsgebyr';
      case 'common.editAccount':
        return 'Rediger konto';
      case 'common.addNewAccount':
        return 'Legg til ny konto';
      case 'common.transactionId':
        return 'Transaksjons-ID';
      case 'common.transactionType':
        return 'Transaksjonstype';
      case 'common.requestDate':
        return 'Forespørselsdato';
      case 'common.amount':
        return 'Beløp';
      case 'common.fee':
        return 'Gebyr';
      case 'common.paymentStatus':
        return 'Betalingsstatus';
      case 'common.generatedTime':
        return 'Generert tid';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Dette er en systemgenerert rapport av '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Uttakshistorikk';
      case 'common.history':
        return 'Historikk';
      case 'common.withdrawAmount':
        return 'Uttaksbeløp';
      case 'common.availableBalance':
        return 'Tilgjengelig saldo';
      case 'common.withdrawCharge':
        return 'Uttaksgebyr';
      case 'common.paymentMethod':
        return 'Betalingsmetode';
      case 'common.requestSendSuccess':
        return 'Forespørsel sendt!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Betalingskvittering sendt.';
      case 'common.refundReason':
        return 'Årsak til refusjon';
      case 'common.note':
        return 'Merknad';
      case 'common.refundReceiveSuccess':
        return 'Refusjon mottatt.';
      case 'common.downloadPaymentReceipt':
        return 'Last ned betalingskvittering';
      case 'common.invoice':
        return 'Faktura';
      case 'common.selectPropertyToSeeInvoice':
        return 'Velg eiendom for å se fakturanummeret...';
      case 'common.bankAccName':
        return 'Bankkontonavn';
      case 'common.bankName':
        return 'Banknavn';
      case 'common.bankAccNum':
        return 'Bankkontonummer';
      case 'common.thankYou':
        return 'Takk!';
      case 'common.basicInfo':
        return 'Grunnleggende informasjon';
      case 'common.descriptionPricing':
        return 'Beskrivelse og priser';
      case 'common.contact':
        return 'Kontakt';
      case 'common.photos':
        return 'Bilder';
      case 'common.successfullySubmitted':
        return 'Sendt!';
      case 'common.editProperty':
        return 'Rediger eiendom';
      case 'common.addNewProperty':
        return 'Legg til ny eiendom';
      case 'common.propertyManageRequestSuccess':
        return 'Annonnsen din er sendt til vurdering.';
      case 'common.postAnotherProperty':
        return 'Legg til en annen eiendom';
      case 'common.browseYourProperty':
        return 'Bla gjennom eiendommen din';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Trinn '),
                step,
                const TextSpan(text: ' av '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Hva vil du legge ut?';
      case 'common.category':
        return 'Kategori';
      case 'common.invalidCategory':
        return 'Ugyldig kategori';
      case 'common.unitNumber':
        return 'Enhetsnummer';
      case 'common.sqft':
        return 'kv.ft.';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Eiendomsstørrelsen må være større enn null';
      case 'common.whatAreTheFacility':
        return 'Hvilke fasiliteter finnes?';
      case 'common.whatAreTheAmenity':
        return 'Hvilke fasiliteter finnes?';
      case 'common.parkingLot':
        return 'Parkeringsplass';
      case 'common.houseType':
        return 'Hustype';
      case 'common.value':
        return 'Verdi';
      case 'common.unitLotSize':
        return 'Enhet / Lotstørrelse';
      case 'common.landSize':
        return 'Landstørrelse';
      case 'common.acres':
        return 'acre(s)';
      case 'common.roomSize':
        return 'Romstørrelse';
      case 'common.askTenantPreference':
        return 'Hva er din leietakerpreferanse';
      case 'common.couple':
        return 'Par';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Beskriv ${propertyType}';
      case 'common.adTitle':
        return 'Annonsetittel';
      case 'common.minimumRentalPeriod':
        return 'Minimum leieperiode';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Skjul eller vis e-postadresse';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Takk for at du la ut på ${appName}!';
      case 'common.propertyList':
        return 'Eiendomsliste';
      case 'common.newInviteRent':
        return 'Ny invitasjon til leie';
      case 'common.rentAgreement':
        return 'Leieavtale';
      case 'common.rentDetails':
        return 'Leiedetaljer';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Merk: '),
            note('Vennligst vent på at leietakeren godtar invitasjonen.'),
          ],
        );
      case 'common.rent':
        return 'Leie';
      case 'common.editTenant':
        return 'Rediger leietaker';
      case 'common.addNewTenant':
        return 'Legg til ny leietaker';
      case 'common.shareInstallLink':
        return 'Del installasjonslenke';
      case 'common.tenantList':
        return 'Leietakerliste';
      case 'common.editMaintenanceRequest':
        return 'Rediger vedlikeholdsforespørsel';
      case 'common.addNewMaintenance':
        return 'Legg til nytt vedlikehold';
      case 'common.landlordId':
        return 'Uteleier-ID';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Merk '),
            note(
              'Avtalen din er under vurdering. Vent til utleier godkjenner leien din.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Rediger anmeldelse';
      case 'common.writeAReview':
        return 'Skriv en anmeldelse';
      case 'common.selectRating':
        return 'Velg vurdering';
      case 'common.enterYourOpinion':
        return 'Skriv inn din mening';
      case 'common.askToEnterReviewMsg':
        return 'Vennligst skriv inn en anmeldelsesmelding';
      case 'common.pressBackAgainToExit':
        return 'Trykk tilbake igjen for å avslutte.';
      case 'common.selectPaymentMethod':
        return 'Velg betalingsmetode';
      case 'common.filter':
        return 'Filter';
      case 'common.perMonth':
        return '/1 måned';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Søk etter hva som helst i ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Noe gikk galt, prøv igjen';
      case 'exceptions.noNidPassport':
        return 'Ingen NID/Pass-bilde er gitt.';
      case 'exceptions.noRentPropertyFound':
        return 'Ingen leieeiendom funnet for denne leietakeren.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Ingen eiendom funnet!\nPrøv med forskjellige søkeord';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Ingen abonnementsplan funnet!\nOppdater siden og prøv igjen.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Ugyldig ${dataType}-info! Oppdater siden og prøv igjen.';
      case 'exceptions.invalidDownloadUrl':
        return 'Ugyldig nedlastings-URL!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => 'Kunne ikke lagre filen! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Feil ved åpning av filen! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Ingen kjøretøyinformasjon oppgitt.';
      case 'exceptions.yourApplicationRejected':
        return 'Søknaden din er avvist';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Ingen søknad funnet!\n${subject} vil bli vist her når tilgjengelig.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Din søknad';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Leietakers søknad';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Ingen eiendom funnet!\nPrøv å legge til en eiendom for å se den her.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Ingen anbefalte eiendommer funnet\nPrøv igjen senere.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Eiendommene er ikke tilgjengelige\nPrøv igjen senere.';
      case 'exceptions.noImageProvided':
        return 'Ingen bilde oppgitt';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Ingen ${status} vedlikehold funnet.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Ingen vedlikehold funnet! Du kan opprette en vedlikeholdsforespørsel for å se den her.';
      case 'exceptions.noDepositFound':
        return 'Ingen sikkerhetsdepositum funnet!\nDu kan se sikkerhetsdepositumene når de er tilgjengelige';
      case 'exceptions.noRentPaymentFound':
        return 'Ingen leiebetaling funnet!\nDu kan se leiebetalingene når de er tilgjengelige';
      case 'exceptions.transactionSummaryApiException':
        return 'Kunne ikke hente transaksjonssammendrag.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Ingen forespørsel funnet!\nPrøv å opprette en uttaksforespørsel for å se den her.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Denne uttaksforespørselen er ikke godkjent!.';
      case 'exceptions.nonZeroError':
        return 'Vennligst skriv inn et gyldig beløp større enn null.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Beløpet må være minst ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Beløpet må ikke overstige ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Vennligst velg en betalingsmetode først.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Ingen ${status} refusjonsforespørsel funnet!\nDu kan se refusjonsforespørsel her når den er tilgjengelig.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Ingen refusjonsforespørsel funnet!\nDu kan opprette en refusjonsforespørsel for å se den her.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Leietakeren vil godkjenne refusjonen når han får pengene tilbake';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Vi vil gjennomgå refusjonsforespørselen og godkjenne den innen 24 timer.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Velg antall ${value}';
      case 'exceptions.invalidDateRange':
        return 'Ugyldig datoperiode.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) => '${value} må være større enn null.';
      case 'exceptions.editProperty.rentalChange':
        return 'Leieeiendommen endres. Den må bare være gyldig (effektiv) for neste måneds leiebetaling.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Eiendommen din er allerede leid av leietaker. Kan ikke slette den før du fjerner leietakeren først';
      case 'exceptions.editProperty.alreayRented':
        return 'Denne eiendommen er allerede leid. Prøv igjen senere.\nEller du kan kontakte utleieren for mer informasjon.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Ingen leieinvitasjon funnet!\nPrøv å opprette en leieinvitasjon for å se den her.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Ingen leieinvitasjon funnet!\nDu kan se leieinvitasjon her når den er tilgjengelig.';
      case 'exceptions.notenantFoundList':
        return 'Ingen leietakere!\nPrøv å legge til en leietaker for å se han/henne her.';
      case 'exceptions.noFeaturesProvided':
        return 'Ingen funksjoner oppgitt.';
      case 'exceptions.noNotificationFound':
        return 'Ingen varsling tilgjengelig.\nDu kan se varselet ditt her når det er tilgjengelig.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Er du sikker på at du vil logge ut?';
      case 'prompt.application.rejectTitle':
        return 'Hvorfor avviser du denne søknaden?';
      case 'prompt.application.applicationSent.successfully':
        return 'Søknaden er sendt!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Du kan se denne søknaden i søknadslisten din';
      case 'prompt.labor.delete.title':
        return 'Slette arbeidskraft?';
      case 'prompt.labor.delete.description':
        return 'Er du sikker på at du vil slette denne arbeidskraften?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Hvorfor blir denne forespørselen avvist?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Er du sikker på at du behandler denne vedlikeholdsforespørselen?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Arbeidet er fullført?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Slette uttaksmetode?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Er du sikker på at du vil slette denne uttaksmetoden?';
      case 'prompt.unsavedChanges.title':
        return 'Er du sikker på at du vil gå tilbake?';
      case 'prompt.unsavedChanges.message':
        return 'Felt som er endret, blir ikke lagret!';
      case 'prompt.property.delete.title':
        return 'Slette eiendom?';
      case 'prompt.property.delete.message':
        return 'Er du sikker på at du vil slette denne eiendommen?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Er du sikker på at du vil godkjenne denne leien?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Forsikre deg om at du har gjennomgått avtalen som er signert av leietakeren.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Er du sikker på at du vil akseptere denne invitasjonen?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Forsikre deg om at du har lastet ned avtalens PDF-fil!';
      case 'prompt.sessionExpired.title':
        return 'Sesjonen er utløpt';
      case 'prompt.sessionExpired.message':
        return 'Sesjonen din er utløpt. Logg inn igjen';
      case 'prompt.sessionExpired.action':
        return 'Logg inn';
      case 'prompt.noInternet.title':
        return 'Ingen internettforbindelse';
      case 'prompt.noInternet.message':
        return 'Sjekk Wi-Fi-mobilnettverksforbindelsen din og prøv igjen';
      case 'prompt.noInternet.action':
        return 'Prøv igjen';
      case 'prompt.permissionHandler.title':
        return 'Tillatelse kreves!';
      case 'prompt.permissionHandler.message':
        return 'Du må gi tillatelser i appens innstillinger. Vil du åpne innstillingene nå?';
      case 'prompt.permissionHandler.action':
        return 'Innstillinger';
      case 'prompt.imagePicker.title':
        return 'Velg alternativ';
      case 'prompt.imagePicker.gallery':
        return 'Galleri';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Bekreft e-posten din';
      case 'prompt.verificationDialog.message':
        return 'Vi har sendt en e-post med bekreftelseskode';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} til ${email}';
      case 'prompt.notification.clearTitle':
        return 'Fjerne varsler?';
      case 'prompt.notification.clearMessage':
        return 'Er du sikker på at du vil fjerne alle varsler?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Skriv inn ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Vennligst skriv inn ditt ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Skriv inn din ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Vennligst skriv inn din ${_root.common.email}-adresse';
      case 'form.email.errors.invalid':
        return '⦸ Ugyldig e-post, prøv igjen';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Vennligst skriv inn ditt ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Passordet må være minst ${count} tegn langt!';
      case 'form.confirmPassword.label':
        return 'Bekreft ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Vennligst skriv inn ditt ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Bekreft passordet stemmer ikke!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Vennligst skriv inn ditt ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Husnummer og gatenavn';
      case 'form.address1.errors.required':
        return 'Vennligst skriv inn din ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Leilighet, suite, enhet osv.';
      case 'form.address2.errors.required':
        return 'Vennligst skriv inn din ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Skriv inn ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Vennligst skriv inn ditt ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Skriv inn ${_root.common.city}-navnet ditt.';
      case 'form.city.errors.required':
        return 'Vennligst skriv inn ditt ${_root.common.city}-navn.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Skriv inn ${_root.common.state}-navnet ditt.';
      case 'form.state.errors.required':
        return 'Vennligst skriv inn ditt ${_root.common.state}-navn.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Velg ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Vennligst velg ditt ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Vennligst skriv inn OTP-en.';
      case 'form.otp.errors.invalid':
        return 'Vennligst skriv inn riktig OTP.';
      case 'form.title.label':
        return 'Tittel';
      case 'form.title.hint':
        return 'Skriv inn tittel';
      case 'form.title.errors.required':
        return 'Vennligst skriv inn tittel';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Velg ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Vennligst velg ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Årsak';
      case 'form.reason.hint':
        return 'Skriv inn årsak';
      case 'form.reason.errors.required':
        return 'Vennligst skriv inn årsak';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Velg ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Vennligst velg ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Last opp ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Vennligst velg ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Skriv inn ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Vennligst skriv inn ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Velg ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Vennligst velg ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Skriv inn ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Vennligst skriv inn ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Vennligst skriv inn gyldig @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Velg ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Vennligst velg ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Vennligst velg gyldig @form.anyDropdown.label';
      case 'action.next':
        return 'Neste';
      case 'action.getStarted':
        return 'Kom i gang';
      case 'action.skip':
        return 'Hopp over';
      case 'action.select':
        return 'Velg';
      case 'action.save':
        return 'Lagre';
      case 'action.signIn':
        return 'Logg inn';
      case 'action.signUp':
        return 'Registrer deg';
      case 'action.kContinue':
        return 'Fortsett';
      case 'action.clearAll':
        return 'Fjern alt';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Send';
      case 'action.pay':
        return 'Betal';
      case 'action.remove':
        return 'Fjern';
      case 'action.goBack':
        return 'Gå tilbake';
      case 'action.buyNow':
        return 'Kjøp nå';
      case 'action.no':
        return 'Nei';
      case 'action.open':
        return 'Åpne';
      case 'action.addProperty':
        return 'Legg til eiendom';
      case 'action.process':
        return 'Behandle';
      case 'action.approve':
        return 'Godkjenn';
      case 'action.reject':
        return 'Avvis';
      case 'action.viewRent':
        return 'Vis leie';
      case 'action.openNavigationMenu':
        return 'Åpne navigasjonsmeny';
      case 'action.seeAll':
        return 'Se alle';
      case 'action.update':
        return 'Oppdater';
      case 'action.printTransaction':
        return 'Skriv ut transaksjon';
      case 'action.payoutRequest':
        return 'Ubetalingsforespørsel';
      case 'action.addNew':
        return '+ Legg til ny';
      case 'action.sendRequest':
        return 'Send forespørsel';
      case 'action.print':
        return 'Skriv ut';
      case 'action.requestForRefund':
        return 'Be om refusjon';
      case 'action.previous':
        return 'Forrige';
      case 'action.delete':
        return 'Slett';
      case 'action.applyProperty':
        return 'Søk på eiendom';
      case 'action.viewApplication':
        return 'Vis søknad';
      case 'action.inviteTenant':
        return 'Inviter leietaker';
      case 'action.inviteRent':
        return 'Inviter til leie';
      case 'action.cancel':
        return 'Avbryt';
      case 'action.accept':
        return 'Aksepter';
      case 'action.submit':
        return 'Send inn';
      case 'action.yes':
        return 'Ja';
      case 'action.okay':
        return 'Ok';
      case 'action.confirm':
        return 'Bekreft';
      case 'action.apply':
        return 'Bruk';
      case 'action.reset':
        return 'Tilbakestill';
      case 'action.retry':
        return 'Prøv igjen';
      case 'action.viewAll':
        return 'Vis alle';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Finn din eiendom';
      case 'pages.onboard.onboardData.data1.description':
        return 'Vi har gjort det enkelt å finne et sted som passer ditt liv – enten det er et rom, en leilighet eller et hus.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Leilighet i byen';
      case 'pages.onboard.onboardData.data2.description':
        return 'Vi sparer deg tid ved raskt å matche deg med den perfekte eiendommen før den er borte, slik at du kan nyte ditt nye hjem, eller liste din egen gratis.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Ditt komfortable hus';
      case 'pages.onboard.onboardData.data3.description':
        return 'Hvis du leter etter et sted å bo, ta en titt på husene våre til leie. Vi har et bredt utvalg av hus du kan velge mellom over hele landet.';
      case 'pages.signIn.title':
        return 'Velkommen tilbake';
      case 'pages.signIn.subtitle':
        return 'Logg inn nå for å begynne en fantastisk reise.';
      case 'pages.signIn.extra.rememberMe':
        return 'Husk meg';
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
        return 'Glemt passord';
      case 'pages.forgotPassword.subtitle':
        return 'Skriv inn e-postadressen din for å gjenopprette passordet ditt.';
      case 'pages.otpVerification.title':
        return 'Bekreftelse';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-sifret pin-kode er sendt til e-postadressen din. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Koden sendes om ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Send kode på nytt'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Tilbakestill passord';
      case 'pages.resetPassword.subtitle':
        return 'Tilbakestill passordet ditt for å gjenopprette og logge inn på kontoen din';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Endret!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Logg inn med ditt nye passord.\nOmdirigerer deg til Logg inn...';
      case 'pages.signUp.title':
        return 'Opprett en konto';
      case 'pages.signUp.subtitle':
        return 'Registrer deg nå for å begynne en fantastisk reise';
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
        return 'Velg alternativet nedenfor.';
      case 'pages.welcome.extra.landlordTag':
        return 'Administrer dine egne eiendommer';
      case 'pages.welcome.extra.tenantTag':
        return 'Logg inn på leiekontoen din';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Varsler';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Melding...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Hvorfor ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Skriv årsak';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Vennligst oppgi årsaken til leieavbestillingen';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Offline betaling';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Betalingsmerknad (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Skriv inn tekst...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Betalingsbeløp: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Kontoholders navn';
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
            const TextSpan(text: 'Velg kun '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' eller '),
            fileType('DOC'),
            const TextSpan(text: '-formatfiler. Filstørrelse '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Vis faktura';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Vi vil gjennomgå betalingen og godkjenne den innen 24 timer.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Prøv igjen';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Betaling mislyktes';
      case 'pages.paymentStatus.fail.description':
        return 'Transaksjonen din mislyktes på grunn av en teknisk feil.';
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
            const TextSpan(text: 'Funksjoner '),
            fa('(Fasiliteter og bekvemmeligheter)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Velg leieperiode';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Skriv en anmeldelse';
      case 'pages.search.appbarTitle':
        return 'Søk';
      case 'pages.search.extra.hint':
        return 'Søk etter tomter, leiligheter, rom...';
      case 'pages.search.extra.noRecentSearch':
        return 'Du har ingen nylige søk.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Velg din plan';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Abonnementsbetaling vellykket.\nDu har nå tilgang til de abonnerte funksjonene.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Totale vedlikeholdskostnader: '),
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
        return 'All eiendom';
      case 'enums.propertyStatus.pending':
        return 'Ventende';
      case 'enums.propertyStatus.active':
        return 'Aktiv';
      case 'enums.propertyStatus.inactive':
        return 'Inaktiv';
      case 'enums.propertyStatus.rejected':
        return 'Avvist';
      case 'enums.propertyType.apartmentCondominium':
        return 'Leilighet/Kondominium';
      case 'enums.propertyType.house':
        return 'Hus';
      case 'enums.propertyType.commercialProperty':
        return 'Næringseiendom';
      case 'enums.propertyType.land':
        return 'Tomt';
      case 'enums.propertyType.room':
        return 'Rom';
      case 'enums.applicationStatus.all':
        return 'Alle';
      case 'enums.applicationStatus.pending':
        return 'Ventende';
      case 'enums.applicationStatus.processing':
        return 'Behandling';
      case 'enums.applicationStatus.approved':
        return 'Godkjent';
      case 'enums.applicationStatus.rejected':
        return 'Avvist';
      case 'enums.myRentStatus.pending':
        return 'Ventende';
      case 'enums.myRentStatus.processing':
        return 'Behandling';
      case 'enums.myRentStatus.active':
        return 'Aktiv';
      case 'enums.myRentStatus.expired':
        return 'Utløpt';
      case 'enums.myRentStatus.cancelled':
        return 'Avlyst';
      case 'enums.maintenanceStatus.pending':
        return 'Ventende';
      case 'enums.maintenanceStatus.processing':
        return 'Behandling';
      case 'enums.maintenanceStatus.rejected':
        return 'Avvist';
      case 'enums.maintenanceStatus.completed':
        return 'Fullført';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privat (Individuell)';
      case 'enums.tenantProfileType.company':
        return 'Selskap';
      case 'enums.tenantType.newTenant':
        return 'Ny leietaker';
      case 'enums.tenantType.activeTenant':
        return 'Aktiv leietaker';
      case 'enums.tenantType.expiredTenant':
        return 'Utløpt leietaker';
      case 'enums.paymentStatus.all':
        return 'Alle';
      case 'enums.paymentStatus.pending':
        return 'Ventende';
      case 'enums.paymentStatus.paid':
        return 'Betalt';
      case 'enums.paymentStatus.unpaid':
        return 'Ubetalt';
      case 'enums.paymentStatus.rejected':
        return 'Avvist';
      case 'enums.paymentStatus.refund':
        return 'Refusjon';
      case 'enums.paymentOptions.onlinePayment':
        return 'Nettbetaling';
      case 'enums.paymentOptions.offlinePayment':
        return 'Offline betaling';
      case 'enums.paymentType.securityDeposit':
        return 'Sikkerhetsdepositum';
      case 'enums.paymentType.rentPayment':
        return 'Leiebetaling';
      case 'enums.paymentType.subscription':
        return 'Abonnement';
      case 'enums.gender.male':
        return 'Mann';
      case 'enums.gender.female':
        return 'Kvinne';
      case 'enums.gender.other':
        return 'Annet';
      case 'enums.ecRelation.wife':
        return 'Kone';
      case 'enums.ecRelation.parent':
        return 'Forelder';
      case 'enums.ecRelation.friend':
        return 'Venn';
      case 'enums.ecRelation.brother':
        return 'Bror';
      case 'enums.ecRelation.sister':
        return 'Søster';
      case 'enums.ecRelation.child':
        return 'Barn';
      case 'enums.vehicleType.car':
        return 'Bil';
      case 'enums.vehicleType.motorcycles':
        return 'Motorsykler';
      case 'enums.vehicleType.lorry':
        return 'Lastebil';
      case 'enums.sortBy.lowToHigh':
        return 'Lav til høy';
      case 'enums.sortBy.highToLow':
        return 'Høy til lav';
      case 'enums.residentialType.flat':
        return 'Leilighet';
      case 'enums.residentialType.apartment':
        return 'Leilighet';
      case 'enums.residentialType.condominium':
        return 'Kondominium';
      case 'enums.residentialType.serviceResidence':
        return 'Servicebolig';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Dupleks';
      case 'enums.residentialType.townhouseCondo':
        return 'Rekkehus/Kondominium';
      case 'enums.residentialType.others':
        return 'Andre';
      case 'enums.floorRange.high':
        return 'Høy';
      case 'enums.floorRange.medium':
        return 'Middels';
      case 'enums.floorRange.low':
        return 'Lav';
      case 'enums.furnishings.fullyFurnished':
        return 'Fullt møblert';
      case 'enums.furnishings.partiallyFurnished':
        return 'Delvis møblert';
      case 'enums.furnishings.notFurnished':
        return 'Ikke møblert';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Kontorlokaler';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Butikklokaler';
      case 'enums.commercialPropertyType.shopLot':
        return 'Butikklokale';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Lager/Fabrikk';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotell/Resort';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Andre';
      case 'enums.landPropertyType.residential':
        return 'Bolig';
      case 'enums.landPropertyType.industrial':
        return 'Industriell';
      case 'enums.landPropertyType.agricultural':
        return 'Landbruk';
      case 'enums.landPropertyType.commercial':
        return 'Kommersiell';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Blandet utbygging';
      case 'enums.landPropertyType.others':
        return 'Andre';
      case 'enums.residentPropertyType.condo':
        return 'Kondominium/Servicebolig/Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Leilighet/Bolig';
      case 'enums.residentPropertyType.house':
        return 'Hus';
      case 'enums.residentPropertyType.shoplot':
        return 'Butikklokale';
      case 'enums.residentPropertyType.sharing':
        return 'Deling av hus/leilighet';
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
        return 'Daglig';
      case 'enums.dropdownDateFilter.weekly':
        return 'Ukentlig';
      case 'enums.dropdownDateFilter.monthly':
        return 'Månedlig';
      case 'enums.dropdownDateFilter.yearly':
        return 'Årlig';
      case 'enums.dropdownDateFilter.custom':
        return 'Tilpasset';
      default:
        return null;
    }
  }
}
