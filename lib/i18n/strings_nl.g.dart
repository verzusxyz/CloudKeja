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
class TranslationsNl implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsNl({
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
             locale: AppLocale.nl,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <nl>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsNl _root = this; // ignore: unused_field

  @override
  TranslationsNl $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsNl(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonNl common = _TranslationsCommonNl._(_root);
  @override
  late final _TranslationsExceptionsNl exceptions = _TranslationsExceptionsNl._(
    _root,
  );
  @override
  late final _TranslationsPromptNl prompt = _TranslationsPromptNl._(_root);
  @override
  late final _TranslationsFormNl form = _TranslationsFormNl._(_root);
  @override
  late final _TranslationsActionNl action = _TranslationsActionNl._(_root);
  @override
  late final _TranslationsPagesNl pages = _TranslationsPagesNl._(_root);
  @override
  late final _TranslationsEnumsNl enums = _TranslationsEnumsNl._(_root);
}

// Path: common
class _TranslationsCommonNl implements TranslationsCommonEn {
  _TranslationsCommonNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profiel';
  @override
  String get language => 'Taal';
  @override
  String get subscriptionPlan => 'Abonnement';
  @override
  String get contactUs => 'Contacteer ons';
  @override
  String get termsAndConditions => 'Algemene voorwaarden';
  @override
  String get aboutUs => 'Over ons';
  @override
  String get logout => 'Uitloggen';
  @override
  String get editProfile => 'Profiel bewerken';
  @override
  String get fullName => 'Volledige naam';
  @override
  String get email => 'E-mail';
  @override
  String get mobileNumber => 'Mobiel nummer';
  @override
  String get address => 'Adres';
  @override
  String get postalCode => 'Postcode';
  @override
  String get city => 'Stad';
  @override
  String get country => 'Land';
  @override
  String get state => 'Provincie';
  @override
  String get password => 'Wachtwoord';
  @override
  String get forgotPassword => 'Wachtwoord vergeten';
  @override
  String get tenant => 'Huurder';
  @override
  String get landlord => 'Verhuurder';
  @override
  String get cancelRenting => 'Huur annuleren';
  @override
  String get startDate => 'Startdatum';
  @override
  String get endDate => 'Einddatum';
  @override
  String get fromDate => 'Van datum';
  @override
  String get toDate => 'Tot datum';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Banklijst';
  @override
  String get withdrawMethod => 'Opnamemethode';
  @override
  String get uploadPaymentReceipt => 'Betalingsbewijs uploaden';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opmerking: '),
      note(
        'De betaling vereist handmatige goedkeuring door de beheerder binnen',
      ),
      const TextSpan(text: ' '),
      duraion('24~48 uur.'),
    ],
  );
  @override
  String get reviews => 'Beoordelingen';
  @override
  String get description => 'Beschrijving';
  @override
  String get about => 'Over';
  @override
  String get propertyTypes => 'Soorten woningen';
  @override
  String get features => 'Kenmerken';
  @override
  String get floorPlans => 'Plattegronden';
  @override
  String get buildingDetails => 'Gebouwgegevens';
  @override
  String get buildingName => 'Gebouwnaam';
  @override
  String get propertyAddress => 'Adres van de woning';
  @override
  String get completionYear => 'Voltooiingsjaar';
  @override
  String get lotNumber => 'Lotnummer';
  @override
  String get residentialType => 'Woningtype';
  @override
  String get furnishings => 'Inrichting';
  @override
  String get floorRange => 'Verdieping';
  @override
  String get bedrooms => 'Slaapkamers';
  @override
  String get bathrooms => 'Badkamers';
  @override
  String get propertySize => 'Woonoppervlakte';
  @override
  String get rentalPeriod => 'Huurperiode';
  @override
  String get securityDeposit => 'Waarborgsom';
  @override
  String get utilityBill => 'Nutsvoorzieningen';
  @override
  String get facilities => 'Faciliteiten';
  @override
  String get amenities => 'Voorzieningen';
  @override
  String get expiringReason => 'Reden van verlenging';
  @override
  String get tenantDetails => 'Huurdergegevens';
  @override
  String get typeOfTenant => 'Type huurder';
  @override
  String get tenantName => 'Naam huurder';
  @override
  String get nidPassport => 'NID/Paspoort';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Huurder-ID';
  @override
  String get dateOfBirth => 'Geboortedatum';
  @override
  String get gender => 'Geslacht';
  @override
  String get nominee => 'Genomineerde';
  @override
  String get name => 'Naam';
  @override
  String get optional => 'Optioneel';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileNl nomineeMobile =
      _TranslationsCommonNomineeMobileNl._(_root);
  @override
  String get emergencyContact => 'Contactpersoon in noodgevallen';
  @override
  String get relation => 'Relatie';
  @override
  String get relationWith => '${_root.common.relation} Met';
  @override
  String get relationWithYou => '${_root.common.relation} Met jou';
  @override
  String get company => 'Bedrijf';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} KvK-nummer';
  @override
  String get workplace => 'Werkplek';
  @override
  String get officePhoneNo => 'Telefoonnummer kantoor';
  @override
  String get officeMobileNo => 'Mobiel nummer kantoor';
  @override
  String get vehicle => 'Voertuig';
  @override
  late final _TranslationsCommonVehiclesInfoNl vehiclesInfo =
      _TranslationsCommonVehiclesInfoNl._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoNl vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoNl._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Merk';
  @override
  String get rentProperty => 'Woning verhuren';
  @override
  String get propertyDetails => 'Woninggegevens';
  @override
  String get propertyId => 'Woning-ID';
  @override
  String get propertyType => 'Woningtype';
  @override
  String get propertyName => 'Naam woning';
  @override
  String get paymentDetails => 'Betalingsgegevens';
  @override
  String get monthlyRent => 'Maandelijkse huur';
  @override
  String get thisMonthPayment => 'Betaling deze maand';
  @override
  String get totalPaidRent => 'Totaal betaalde huur';
  @override
  String get dueRent => 'Verschuldigde huur';
  @override
  String get rentStartDate => 'Huur ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Huur ${_root.common.endDate}';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'Huurovereenkomst PDF';
  @override
  String get noFile => 'Geen bestand';
  @override
  String get tenantImageOp => 'Afbeelding huurder (${_root.common.optional})';
  @override
  String get addNewVechicle => 'Nieuw voertuig toevoegen';
  @override
  String get uploadNidPassport => 'NID/Paspoort uploaden';
  @override
  String get nidPassportUploadNote =>
      'Alleen afbeeldingen van het type bestand worden geaccepteerd. Bestandslimiet tot 2,5 MB.';
  @override
  String get search => 'Zoeken';
  @override
  String get sortBy => 'Sorteren op';
  @override
  String get subscription => 'Abonnement';
  @override
  String get downloading => 'Downloaden...';
  @override
  String get downloadSuccess => 'Bestand succesvol gedownload!';
  @override
  String get addPropertyBannerTitle => 'Wilt u uw woning verhuren?';
  @override
  String get application => 'Aanvraag';
  @override
  String get tenantHasPaidDeposit => 'Huurder heeft de aanbetaling betaald.';
  @override
  String get askProcessingRentApplication =>
      'Weet u zeker dat u deze aanvraag voor een huurwoning wilt verwerken?';
  @override
  String get dateAndTime => 'Datum en tijd';
  @override
  String get applicationDetails => 'Aanvraagdetails';
  @override
  String get depositStatus => 'Aanbetalingsstatus';
  @override
  String get uploadRentAgreement => 'Huurovereenkomst uploaden';
  @override
  String get uploadFilePDF => 'Bestand uploaden (PDF)';
  @override
  String get askSelectRentAgreement => 'Selecteer een overeenkomstbestand.';
  @override
  String get landlordRentAgreementPDF => 'Huurovereenkomst PDF verhuurder';
  @override
  String get tenantRentAgreementPDF => 'Huurovereenkomst PDF huurder';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opmerking: '),
      note(
        'Keur de aanvraag pas goed nadat de huurder een aanbetaling heeft gedaan.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Reden van afwijzing';
  @override
  String get youveRejectedThisApplication => 'U hebt deze aanvraag afgewezen';
  @override
  String get landlordDetails => 'Verhuurdergegevens';
  @override
  String get landlordName => 'Naam verhuurder';
  @override
  String get downloadRentAgreement => 'Huurovereenkomst downloaden';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Accepteer de '),
      toc('Algemene voorwaarden'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opmerking: '),
      note(
        'Download en lees de overeenkomst. Stuur de ondertekende overeenkomst naar de verhuurder via WhatsApp of e-mail.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opmerking: '),
      note(
        'De verhuurder keurt de aanvraag goed wanneer de huurder de borg, de nutsvoorzieningen en de vooruitbetaling van één maand huur heeft betaald.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Huurovereenkomst (PDF) '),
          complete('Volledige overeenkomst'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opmerking: '),
      note(
        'De verhuurder keurt de aanvraag goed wanneer de huurder de borg, de nutsvoorzieningen en de vooruitbetaling van één maand huur heeft betaald.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Lijst met aanvragen';
  @override
  String get viewDetails => 'Bekijk details';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Home';
  @override
  String get dashboard => 'Dashboard';
  @override
  String get tenants => 'Huurders';
  @override
  String get maintenance => 'Onderhoud';
  @override
  String get maintenanceList => 'Onderhoudslijst';
  @override
  String get maintenanceReport => 'Onderhoudsrapport';
  @override
  String get labor => 'Arbeid';
  @override
  String get applications => 'Aanvragen';
  @override
  String get rentInvitation => 'Huuruitnodiging';
  @override
  String get payment => 'Betaling';
  @override
  String get rentPayment => 'Huur betalen';
  @override
  String get depositUtilityPayment => 'Aanbetaling & nutsvoorzieningen';
  @override
  String get refundRequest => 'Teruggave aanvragen';
  @override
  String get withdrawRequest => 'Opname aanvragen';
  @override
  String get myProperty => 'Mijn woning';
  @override
  String get myRent => 'Mijn huur';
  @override
  String get wishlist => 'Verlanglijst';
  @override
  String get properties => 'Woningen';
  @override
  String get allProperties => 'Alle woningen';
  @override
  String get totalPropery => 'Totaal aantal woningen';
  @override
  String get occupied => 'Bezet';
  @override
  String get vacant => 'Leegstaand';
  @override
  String get accounting => 'Boekhouding';
  @override
  String get totalIncome => 'Totaal inkomen';
  @override
  String get totalExpense => 'Totaal uitgaven';
  @override
  String get currentBalance => 'Huidig saldo';
  @override
  String get totalWithdrawal => 'Totaal (opname)';
  @override
  String get totalProperties => 'Totaal aantal woningen';
  @override
  String get totalTenant => 'Totaal aantal huurders';
  @override
  String get totalRentPaid => 'Totaal betaalde huur';
  @override
  String get totalRentDue => 'Totaal verschuldigde huur';
  @override
  String get totalApplication => 'Totaal aantal aanvragen';
  @override
  String get pendingApplication => 'In behandeling zijnde aanvragen';
  @override
  String get processingApplication => 'Aanvragen in behandeling';
  @override
  String get approveApplication => 'Aanvraag goedkeuren';
  @override
  String get rejectApplication => 'Aanvraag afwijzen';
  @override
  String get maintenanceCost => 'Onderhoudskosten';
  @override
  String get transactionSummary => 'Transactieoverzicht';
  @override
  String get maintenanceRequest => 'Onderhoudsaanvraag';
  @override
  String get notifications => 'Meldingen';
  @override
  String get myProperties => 'Mijn woningen';
  @override
  String get recommendationProperties => 'Aanbevolen woningen';
  @override
  String get laborList => 'Arbeidslijst';
  @override
  String get addLabor => 'Arbeid toevoegen';
  @override
  String get laborDetails => 'Arbeidsgegevens';
  @override
  String get laborSalary => 'Arbeidsloon';
  @override
  String get editLabor => 'Arbeid bewerken';
  @override
  String get addNewLabor => 'Nieuwe arbeid toevoegen';
  @override
  String get enterAmount => 'Bedrag invoeren';
  @override
  String get maintenanceDetails => 'Onderhoudsgegevens';
  @override
  String get laborName => 'Arbeider naam';
  @override
  String get comment => 'Opmerking';
  @override
  String get image => 'Afbeelding';
  @override
  String get complete => 'Voltooid';
  @override
  String get details => 'Details';
  @override
  String get title => 'Titel';
  @override
  String get date => 'Datum';
  @override
  String get reason => 'Reden';
  @override
  String get edit => 'Bewerken';
  @override
  String get property => 'Woning';
  @override
  String get completeYourProfile => 'Voltooi uw profiel';
  @override
  String get profileImage => 'Profielfoto';
  @override
  String get imagePickHint =>
      'Alleen JPEG- en PNG-afbeeldingen met een maximale grootte van 120x120 pixels worden geaccepteerd.';
  @override
  String get invoiceId => 'Factuurnummer';
  @override
  String get depositAmount => 'Aanbetalingsbedrag';
  @override
  String get landlordPhone => 'Telefoonnummer verhuurder';
  @override
  String get rentalAdvance => 'Huur (vooruit)';
  @override
  String get totalAmount => 'Totaalbedrag';
  @override
  String get rentalAmount => 'Huur bedrag';
  @override
  String get adminCharge => 'Administratiekosten';
  @override
  String get editAccount => 'Account bewerken';
  @override
  String get addNewAccount => 'Nieuw account toevoegen';
  @override
  String get transactionId => 'Transactie-ID';
  @override
  String get transactionType => 'Transactietype';
  @override
  String get requestDate => 'Aanvraagdatum';
  @override
  String get amount => 'Bedrag';
  @override
  String get fee => 'Kosten';
  @override
  String get paymentStatus => 'Betalingsstatus';
  @override
  String get generatedTime => 'Aangemaakt op';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Dit is een automatisch gegenereerd rapport van '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Opnamegeschiedenis';
  @override
  String get history => 'Geschiedenis';
  @override
  String get withdrawAmount => 'Opnamebedrag';
  @override
  String get availableBalance => 'Beschikbaar saldo';
  @override
  String get withdrawCharge => 'Opnamekosten';
  @override
  String get paymentMethod => 'Betaalmethode';
  @override
  String get requestSendSuccess => 'Aanvraag succesvol verzonden!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Betalingsbewijs succesvol ingediend.';
  @override
  String get refundReason => 'Reden van terugbetaling';
  @override
  String get note => 'Opmerking';
  @override
  String get refundReceiveSuccess => 'Terugbetaling succesvol ontvangen.';
  @override
  String get downloadPaymentReceipt => 'Betalingsbewijs downloaden';
  @override
  String get invoice => 'Factuur';
  @override
  String get selectPropertyToSeeInvoice =>
      'Selecteer een woning om het factuurnummer te zien...';
  @override
  String get bankAccName => 'Naam bankrekening';
  @override
  String get bankName => 'Banknaam';
  @override
  String get bankAccNum => 'Bankrekeningnummer';
  @override
  String get thankYou => 'Dank u!';
  @override
  String get basicInfo => 'Basis informatie';
  @override
  String get descriptionPricing => 'Beschrijving & Prijzen';
  @override
  String get contact => 'Contact';
  @override
  String get photos => 'Foto\'s';
  @override
  String get successfullySubmitted => 'Succesvol ingediend!';
  @override
  String get editProperty => 'Woning bewerken';
  @override
  String get addNewProperty => 'Nieuwe woning toevoegen';
  @override
  String get propertyManageRequestSuccess =>
      'Uw advertentie is ingediend ter beoordeling.';
  @override
  String get postAnotherProperty => 'Nog een woning plaatsen';
  @override
  String get browseYourProperty => 'Blader door uw woning';
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
  String get whatWouldYouLikeToPost => 'Wat wilt u plaatsen?';
  @override
  String get category => 'Categorie';
  @override
  String get invalidCategory => 'Ongeldige categorie';
  @override
  String get unitNumber => 'Unitnummer';
  @override
  String get sqft => 'm²';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'De grootte van de woning moet groter zijn dan nul';
  @override
  String get whatAreTheFacility => 'Wat zijn de faciliteiten?';
  @override
  String get whatAreTheAmenity => 'Wat zijn de voorzieningen?';
  @override
  String get parkingLot => 'Parkeerplaats';
  @override
  String get houseType => 'Type huis';
  @override
  String get value => 'Waarde';
  @override
  String get unitLotSize => 'Unit / Kavelgrootte';
  @override
  String get landSize => 'Grondgrootte';
  @override
  String get acres => 'acre(s)';
  @override
  String get roomSize => 'Kamergrootte';
  @override
  String get askTenantPreference => 'Wat zijn uw voorkeuren voor huurders?';
  @override
  String get couple => 'Koppel';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Beschrijf de ${propertyType}';
  @override
  String get adTitle => 'Advertentietitel';
  @override
  String get minimumRentalPeriod => 'Minimale huurperiode';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Nummer';
  @override
  String get hideOrDisplayEmail => 'E-mailadres verbergen of weergeven';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Dank u voor het plaatsen op ${appName}!';
  @override
  String get propertyList => 'Woninglijst';
  @override
  String get newInviteRent => 'Nieuwe huuruitnodiging';
  @override
  String get rentAgreement => 'Huurovereenkomst';
  @override
  String get rentDetails => 'Huurdetails';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opmerking: '),
      note('Wacht tot de huurder de uitnodiging accepteert.'),
    ],
  );
  @override
  String get rent => 'Huur';
  @override
  String get editTenant => 'Huurder bewerken';
  @override
  String get addNewTenant => 'Nieuwe huurder toevoegen';
  @override
  String get shareInstallLink => 'Installatielink delen';
  @override
  String get tenantList => 'Huurderslijst';
  @override
  String get editMaintenanceRequest => 'Onderhoudsaanvraag bewerken';
  @override
  String get addNewMaintenance => 'Nieuw onderhoud toevoegen';
  @override
  String get landlordId => 'Verhuurder-ID';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opmerking: '),
      note(
        'Uw overeenkomst wordt beoordeeld. Wacht tot de verhuurder uw huur goedkeurt.',
      ),
    ],
  );
  @override
  String get editReview => 'Beoordeling bewerken';
  @override
  String get writeAReview => 'Schrijf een beoordeling';
  @override
  String get selectRating => 'Selecteer beoordeling';
  @override
  String get enterYourOpinion => 'Voer uw mening in';
  @override
  String get askToEnterReviewMsg => 'Voer een beoordelingsbericht in';
  @override
  String get pressBackAgainToExit => 'Druk nogmaals op terug om af te sluiten.';
  @override
  String get selectPaymentMethod => 'Selecteer betaalmethode';
  @override
  String get filter => 'Filter';
  @override
  String get perMonth => '/maand';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Zoek alles in ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsNl implements TranslationsExceptionsEn {
  _TranslationsExceptionsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Er is iets misgegaan, probeer het opnieuw';
  @override
  String get noNidPassport => 'Geen NID/Paspoort afbeelding verstrekt.';
  @override
  String get noRentPropertyFound =>
      'Geen huurwoning gevonden voor deze huurder.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Geen woning gevonden!\nProbeer het met andere zoekwoorden';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Geen abonnementsplan gevonden!\nVernieuw de pagina en probeer het opnieuw.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Ongeldige ${dataType}-info! Vernieuw de pagina en probeer het opnieuw.';
  @override
  String get invalidDownloadUrl => 'Ongeldige download-url!';
  @override
  String failedToSaveFile({required String error}) =>
      'Opslaan van bestand mislukt! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Fout bij het openen van bestand! ${error}';
  @override
  String get noVehicleInfoProvided => 'Geen voertuiginformatie verstrekt.';
  @override
  String get yourApplicationRejected => 'Uw aanvraag is afgewezen';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintNl
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintNl._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintNl noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintNl._(_root);
  @override
  String get noImageProvided => 'Geen afbeelding verstrekt';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundNl
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundNl._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Geen borg gevonden!\nU kunt de borgsommen zien wanneer deze beschikbaar zijn';
  @override
  String get noRentPaymentFound =>
      'Geen huurbetaling gevonden!\nU kunt de huurbetalingen zien wanneer deze beschikbaar zijn';
  @override
  String get transactionSummaryApiException =>
      'Ophalen van transactieoverzicht mislukt.';
  @override
  String get noWithdrawRequestFound =>
      'Geen aanvraag gevonden!\nMaak een opnameaanvraag om deze hier te zien.';
  @override
  String get withdrawRequestNotApproved =>
      'Deze opnameaanvraag is niet goedgekeurd!.';
  @override
  String get nonZeroError => 'Voer een geldig bedrag in dat groter is dan nul.';
  @override
  String minAmountError({required String minValue}) =>
      'Het bedrag moet minstens ${minValue} zijn.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Het bedrag mag niet meer zijn dan ${maxValue}.';
  @override
  String get selectPaymentMethodHint => 'Selecteer eerst een betaalmethode.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundNl
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundNl._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintNl refundRequestHint =
      _TranslationsExceptionsRefundRequestHintNl._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Selecteer het aantal ${value}';
  @override
  String get invalidDateRange => 'Ongeldig datumbereik.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} moet groter zijn dan nul.';
  @override
  late final _TranslationsExceptionsEditPropertyNl editProperty =
      _TranslationsExceptionsEditPropertyNl._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationNl rentInvitation =
      _TranslationsExceptionsRentInvitationNl._(_root);
  @override
  String get notenantFoundList =>
      'Geen huurders!\nVoeg een huurder toe om deze hier te zien.';
  @override
  String get noFeaturesProvided => 'Geen functies verstrekt.';
  @override
  String get noNotificationFound =>
      'Geen melding beschikbaar.\nU kunt uw melding hier zien wanneer deze beschikbaar is.';
}

// Path: prompt
class _TranslationsPromptNl implements TranslationsPromptEn {
  _TranslationsPromptNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutNl logout = _TranslationsPromptLogoutNl._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationNl application =
      _TranslationsPromptApplicationNl._(_root);
  @override
  late final _TranslationsPromptLaborNl labor = _TranslationsPromptLaborNl._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestNl maintenanceRequest =
      _TranslationsPromptMaintenanceRequestNl._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodNl withdrawMethod =
      _TranslationsPromptWithdrawMethodNl._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesNl unsavedChanges =
      _TranslationsPromptUnsavedChangesNl._(_root);
  @override
  late final _TranslationsPromptPropertyNl property =
      _TranslationsPromptPropertyNl._(_root);
  @override
  late final _TranslationsPromptRentInvitationNl rentInvitation =
      _TranslationsPromptRentInvitationNl._(_root);
  @override
  late final _TranslationsPromptSessionExpiredNl sessionExpired =
      _TranslationsPromptSessionExpiredNl._(_root);
  @override
  late final _TranslationsPromptNoInternetNl noInternet =
      _TranslationsPromptNoInternetNl._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerNl permissionHandler =
      _TranslationsPromptPermissionHandlerNl._(_root);
  @override
  late final _TranslationsPromptImagePickerNl imagePicker =
      _TranslationsPromptImagePickerNl._(_root);
  @override
  late final _TranslationsPromptVerificationDialogNl verificationDialog =
      _TranslationsPromptVerificationDialogNl._(_root);
  @override
  late final _TranslationsPromptNotificationNl notification =
      _TranslationsPromptNotificationNl._(_root);
}

// Path: form
class _TranslationsFormNl implements TranslationsFormEn {
  _TranslationsFormNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameNl fullName =
      _TranslationsFormFullNameNl._(_root);
  @override
  late final _TranslationsFormEmailNl email = _TranslationsFormEmailNl._(_root);
  @override
  late final _TranslationsFormPasswordNl password =
      _TranslationsFormPasswordNl._(_root);
  @override
  late final _TranslationsFormConfirmPasswordNl confirmPassword =
      _TranslationsFormConfirmPasswordNl._(_root);
  @override
  late final _TranslationsFormMobileNumberNl mobileNumber =
      _TranslationsFormMobileNumberNl._(_root);
  @override
  late final _TranslationsFormAddress1Nl address1 =
      _TranslationsFormAddress1Nl._(_root);
  @override
  late final _TranslationsFormAddress2Nl address2 =
      _TranslationsFormAddress2Nl._(_root);
  @override
  late final _TranslationsFormPostalCodeNl postalCode =
      _TranslationsFormPostalCodeNl._(_root);
  @override
  late final _TranslationsFormCityNl city = _TranslationsFormCityNl._(_root);
  @override
  late final _TranslationsFormStateNl state = _TranslationsFormStateNl._(_root);
  @override
  late final _TranslationsFormCountryNl country = _TranslationsFormCountryNl._(
    _root,
  );
  @override
  late final _TranslationsFormOtpNl otp = _TranslationsFormOtpNl._(_root);
  @override
  late final _TranslationsFormTitleNl title = _TranslationsFormTitleNl._(_root);
  @override
  late final _TranslationsFormDateNl date = _TranslationsFormDateNl._(_root);
  @override
  late final _TranslationsFormReasonNl reason = _TranslationsFormReasonNl._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodNl withdrawMethod =
      _TranslationsFormWithdrawMethodNl._(_root);
  @override
  late final _TranslationsFormFileFieldNl fileField =
      _TranslationsFormFileFieldNl._(_root);
  @override
  late final _TranslationsFormNoteNl note = _TranslationsFormNoteNl._(_root);
  @override
  late final _TranslationsFormGenderNl gender = _TranslationsFormGenderNl._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldNl anyField =
      _TranslationsFormAnyFieldNl._(_root);
  @override
  late final _TranslationsFormAnyDropdownNl anyDropdown =
      _TranslationsFormAnyDropdownNl._(_root);
}

// Path: action
class _TranslationsActionNl implements TranslationsActionEn {
  _TranslationsActionNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Volgende';
  @override
  String get getStarted => 'Aan de slag';
  @override
  String get skip => 'Overslaan';
  @override
  String get select => 'Selecteren';
  @override
  String get save => 'Opslaan';
  @override
  String get signIn => 'Inloggen';
  @override
  String get signUp => 'Aanmelden';
  @override
  String get kContinue => 'Doorgaan';
  @override
  String get clearAll => 'Alles wissen';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Verzenden';
  @override
  String get pay => 'Betalen';
  @override
  String get remove => 'Verwijderen';
  @override
  String get goBack => 'Teruggaan';
  @override
  String get buyNow => 'Nu kopen';
  @override
  String get no => 'Nee';
  @override
  String get open => 'Openen';
  @override
  String get addProperty => 'Woning toevoegen';
  @override
  String get process => 'Verwerken';
  @override
  String get approve => 'Goedkeuren';
  @override
  String get reject => 'Afwijzen';
  @override
  String get viewRent => 'Huur bekijken';
  @override
  String get openNavigationMenu => 'Navigatiemenu openen';
  @override
  String get seeAll => 'Alles bekijken';
  @override
  String get update => 'Bijwerken';
  @override
  String get printTransaction => 'Transactie afdrukken';
  @override
  String get payoutRequest => 'Uitbetalingsaanvraag';
  @override
  String get addNew => '+ Nieuw toevoegen';
  @override
  String get sendRequest => 'Aanvraag verzenden';
  @override
  String get print => 'Afdrukken';
  @override
  String get requestForRefund => 'Terugbetaling aanvragen';
  @override
  String get previous => 'Vorige';
  @override
  String get delete => 'Verwijderen';
  @override
  String get applyProperty => 'Woning toepassen';
  @override
  String get viewApplication => 'Aanvraag bekijken';
  @override
  String get inviteTenant => 'Huurder uitnodigen';
  @override
  String get inviteRent => 'Huur uitnodigen';
  @override
  String get cancel => 'Annuleren';
  @override
  String get accept => 'Accepteren';
  @override
  String get submit => 'Indienen';
  @override
  String get yes => 'Ja';
  @override
  String get okay => 'Oké';
  @override
  String get confirm => 'Bevestigen';
  @override
  String get apply => 'Toepassen';
  @override
  String get reset => 'Resetten';
  @override
  String get retry => 'Opnieuw proberen';
  @override
  String get viewAll => 'Alles bekijken';
}

// Path: pages
class _TranslationsPagesNl implements TranslationsPagesEn {
  _TranslationsPagesNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageNl language =
      _TranslationsPagesLanguageNl._(_root);
  @override
  late final _TranslationsPagesOnboardNl onboard =
      _TranslationsPagesOnboardNl._(_root);
  @override
  late final _TranslationsPagesSignInNl signIn = _TranslationsPagesSignInNl._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordNl forgotPassword =
      _TranslationsPagesForgotPasswordNl._(_root);
  @override
  late final _TranslationsPagesOtpVerificationNl otpVerification =
      _TranslationsPagesOtpVerificationNl._(_root);
  @override
  late final _TranslationsPagesResetPasswordNl resetPassword =
      _TranslationsPagesResetPasswordNl._(_root);
  @override
  late final _TranslationsPagesSignUpNl signUp = _TranslationsPagesSignUpNl._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeNl welcome =
      _TranslationsPagesWelcomeNl._(_root);
  @override
  late final _TranslationsPagesAboutUsNl aboutUs =
      _TranslationsPagesAboutUsNl._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsNl termsAndConditions =
      _TranslationsPagesTermsAndConditionsNl._(_root);
  @override
  late final _TranslationsPagesNotificationListNl notificationList =
      _TranslationsPagesNotificationListNl._(_root);
  @override
  late final _TranslationsPagesContactUsNl contactUs =
      _TranslationsPagesContactUsNl._(_root);
  @override
  late final _TranslationsPagesCancelRentingNl cancelRenting =
      _TranslationsPagesCancelRentingNl._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsNl invoiceDetails =
      _TranslationsPagesInvoiceDetailsNl._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentNl offlinePayment =
      _TranslationsPagesOfflinePaymentNl._(_root);
  @override
  late final _TranslationsPagesPaymentStatusNl paymentStatus =
      _TranslationsPagesPaymentStatusNl._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsNl propertyDetails =
      _TranslationsPagesPropertyDetailsNl._(_root);
  @override
  late final _TranslationsPagesSearchNl search = _TranslationsPagesSearchNl._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanNl subscriptionPlan =
      _TranslationsPagesSubscriptionPlanNl._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportNl
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportNl._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsNl implements TranslationsEnumsEn {
  _TranslationsEnumsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusNl propertyStatus =
      _TranslationsEnumsPropertyStatusNl._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeNl propertyType =
      _TranslationsEnumsPropertyTypeNl._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusNl applicationStatus =
      _TranslationsEnumsApplicationStatusNl._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusNl myRentStatus =
      _TranslationsEnumsMyRentStatusNl._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusNl maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusNl._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeNl tenantProfileType =
      _TranslationsEnumsTenantProfileTypeNl._(_root);
  @override
  late final _TranslationsEnumsTenantTypeNl tenantType =
      _TranslationsEnumsTenantTypeNl._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusNl paymentStatus =
      _TranslationsEnumsPaymentStatusNl._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsNl paymentOptions =
      _TranslationsEnumsPaymentOptionsNl._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeNl paymentType =
      _TranslationsEnumsPaymentTypeNl._(_root);
  @override
  late final _TranslationsEnumsGenderNl gender = _TranslationsEnumsGenderNl._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationNl ecRelation =
      _TranslationsEnumsEcRelationNl._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeNl vehicleType =
      _TranslationsEnumsVehicleTypeNl._(_root);
  @override
  late final _TranslationsEnumsSortByNl sortBy = _TranslationsEnumsSortByNl._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeNl residentialType =
      _TranslationsEnumsResidentialTypeNl._(_root);
  @override
  late final _TranslationsEnumsFloorRangeNl floorRange =
      _TranslationsEnumsFloorRangeNl._(_root);
  @override
  late final _TranslationsEnumsFurnishingsNl furnishings =
      _TranslationsEnumsFurnishingsNl._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeNl commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeNl._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeNl landPropertyType =
      _TranslationsEnumsLandPropertyTypeNl._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeNl residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeNl._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodNl minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodNl._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterNl dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterNl._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileNl
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mob. Nr.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoNl
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Voertuiginformatie';
  @override
  String get optional => 'Voertuiginformatie (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoNl
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Kenteken';
  @override
  String get short => 'Kenteken';
  @override
  String get alt => 'Nummerplaat';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintNl
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Geen aanvraag gevonden!\n${subject} wordt hier weergegeven wanneer beschikbaar.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsNl subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsNl._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintNl
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Geen woning gevonden!\nVoeg een woning toe om deze hier te zien.';
  @override
  String get tenantRecommended =>
      'Geen aanbevolen woningen gevonden\nProbeer het later opnieuw.';
  @override
  String get tenantAllProperty =>
      'Woningen niet beschikbaar\nProbeer het later opnieuw.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundNl
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Geen ${status} onderhoud gevonden.';
  @override
  String get tenant =>
      'Geen onderhoud gevonden! U kunt een onderhoudsaanvraag indienen om deze hier te zien.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundNl
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Geen ${status} terugbetalingsaanvraag gevonden!\nU kunt de terugbetalingsaanvraag hier zien wanneer deze beschikbaar is.';
  @override
  String get tenant =>
      'Geen terugbetalingsaanvraag gevonden!\nU kunt een terugbetalingsaanvraag indienen om deze hier te zien.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintNl
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'De huurder keurt de terugbetaling goed wanneer hij het geld terug heeft';
  @override
  String get tenantReqSuccess =>
      'We zullen de terugbetalingsaanvraag beoordelen en binnen 24 uur goedkeuren.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyNl
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'De huurwoning verandert. Deze moet alleen geldig (effectief) zijn voor de huurbetaling van de volgende maand.';
  @override
  String get deleteOnRent =>
      'Uw woning is al verhuurd door de huurder. U kunt deze niet verwijderen totdat u de huurder eerst verwijdert';
  @override
  String get alreayRented =>
      'Deze woning is al verhuurd. Probeer het later opnieuw.\nOf u kunt contact opnemen met de verhuurder voor meer informatie.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationNl
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Geen huuruitnodiging gevonden!\nMaak een huuruitnodiging om deze hier te zien.';
  @override
  String get tenantNoRentInvitation =>
      'Geen huuruitnodiging gevonden!\nU kunt de huuruitnodiging hier zien wanneer deze beschikbaar is.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutNl implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Weet u zeker dat u wilt uitloggen?';
}

// Path: prompt.application
class _TranslationsPromptApplicationNl
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Waarom wijst u deze aanvraag af?';
  @override
  late final _TranslationsPromptApplicationApplicationSentNl applicationSent =
      _TranslationsPromptApplicationApplicationSentNl._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborNl implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteNl delete =
      _TranslationsPromptLaborDeleteNl._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestNl
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Waarom wordt dit verzoek afgewezen?';
  @override
  String get processTitle =>
      'Weet u zeker dat u dit onderhoudsverzoek wilt verwerken?';
  @override
  String get completeTitle => 'Werk voltooid?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodNl
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Opnamemethode verwijderen?';
  @override
  String get deleteDescription =>
      'Weet u zeker dat u deze opnamemethode wilt verwijderen?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesNl
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Weet u zeker dat u wilt teruggaan?';
  @override
  String get message => 'Velden die zijn gewijzigd, worden niet opgeslagen!';
}

// Path: prompt.property
class _TranslationsPromptPropertyNl implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteNl delete =
      _TranslationsPromptPropertyDeleteNl._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationNl
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveNl
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveNl._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptNl tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptNl._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredNl
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sessie verlopen';
  @override
  String get message => 'Uw sessie is verlopen. Meld u opnieuw aan';
  @override
  String get action => 'Aanmelden';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetNl
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Geen internetverbinding';
  @override
  String get message =>
      'Controleer uw Wi-Fi- of mobiele netwerkverbinding en probeer het opnieuw';
  @override
  String get action => 'Probeer opnieuw';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerNl
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Toestemming vereist!';
  @override
  String get message =>
      'U moet toestemming verlenen in de app-instellingen. Wilt u de instellingen nu openen?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerNl
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Selecteer optie';
  @override
  String get gallery => 'Galerij';
  @override
  String get camera => 'Camera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogNl
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifieer uw e-mail';
  @override
  String get message => 'We hebben een verificatiecode per e-mail gestuurd';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} naar ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationNl
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Meldingen wissen?';
  @override
  String get clearMessage => 'Weet u zeker dat u alle meldingen wilt wissen?';
}

// Path: form.fullName
class _TranslationsFormFullNameNl implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Voer ${_root.common.fullName} in';
  @override
  late final _TranslationsFormFullNameErrorsNl errors =
      _TranslationsFormFullNameErrorsNl._(_root);
}

// Path: form.email
class _TranslationsFormEmailNl implements TranslationsFormEmailEn {
  _TranslationsFormEmailNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Voer uw ${_root.common.email} in';
  @override
  late final _TranslationsFormEmailErrorsNl errors =
      _TranslationsFormEmailErrorsNl._(_root);
}

// Path: form.password
class _TranslationsFormPasswordNl implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsNl errors =
      _TranslationsFormPasswordErrorsNl._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordNl
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Bevestig ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsNl errors =
      _TranslationsFormConfirmPasswordErrorsNl._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberNl
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsNl errors =
      _TranslationsFormMobileNumberErrorsNl._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Nl implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Nl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Huisnummer en straatnaam';
  @override
  late final _TranslationsFormAddress1ErrorsNl errors =
      _TranslationsFormAddress1ErrorsNl._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Nl implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Nl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Appartement, suite, unit, etc.';
  @override
  late final _TranslationsFormAddress2ErrorsNl errors =
      _TranslationsFormAddress2ErrorsNl._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeNl implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Voer ${_root.common.postalCode} in';
  @override
  late final _TranslationsFormPostalCodeErrorsNl errors =
      _TranslationsFormPostalCodeErrorsNl._(_root);
}

// Path: form.city
class _TranslationsFormCityNl implements TranslationsFormCityEn {
  _TranslationsFormCityNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Voer de naam van uw ${_root.common.city} in.';
  @override
  late final _TranslationsFormCityErrorsNl errors =
      _TranslationsFormCityErrorsNl._(_root);
}

// Path: form.state
class _TranslationsFormStateNl implements TranslationsFormStateEn {
  _TranslationsFormStateNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Voer de naam van uw ${_root.common.state} in.';
  @override
  late final _TranslationsFormStateErrorsNl errors =
      _TranslationsFormStateErrorsNl._(_root);
}

// Path: form.country
class _TranslationsFormCountryNl implements TranslationsFormCountryEn {
  _TranslationsFormCountryNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Selecteer ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsNl errors =
      _TranslationsFormCountryErrorsNl._(_root);
}

// Path: form.otp
class _TranslationsFormOtpNl implements TranslationsFormOtpEn {
  _TranslationsFormOtpNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsNl errors =
      _TranslationsFormOtpErrorsNl._(_root);
}

// Path: form.title
class _TranslationsFormTitleNl implements TranslationsFormTitleEn {
  _TranslationsFormTitleNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Titel';
  @override
  String get hint => 'Voer titel in';
  @override
  late final _TranslationsFormTitleErrorsNl errors =
      _TranslationsFormTitleErrorsNl._(_root);
}

// Path: form.date
class _TranslationsFormDateNl implements TranslationsFormDateEn {
  _TranslationsFormDateNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Selecteer ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsNl errors =
      _TranslationsFormDateErrorsNl._(_root);
}

// Path: form.reason
class _TranslationsFormReasonNl implements TranslationsFormReasonEn {
  _TranslationsFormReasonNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Reden';
  @override
  String get hint => 'Voer reden in';
  @override
  late final _TranslationsFormReasonErrorsNl errors =
      _TranslationsFormReasonErrorsNl._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodNl
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Selecteer ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsNl errors =
      _TranslationsFormWithdrawMethodErrorsNl._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldNl implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Upload ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsNl errors =
      _TranslationsFormFileFieldErrorsNl._(_root);
}

// Path: form.note
class _TranslationsFormNoteNl implements TranslationsFormNoteEn {
  _TranslationsFormNoteNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Voer ${_root.form.note.label(note: note)} in';
  @override
  late final _TranslationsFormNoteErrorsNl errors =
      _TranslationsFormNoteErrorsNl._(_root);
}

// Path: form.gender
class _TranslationsFormGenderNl implements TranslationsFormGenderEn {
  _TranslationsFormGenderNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Selecteer ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsNl errors =
      _TranslationsFormGenderErrorsNl._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldNl implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Voer ${_root.form.anyField.label(label: label)} in';
  @override
  late final _TranslationsFormAnyFieldErrorsNl errors =
      _TranslationsFormAnyFieldErrorsNl._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownNl implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Selecteer ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsNl errors =
      _TranslationsFormAnyDropdownErrorsNl._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageNl implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardNl implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataNl onboardData =
      _TranslationsPagesOnboardOnboardDataNl._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInNl implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Welkom terug';
  @override
  String get subtitle => 'Meld u nu aan om aan een geweldige reis te beginnen.';
  @override
  late final _TranslationsPagesSignInExtraNl extra =
      _TranslationsPagesSignInExtraNl._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordNl
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wachtwoord vergeten';
  @override
  String get subtitle =>
      'Voer uw e-mailadres in om uw wachtwoord te herstellen.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationNl
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verificatie';
  @override
  String subtitle({required String email}) =>
      'Een 4-cijferige pincode is naar uw e-mailadres gestuurd. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraNl extra =
      _TranslationsPagesOtpVerificationExtraNl._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordNl
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wachtwoord opnieuw instellen';
  @override
  String get subtitle =>
      'Stel uw wachtwoord opnieuw in om het te herstellen en in te loggen op uw account';
  @override
  late final _TranslationsPagesResetPasswordExtraNl extra =
      _TranslationsPagesResetPasswordExtraNl._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpNl implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Maak een account aan';
  @override
  String get subtitle => 'Meld u nu aan om aan een geweldige reis te beginnen';
  @override
  late final _TranslationsPagesSignUpExtraNl extra =
      _TranslationsPagesSignUpExtraNl._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeNl implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wie bent u?';
  @override
  String get subtitle => 'Selecteer de onderstaande optie.';
  @override
  late final _TranslationsPagesWelcomeExtraNl extra =
      _TranslationsPagesWelcomeExtraNl._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsNl implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsNl
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListNl
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Meldingen';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsNl implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraNl extra =
      _TranslationsPagesContactUsExtraNl._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingNl
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Waarom ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormNl form =
      _TranslationsPagesCancelRentingFormNl._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsNl
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentNl
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Offline betaling';
  @override
  late final _TranslationsPagesOfflinePaymentFormNl form =
      _TranslationsPagesOfflinePaymentFormNl._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraNl extra =
      _TranslationsPagesOfflinePaymentExtraNl._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusNl
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessNl success =
      _TranslationsPagesPaymentStatusSuccessNl._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailNl fail =
      _TranslationsPagesPaymentStatusFailNl._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsNl
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraNl extra =
      _TranslationsPagesPropertyDetailsExtraNl._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchNl implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Zoeken';
  @override
  late final _TranslationsPagesSearchExtraNl extra =
      _TranslationsPagesSearchExtraNl._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanNl
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Kies uw abonnement';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraNl extra =
      _TranslationsPagesSubscriptionPlanExtraNl._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportNl
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Totale onderhoudskosten: '),
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
class _TranslationsEnumsPropertyStatusNl
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Alle woningen';
  @override
  String get pending => 'In behandeling';
  @override
  String get active => 'Actief';
  @override
  String get inactive => 'Inactief';
  @override
  String get rejected => 'Afgekeurd';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeNl
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Appartement/Condominium';
  @override
  String get house => 'Huis';
  @override
  String get commercialProperty => 'Commercieel vastgoed';
  @override
  String get land => 'Grond';
  @override
  String get room => 'Kamer';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusNl
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'In behandeling';
  @override
  String get processing => 'Verwerking';
  @override
  String get approved => 'Goedgekeurd';
  @override
  String get rejected => 'Afgekeurd';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusNl
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'In behandeling';
  @override
  String get processing => 'Verwerking';
  @override
  String get active => 'Actief';
  @override
  String get expired => 'Verlopen';
  @override
  String get cancelled => 'Geannuleerd';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusNl
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'In behandeling';
  @override
  String get processing => 'Verwerking';
  @override
  String get rejected => 'Afgekeurd';
  @override
  String get completed => 'Voltooid';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeNl
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Particulier';
  @override
  String get company => 'Bedrijf';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeNl implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Nieuwe huurder';
  @override
  String get activeTenant => 'Actieve huurder';
  @override
  String get expiredTenant => 'Verlopen huurder';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusNl
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'In behandeling';
  @override
  String get paid => 'Betaald';
  @override
  String get unpaid => 'Onbetaald';
  @override
  String get rejected => 'Afgekeurd';
  @override
  String get refund => 'Terugbetaling';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsNl
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Online betaling';
  @override
  String get offlinePayment => 'Offline betaling';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeNl
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Waarborgsom';
  @override
  String get rentPayment => 'Huur betaling';
  @override
  String get subscription => 'Abonnement';
}

// Path: enums.gender
class _TranslationsEnumsGenderNl implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Man';
  @override
  String get female => 'Vrouw';
  @override
  String get other => 'Anders';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationNl implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Echtgenote';
  @override
  String get parent => 'Ouder';
  @override
  String get friend => 'Vriend';
  @override
  String get brother => 'Broer';
  @override
  String get sister => 'Zus';
  @override
  String get child => 'Kind';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeNl
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Auto';
  @override
  String get motorcycles => 'Motorfietsen';
  @override
  String get lorry => 'Vrachtwagen';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByNl implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Laag naar Hoog';
  @override
  String get highToLow => 'Hoog naar Laag';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeNl
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Flat';
  @override
  String get apartment => 'Appartement';
  @override
  String get condominium => 'Condominium';
  @override
  String get serviceResidence => 'Service Residence';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Duplex';
  @override
  String get townhouseCondo => 'Townhouse Condo';
  @override
  String get others => 'Overige';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeNl implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Hoog';
  @override
  String get medium => 'Midden';
  @override
  String get low => 'Laag';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsNl
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Volledig gemeubileerd';
  @override
  String get partiallyFurnished => 'Gedeeltelijk gemeubileerd';
  @override
  String get notFurnished => 'Niet gemeubileerd';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeNl
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Kantoorruimte';
  @override
  String get retailSpace => 'Winkelruimte';
  @override
  String get shopLot => 'Winkel';
  @override
  String get warehouseFactory => 'Magazijn / Fabriek';
  @override
  String get hotelResort => 'Hotel / Resort';
  @override
  String get sofo => 'SOFO';
  @override
  String get soho => 'SOHO';
  @override
  String get sovo => 'SOVO';
  @override
  String get others => 'Overige';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeNl
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Woonbestemming';
  @override
  String get industrial => 'Industrieel';
  @override
  String get agricultural => 'Landbouw';
  @override
  String get commercial => 'Commercieel';
  @override
  String get mixedDevelopment => 'Gemengde ontwikkeling';
  @override
  String get others => 'Overige';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeNl
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Condo / Serviceflat / Penthouse';
  @override
  String get apartment => 'Appartement / Flat';
  @override
  String get house => 'Huizen';
  @override
  String get shoplot => 'Winkel';
  @override
  String get sharing => 'Huis / Flat delen';
  @override
  String get others => 'Overige';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodNl
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 maanden';
  @override
  String get oneYear => '1 jaar';
  @override
  String get oneAndHalfYears => '1,5 jaar';
  @override
  String get twoYears => '2 jaar';
  @override
  String get twoAndHalfYears => '2,5 jaar';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterNl
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Dagelijks';
  @override
  String get weekly => 'Wekelijks';
  @override
  String get monthly => 'Maandelijks';
  @override
  String get yearly => 'Jaarlijks';
  @override
  String get custom => 'Aangepast';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsNl
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Uw aanvraag';
  @override
  String get landlord => 'De aanvraag van de huurder';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentNl
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Aanvraag succesvol verzonden!';
  @override
  String get sucessDescription =>
      'U kunt deze aanvraag in uw aanvraaglijst bekijken';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteNl
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Arbeider verwijderen?';
  @override
  String get description =>
      'Weet u zeker dat u deze arbeider wilt verwijderen?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteNl
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Woning verwijderen?';
  @override
  String get message => 'Weet u zeker dat u deze woning wilt verwijderen?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveNl
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Weet u zeker dat u deze huur wilt goedkeuren?';
  @override
  String get description =>
      'Zorg ervoor dat u de overeenkomst die door de huurder is ondertekend, hebt bekeken.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptNl
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Weet u zeker dat u deze uitnodiging wilt accepteren?';
  @override
  String get description =>
      'Zorg ervoor dat u het pdf-bestand van de overeenkomst hebt gedownload!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsNl
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer uw ${_root.common.fullName} in';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsNl implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer uw ${_root.common.email} adres in';
  @override
  String get invalid => '⦸ Ongeldig e-mailadres, probeer het opnieuw';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsNl
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer uw ${_root.common.password} in';
  @override
  String minLength({required Object count}) =>
      'Wachtwoord moet minstens ${count} tekens lang zijn!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsNl
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer uw ${_root.common.password} in';
  @override
  String get notMatched => 'Wachtwoorden komen niet overeen!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsNl
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer uw ${_root.common.mobileNumber} in';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsNl
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer uw ${_root.form.address1.label} in';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsNl
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer uw ${_root.form.address2.label} in';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsNl
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer uw ${_root.common.postalCode} in';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsNl implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer de naam van uw ${_root.common.city} in.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsNl implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer de naam van uw ${_root.common.state} in.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsNl
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Selecteer uw ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsNl implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer de OTP in.';
  @override
  String get invalid => 'Voer de juiste OTP in.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsNl implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer titel in';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsNl implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Selecteer ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsNl
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer reden in';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsNl
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Selecteer ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsNl
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Selecteer ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsNl implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Voer ${_root.form.note.label(note: note)} in';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsNl
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Selecteer ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsNl
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Voer ${_root.form.anyField.label(label: label)} in';
  @override
  String get invalid => 'Voer een geldige @form.anyField.label in';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsNl
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Selecteer ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Selecteer een geldige @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataNl
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Nl data1 =
      _TranslationsPagesOnboardOnboardDataData1Nl._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Nl data2 =
      _TranslationsPagesOnboardOnboardDataData2Nl._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Nl data3 =
      _TranslationsPagesOnboardOnboardDataData3Nl._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraNl
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Onthoud mij';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Heeft u geen account? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraNl
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendNl codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendNl._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraNl
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogNl dialog =
      _TranslationsPagesResetPasswordExtraDialogNl._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraNl
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Heeft u een account? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraNl
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Beheer uw eigen eigendommen';
  @override
  String get tenantTag => 'Log in op uw huuraccount';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraNl
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Bericht...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormNl
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonNl reason =
      _TranslationsPagesCancelRentingFormReasonNl._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormNl
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteNl paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteNl._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraNl
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Te betalen bedrag: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Naam rekeninghouder';
  @override
  String get accountNumber => 'Rekeningnummer';
  @override
  String get swiftCode => 'Swift-code';
  @override
  String get branch => 'Filiaal';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Kies alleen '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' of '),
      fileType('DOC'),
      const TextSpan(text: '-formaatbestanden. Bestandsgrootte '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessNl
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Factuur bekijken';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'We zullen de betaling beoordelen en binnen 24 uur goedkeuren.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailNl
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Probeer het opnieuw';
  @override
  String get title => 'Oeps! Betaling mislukt';
  @override
  String get description =>
      'Uw transactie is mislukt vanwege een technische fout.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraNl
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

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
      const TextSpan(text: 'Kenmerken '),
      fa('(Faciliteiten & Voorzieningen)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Selecteer huurperiode';
  @override
  String get writeAReview => '+ Schrijf een recensie';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraNl
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Zoek naar percelen, flats, kamers...';
  @override
  String get noRecentSearch => 'U heeft geen recente zoekopdrachten.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraNl
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Abonnementsbetaling succesvol.\nU heeft nu toegang tot de geabonneerde functies.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Nl
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Nl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vind uw woning';
  @override
  String get description =>
      'We hebben het gemakkelijk gemaakt om een plek te vinden die bij uw leven past - of het nu een kamer, een appartement of een huis is.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Nl
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Nl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Appartement in de stad';
  @override
  String get description =>
      'We besparen u tijd door u snel te matchen met de perfecte woning voordat deze weg is, zodat u kunt genieten van uw nieuwe thuis, of u kunt uw eigen gratis aanbieden.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Nl
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Nl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Uw comfortabele huis';
  @override
  String get description =>
      'Als u op zoek bent naar een plek om te wonen, bekijk dan onze huizen te huur. We hebben een breed scala aan huizen waaruit u kunt kiezen in het hele land.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendNl
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Code verzonden over ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Code opnieuw verzenden'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogNl
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Succesvol gewijzigd!';
  @override
  String get subtitle =>
      'Meld u aan met uw nieuwe wachtwoord.\nU wordt doorgestuurd naar Aanmelden...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonNl
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Reden schrijven';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsNl errors =
      _TranslationsPagesCancelRentingFormReasonErrorsNl._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteNl
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Betaalnotitie (${_root.common.optional})';
  @override
  String get hint => 'Voer wat tekst in...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsNl
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsNl._(this._root);

  final TranslationsNl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Voer de reden voor de huurannulering in';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsNl {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profiel';
      case 'common.language':
        return 'Taal';
      case 'common.subscriptionPlan':
        return 'Abonnement';
      case 'common.contactUs':
        return 'Contacteer ons';
      case 'common.termsAndConditions':
        return 'Algemene voorwaarden';
      case 'common.aboutUs':
        return 'Over ons';
      case 'common.logout':
        return 'Uitloggen';
      case 'common.editProfile':
        return 'Profiel bewerken';
      case 'common.fullName':
        return 'Volledige naam';
      case 'common.email':
        return 'E-mail';
      case 'common.mobileNumber':
        return 'Mobiel nummer';
      case 'common.address':
        return 'Adres';
      case 'common.postalCode':
        return 'Postcode';
      case 'common.city':
        return 'Stad';
      case 'common.country':
        return 'Land';
      case 'common.state':
        return 'Provincie';
      case 'common.password':
        return 'Wachtwoord';
      case 'common.forgotPassword':
        return 'Wachtwoord vergeten';
      case 'common.tenant':
        return 'Huurder';
      case 'common.landlord':
        return 'Verhuurder';
      case 'common.cancelRenting':
        return 'Huur annuleren';
      case 'common.startDate':
        return 'Startdatum';
      case 'common.endDate':
        return 'Einddatum';
      case 'common.fromDate':
        return 'Van datum';
      case 'common.toDate':
        return 'Tot datum';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Banklijst';
      case 'common.withdrawMethod':
        return 'Opnamemethode';
      case 'common.uploadPaymentReceipt':
        return 'Betalingsbewijs uploaden';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Opmerking: '),
            note(
              'De betaling vereist handmatige goedkeuring door de beheerder binnen',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 uur.'),
          ],
        );
      case 'common.reviews':
        return 'Beoordelingen';
      case 'common.description':
        return 'Beschrijving';
      case 'common.about':
        return 'Over';
      case 'common.propertyTypes':
        return 'Soorten woningen';
      case 'common.features':
        return 'Kenmerken';
      case 'common.floorPlans':
        return 'Plattegronden';
      case 'common.buildingDetails':
        return 'Gebouwgegevens';
      case 'common.buildingName':
        return 'Gebouwnaam';
      case 'common.propertyAddress':
        return 'Adres van de woning';
      case 'common.completionYear':
        return 'Voltooiingsjaar';
      case 'common.lotNumber':
        return 'Lotnummer';
      case 'common.residentialType':
        return 'Woningtype';
      case 'common.furnishings':
        return 'Inrichting';
      case 'common.floorRange':
        return 'Verdieping';
      case 'common.bedrooms':
        return 'Slaapkamers';
      case 'common.bathrooms':
        return 'Badkamers';
      case 'common.propertySize':
        return 'Woonoppervlakte';
      case 'common.rentalPeriod':
        return 'Huurperiode';
      case 'common.securityDeposit':
        return 'Waarborgsom';
      case 'common.utilityBill':
        return 'Nutsvoorzieningen';
      case 'common.facilities':
        return 'Faciliteiten';
      case 'common.amenities':
        return 'Voorzieningen';
      case 'common.expiringReason':
        return 'Reden van verlenging';
      case 'common.tenantDetails':
        return 'Huurdergegevens';
      case 'common.typeOfTenant':
        return 'Type huurder';
      case 'common.tenantName':
        return 'Naam huurder';
      case 'common.nidPassport':
        return 'NID/Paspoort';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Huurder-ID';
      case 'common.dateOfBirth':
        return 'Geboortedatum';
      case 'common.gender':
        return 'Geslacht';
      case 'common.nominee':
        return 'Genomineerde';
      case 'common.name':
        return 'Naam';
      case 'common.optional':
        return 'Optioneel';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mob. Nr.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Contactpersoon in noodgevallen';
      case 'common.relation':
        return 'Relatie';
      case 'common.relationWith':
        return '${_root.common.relation} Met';
      case 'common.relationWithYou':
        return '${_root.common.relation} Met jou';
      case 'common.company':
        return 'Bedrijf';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} KvK-nummer';
      case 'common.workplace':
        return 'Werkplek';
      case 'common.officePhoneNo':
        return 'Telefoonnummer kantoor';
      case 'common.officeMobileNo':
        return 'Mobiel nummer kantoor';
      case 'common.vehicle':
        return 'Voertuig';
      case 'common.vehiclesInfo.plain':
        return 'Voertuiginformatie';
      case 'common.vehiclesInfo.optional':
        return 'Voertuiginformatie (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Kenteken';
      case 'common.vehicleRegistrationNo.short':
        return 'Kenteken';
      case 'common.vehicleRegistrationNo.alt':
        return 'Nummerplaat';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Merk';
      case 'common.rentProperty':
        return 'Woning verhuren';
      case 'common.propertyDetails':
        return 'Woninggegevens';
      case 'common.propertyId':
        return 'Woning-ID';
      case 'common.propertyType':
        return 'Woningtype';
      case 'common.propertyName':
        return 'Naam woning';
      case 'common.paymentDetails':
        return 'Betalingsgegevens';
      case 'common.monthlyRent':
        return 'Maandelijkse huur';
      case 'common.thisMonthPayment':
        return 'Betaling deze maand';
      case 'common.totalPaidRent':
        return 'Totaal betaalde huur';
      case 'common.dueRent':
        return 'Verschuldigde huur';
      case 'common.rentStartDate':
        return 'Huur ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Huur ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'Huurovereenkomst PDF';
      case 'common.noFile':
        return 'Geen bestand';
      case 'common.tenantImageOp':
        return 'Afbeelding huurder (${_root.common.optional})';
      case 'common.addNewVechicle':
        return 'Nieuw voertuig toevoegen';
      case 'common.uploadNidPassport':
        return 'NID/Paspoort uploaden';
      case 'common.nidPassportUploadNote':
        return 'Alleen afbeeldingen van het type bestand worden geaccepteerd. Bestandslimiet tot 2,5 MB.';
      case 'common.search':
        return 'Zoeken';
      case 'common.sortBy':
        return 'Sorteren op';
      case 'common.subscription':
        return 'Abonnement';
      case 'common.downloading':
        return 'Downloaden...';
      case 'common.downloadSuccess':
        return 'Bestand succesvol gedownload!';
      case 'common.addPropertyBannerTitle':
        return 'Wilt u uw woning verhuren?';
      case 'common.application':
        return 'Aanvraag';
      case 'common.tenantHasPaidDeposit':
        return 'Huurder heeft de aanbetaling betaald.';
      case 'common.askProcessingRentApplication':
        return 'Weet u zeker dat u deze aanvraag voor een huurwoning wilt verwerken?';
      case 'common.dateAndTime':
        return 'Datum en tijd';
      case 'common.applicationDetails':
        return 'Aanvraagdetails';
      case 'common.depositStatus':
        return 'Aanbetalingsstatus';
      case 'common.uploadRentAgreement':
        return 'Huurovereenkomst uploaden';
      case 'common.uploadFilePDF':
        return 'Bestand uploaden (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Selecteer een overeenkomstbestand.';
      case 'common.landlordRentAgreementPDF':
        return 'Huurovereenkomst PDF verhuurder';
      case 'common.tenantRentAgreementPDF':
        return 'Huurovereenkomst PDF huurder';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opmerking: '),
            note(
              'Keur de aanvraag pas goed nadat de huurder een aanbetaling heeft gedaan.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Reden van afwijzing';
      case 'common.youveRejectedThisApplication':
        return 'U hebt deze aanvraag afgewezen';
      case 'common.landlordDetails':
        return 'Verhuurdergegevens';
      case 'common.landlordName':
        return 'Naam verhuurder';
      case 'common.downloadRentAgreement':
        return 'Huurovereenkomst downloaden';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Accepteer de '),
            toc('Algemene voorwaarden'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opmerking: '),
            note(
              'Download en lees de overeenkomst. Stuur de ondertekende overeenkomst naar de verhuurder via WhatsApp of e-mail.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opmerking: '),
            note(
              'De verhuurder keurt de aanvraag goed wanneer de huurder de borg, de nutsvoorzieningen en de vooruitbetaling van één maand huur heeft betaald.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Huurovereenkomst (PDF) '),
            complete('Volledige overeenkomst'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opmerking: '),
            note(
              'De verhuurder keurt de aanvraag goed wanneer de huurder de borg, de nutsvoorzieningen en de vooruitbetaling van één maand huur heeft betaald.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Lijst met aanvragen';
      case 'common.viewDetails':
        return 'Bekijk details';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Home';
      case 'common.dashboard':
        return 'Dashboard';
      case 'common.tenants':
        return 'Huurders';
      case 'common.maintenance':
        return 'Onderhoud';
      case 'common.maintenanceList':
        return 'Onderhoudslijst';
      case 'common.maintenanceReport':
        return 'Onderhoudsrapport';
      case 'common.labor':
        return 'Arbeid';
      case 'common.applications':
        return 'Aanvragen';
      case 'common.rentInvitation':
        return 'Huuruitnodiging';
      case 'common.payment':
        return 'Betaling';
      case 'common.rentPayment':
        return 'Huur betalen';
      case 'common.depositUtilityPayment':
        return 'Aanbetaling & nutsvoorzieningen';
      case 'common.refundRequest':
        return 'Teruggave aanvragen';
      case 'common.withdrawRequest':
        return 'Opname aanvragen';
      case 'common.myProperty':
        return 'Mijn woning';
      case 'common.myRent':
        return 'Mijn huur';
      case 'common.wishlist':
        return 'Verlanglijst';
      case 'common.properties':
        return 'Woningen';
      case 'common.allProperties':
        return 'Alle woningen';
      case 'common.totalPropery':
        return 'Totaal aantal woningen';
      case 'common.occupied':
        return 'Bezet';
      case 'common.vacant':
        return 'Leegstaand';
      case 'common.accounting':
        return 'Boekhouding';
      case 'common.totalIncome':
        return 'Totaal inkomen';
      case 'common.totalExpense':
        return 'Totaal uitgaven';
      case 'common.currentBalance':
        return 'Huidig saldo';
      case 'common.totalWithdrawal':
        return 'Totaal (opname)';
      case 'common.totalProperties':
        return 'Totaal aantal woningen';
      case 'common.totalTenant':
        return 'Totaal aantal huurders';
      case 'common.totalRentPaid':
        return 'Totaal betaalde huur';
      case 'common.totalRentDue':
        return 'Totaal verschuldigde huur';
      case 'common.totalApplication':
        return 'Totaal aantal aanvragen';
      case 'common.pendingApplication':
        return 'In behandeling zijnde aanvragen';
      case 'common.processingApplication':
        return 'Aanvragen in behandeling';
      case 'common.approveApplication':
        return 'Aanvraag goedkeuren';
      case 'common.rejectApplication':
        return 'Aanvraag afwijzen';
      case 'common.maintenanceCost':
        return 'Onderhoudskosten';
      case 'common.transactionSummary':
        return 'Transactieoverzicht';
      case 'common.maintenanceRequest':
        return 'Onderhoudsaanvraag';
      case 'common.notifications':
        return 'Meldingen';
      case 'common.myProperties':
        return 'Mijn woningen';
      case 'common.recommendationProperties':
        return 'Aanbevolen woningen';
      case 'common.laborList':
        return 'Arbeidslijst';
      case 'common.addLabor':
        return 'Arbeid toevoegen';
      case 'common.laborDetails':
        return 'Arbeidsgegevens';
      case 'common.laborSalary':
        return 'Arbeidsloon';
      case 'common.editLabor':
        return 'Arbeid bewerken';
      case 'common.addNewLabor':
        return 'Nieuwe arbeid toevoegen';
      case 'common.enterAmount':
        return 'Bedrag invoeren';
      case 'common.maintenanceDetails':
        return 'Onderhoudsgegevens';
      case 'common.laborName':
        return 'Arbeider naam';
      case 'common.comment':
        return 'Opmerking';
      case 'common.image':
        return 'Afbeelding';
      case 'common.complete':
        return 'Voltooid';
      case 'common.details':
        return 'Details';
      case 'common.title':
        return 'Titel';
      case 'common.date':
        return 'Datum';
      case 'common.reason':
        return 'Reden';
      case 'common.edit':
        return 'Bewerken';
      case 'common.property':
        return 'Woning';
      case 'common.completeYourProfile':
        return 'Voltooi uw profiel';
      case 'common.profileImage':
        return 'Profielfoto';
      case 'common.imagePickHint':
        return 'Alleen JPEG- en PNG-afbeeldingen met een maximale grootte van 120x120 pixels worden geaccepteerd.';
      case 'common.invoiceId':
        return 'Factuurnummer';
      case 'common.depositAmount':
        return 'Aanbetalingsbedrag';
      case 'common.landlordPhone':
        return 'Telefoonnummer verhuurder';
      case 'common.rentalAdvance':
        return 'Huur (vooruit)';
      case 'common.totalAmount':
        return 'Totaalbedrag';
      case 'common.rentalAmount':
        return 'Huur bedrag';
      case 'common.adminCharge':
        return 'Administratiekosten';
      case 'common.editAccount':
        return 'Account bewerken';
      case 'common.addNewAccount':
        return 'Nieuw account toevoegen';
      case 'common.transactionId':
        return 'Transactie-ID';
      case 'common.transactionType':
        return 'Transactietype';
      case 'common.requestDate':
        return 'Aanvraagdatum';
      case 'common.amount':
        return 'Bedrag';
      case 'common.fee':
        return 'Kosten';
      case 'common.paymentStatus':
        return 'Betalingsstatus';
      case 'common.generatedTime':
        return 'Aangemaakt op';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text: 'Dit is een automatisch gegenereerd rapport van ',
            ),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Opnamegeschiedenis';
      case 'common.history':
        return 'Geschiedenis';
      case 'common.withdrawAmount':
        return 'Opnamebedrag';
      case 'common.availableBalance':
        return 'Beschikbaar saldo';
      case 'common.withdrawCharge':
        return 'Opnamekosten';
      case 'common.paymentMethod':
        return 'Betaalmethode';
      case 'common.requestSendSuccess':
        return 'Aanvraag succesvol verzonden!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Betalingsbewijs succesvol ingediend.';
      case 'common.refundReason':
        return 'Reden van terugbetaling';
      case 'common.note':
        return 'Opmerking';
      case 'common.refundReceiveSuccess':
        return 'Terugbetaling succesvol ontvangen.';
      case 'common.downloadPaymentReceipt':
        return 'Betalingsbewijs downloaden';
      case 'common.invoice':
        return 'Factuur';
      case 'common.selectPropertyToSeeInvoice':
        return 'Selecteer een woning om het factuurnummer te zien...';
      case 'common.bankAccName':
        return 'Naam bankrekening';
      case 'common.bankName':
        return 'Banknaam';
      case 'common.bankAccNum':
        return 'Bankrekeningnummer';
      case 'common.thankYou':
        return 'Dank u!';
      case 'common.basicInfo':
        return 'Basis informatie';
      case 'common.descriptionPricing':
        return 'Beschrijving & Prijzen';
      case 'common.contact':
        return 'Contact';
      case 'common.photos':
        return 'Foto\'s';
      case 'common.successfullySubmitted':
        return 'Succesvol ingediend!';
      case 'common.editProperty':
        return 'Woning bewerken';
      case 'common.addNewProperty':
        return 'Nieuwe woning toevoegen';
      case 'common.propertyManageRequestSuccess':
        return 'Uw advertentie is ingediend ter beoordeling.';
      case 'common.postAnotherProperty':
        return 'Nog een woning plaatsen';
      case 'common.browseYourProperty':
        return 'Blader door uw woning';
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
        return 'Wat wilt u plaatsen?';
      case 'common.category':
        return 'Categorie';
      case 'common.invalidCategory':
        return 'Ongeldige categorie';
      case 'common.unitNumber':
        return 'Unitnummer';
      case 'common.sqft':
        return 'm²';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'De grootte van de woning moet groter zijn dan nul';
      case 'common.whatAreTheFacility':
        return 'Wat zijn de faciliteiten?';
      case 'common.whatAreTheAmenity':
        return 'Wat zijn de voorzieningen?';
      case 'common.parkingLot':
        return 'Parkeerplaats';
      case 'common.houseType':
        return 'Type huis';
      case 'common.value':
        return 'Waarde';
      case 'common.unitLotSize':
        return 'Unit / Kavelgrootte';
      case 'common.landSize':
        return 'Grondgrootte';
      case 'common.acres':
        return 'acre(s)';
      case 'common.roomSize':
        return 'Kamergrootte';
      case 'common.askTenantPreference':
        return 'Wat zijn uw voorkeuren voor huurders?';
      case 'common.couple':
        return 'Koppel';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            'Beschrijf de ${propertyType}';
      case 'common.adTitle':
        return 'Advertentietitel';
      case 'common.minimumRentalPeriod':
        return 'Minimale huurperiode';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Nummer';
      case 'common.hideOrDisplayEmail':
        return 'E-mailadres verbergen of weergeven';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Dank u voor het plaatsen op ${appName}!';
      case 'common.propertyList':
        return 'Woninglijst';
      case 'common.newInviteRent':
        return 'Nieuwe huuruitnodiging';
      case 'common.rentAgreement':
        return 'Huurovereenkomst';
      case 'common.rentDetails':
        return 'Huurdetails';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opmerking: '),
            note('Wacht tot de huurder de uitnodiging accepteert.'),
          ],
        );
      case 'common.rent':
        return 'Huur';
      case 'common.editTenant':
        return 'Huurder bewerken';
      case 'common.addNewTenant':
        return 'Nieuwe huurder toevoegen';
      case 'common.shareInstallLink':
        return 'Installatielink delen';
      case 'common.tenantList':
        return 'Huurderslijst';
      case 'common.editMaintenanceRequest':
        return 'Onderhoudsaanvraag bewerken';
      case 'common.addNewMaintenance':
        return 'Nieuw onderhoud toevoegen';
      case 'common.landlordId':
        return 'Verhuurder-ID';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opmerking: '),
            note(
              'Uw overeenkomst wordt beoordeeld. Wacht tot de verhuurder uw huur goedkeurt.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Beoordeling bewerken';
      case 'common.writeAReview':
        return 'Schrijf een beoordeling';
      case 'common.selectRating':
        return 'Selecteer beoordeling';
      case 'common.enterYourOpinion':
        return 'Voer uw mening in';
      case 'common.askToEnterReviewMsg':
        return 'Voer een beoordelingsbericht in';
      case 'common.pressBackAgainToExit':
        return 'Druk nogmaals op terug om af te sluiten.';
      case 'common.selectPaymentMethod':
        return 'Selecteer betaalmethode';
      case 'common.filter':
        return 'Filter';
      case 'common.perMonth':
        return '/maand';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => 'Zoek alles in ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Er is iets misgegaan, probeer het opnieuw';
      case 'exceptions.noNidPassport':
        return 'Geen NID/Paspoort afbeelding verstrekt.';
      case 'exceptions.noRentPropertyFound':
        return 'Geen huurwoning gevonden voor deze huurder.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Geen woning gevonden!\nProbeer het met andere zoekwoorden';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Geen abonnementsplan gevonden!\nVernieuw de pagina en probeer het opnieuw.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Ongeldige ${dataType}-info! Vernieuw de pagina en probeer het opnieuw.';
      case 'exceptions.invalidDownloadUrl':
        return 'Ongeldige download-url!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Opslaan van bestand mislukt! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Fout bij het openen van bestand! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Geen voertuiginformatie verstrekt.';
      case 'exceptions.yourApplicationRejected':
        return 'Uw aanvraag is afgewezen';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Geen aanvraag gevonden!\n${subject} wordt hier weergegeven wanneer beschikbaar.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Uw aanvraag';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'De aanvraag van de huurder';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Geen woning gevonden!\nVoeg een woning toe om deze hier te zien.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Geen aanbevolen woningen gevonden\nProbeer het later opnieuw.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Woningen niet beschikbaar\nProbeer het later opnieuw.';
      case 'exceptions.noImageProvided':
        return 'Geen afbeelding verstrekt';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Geen ${status} onderhoud gevonden.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Geen onderhoud gevonden! U kunt een onderhoudsaanvraag indienen om deze hier te zien.';
      case 'exceptions.noDepositFound':
        return 'Geen borg gevonden!\nU kunt de borgsommen zien wanneer deze beschikbaar zijn';
      case 'exceptions.noRentPaymentFound':
        return 'Geen huurbetaling gevonden!\nU kunt de huurbetalingen zien wanneer deze beschikbaar zijn';
      case 'exceptions.transactionSummaryApiException':
        return 'Ophalen van transactieoverzicht mislukt.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Geen aanvraag gevonden!\nMaak een opnameaanvraag om deze hier te zien.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Deze opnameaanvraag is niet goedgekeurd!.';
      case 'exceptions.nonZeroError':
        return 'Voer een geldig bedrag in dat groter is dan nul.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Het bedrag moet minstens ${minValue} zijn.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Het bedrag mag niet meer zijn dan ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Selecteer eerst een betaalmethode.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Geen ${status} terugbetalingsaanvraag gevonden!\nU kunt de terugbetalingsaanvraag hier zien wanneer deze beschikbaar is.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Geen terugbetalingsaanvraag gevonden!\nU kunt een terugbetalingsaanvraag indienen om deze hier te zien.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'De huurder keurt de terugbetaling goed wanneer hij het geld terug heeft';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'We zullen de terugbetalingsaanvraag beoordelen en binnen 24 uur goedkeuren.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Selecteer het aantal ${value}';
      case 'exceptions.invalidDateRange':
        return 'Ongeldig datumbereik.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} moet groter zijn dan nul.';
      case 'exceptions.editProperty.rentalChange':
        return 'De huurwoning verandert. Deze moet alleen geldig (effectief) zijn voor de huurbetaling van de volgende maand.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Uw woning is al verhuurd door de huurder. U kunt deze niet verwijderen totdat u de huurder eerst verwijdert';
      case 'exceptions.editProperty.alreayRented':
        return 'Deze woning is al verhuurd. Probeer het later opnieuw.\nOf u kunt contact opnemen met de verhuurder voor meer informatie.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Geen huuruitnodiging gevonden!\nMaak een huuruitnodiging om deze hier te zien.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Geen huuruitnodiging gevonden!\nU kunt de huuruitnodiging hier zien wanneer deze beschikbaar is.';
      case 'exceptions.notenantFoundList':
        return 'Geen huurders!\nVoeg een huurder toe om deze hier te zien.';
      case 'exceptions.noFeaturesProvided':
        return 'Geen functies verstrekt.';
      case 'exceptions.noNotificationFound':
        return 'Geen melding beschikbaar.\nU kunt uw melding hier zien wanneer deze beschikbaar is.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Weet u zeker dat u wilt uitloggen?';
      case 'prompt.application.rejectTitle':
        return 'Waarom wijst u deze aanvraag af?';
      case 'prompt.application.applicationSent.successfully':
        return 'Aanvraag succesvol verzonden!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'U kunt deze aanvraag in uw aanvraaglijst bekijken';
      case 'prompt.labor.delete.title':
        return 'Arbeider verwijderen?';
      case 'prompt.labor.delete.description':
        return 'Weet u zeker dat u deze arbeider wilt verwijderen?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Waarom wordt dit verzoek afgewezen?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Weet u zeker dat u dit onderhoudsverzoek wilt verwerken?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Werk voltooid?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Opnamemethode verwijderen?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Weet u zeker dat u deze opnamemethode wilt verwijderen?';
      case 'prompt.unsavedChanges.title':
        return 'Weet u zeker dat u wilt teruggaan?';
      case 'prompt.unsavedChanges.message':
        return 'Velden die zijn gewijzigd, worden niet opgeslagen!';
      case 'prompt.property.delete.title':
        return 'Woning verwijderen?';
      case 'prompt.property.delete.message':
        return 'Weet u zeker dat u deze woning wilt verwijderen?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Weet u zeker dat u deze huur wilt goedkeuren?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Zorg ervoor dat u de overeenkomst die door de huurder is ondertekend, hebt bekeken.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Weet u zeker dat u deze uitnodiging wilt accepteren?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Zorg ervoor dat u het pdf-bestand van de overeenkomst hebt gedownload!';
      case 'prompt.sessionExpired.title':
        return 'Sessie verlopen';
      case 'prompt.sessionExpired.message':
        return 'Uw sessie is verlopen. Meld u opnieuw aan';
      case 'prompt.sessionExpired.action':
        return 'Aanmelden';
      case 'prompt.noInternet.title':
        return 'Geen internetverbinding';
      case 'prompt.noInternet.message':
        return 'Controleer uw Wi-Fi- of mobiele netwerkverbinding en probeer het opnieuw';
      case 'prompt.noInternet.action':
        return 'Probeer opnieuw';
      case 'prompt.permissionHandler.title':
        return 'Toestemming vereist!';
      case 'prompt.permissionHandler.message':
        return 'U moet toestemming verlenen in de app-instellingen. Wilt u de instellingen nu openen?';
      case 'prompt.imagePicker.title':
        return 'Selecteer optie';
      case 'prompt.imagePicker.gallery':
        return 'Galerij';
      case 'prompt.imagePicker.camera':
        return 'Camera';
      case 'prompt.verificationDialog.title':
        return 'Verifieer uw e-mail';
      case 'prompt.verificationDialog.message':
        return 'We hebben een verificatiecode per e-mail gestuurd';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} naar ${email}';
      case 'prompt.notification.clearTitle':
        return 'Meldingen wissen?';
      case 'prompt.notification.clearMessage':
        return 'Weet u zeker dat u alle meldingen wilt wissen?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Voer ${_root.common.fullName} in';
      case 'form.fullName.errors.required':
        return 'Voer uw ${_root.common.fullName} in';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Voer uw ${_root.common.email} in';
      case 'form.email.errors.required':
        return 'Voer uw ${_root.common.email} adres in';
      case 'form.email.errors.invalid':
        return '⦸ Ongeldig e-mailadres, probeer het opnieuw';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Voer uw ${_root.common.password} in';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Wachtwoord moet minstens ${count} tekens lang zijn!';
      case 'form.confirmPassword.label':
        return 'Bevestig ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Voer uw ${_root.common.password} in';
      case 'form.confirmPassword.errors.notMatched':
        return 'Wachtwoorden komen niet overeen!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Voer uw ${_root.common.mobileNumber} in';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Huisnummer en straatnaam';
      case 'form.address1.errors.required':
        return 'Voer uw ${_root.form.address1.label} in';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Appartement, suite, unit, etc.';
      case 'form.address2.errors.required':
        return 'Voer uw ${_root.form.address2.label} in';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Voer ${_root.common.postalCode} in';
      case 'form.postalCode.errors.required':
        return 'Voer uw ${_root.common.postalCode} in';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Voer de naam van uw ${_root.common.city} in.';
      case 'form.city.errors.required':
        return 'Voer de naam van uw ${_root.common.city} in.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Voer de naam van uw ${_root.common.state} in.';
      case 'form.state.errors.required':
        return 'Voer de naam van uw ${_root.common.state} in.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Selecteer ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Selecteer uw ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Voer de OTP in.';
      case 'form.otp.errors.invalid':
        return 'Voer de juiste OTP in.';
      case 'form.title.label':
        return 'Titel';
      case 'form.title.hint':
        return 'Voer titel in';
      case 'form.title.errors.required':
        return 'Voer titel in';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Selecteer ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Selecteer ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Reden';
      case 'form.reason.hint':
        return 'Voer reden in';
      case 'form.reason.errors.required':
        return 'Voer reden in';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Selecteer ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Selecteer ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Upload ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Selecteer ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Voer ${_root.form.note.label(note: note)} in';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Voer ${_root.form.note.label(note: note)} in';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Selecteer ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Selecteer ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Voer ${_root.form.anyField.label(label: label)} in';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Voer ${_root.form.anyField.label(label: label)} in';
      case 'form.anyField.errors.invalid':
        return 'Voer een geldige @form.anyField.label in';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Selecteer ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Selecteer ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Selecteer een geldige @form.anyDropdown.label';
      case 'action.next':
        return 'Volgende';
      case 'action.getStarted':
        return 'Aan de slag';
      case 'action.skip':
        return 'Overslaan';
      case 'action.select':
        return 'Selecteren';
      case 'action.save':
        return 'Opslaan';
      case 'action.signIn':
        return 'Inloggen';
      case 'action.signUp':
        return 'Aanmelden';
      case 'action.kContinue':
        return 'Doorgaan';
      case 'action.clearAll':
        return 'Alles wissen';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Verzenden';
      case 'action.pay':
        return 'Betalen';
      case 'action.remove':
        return 'Verwijderen';
      case 'action.goBack':
        return 'Teruggaan';
      case 'action.buyNow':
        return 'Nu kopen';
      case 'action.no':
        return 'Nee';
      case 'action.open':
        return 'Openen';
      case 'action.addProperty':
        return 'Woning toevoegen';
      case 'action.process':
        return 'Verwerken';
      case 'action.approve':
        return 'Goedkeuren';
      case 'action.reject':
        return 'Afwijzen';
      case 'action.viewRent':
        return 'Huur bekijken';
      case 'action.openNavigationMenu':
        return 'Navigatiemenu openen';
      case 'action.seeAll':
        return 'Alles bekijken';
      case 'action.update':
        return 'Bijwerken';
      case 'action.printTransaction':
        return 'Transactie afdrukken';
      case 'action.payoutRequest':
        return 'Uitbetalingsaanvraag';
      case 'action.addNew':
        return '+ Nieuw toevoegen';
      case 'action.sendRequest':
        return 'Aanvraag verzenden';
      case 'action.print':
        return 'Afdrukken';
      case 'action.requestForRefund':
        return 'Terugbetaling aanvragen';
      case 'action.previous':
        return 'Vorige';
      case 'action.delete':
        return 'Verwijderen';
      case 'action.applyProperty':
        return 'Woning toepassen';
      case 'action.viewApplication':
        return 'Aanvraag bekijken';
      case 'action.inviteTenant':
        return 'Huurder uitnodigen';
      case 'action.inviteRent':
        return 'Huur uitnodigen';
      case 'action.cancel':
        return 'Annuleren';
      case 'action.accept':
        return 'Accepteren';
      case 'action.submit':
        return 'Indienen';
      case 'action.yes':
        return 'Ja';
      case 'action.okay':
        return 'Oké';
      case 'action.confirm':
        return 'Bevestigen';
      case 'action.apply':
        return 'Toepassen';
      case 'action.reset':
        return 'Resetten';
      case 'action.retry':
        return 'Opnieuw proberen';
      case 'action.viewAll':
        return 'Alles bekijken';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Vind uw woning';
      case 'pages.onboard.onboardData.data1.description':
        return 'We hebben het gemakkelijk gemaakt om een plek te vinden die bij uw leven past - of het nu een kamer, een appartement of een huis is.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Appartement in de stad';
      case 'pages.onboard.onboardData.data2.description':
        return 'We besparen u tijd door u snel te matchen met de perfecte woning voordat deze weg is, zodat u kunt genieten van uw nieuwe thuis, of u kunt uw eigen gratis aanbieden.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Uw comfortabele huis';
      case 'pages.onboard.onboardData.data3.description':
        return 'Als u op zoek bent naar een plek om te wonen, bekijk dan onze huizen te huur. We hebben een breed scala aan huizen waaruit u kunt kiezen in het hele land.';
      case 'pages.signIn.title':
        return 'Welkom terug';
      case 'pages.signIn.subtitle':
        return 'Meld u nu aan om aan een geweldige reis te beginnen.';
      case 'pages.signIn.extra.rememberMe':
        return 'Onthoud mij';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Heeft u geen account? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Wachtwoord vergeten';
      case 'pages.forgotPassword.subtitle':
        return 'Voer uw e-mailadres in om uw wachtwoord te herstellen.';
      case 'pages.otpVerification.title':
        return 'Verificatie';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Een 4-cijferige pincode is naar uw e-mailadres gestuurd. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Code verzonden over ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Code opnieuw verzenden'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Wachtwoord opnieuw instellen';
      case 'pages.resetPassword.subtitle':
        return 'Stel uw wachtwoord opnieuw in om het te herstellen en in te loggen op uw account';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Succesvol gewijzigd!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Meld u aan met uw nieuwe wachtwoord.\nU wordt doorgestuurd naar Aanmelden...';
      case 'pages.signUp.title':
        return 'Maak een account aan';
      case 'pages.signUp.subtitle':
        return 'Meld u nu aan om aan een geweldige reis te beginnen';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Heeft u een account? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Wie bent u?';
      case 'pages.welcome.subtitle':
        return 'Selecteer de onderstaande optie.';
      case 'pages.welcome.extra.landlordTag':
        return 'Beheer uw eigen eigendommen';
      case 'pages.welcome.extra.tenantTag':
        return 'Log in op uw huuraccount';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Meldingen';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Bericht...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Waarom ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Reden schrijven';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Voer de reden voor de huurannulering in';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Offline betaling';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Betaalnotitie (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Voer wat tekst in...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Te betalen bedrag: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Naam rekeninghouder';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Rekeningnummer';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift-code';
      case 'pages.offlinePayment.extra.branch':
        return 'Filiaal';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Kies alleen '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' of '),
            fileType('DOC'),
            const TextSpan(text: '-formaatbestanden. Bestandsgrootte '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Factuur bekijken';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'We zullen de betaling beoordelen en binnen 24 uur goedkeuren.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Probeer het opnieuw';
      case 'pages.paymentStatus.fail.title':
        return 'Oeps! Betaling mislukt';
      case 'pages.paymentStatus.fail.description':
        return 'Uw transactie is mislukt vanwege een technische fout.';
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
            const TextSpan(text: 'Kenmerken '),
            fa('(Faciliteiten & Voorzieningen)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Selecteer huurperiode';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Schrijf een recensie';
      case 'pages.search.appbarTitle':
        return 'Zoeken';
      case 'pages.search.extra.hint':
        return 'Zoek naar percelen, flats, kamers...';
      case 'pages.search.extra.noRecentSearch':
        return 'U heeft geen recente zoekopdrachten.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Kies uw abonnement';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Abonnementsbetaling succesvol.\nU heeft nu toegang tot de geabonneerde functies.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Totale onderhoudskosten: '),
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
        return 'Alle woningen';
      case 'enums.propertyStatus.pending':
        return 'In behandeling';
      case 'enums.propertyStatus.active':
        return 'Actief';
      case 'enums.propertyStatus.inactive':
        return 'Inactief';
      case 'enums.propertyStatus.rejected':
        return 'Afgekeurd';
      case 'enums.propertyType.apartmentCondominium':
        return 'Appartement/Condominium';
      case 'enums.propertyType.house':
        return 'Huis';
      case 'enums.propertyType.commercialProperty':
        return 'Commercieel vastgoed';
      case 'enums.propertyType.land':
        return 'Grond';
      case 'enums.propertyType.room':
        return 'Kamer';
      case 'enums.applicationStatus.all':
        return 'Alle';
      case 'enums.applicationStatus.pending':
        return 'In behandeling';
      case 'enums.applicationStatus.processing':
        return 'Verwerking';
      case 'enums.applicationStatus.approved':
        return 'Goedgekeurd';
      case 'enums.applicationStatus.rejected':
        return 'Afgekeurd';
      case 'enums.myRentStatus.pending':
        return 'In behandeling';
      case 'enums.myRentStatus.processing':
        return 'Verwerking';
      case 'enums.myRentStatus.active':
        return 'Actief';
      case 'enums.myRentStatus.expired':
        return 'Verlopen';
      case 'enums.myRentStatus.cancelled':
        return 'Geannuleerd';
      case 'enums.maintenanceStatus.pending':
        return 'In behandeling';
      case 'enums.maintenanceStatus.processing':
        return 'Verwerking';
      case 'enums.maintenanceStatus.rejected':
        return 'Afgekeurd';
      case 'enums.maintenanceStatus.completed':
        return 'Voltooid';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Particulier';
      case 'enums.tenantProfileType.company':
        return 'Bedrijf';
      case 'enums.tenantType.newTenant':
        return 'Nieuwe huurder';
      case 'enums.tenantType.activeTenant':
        return 'Actieve huurder';
      case 'enums.tenantType.expiredTenant':
        return 'Verlopen huurder';
      case 'enums.paymentStatus.all':
        return 'Alle';
      case 'enums.paymentStatus.pending':
        return 'In behandeling';
      case 'enums.paymentStatus.paid':
        return 'Betaald';
      case 'enums.paymentStatus.unpaid':
        return 'Onbetaald';
      case 'enums.paymentStatus.rejected':
        return 'Afgekeurd';
      case 'enums.paymentStatus.refund':
        return 'Terugbetaling';
      case 'enums.paymentOptions.onlinePayment':
        return 'Online betaling';
      case 'enums.paymentOptions.offlinePayment':
        return 'Offline betaling';
      case 'enums.paymentType.securityDeposit':
        return 'Waarborgsom';
      case 'enums.paymentType.rentPayment':
        return 'Huur betaling';
      case 'enums.paymentType.subscription':
        return 'Abonnement';
      case 'enums.gender.male':
        return 'Man';
      case 'enums.gender.female':
        return 'Vrouw';
      case 'enums.gender.other':
        return 'Anders';
      case 'enums.ecRelation.wife':
        return 'Echtgenote';
      case 'enums.ecRelation.parent':
        return 'Ouder';
      case 'enums.ecRelation.friend':
        return 'Vriend';
      case 'enums.ecRelation.brother':
        return 'Broer';
      case 'enums.ecRelation.sister':
        return 'Zus';
      case 'enums.ecRelation.child':
        return 'Kind';
      case 'enums.vehicleType.car':
        return 'Auto';
      case 'enums.vehicleType.motorcycles':
        return 'Motorfietsen';
      case 'enums.vehicleType.lorry':
        return 'Vrachtwagen';
      case 'enums.sortBy.lowToHigh':
        return 'Laag naar Hoog';
      case 'enums.sortBy.highToLow':
        return 'Hoog naar Laag';
      case 'enums.residentialType.flat':
        return 'Flat';
      case 'enums.residentialType.apartment':
        return 'Appartement';
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
        return 'Overige';
      case 'enums.floorRange.high':
        return 'Hoog';
      case 'enums.floorRange.medium':
        return 'Midden';
      case 'enums.floorRange.low':
        return 'Laag';
      case 'enums.furnishings.fullyFurnished':
        return 'Volledig gemeubileerd';
      case 'enums.furnishings.partiallyFurnished':
        return 'Gedeeltelijk gemeubileerd';
      case 'enums.furnishings.notFurnished':
        return 'Niet gemeubileerd';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Kantoorruimte';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Winkelruimte';
      case 'enums.commercialPropertyType.shopLot':
        return 'Winkel';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Magazijn / Fabriek';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Resort';
      case 'enums.commercialPropertyType.sofo':
        return 'SOFO';
      case 'enums.commercialPropertyType.soho':
        return 'SOHO';
      case 'enums.commercialPropertyType.sovo':
        return 'SOVO';
      case 'enums.commercialPropertyType.others':
        return 'Overige';
      case 'enums.landPropertyType.residential':
        return 'Woonbestemming';
      case 'enums.landPropertyType.industrial':
        return 'Industrieel';
      case 'enums.landPropertyType.agricultural':
        return 'Landbouw';
      case 'enums.landPropertyType.commercial':
        return 'Commercieel';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Gemengde ontwikkeling';
      case 'enums.landPropertyType.others':
        return 'Overige';
      case 'enums.residentPropertyType.condo':
        return 'Condo / Serviceflat / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Appartement / Flat';
      case 'enums.residentPropertyType.house':
        return 'Huizen';
      case 'enums.residentPropertyType.shoplot':
        return 'Winkel';
      case 'enums.residentPropertyType.sharing':
        return 'Huis / Flat delen';
      case 'enums.residentPropertyType.others':
        return 'Overige';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 maanden';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 jaar';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 jaar';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 jaar';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 jaar';
      case 'enums.dropdownDateFilter.daily':
        return 'Dagelijks';
      case 'enums.dropdownDateFilter.weekly':
        return 'Wekelijks';
      case 'enums.dropdownDateFilter.monthly':
        return 'Maandelijks';
      case 'enums.dropdownDateFilter.yearly':
        return 'Jaarlijks';
      case 'enums.dropdownDateFilter.custom':
        return 'Aangepast';
      default:
        return null;
    }
  }
}
