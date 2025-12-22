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
class TranslationsDe implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsDe({
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
             locale: AppLocale.de,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <de>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsDe _root = this; // ignore: unused_field

  @override
  TranslationsDe $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsDe(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonDe common = _TranslationsCommonDe._(_root);
  @override
  late final _TranslationsExceptionsDe exceptions = _TranslationsExceptionsDe._(
    _root,
  );
  @override
  late final _TranslationsPromptDe prompt = _TranslationsPromptDe._(_root);
  @override
  late final _TranslationsFormDe form = _TranslationsFormDe._(_root);
  @override
  late final _TranslationsActionDe action = _TranslationsActionDe._(_root);
  @override
  late final _TranslationsPagesDe pages = _TranslationsPagesDe._(_root);
  @override
  late final _TranslationsEnumsDe enums = _TranslationsEnumsDe._(_root);
}

// Path: common
class _TranslationsCommonDe implements TranslationsCommonEn {
  _TranslationsCommonDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Sprache';
  @override
  String get subscriptionPlan => 'Abonnementplan';
  @override
  String get contactUs => 'Kontaktieren Sie uns';
  @override
  String get termsAndConditions => 'Nutzungsbedingungen';
  @override
  String get aboutUs => 'Über uns';
  @override
  String get logout => 'Abmelden';
  @override
  String get editProfile => 'Profil bearbeiten';
  @override
  String get fullName => 'Vollständiger Name';
  @override
  String get email => 'E-Mail';
  @override
  String get mobileNumber => 'Mobilnummer';
  @override
  String get address => 'Adresse';
  @override
  String get postalCode => 'Postleitzahl';
  @override
  String get city => 'Stadt';
  @override
  String get country => 'Land';
  @override
  String get state => 'Bundesland';
  @override
  String get password => 'Passwort';
  @override
  String get forgotPassword => 'Passwort vergessen';
  @override
  String get tenant => 'Mieter';
  @override
  String get landlord => 'Vermieter';
  @override
  String get cancelRenting => 'Mietvertrag kündigen';
  @override
  String get startDate => 'Startdatum';
  @override
  String get endDate => 'Enddatum';
  @override
  String get fromDate => 'Von Datum';
  @override
  String get toDate => 'Bis Datum';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Bankliste';
  @override
  String get withdrawMethod => 'Auszahlungsmethode';
  @override
  String get uploadPaymentReceipt => 'Zahlungsbeleg hochladen';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Hinweis: '),
      note(
        'Die Zahlung erfordert eine manuelle Genehmigung durch den Administrator innerhalb von',
      ),
      const TextSpan(text: ' '),
      duraion('24–48 Stunden.'),
    ],
  );
  @override
  String get reviews => 'Bewertungen';
  @override
  String get description => 'Beschreibung';
  @override
  String get about => 'Über';
  @override
  String get propertyTypes => 'Immobilienarten';
  @override
  String get features => 'Merkmale';
  @override
  String get floorPlans => 'Grundrisse';
  @override
  String get buildingDetails => 'Gebäudedetails';
  @override
  String get buildingName => 'Gebäudename';
  @override
  String get propertyAddress => 'Immobilienadresse';
  @override
  String get completionYear => 'Fertigstellungsjahr';
  @override
  String get lotNumber => 'Losnummer';
  @override
  String get residentialType => 'Wohnart';
  @override
  String get furnishings => 'Ausstattung';
  @override
  String get floorRange => 'Etagenbereich';
  @override
  String get bedrooms => 'Schlafzimmer';
  @override
  String get bathrooms => 'Badezimmer';
  @override
  String get propertySize => 'Immobiliengröße';
  @override
  String get rentalPeriod => 'Mietdauer';
  @override
  String get securityDeposit => 'Kaution';
  @override
  String get utilityBill => 'Nebenkostenabrechnung';
  @override
  String get facilities => 'Einrichtungen';
  @override
  String get amenities => 'Annehmlichkeiten';
  @override
  String get expiringReason => 'Ablaufgrund';
  @override
  String get tenantDetails => 'Mieterdaten';
  @override
  String get typeOfTenant => 'Mietertyp';
  @override
  String get tenantName => 'Mietername';
  @override
  String get nidPassport => 'NID/Reisepass';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Mieter-ID';
  @override
  String get dateOfBirth => 'Geburtsdatum';
  @override
  String get gender => 'Geschlecht';
  @override
  String get nominee => 'Begünstigter';
  @override
  String get name => 'Name';
  @override
  String get optional => 'Optional';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileDe nomineeMobile =
      _TranslationsCommonNomineeMobileDe._(_root);
  @override
  String get emergencyContact => 'Notfallkontakt';
  @override
  String get relation => 'Beziehung';
  @override
  String get relationWith => '${_root.common.relation} Mit';
  @override
  String get relationWithYou => '${_root.common.relationWith} Ihnen';
  @override
  String get company => 'Firma';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM Nr.';
  @override
  String get workplace => 'Arbeitsplatz';
  @override
  String get officePhoneNo => 'Büro-Telefonnummer';
  @override
  String get officeMobileNo => 'Büro ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Fahrzeug';
  @override
  late final _TranslationsCommonVehiclesInfoDe vehiclesInfo =
      _TranslationsCommonVehiclesInfoDe._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Typ';
  @override
  late final _TranslationsCommonVehicleRegistrationNoDe vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoDe._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Marke';
  @override
  String get rentProperty => 'Immobilie mieten';
  @override
  String get propertyDetails => 'Immobiliendetails';
  @override
  String get propertyId => 'Immobilien-ID';
  @override
  String get propertyType => 'Immobilienart';
  @override
  String get propertyName => 'Immobilienname';
  @override
  String get paymentDetails => 'Zahlungsdetails';
  @override
  String get monthlyRent => 'Monatliche Miete';
  @override
  String get thisMonthPayment => 'Zahlung diesen Monat';
  @override
  String get totalPaidRent => 'Insgesamt bezahlte Miete';
  @override
  String get dueRent => 'Fällige Miete';
  @override
  String get rentStartDate => 'Mietbeginn ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Mietende ${_root.common.endDate}';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'Mietvertrag PDF';
  @override
  String get noFile => 'Keine Datei';
  @override
  String get tenantImageOp => 'Mieterbild ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Neues Fahrzeug hinzufügen';
  @override
  String get uploadNidPassport => 'NID/Reisepass hochladen';
  @override
  String get nidPassportUploadNote =>
      'Es werden nur Bilddateien akzeptiert. Dateigröße bis zu 2,5 MB.';
  @override
  String get search => 'Suchen';
  @override
  String get sortBy => 'Sortieren nach';
  @override
  String get subscription => 'Abonnement';
  @override
  String get downloading => 'Wird heruntergeladen...';
  @override
  String get downloadSuccess => 'Datei erfolgreich heruntergeladen!';
  @override
  String get addPropertyBannerTitle => 'Möchten Sie Ihre Immobilie vermieten?';
  @override
  String get application => 'Antrag';
  @override
  String get tenantHasPaidDeposit => 'Der Mieter hat die Kaution bezahlt.';
  @override
  String get askProcessingRentApplication =>
      'Sind Sie sicher, dass Sie diesen Antrag auf Mietimmobilie bearbeiten?';
  @override
  String get dateAndTime => 'Datum und Uhrzeit';
  @override
  String get applicationDetails => 'Antragsdetails';
  @override
  String get depositStatus => 'Kautionstatus';
  @override
  String get uploadRentAgreement => 'Mietvertrag hochladen';
  @override
  String get uploadFilePDF => 'Datei hochladen (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Bitte wählen Sie eine Vertragsdokumentdatei aus.';
  @override
  String get landlordRentAgreementPDF => 'Vermieter-Mietvertrag PDF';
  @override
  String get tenantRentAgreementPDF => 'Mieter-Mietvertrag PDF';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Hinweis: '),
      note(
        'Genehmigen Sie den Antrag erst, nachdem der Mieter eine Anzahlung geleistet hat.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Ablehnungsgrund';
  @override
  String get youveRejectedThisApplication =>
      'Sie haben diesen Antrag abgelehnt';
  @override
  String get landlordDetails => 'Vermieterdetails';
  @override
  String get landlordName => 'Vermietername';
  @override
  String get downloadRentAgreement => 'Mietvertrag herunterladen';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Akzeptieren Sie die '),
      toc('Nutzungsbedingungen'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Hinweis: '),
      note(
        'Bitte laden Sie den Vertrag herunter und lesen Sie ihn. Bitte senden Sie den unterzeichneten Vertrag per WhatsApp oder E-Mail an den Vermieter.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Hinweis: '),
      note(
        'Der Vermieter genehmigt den Antrag, wenn der Mieter die Kaution, die Nebenkosten und die Vorauszahlung für einen Monat Miete zahlt.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Mietvertrag (PDF) '),
          complete('Vertrag abschließen'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Hinweis: '),
      note(
        'Der Vermieter genehmigt den Antrag, wenn der Mieter die Kaution, die Nebenkosten und die Vorauszahlung für einen Monat Miete zahlt.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Antragsliste';
  @override
  String get viewDetails => 'Details anzeigen';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Startseite';
  @override
  String get dashboard => 'Dashboard';
  @override
  String get tenants => 'Mieter';
  @override
  String get maintenance => 'Wartung';
  @override
  String get maintenanceList => 'Wartungsliste';
  @override
  String get maintenanceReport => 'Wartungsbericht';
  @override
  String get labor => 'Personal';
  @override
  String get applications => 'Anträge';
  @override
  String get rentInvitation => 'Mieteinladung';
  @override
  String get payment => 'Zahlung';
  @override
  String get rentPayment => 'Mietzahlung';
  @override
  String get depositUtilityPayment => 'Kaution & Nebenkostenzahlung';
  @override
  String get refundRequest => 'Rückerstattungsantrag';
  @override
  String get withdrawRequest => 'Auszahlungsantrag';
  @override
  String get myProperty => 'Meine Immobilie';
  @override
  String get myRent => 'Meine Miete';
  @override
  String get wishlist => 'Wunschliste';
  @override
  String get properties => 'Immobilien';
  @override
  String get allProperties => 'Alle Immobilien';
  @override
  String get totalPropery => 'Gesamtanzahl Immobilien';
  @override
  String get occupied => 'Belegt';
  @override
  String get vacant => 'Frei';
  @override
  String get accounting => 'Buchhaltung';
  @override
  String get totalIncome => 'Gesamteinnahmen';
  @override
  String get totalExpense => 'Gesamtausgaben';
  @override
  String get currentBalance => 'Aktueller Saldo';
  @override
  String get totalWithdrawal => 'Gesamt (Auszahlung)';
  @override
  String get totalProperties => 'Gesamtanzahl Immobilien';
  @override
  String get totalTenant => 'Gesamtanzahl Mieter';
  @override
  String get totalRentPaid => 'Insgesamt bezahlte Miete';
  @override
  String get totalRentDue => 'Insgesamt fällige Miete';
  @override
  String get totalApplication => 'Gesamtanzahl Anträge';
  @override
  String get pendingApplication => 'Ausstehender Antrag';
  @override
  String get processingApplication => 'In Bearbeitung befindlicher Antrag';
  @override
  String get approveApplication => 'Antrag genehmigen';
  @override
  String get rejectApplication => 'Antrag ablehnen';
  @override
  String get maintenanceCost => 'Wartungskosten';
  @override
  String get transactionSummary => 'Transaktionsübersicht';
  @override
  String get maintenanceRequest => 'Wartungsanfrage';
  @override
  String get notifications => 'Benachrichtigungen';
  @override
  String get myProperties => 'Meine Immobilien';
  @override
  String get recommendationProperties => 'Empfohlene Immobilien';
  @override
  String get laborList => 'Personalverzeichnis';
  @override
  String get addLabor => 'Personal hinzufügen';
  @override
  String get laborDetails => 'Personaldetails';
  @override
  String get laborSalary => 'Personalgehalt';
  @override
  String get editLabor => 'Personal bearbeiten';
  @override
  String get addNewLabor => 'Neues Personal hinzufügen';
  @override
  String get enterAmount => 'Betrag eingeben';
  @override
  String get maintenanceDetails => 'Wartungsdetails';
  @override
  String get laborName => 'Personalname';
  @override
  String get comment => 'Kommentar';
  @override
  String get image => 'Bild';
  @override
  String get complete => 'Abgeschlossen';
  @override
  String get details => 'Details';
  @override
  String get title => 'Titel';
  @override
  String get date => 'Datum';
  @override
  String get reason => 'Grund';
  @override
  String get edit => 'Bearbeiten';
  @override
  String get property => 'Immobilie';
  @override
  String get completeYourProfile => 'Vervollständigen Sie Ihr Profil';
  @override
  String get profileImage => 'Profilbild';
  @override
  String get imagePickHint =>
      'Nur JPEG- und PNG-Bilder mit einer maximalen Größe von 120x120 Pixeln.';
  @override
  String get invoiceId => 'Rechnungs-ID';
  @override
  String get depositAmount => 'Kaution';
  @override
  String get landlordPhone => 'Telefonnummer Vermieter';
  @override
  String get rentalAdvance => 'Miete (Vorschuss)';
  @override
  String get totalAmount => 'Gesamtbetrag';
  @override
  String get rentalAmount => 'Mietbetrag';
  @override
  String get adminCharge => 'Verwaltungsgebühr';
  @override
  String get editAccount => 'Konto bearbeiten';
  @override
  String get addNewAccount => 'Neues Konto hinzufügen';
  @override
  String get transactionId => 'Transaktions-ID';
  @override
  String get transactionType => 'Transaktionsart';
  @override
  String get requestDate => 'Antragsdatum';
  @override
  String get amount => 'Betrag';
  @override
  String get fee => 'Gebühr';
  @override
  String get paymentStatus => 'Zahlungsstatus';
  @override
  String get generatedTime => 'Erstellungszeit';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Dies ist ein systemgenerierter Bericht von '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Auszahlungshistorie';
  @override
  String get history => 'Historie';
  @override
  String get withdrawAmount => 'Auszahlungsbetrag';
  @override
  String get availableBalance => 'Verfügbarer Saldo';
  @override
  String get withdrawCharge => 'Auszahlungsgebühr';
  @override
  String get paymentMethod => 'Zahlungsmethode';
  @override
  String get requestSendSuccess => 'Anfrage erfolgreich gesendet!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Zahlungsbeleg erfolgreich eingereicht.';
  @override
  String get refundReason => 'Rückerstattungsgrund';
  @override
  String get note => 'Hinweis';
  @override
  String get refundReceiveSuccess => 'Rückerstattung erfolgreich erhalten.';
  @override
  String get downloadPaymentReceipt => 'Zahlungsbeleg herunterladen';
  @override
  String get invoice => 'Rechnung';
  @override
  String get selectPropertyToSeeInvoice =>
      'Wählen Sie eine Immobilie aus, um die Rechnungsnummer anzuzeigen...';
  @override
  String get bankAccName => 'Name des Bankkontos';
  @override
  String get bankName => 'Bankname';
  @override
  String get bankAccNum => 'Bankkontonummer';
  @override
  String get thankYou => 'Vielen Dank!';
  @override
  String get basicInfo => 'Grundlegende Informationen';
  @override
  String get descriptionPricing => 'Beschreibung & Preisgestaltung';
  @override
  String get contact => 'Kontakt';
  @override
  String get photos => 'Fotos';
  @override
  String get successfullySubmitted => 'Erfolgreich eingereicht!';
  @override
  String get editProperty => 'Immobilie bearbeiten';
  @override
  String get addNewProperty => 'Neue Immobilie hinzufügen';
  @override
  String get propertyManageRequestSuccess =>
      'Ihre Anzeige wurde zur Überprüfung eingereicht.';
  @override
  String get postAnotherProperty => 'Weitere Immobilie inserieren';
  @override
  String get browseYourProperty => 'Ihre Immobilie durchsuchen';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Schritt '),
      step,
      const TextSpan(text: ' von '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Was möchten Sie inserieren?';
  @override
  String get category => 'Kategorie';
  @override
  String get invalidCategory => 'Ungültige Kategorie';
  @override
  String get unitNumber => 'Einheitennummer';
  @override
  String get sqft => 'm²';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Die Immobiliengröße muss größer als Null sein';
  @override
  String get whatAreTheFacility => 'Welche Einrichtungen gibt es?';
  @override
  String get whatAreTheAmenity => 'Welche Annehmlichkeiten gibt es?';
  @override
  String get parkingLot => 'Parkplatz';
  @override
  String get houseType => 'Haustyp';
  @override
  String get value => 'Wert';
  @override
  String get unitLotSize => 'Einheit / Grundstücksgröße';
  @override
  String get landSize => 'Grundstücksgröße';
  @override
  String get acres => 'Hektar';
  @override
  String get roomSize => 'Raumgröße';
  @override
  String get askTenantPreference => 'Was sind Ihre bevorzugten Mieter?';
  @override
  String get couple => 'Paar';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Beschreiben Sie die ${propertyType}';
  @override
  String get adTitle => 'Anzeigentitel';
  @override
  String get minimumRentalPeriod => 'Mindestmietdauer';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Nummer';
  @override
  String get hideOrDisplayEmail => 'E-Mail-Adresse anzeigen oder verbergen';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Vielen Dank für das Inserieren auf ${appName}!';
  @override
  String get propertyList => 'Immobilienliste';
  @override
  String get newInviteRent => 'Neue Mieteinladung';
  @override
  String get rentAgreement => 'Mietvertrag';
  @override
  String get rentDetails => 'Mietdetails';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Hinweis: '),
      note('Bitte warten Sie, bis der Mieter die Einladung annimmt.'),
    ],
  );
  @override
  String get rent => 'Miete';
  @override
  String get editTenant => 'Mieter bearbeiten';
  @override
  String get addNewTenant => 'Neuen Mieter hinzufügen';
  @override
  String get shareInstallLink => 'Installationslink teilen';
  @override
  String get tenantList => 'Mieterliste';
  @override
  String get editMaintenanceRequest => 'Wartungsanfrage bearbeiten';
  @override
  String get addNewMaintenance => 'Neue Wartung hinzufügen';
  @override
  String get landlordId => 'Vermieter-ID';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Hinweis: '),
      note(
        'Ihr Vertrag wird überprüft. Bitte warten Sie, bis der Vermieter Ihre Miete genehmigt hat.',
      ),
    ],
  );
  @override
  String get editReview => 'Bewertung bearbeiten';
  @override
  String get writeAReview => 'Eine Bewertung schreiben';
  @override
  String get selectRating => 'Bewertung auswählen';
  @override
  String get enterYourOpinion => 'Geben Sie Ihre Meinung ein';
  @override
  String get askToEnterReviewMsg => 'Bitte geben Sie eine Bewertung ab';
  @override
  String get pressBackAgainToExit => 'Erneut zurückdrücken zum Beenden.';
  @override
  String get selectPaymentMethod => 'Zahlungsmethode auswählen';
  @override
  String get filter => 'Filtern';
  @override
  String get perMonth => '/Monat';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Suchen Sie nach etwas in ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsDe implements TranslationsExceptionsEn {
  _TranslationsExceptionsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong =>
      'Etwas ist schiefgelaufen, bitte versuchen Sie es erneut';
  @override
  String get noNidPassport => 'Kein NID/Reisepass-Bild bereitgestellt.';
  @override
  String get noRentPropertyFound =>
      'Keine Mietimmobilie für diesen Mieter gefunden.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Keine Immobilie gefunden!\nBitte versuchen Sie es mit anderen Schlüsselwörtern';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Kein Abonnementplan gefunden!\nBitte aktualisieren Sie die Seite und versuchen Sie es erneut.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Ungültige ${dataType} Info! Bitte aktualisieren Sie die Seite und versuchen Sie es erneut.';
  @override
  String get invalidDownloadUrl => 'Ungültige Download-URL!';
  @override
  String failedToSaveFile({required String error}) =>
      'Datei konnte nicht gespeichert werden! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Fehler beim Öffnen der Datei! ${error}';
  @override
  String get noVehicleInfoProvided => 'Keine Fahrzeuginformationen angegeben.';
  @override
  String get yourApplicationRejected => 'Ihr Antrag wurde abgelehnt';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintDe
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintDe._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintDe noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintDe._(_root);
  @override
  String get noImageProvided => 'Kein Bild bereitgestellt';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundDe
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundDe._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Keine Kaution gefunden!\nBitte können Sie die Kautionen sehen, wenn sie verfügbar sind';
  @override
  String get noRentPaymentFound =>
      'Keine Mietzahlung gefunden!\nBitte können Sie die Mietzahlungen sehen, wenn sie verfügbar sind';
  @override
  String get transactionSummaryApiException =>
      'Fehler beim Abrufen der Transaktionsübersicht.';
  @override
  String get noWithdrawRequestFound =>
      'Keine Anfrage gefunden!\nBitte versuchen Sie, eine Auszahlungsanfrage zu erstellen, um sie hier zu sehen.';
  @override
  String get withdrawRequestNotApproved =>
      'Diese Auszahlungsanfrage wurde nicht genehmigt!.';
  @override
  String get nonZeroError =>
      'Bitte geben Sie einen gültigen Betrag größer als Null ein.';
  @override
  String minAmountError({required String minValue}) =>
      'Der Betrag muss mindestens ${minValue} betragen.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Der Betrag darf ${maxValue} nicht überschreiten.';
  @override
  String get selectPaymentMethodHint =>
      'Bitte wählen Sie zuerst eine Zahlungsmethode aus.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundDe
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundDe._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintDe refundRequestHint =
      _TranslationsExceptionsRefundRequestHintDe._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Bitte wählen Sie die Anzahl der ${value}';
  @override
  String get invalidDateRange => 'Ungültiger Datumsbereich.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} muss größer als Null sein.';
  @override
  late final _TranslationsExceptionsEditPropertyDe editProperty =
      _TranslationsExceptionsEditPropertyDe._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationDe rentInvitation =
      _TranslationsExceptionsRentInvitationDe._(_root);
  @override
  String get notenantFoundList =>
      'Keine Mieter!\nBitte versuchen Sie, einen Mieter hinzuzufügen, um ihn hier zu sehen.';
  @override
  String get noFeaturesProvided => 'Keine Funktionen bereitgestellt.';
  @override
  String get noNotificationFound =>
      'Keine Benachrichtigung verfügbar.\nSie können Ihre Benachrichtigung hier sehen, wenn sie verfügbar ist.';
}

// Path: prompt
class _TranslationsPromptDe implements TranslationsPromptEn {
  _TranslationsPromptDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutDe logout = _TranslationsPromptLogoutDe._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationDe application =
      _TranslationsPromptApplicationDe._(_root);
  @override
  late final _TranslationsPromptLaborDe labor = _TranslationsPromptLaborDe._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestDe maintenanceRequest =
      _TranslationsPromptMaintenanceRequestDe._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodDe withdrawMethod =
      _TranslationsPromptWithdrawMethodDe._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesDe unsavedChanges =
      _TranslationsPromptUnsavedChangesDe._(_root);
  @override
  late final _TranslationsPromptPropertyDe property =
      _TranslationsPromptPropertyDe._(_root);
  @override
  late final _TranslationsPromptRentInvitationDe rentInvitation =
      _TranslationsPromptRentInvitationDe._(_root);
  @override
  late final _TranslationsPromptSessionExpiredDe sessionExpired =
      _TranslationsPromptSessionExpiredDe._(_root);
  @override
  late final _TranslationsPromptNoInternetDe noInternet =
      _TranslationsPromptNoInternetDe._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerDe permissionHandler =
      _TranslationsPromptPermissionHandlerDe._(_root);
  @override
  late final _TranslationsPromptImagePickerDe imagePicker =
      _TranslationsPromptImagePickerDe._(_root);
  @override
  late final _TranslationsPromptVerificationDialogDe verificationDialog =
      _TranslationsPromptVerificationDialogDe._(_root);
  @override
  late final _TranslationsPromptNotificationDe notification =
      _TranslationsPromptNotificationDe._(_root);
}

// Path: form
class _TranslationsFormDe implements TranslationsFormEn {
  _TranslationsFormDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameDe fullName =
      _TranslationsFormFullNameDe._(_root);
  @override
  late final _TranslationsFormEmailDe email = _TranslationsFormEmailDe._(_root);
  @override
  late final _TranslationsFormPasswordDe password =
      _TranslationsFormPasswordDe._(_root);
  @override
  late final _TranslationsFormConfirmPasswordDe confirmPassword =
      _TranslationsFormConfirmPasswordDe._(_root);
  @override
  late final _TranslationsFormMobileNumberDe mobileNumber =
      _TranslationsFormMobileNumberDe._(_root);
  @override
  late final _TranslationsFormAddress1De address1 =
      _TranslationsFormAddress1De._(_root);
  @override
  late final _TranslationsFormAddress2De address2 =
      _TranslationsFormAddress2De._(_root);
  @override
  late final _TranslationsFormPostalCodeDe postalCode =
      _TranslationsFormPostalCodeDe._(_root);
  @override
  late final _TranslationsFormCityDe city = _TranslationsFormCityDe._(_root);
  @override
  late final _TranslationsFormStateDe state = _TranslationsFormStateDe._(_root);
  @override
  late final _TranslationsFormCountryDe country = _TranslationsFormCountryDe._(
    _root,
  );
  @override
  late final _TranslationsFormOtpDe otp = _TranslationsFormOtpDe._(_root);
  @override
  late final _TranslationsFormTitleDe title = _TranslationsFormTitleDe._(_root);
  @override
  late final _TranslationsFormDateDe date = _TranslationsFormDateDe._(_root);
  @override
  late final _TranslationsFormReasonDe reason = _TranslationsFormReasonDe._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodDe withdrawMethod =
      _TranslationsFormWithdrawMethodDe._(_root);
  @override
  late final _TranslationsFormFileFieldDe fileField =
      _TranslationsFormFileFieldDe._(_root);
  @override
  late final _TranslationsFormNoteDe note = _TranslationsFormNoteDe._(_root);
  @override
  late final _TranslationsFormGenderDe gender = _TranslationsFormGenderDe._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldDe anyField =
      _TranslationsFormAnyFieldDe._(_root);
  @override
  late final _TranslationsFormAnyDropdownDe anyDropdown =
      _TranslationsFormAnyDropdownDe._(_root);
}

// Path: action
class _TranslationsActionDe implements TranslationsActionEn {
  _TranslationsActionDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Weiter';
  @override
  String get getStarted => 'Loslegen';
  @override
  String get skip => 'Überspringen';
  @override
  String get select => 'Auswählen';
  @override
  String get save => 'Speichern';
  @override
  String get signIn => 'Anmelden';
  @override
  String get signUp => 'Registrieren';
  @override
  String get kContinue => 'Fortsetzen';
  @override
  String get clearAll => 'Alles löschen';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Senden';
  @override
  String get pay => 'Bezahlen';
  @override
  String get remove => 'Entfernen';
  @override
  String get goBack => 'Zurückgehen';
  @override
  String get buyNow => 'Jetzt kaufen';
  @override
  String get no => 'Nein';
  @override
  String get open => 'Öffnen';
  @override
  String get addProperty => 'Immobilie hinzufügen';
  @override
  String get process => 'Verarbeiten';
  @override
  String get approve => 'Genehmigen';
  @override
  String get reject => 'Ablehnen';
  @override
  String get viewRent => 'Miete ansehen';
  @override
  String get openNavigationMenu => 'Navigationsmenü öffnen';
  @override
  String get seeAll => 'Alle anzeigen';
  @override
  String get update => 'Aktualisieren';
  @override
  String get printTransaction => 'Transaktion drucken';
  @override
  String get payoutRequest => 'Auszahlungsanfrage';
  @override
  String get addNew => '+ Neu hinzufügen';
  @override
  String get sendRequest => 'Anfrage senden';
  @override
  String get print => 'Drucken';
  @override
  String get requestForRefund => 'Rückerstattung anfordern';
  @override
  String get previous => 'Vorherige';
  @override
  String get delete => 'Löschen';
  @override
  String get applyProperty => 'Immobilie beantragen';
  @override
  String get viewApplication => 'Antrag ansehen';
  @override
  String get inviteTenant => 'Mieter einladen';
  @override
  String get inviteRent => 'Zur Miete einladen';
  @override
  String get cancel => 'Abbrechen';
  @override
  String get accept => 'Annehmen';
  @override
  String get submit => 'Absenden';
  @override
  String get yes => 'Ja';
  @override
  String get okay => 'Okay';
  @override
  String get confirm => 'Bestätigen';
  @override
  String get apply => 'Anwenden';
  @override
  String get reset => 'Zurücksetzen';
  @override
  String get retry => 'Erneut versuchen';
  @override
  String get viewAll => 'Alle anzeigen';
}

// Path: pages
class _TranslationsPagesDe implements TranslationsPagesEn {
  _TranslationsPagesDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageDe language =
      _TranslationsPagesLanguageDe._(_root);
  @override
  late final _TranslationsPagesOnboardDe onboard =
      _TranslationsPagesOnboardDe._(_root);
  @override
  late final _TranslationsPagesSignInDe signIn = _TranslationsPagesSignInDe._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordDe forgotPassword =
      _TranslationsPagesForgotPasswordDe._(_root);
  @override
  late final _TranslationsPagesOtpVerificationDe otpVerification =
      _TranslationsPagesOtpVerificationDe._(_root);
  @override
  late final _TranslationsPagesResetPasswordDe resetPassword =
      _TranslationsPagesResetPasswordDe._(_root);
  @override
  late final _TranslationsPagesSignUpDe signUp = _TranslationsPagesSignUpDe._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeDe welcome =
      _TranslationsPagesWelcomeDe._(_root);
  @override
  late final _TranslationsPagesAboutUsDe aboutUs =
      _TranslationsPagesAboutUsDe._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsDe termsAndConditions =
      _TranslationsPagesTermsAndConditionsDe._(_root);
  @override
  late final _TranslationsPagesNotificationListDe notificationList =
      _TranslationsPagesNotificationListDe._(_root);
  @override
  late final _TranslationsPagesContactUsDe contactUs =
      _TranslationsPagesContactUsDe._(_root);
  @override
  late final _TranslationsPagesCancelRentingDe cancelRenting =
      _TranslationsPagesCancelRentingDe._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsDe invoiceDetails =
      _TranslationsPagesInvoiceDetailsDe._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentDe offlinePayment =
      _TranslationsPagesOfflinePaymentDe._(_root);
  @override
  late final _TranslationsPagesPaymentStatusDe paymentStatus =
      _TranslationsPagesPaymentStatusDe._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsDe propertyDetails =
      _TranslationsPagesPropertyDetailsDe._(_root);
  @override
  late final _TranslationsPagesSearchDe search = _TranslationsPagesSearchDe._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanDe subscriptionPlan =
      _TranslationsPagesSubscriptionPlanDe._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportDe
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportDe._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsDe implements TranslationsEnumsEn {
  _TranslationsEnumsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusDe propertyStatus =
      _TranslationsEnumsPropertyStatusDe._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeDe propertyType =
      _TranslationsEnumsPropertyTypeDe._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusDe applicationStatus =
      _TranslationsEnumsApplicationStatusDe._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusDe myRentStatus =
      _TranslationsEnumsMyRentStatusDe._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusDe maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusDe._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeDe tenantProfileType =
      _TranslationsEnumsTenantProfileTypeDe._(_root);
  @override
  late final _TranslationsEnumsTenantTypeDe tenantType =
      _TranslationsEnumsTenantTypeDe._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusDe paymentStatus =
      _TranslationsEnumsPaymentStatusDe._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsDe paymentOptions =
      _TranslationsEnumsPaymentOptionsDe._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeDe paymentType =
      _TranslationsEnumsPaymentTypeDe._(_root);
  @override
  late final _TranslationsEnumsGenderDe gender = _TranslationsEnumsGenderDe._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationDe ecRelation =
      _TranslationsEnumsEcRelationDe._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeDe vehicleType =
      _TranslationsEnumsVehicleTypeDe._(_root);
  @override
  late final _TranslationsEnumsSortByDe sortBy = _TranslationsEnumsSortByDe._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeDe residentialType =
      _TranslationsEnumsResidentialTypeDe._(_root);
  @override
  late final _TranslationsEnumsFloorRangeDe floorRange =
      _TranslationsEnumsFloorRangeDe._(_root);
  @override
  late final _TranslationsEnumsFurnishingsDe furnishings =
      _TranslationsEnumsFurnishingsDe._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeDe commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeDe._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeDe landPropertyType =
      _TranslationsEnumsLandPropertyTypeDe._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeDe residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeDe._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodDe minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodDe._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterDe dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterDe._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileDe
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mobil Nr.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoDe
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Fahrzeuginformationen';
  @override
  String get optional => 'Fahrzeuginformationen (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoDe
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Fahrzeugregistrierungsnummer';
  @override
  String get short => 'Registrierungsnummer';
  @override
  String get alt => 'Kennzeichen';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintDe
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Kein Antrag gefunden!\n${subject} wird hier angezeigt, wenn verfügbar.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsDe subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsDe._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintDe
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Keine Immobilie gefunden!\nBitte versuchen Sie, eine Immobilie hinzuzufügen, um sie hier zu sehen.';
  @override
  String get tenantRecommended =>
      'Keine empfohlenen Immobilien gefunden\nBitte versuchen Sie es später noch einmal.';
  @override
  String get tenantAllProperty =>
      'Immobilien nicht verfügbar\nBitte versuchen Sie es später noch einmal.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundDe
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Keine ${status} Wartung gefunden.';
  @override
  String get tenant =>
      'Keine Wartung gefunden! Sie können eine Wartungsanfrage erstellen, um sie hier zu sehen.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundDe
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Keine ${status} Rückerstattungsanfrage gefunden!\nSie können die Rückerstattungsanfrage hier sehen, wenn sie verfügbar ist.';
  @override
  String get tenant =>
      'Keine Rückerstattungsanfrage gefunden!\nSie können eine Rückerstattungsanfrage erstellen, um sie hier zu sehen.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintDe
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Der Mieter genehmigt die Rückerstattung, wenn er das Geld zurückerhalten hat';
  @override
  String get tenantReqSuccess =>
      'Wir werden die Rückerstattungsanfrage prüfen und sie innerhalb von 24 Stunden genehmigen.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyDe
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Die Mietimmobilie ändert sich. Sie muss nur für die nächste Monatsmiete gültig (wirksam) sein.';
  @override
  String get deleteOnRent =>
      'Ihre Immobilie ist bereits an einen Mieter vermietet. Sie kann erst gelöscht werden, wenn der Mieter entfernt wurde';
  @override
  String get alreayRented =>
      'Diese Immobilie ist bereits vermietet. Bitte versuchen Sie es später noch einmal.\nOder Sie können sich an den Vermieter wenden, um weitere Informationen zu erhalten.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationDe
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Keine Mieteinladung gefunden!\nBitte versuchen Sie, eine Mieteinladung zu erstellen, um sie hier zu sehen.';
  @override
  String get tenantNoRentInvitation =>
      'Keine Mieteinladung gefunden!\nSie können die Mieteinladung hier sehen, wenn sie verfügbar ist.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutDe implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Sind Sie sicher, dass Sie sich abmelden möchten?';
}

// Path: prompt.application
class _TranslationsPromptApplicationDe
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Warum lehnen Sie diesen Antrag ab?';
  @override
  late final _TranslationsPromptApplicationApplicationSentDe applicationSent =
      _TranslationsPromptApplicationApplicationSentDe._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborDe implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteDe delete =
      _TranslationsPromptLaborDeleteDe._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestDe
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Warum wird diese Anfrage abgelehnt?';
  @override
  String get processTitle =>
      'Sind Sie sicher, dass Sie diese Wartungsanfrage bearbeiten möchten?';
  @override
  String get completeTitle => 'Arbeit abgeschlossen?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodDe
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Auszahlungsmethode löschen?';
  @override
  String get deleteDescription =>
      'Sind Sie sicher, dass Sie diese Auszahlungsmethode löschen möchten?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesDe
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sind Sie sicher, dass Sie zurückgehen möchten?';
  @override
  String get message => 'Geänderte Felder werden nicht gespeichert!';
}

// Path: prompt.property
class _TranslationsPromptPropertyDe implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteDe delete =
      _TranslationsPromptPropertyDeleteDe._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationDe
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveDe
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveDe._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptDe tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptDe._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredDe
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sitzung abgelaufen';
  @override
  String get message =>
      'Ihre Sitzung ist abgelaufen. Bitte melden Sie sich erneut an.';
  @override
  String get action => 'Anmelden';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetDe
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Keine Internetverbindung';
  @override
  String get message =>
      'Bitte überprüfen Sie Ihre WLAN- oder mobile Netzwerkverbindung und versuchen Sie es erneut.';
  @override
  String get action => 'Erneut versuchen';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerDe
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Berechtigung erforderlich!';
  @override
  String get message =>
      'Sie müssen Berechtigungen in den App-Einstellungen erteilen. Möchten Sie die Einstellungen jetzt öffnen?';
  @override
  String get action => 'Einstellungen öffnen';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerDe
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Option auswählen';
  @override
  String get gallery => 'Galerie';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogDe
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'E-Mail bestätigen';
  @override
  String get message =>
      'Wir haben eine E-Mail mit einem Bestätigungscode gesendet';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} an ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationDe
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Benachrichtigungen löschen?';
  @override
  String get clearMessage =>
      'Sind Sie sicher, dass Sie alle Benachrichtigungen löschen möchten?';
}

// Path: form.fullName
class _TranslationsFormFullNameDe implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Geben Sie ${_root.common.fullName} ein';
  @override
  late final _TranslationsFormFullNameErrorsDe errors =
      _TranslationsFormFullNameErrorsDe._(_root);
}

// Path: form.email
class _TranslationsFormEmailDe implements TranslationsFormEmailEn {
  _TranslationsFormEmailDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Geben Sie Ihre ${_root.common.email} ein';
  @override
  late final _TranslationsFormEmailErrorsDe errors =
      _TranslationsFormEmailErrorsDe._(_root);
}

// Path: form.password
class _TranslationsFormPasswordDe implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsDe errors =
      _TranslationsFormPasswordErrorsDe._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordDe
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.password} bestätigen';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsDe errors =
      _TranslationsFormConfirmPasswordErrorsDe._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberDe
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsDe errors =
      _TranslationsFormMobileNumberErrorsDe._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1De implements TranslationsFormAddress1En {
  _TranslationsFormAddress1De._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Hausnummer und Straßenname';
  @override
  late final _TranslationsFormAddress1ErrorsDe errors =
      _TranslationsFormAddress1ErrorsDe._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2De implements TranslationsFormAddress2En {
  _TranslationsFormAddress2De._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Wohnung, Suite, Einheit usw.';
  @override
  late final _TranslationsFormAddress2ErrorsDe errors =
      _TranslationsFormAddress2ErrorsDe._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeDe implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Geben Sie ${_root.common.postalCode} ein';
  @override
  late final _TranslationsFormPostalCodeErrorsDe errors =
      _TranslationsFormPostalCodeErrorsDe._(_root);
}

// Path: form.city
class _TranslationsFormCityDe implements TranslationsFormCityEn {
  _TranslationsFormCityDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Geben Sie den ${_root.common.city}-Namen ein.';
  @override
  late final _TranslationsFormCityErrorsDe errors =
      _TranslationsFormCityErrorsDe._(_root);
}

// Path: form.state
class _TranslationsFormStateDe implements TranslationsFormStateEn {
  _TranslationsFormStateDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Geben Sie den ${_root.common.state}-Namen ein.';
  @override
  late final _TranslationsFormStateErrorsDe errors =
      _TranslationsFormStateErrorsDe._(_root);
}

// Path: form.country
class _TranslationsFormCountryDe implements TranslationsFormCountryEn {
  _TranslationsFormCountryDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Wählen Sie ${_root.common.country} aus.';
  @override
  late final _TranslationsFormCountryErrorsDe errors =
      _TranslationsFormCountryErrorsDe._(_root);
}

// Path: form.otp
class _TranslationsFormOtpDe implements TranslationsFormOtpEn {
  _TranslationsFormOtpDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsDe errors =
      _TranslationsFormOtpErrorsDe._(_root);
}

// Path: form.title
class _TranslationsFormTitleDe implements TranslationsFormTitleEn {
  _TranslationsFormTitleDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Titel';
  @override
  String get hint => 'Geben Sie einen Titel ein';
  @override
  late final _TranslationsFormTitleErrorsDe errors =
      _TranslationsFormTitleErrorsDe._(_root);
}

// Path: form.date
class _TranslationsFormDateDe implements TranslationsFormDateEn {
  _TranslationsFormDateDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Wählen Sie ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsDe errors =
      _TranslationsFormDateErrorsDe._(_root);
}

// Path: form.reason
class _TranslationsFormReasonDe implements TranslationsFormReasonEn {
  _TranslationsFormReasonDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Grund';
  @override
  String get hint => 'Geben Sie einen Grund ein';
  @override
  late final _TranslationsFormReasonErrorsDe errors =
      _TranslationsFormReasonErrorsDe._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodDe
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Wählen Sie ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsDe errors =
      _TranslationsFormWithdrawMethodErrorsDe._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldDe implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => '${label} hochladen';
  @override
  late final _TranslationsFormFileFieldErrorsDe errors =
      _TranslationsFormFileFieldErrorsDe._(_root);
}

// Path: form.note
class _TranslationsFormNoteDe implements TranslationsFormNoteEn {
  _TranslationsFormNoteDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Geben Sie ${_root.form.note.label(note: note)} ein';
  @override
  late final _TranslationsFormNoteErrorsDe errors =
      _TranslationsFormNoteErrorsDe._(_root);
}

// Path: form.gender
class _TranslationsFormGenderDe implements TranslationsFormGenderEn {
  _TranslationsFormGenderDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Wählen Sie ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsDe errors =
      _TranslationsFormGenderErrorsDe._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldDe implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Geben Sie ${_root.form.anyField.label(label: label)} ein';
  @override
  late final _TranslationsFormAnyFieldErrorsDe errors =
      _TranslationsFormAnyFieldErrorsDe._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownDe implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Wählen Sie ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsDe errors =
      _TranslationsFormAnyDropdownErrorsDe._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageDe implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardDe implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataDe onboardData =
      _TranslationsPagesOnboardOnboardDataDe._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInDe implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Willkommen zurück';
  @override
  String get subtitle =>
      'Melden Sie sich jetzt an, um eine fantastische Reise zu beginnen.';
  @override
  late final _TranslationsPagesSignInExtraDe extra =
      _TranslationsPagesSignInExtraDe._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordDe
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Passwort vergessen';
  @override
  String get subtitle =>
      'Geben Sie Ihre E-Mail-Adresse ein, um Ihr Passwort wiederherzustellen.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationDe
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifizierung';
  @override
  String subtitle({required String email}) =>
      'Ein 4-stelliger PIN wurde an Ihre E-Mail-Adresse gesendet. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraDe extra =
      _TranslationsPagesOtpVerificationExtraDe._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordDe
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Passwort zurücksetzen';
  @override
  String get subtitle =>
      'Setzen Sie Ihr Passwort zur Wiederherstellung zurück und melden Sie sich in Ihrem Konto an';
  @override
  late final _TranslationsPagesResetPasswordExtraDe extra =
      _TranslationsPagesResetPasswordExtraDe._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpDe implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Konto erstellen';
  @override
  String get subtitle =>
      'Melden Sie sich jetzt an, um eine fantastische Reise zu beginnen';
  @override
  late final _TranslationsPagesSignUpExtraDe extra =
      _TranslationsPagesSignUpExtraDe._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeDe implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wer sind Sie?';
  @override
  String get subtitle => 'Bitte wählen Sie die untenstehende Option aus.';
  @override
  late final _TranslationsPagesWelcomeExtraDe extra =
      _TranslationsPagesWelcomeExtraDe._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsDe implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsDe
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListDe
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Benachrichtigungen';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsDe implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraDe extra =
      _TranslationsPagesContactUsExtraDe._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingDe
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Warum ${_root.common.cancelRenting} Sie?';
  @override
  late final _TranslationsPagesCancelRentingFormDe form =
      _TranslationsPagesCancelRentingFormDe._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsDe
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentDe
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Offline-Zahlung';
  @override
  late final _TranslationsPagesOfflinePaymentFormDe form =
      _TranslationsPagesOfflinePaymentFormDe._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraDe extra =
      _TranslationsPagesOfflinePaymentExtraDe._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusDe
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessDe success =
      _TranslationsPagesPaymentStatusSuccessDe._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailDe fail =
      _TranslationsPagesPaymentStatusFailDe._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsDe
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraDe extra =
      _TranslationsPagesPropertyDetailsExtraDe._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchDe implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Suchen';
  @override
  late final _TranslationsPagesSearchExtraDe extra =
      _TranslationsPagesSearchExtraDe._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanDe
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Wählen Sie Ihren Plan';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraDe extra =
      _TranslationsPagesSubscriptionPlanExtraDe._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportDe
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Gesamte Wartungskosten: '),
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
class _TranslationsEnumsPropertyStatusDe
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Alle Immobilien';
  @override
  String get pending => 'Ausstehend';
  @override
  String get active => 'Aktiv';
  @override
  String get inactive => 'Inaktiv';
  @override
  String get rejected => 'Abgelehnt';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeDe
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Wohnung/Eigentumswohnung';
  @override
  String get house => 'Haus';
  @override
  String get commercialProperty => 'Gewerbeimmobilie';
  @override
  String get land => 'Grundstück';
  @override
  String get room => 'Zimmer';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusDe
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'Ausstehend';
  @override
  String get processing => 'In Bearbeitung';
  @override
  String get approved => 'Genehmigt';
  @override
  String get rejected => 'Abgelehnt';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusDe
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Ausstehend';
  @override
  String get processing => 'In Bearbeitung';
  @override
  String get active => 'Aktiv';
  @override
  String get expired => 'Abgelaufen';
  @override
  String get cancelled => 'Storniert';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusDe
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Ausstehend';
  @override
  String get processing => 'In Bearbeitung';
  @override
  String get rejected => 'Abgelehnt';
  @override
  String get completed => 'Abgeschlossen';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeDe
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privatperson';
  @override
  String get company => 'Firma';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeDe implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Neuer Mieter';
  @override
  String get activeTenant => 'Aktiver Mieter';
  @override
  String get expiredTenant => 'Abgelaufener Mieter';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusDe
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Alle';
  @override
  String get pending => 'Ausstehend';
  @override
  String get paid => 'Bezahlt';
  @override
  String get unpaid => 'Unbezahlt';
  @override
  String get rejected => 'Abgelehnt';
  @override
  String get refund => 'Rückerstattung';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsDe
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Online-Zahlung';
  @override
  String get offlinePayment => 'Offline-Zahlung';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeDe
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Kaution';
  @override
  String get rentPayment => 'Mietzahlung';
  @override
  String get subscription => 'Abonnement';
}

// Path: enums.gender
class _TranslationsEnumsGenderDe implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Männlich';
  @override
  String get female => 'Weiblich';
  @override
  String get other => 'Andere';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationDe implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Ehefrau';
  @override
  String get parent => 'Elternteil';
  @override
  String get friend => 'Freund';
  @override
  String get brother => 'Bruder';
  @override
  String get sister => 'Schwester';
  @override
  String get child => 'Kind';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeDe
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Auto';
  @override
  String get motorcycles => 'Motorräder';
  @override
  String get lorry => 'LKW';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByDe implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Niedrig zu Hoch';
  @override
  String get highToLow => 'Hoch zu Niedrig';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeDe
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Wohnung';
  @override
  String get apartment => 'Apartment';
  @override
  String get condominium => 'Eigentumswohnung';
  @override
  String get serviceResidence => 'Service-Wohnung';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Maisonette';
  @override
  String get townhouseCondo => 'Reihenhaus';
  @override
  String get others => 'Andere';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeDe implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Hoch';
  @override
  String get medium => 'Mittel';
  @override
  String get low => 'Niedrig';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsDe
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Voll möbliert';
  @override
  String get partiallyFurnished => 'Teilmöbliert';
  @override
  String get notFurnished => 'Nicht möbliert';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeDe
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Bürofläche';
  @override
  String get retailSpace => 'Einzelhandelsfläche';
  @override
  String get shopLot => 'Geschäftslokal';
  @override
  String get warehouseFactory => 'Lager/Fabrik';
  @override
  String get hotelResort => 'Hotel/Resort';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Andere';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeDe
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Wohngebiet';
  @override
  String get industrial => 'Industriegebiet';
  @override
  String get agricultural => 'Landwirtschaftlich';
  @override
  String get commercial => 'Gewerblich';
  @override
  String get mixedDevelopment => 'Gemischte Bebauung';
  @override
  String get others => 'Andere';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeDe
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Eigentumswohnung/Service-Wohnung/Penthouse';
  @override
  String get apartment => 'Wohnung/Appartement';
  @override
  String get house => 'Häuser';
  @override
  String get shoplot => 'Geschäftslokal';
  @override
  String get sharing => 'Wohngemeinschaft';
  @override
  String get others => 'Andere';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodDe
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 Monate';
  @override
  String get oneYear => '1 Jahr';
  @override
  String get oneAndHalfYears => '1,5 Jahre';
  @override
  String get twoYears => '2 Jahre';
  @override
  String get twoAndHalfYears => '2,5 Jahre';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterDe
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Täglich';
  @override
  String get weekly => 'Wöchentlich';
  @override
  String get monthly => 'Monatlich';
  @override
  String get yearly => 'Jährlich';
  @override
  String get custom => 'Benutzerdefiniert';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsDe
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Ihr Antrag';
  @override
  String get landlord => 'Der Antrag des Mieters';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentDe
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Antrag erfolgreich gesendet!';
  @override
  String get sucessDescription =>
      'Sie können diesen Antrag in Ihrer Antragsliste sehen';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteDe
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Personal löschen?';
  @override
  String get description =>
      'Sind Sie sicher, dass Sie dieses Personal löschen möchten?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteDe
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Immobilie löschen?';
  @override
  String get message =>
      'Sind Sie sicher, dass Sie diese Immobilie löschen möchten?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveDe
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title =>
      'Sind Sie sicher, dass Sie diese Miete genehmigen möchten?';
  @override
  String get description =>
      'Stellen Sie sicher, dass Sie den vom Mieter unterzeichneten Vertrag geprüft haben.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptDe
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title =>
      'Sind Sie sicher, dass Sie diese Einladung annehmen möchten?';
  @override
  String get description =>
      'Stellen Sie sicher, dass Sie die PDF-Datei des Vertrags heruntergeladen haben!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsDe
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie Ihren ${_root.common.fullName} ein';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsDe implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Bitte geben Sie Ihre ${_root.common.email}-Adresse ein';
  @override
  String get invalid => '⦸ Ungültige E-Mail, bitte versuchen Sie es erneut';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsDe
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie Ihr ${_root.common.password} ein';
  @override
  String minLength({required Object count}) =>
      'Das Passwort muss mindestens ${count} Zeichen lang sein!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsDe
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie Ihr ${_root.common.password} ein';
  @override
  String get notMatched => 'Die Passwörter stimmen nicht überein!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsDe
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Bitte geben Sie Ihre ${_root.common.mobileNumber} ein';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsDe
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie Ihr ${_root.form.address1.label} ein';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsDe
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie Ihr ${_root.form.address2.label} ein';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsDe
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie Ihre ${_root.common.postalCode} ein';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsDe implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Bitte geben Sie Ihren ${_root.common.city}-Namen ein.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsDe implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Bitte geben Sie Ihren ${_root.common.state}-Namen ein.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsDe
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte wählen Sie Ihr ${_root.common.country} aus';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsDe implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie das OTP ein.';
  @override
  String get invalid => 'Bitte geben Sie das korrekte OTP ein.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsDe implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie einen Titel ein';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsDe implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Bitte wählen Sie ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsDe
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie einen Grund ein';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsDe
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte wählen Sie ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsDe
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Bitte wählen Sie ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsDe implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Bitte geben Sie ${_root.form.note.label(note: note)} ein';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsDe
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte wählen Sie ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsDe
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Bitte geben Sie ${_root.form.anyField.label(label: label)} ein';
  @override
  String get invalid => 'Bitte geben Sie ein gültiges @form.anyField.label ein';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsDe
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Bitte wählen Sie ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Bitte wählen Sie ein gültiges @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataDe
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1De data1 =
      _TranslationsPagesOnboardOnboardDataData1De._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2De data2 =
      _TranslationsPagesOnboardOnboardDataData2De._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3De data3 =
      _TranslationsPagesOnboardOnboardDataData3De._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraDe
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Angemeldet bleiben';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Noch kein Konto? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraDe
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendDe codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendDe._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraDe
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogDe dialog =
      _TranslationsPagesResetPasswordExtraDialogDe._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraDe
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Haben Sie ein Konto? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraDe
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Verwalten Sie Ihre eigenen Immobilien';
  @override
  String get tenantTag => 'Melden Sie sich in Ihrem Mietkonto an';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraDe
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Nachricht...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormDe
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonDe reason =
      _TranslationsPagesCancelRentingFormReasonDe._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormDe
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteDe paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteDe._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraDe
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Zahlungsbetrag: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Name des Kontoinhabers';
  @override
  String get accountNumber => 'Kontonummer';
  @override
  String get swiftCode => 'Swift-Code';
  @override
  String get branch => 'Filiale';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Wählen Sie nur '),
      fileType('JPG, PNG, PDF'),
      const TextSpan(text: '- oder '),
      fileType('DOC'),
      const TextSpan(text: '-Formatdateien. Dateigröße '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessDe
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Rechnung anzeigen';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Wir werden die Zahlung überprüfen und sie innerhalb von 24 Stunden genehmigen.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailDe
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Erneut versuchen';
  @override
  String get title => 'Ups! Zahlung fehlgeschlagen';
  @override
  String get description =>
      'Ihre Transaktion ist aufgrund eines technischen Fehlers fehlgeschlagen.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraDe
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

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
      const TextSpan(text: 'Ausstattung '),
      fa('(Einrichtungen & Annehmlichkeiten)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Mietdauer auswählen';
  @override
  String get writeAReview => '+ Bewertung schreiben';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraDe
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Suchen Sie nach Grundstücken, Wohnungen, Zimmern...';
  @override
  String get noRecentSearch => 'Sie haben keine kürzlichen Suchanfragen.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraDe
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Abonnementzahlung erfolgreich.\nSie können jetzt auf die abonnierten Funktionen zugreifen.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1De
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1De._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Finden Sie Ihre Immobilie';
  @override
  String get description =>
      'Wir haben es Ihnen leicht gemacht, einen Ort zu finden, der zu Ihrem Leben passt – egal ob ein Zimmer, eine Wohnung oder ein Haus.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2De
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2De._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wohnung in der Stadt';
  @override
  String get description =>
      'Wir sparen Ihnen Zeit, indem wir Sie schnell mit der perfekten Immobilie zusammenbringen, bevor sie weg ist, damit Sie Ihr neues Zuhause genießen oder Ihr eigenes kostenlos inserieren können.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3De
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3De._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ihr komfortables Haus';
  @override
  String get description =>
      'Wenn Sie auf der Suche nach einem Wohnort sind, dann schauen Sie sich unsere Häuser zur Miete an. Wir haben eine große Auswahl an Häusern für Sie zur Auswahl im ganzen Land.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendDe
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Code wird in ${minutes}:${seconds} gesendet';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Code erneut senden'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogDe
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Erfolgreich geändert!';
  @override
  String get subtitle =>
      'Melden Sie sich mit Ihrem neuen Passwort an.\nSie werden zur Anmeldung weitergeleitet...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonDe
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Grund schreiben';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsDe errors =
      _TranslationsPagesCancelRentingFormReasonErrorsDe._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteDe
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Zahlungshinweis (${_root.common.optional})';
  @override
  String get hint => 'Geben Sie etwas Text ein...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsDe
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsDe._(this._root);

  final TranslationsDe _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Bitte geben Sie den Grund für die Mietkündigung an';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsDe {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Sprache';
      case 'common.subscriptionPlan':
        return 'Abonnementplan';
      case 'common.contactUs':
        return 'Kontaktieren Sie uns';
      case 'common.termsAndConditions':
        return 'Nutzungsbedingungen';
      case 'common.aboutUs':
        return 'Über uns';
      case 'common.logout':
        return 'Abmelden';
      case 'common.editProfile':
        return 'Profil bearbeiten';
      case 'common.fullName':
        return 'Vollständiger Name';
      case 'common.email':
        return 'E-Mail';
      case 'common.mobileNumber':
        return 'Mobilnummer';
      case 'common.address':
        return 'Adresse';
      case 'common.postalCode':
        return 'Postleitzahl';
      case 'common.city':
        return 'Stadt';
      case 'common.country':
        return 'Land';
      case 'common.state':
        return 'Bundesland';
      case 'common.password':
        return 'Passwort';
      case 'common.forgotPassword':
        return 'Passwort vergessen';
      case 'common.tenant':
        return 'Mieter';
      case 'common.landlord':
        return 'Vermieter';
      case 'common.cancelRenting':
        return 'Mietvertrag kündigen';
      case 'common.startDate':
        return 'Startdatum';
      case 'common.endDate':
        return 'Enddatum';
      case 'common.fromDate':
        return 'Von Datum';
      case 'common.toDate':
        return 'Bis Datum';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Bankliste';
      case 'common.withdrawMethod':
        return 'Auszahlungsmethode';
      case 'common.uploadPaymentReceipt':
        return 'Zahlungsbeleg hochladen';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Hinweis: '),
            note(
              'Die Zahlung erfordert eine manuelle Genehmigung durch den Administrator innerhalb von',
            ),
            const TextSpan(text: ' '),
            duraion('24–48 Stunden.'),
          ],
        );
      case 'common.reviews':
        return 'Bewertungen';
      case 'common.description':
        return 'Beschreibung';
      case 'common.about':
        return 'Über';
      case 'common.propertyTypes':
        return 'Immobilienarten';
      case 'common.features':
        return 'Merkmale';
      case 'common.floorPlans':
        return 'Grundrisse';
      case 'common.buildingDetails':
        return 'Gebäudedetails';
      case 'common.buildingName':
        return 'Gebäudename';
      case 'common.propertyAddress':
        return 'Immobilienadresse';
      case 'common.completionYear':
        return 'Fertigstellungsjahr';
      case 'common.lotNumber':
        return 'Losnummer';
      case 'common.residentialType':
        return 'Wohnart';
      case 'common.furnishings':
        return 'Ausstattung';
      case 'common.floorRange':
        return 'Etagenbereich';
      case 'common.bedrooms':
        return 'Schlafzimmer';
      case 'common.bathrooms':
        return 'Badezimmer';
      case 'common.propertySize':
        return 'Immobiliengröße';
      case 'common.rentalPeriod':
        return 'Mietdauer';
      case 'common.securityDeposit':
        return 'Kaution';
      case 'common.utilityBill':
        return 'Nebenkostenabrechnung';
      case 'common.facilities':
        return 'Einrichtungen';
      case 'common.amenities':
        return 'Annehmlichkeiten';
      case 'common.expiringReason':
        return 'Ablaufgrund';
      case 'common.tenantDetails':
        return 'Mieterdaten';
      case 'common.typeOfTenant':
        return 'Mietertyp';
      case 'common.tenantName':
        return 'Mietername';
      case 'common.nidPassport':
        return 'NID/Reisepass';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Mieter-ID';
      case 'common.dateOfBirth':
        return 'Geburtsdatum';
      case 'common.gender':
        return 'Geschlecht';
      case 'common.nominee':
        return 'Begünstigter';
      case 'common.name':
        return 'Name';
      case 'common.optional':
        return 'Optional';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mobil Nr.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Notfallkontakt';
      case 'common.relation':
        return 'Beziehung';
      case 'common.relationWith':
        return '${_root.common.relation} Mit';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} Ihnen';
      case 'common.company':
        return 'Firma';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM Nr.';
      case 'common.workplace':
        return 'Arbeitsplatz';
      case 'common.officePhoneNo':
        return 'Büro-Telefonnummer';
      case 'common.officeMobileNo':
        return 'Büro ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Fahrzeug';
      case 'common.vehiclesInfo.plain':
        return 'Fahrzeuginformationen';
      case 'common.vehiclesInfo.optional':
        return 'Fahrzeuginformationen (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Typ';
      case 'common.vehicleRegistrationNo.normal':
        return 'Fahrzeugregistrierungsnummer';
      case 'common.vehicleRegistrationNo.short':
        return 'Registrierungsnummer';
      case 'common.vehicleRegistrationNo.alt':
        return 'Kennzeichen';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Marke';
      case 'common.rentProperty':
        return 'Immobilie mieten';
      case 'common.propertyDetails':
        return 'Immobiliendetails';
      case 'common.propertyId':
        return 'Immobilien-ID';
      case 'common.propertyType':
        return 'Immobilienart';
      case 'common.propertyName':
        return 'Immobilienname';
      case 'common.paymentDetails':
        return 'Zahlungsdetails';
      case 'common.monthlyRent':
        return 'Monatliche Miete';
      case 'common.thisMonthPayment':
        return 'Zahlung diesen Monat';
      case 'common.totalPaidRent':
        return 'Insgesamt bezahlte Miete';
      case 'common.dueRent':
        return 'Fällige Miete';
      case 'common.rentStartDate':
        return 'Mietbeginn ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Mietende ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'Mietvertrag PDF';
      case 'common.noFile':
        return 'Keine Datei';
      case 'common.tenantImageOp':
        return 'Mieterbild ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Neues Fahrzeug hinzufügen';
      case 'common.uploadNidPassport':
        return 'NID/Reisepass hochladen';
      case 'common.nidPassportUploadNote':
        return 'Es werden nur Bilddateien akzeptiert. Dateigröße bis zu 2,5 MB.';
      case 'common.search':
        return 'Suchen';
      case 'common.sortBy':
        return 'Sortieren nach';
      case 'common.subscription':
        return 'Abonnement';
      case 'common.downloading':
        return 'Wird heruntergeladen...';
      case 'common.downloadSuccess':
        return 'Datei erfolgreich heruntergeladen!';
      case 'common.addPropertyBannerTitle':
        return 'Möchten Sie Ihre Immobilie vermieten?';
      case 'common.application':
        return 'Antrag';
      case 'common.tenantHasPaidDeposit':
        return 'Der Mieter hat die Kaution bezahlt.';
      case 'common.askProcessingRentApplication':
        return 'Sind Sie sicher, dass Sie diesen Antrag auf Mietimmobilie bearbeiten?';
      case 'common.dateAndTime':
        return 'Datum und Uhrzeit';
      case 'common.applicationDetails':
        return 'Antragsdetails';
      case 'common.depositStatus':
        return 'Kautionstatus';
      case 'common.uploadRentAgreement':
        return 'Mietvertrag hochladen';
      case 'common.uploadFilePDF':
        return 'Datei hochladen (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Bitte wählen Sie eine Vertragsdokumentdatei aus.';
      case 'common.landlordRentAgreementPDF':
        return 'Vermieter-Mietvertrag PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Mieter-Mietvertrag PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Hinweis: '),
            note(
              'Genehmigen Sie den Antrag erst, nachdem der Mieter eine Anzahlung geleistet hat.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Ablehnungsgrund';
      case 'common.youveRejectedThisApplication':
        return 'Sie haben diesen Antrag abgelehnt';
      case 'common.landlordDetails':
        return 'Vermieterdetails';
      case 'common.landlordName':
        return 'Vermietername';
      case 'common.downloadRentAgreement':
        return 'Mietvertrag herunterladen';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Akzeptieren Sie die '),
            toc('Nutzungsbedingungen'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Hinweis: '),
            note(
              'Bitte laden Sie den Vertrag herunter und lesen Sie ihn. Bitte senden Sie den unterzeichneten Vertrag per WhatsApp oder E-Mail an den Vermieter.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Hinweis: '),
            note(
              'Der Vermieter genehmigt den Antrag, wenn der Mieter die Kaution, die Nebenkosten und die Vorauszahlung für einen Monat Miete zahlt.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Mietvertrag (PDF) '),
            complete('Vertrag abschließen'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Hinweis: '),
            note(
              'Der Vermieter genehmigt den Antrag, wenn der Mieter die Kaution, die Nebenkosten und die Vorauszahlung für einen Monat Miete zahlt.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Antragsliste';
      case 'common.viewDetails':
        return 'Details anzeigen';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Startseite';
      case 'common.dashboard':
        return 'Dashboard';
      case 'common.tenants':
        return 'Mieter';
      case 'common.maintenance':
        return 'Wartung';
      case 'common.maintenanceList':
        return 'Wartungsliste';
      case 'common.maintenanceReport':
        return 'Wartungsbericht';
      case 'common.labor':
        return 'Personal';
      case 'common.applications':
        return 'Anträge';
      case 'common.rentInvitation':
        return 'Mieteinladung';
      case 'common.payment':
        return 'Zahlung';
      case 'common.rentPayment':
        return 'Mietzahlung';
      case 'common.depositUtilityPayment':
        return 'Kaution & Nebenkostenzahlung';
      case 'common.refundRequest':
        return 'Rückerstattungsantrag';
      case 'common.withdrawRequest':
        return 'Auszahlungsantrag';
      case 'common.myProperty':
        return 'Meine Immobilie';
      case 'common.myRent':
        return 'Meine Miete';
      case 'common.wishlist':
        return 'Wunschliste';
      case 'common.properties':
        return 'Immobilien';
      case 'common.allProperties':
        return 'Alle Immobilien';
      case 'common.totalPropery':
        return 'Gesamtanzahl Immobilien';
      case 'common.occupied':
        return 'Belegt';
      case 'common.vacant':
        return 'Frei';
      case 'common.accounting':
        return 'Buchhaltung';
      case 'common.totalIncome':
        return 'Gesamteinnahmen';
      case 'common.totalExpense':
        return 'Gesamtausgaben';
      case 'common.currentBalance':
        return 'Aktueller Saldo';
      case 'common.totalWithdrawal':
        return 'Gesamt (Auszahlung)';
      case 'common.totalProperties':
        return 'Gesamtanzahl Immobilien';
      case 'common.totalTenant':
        return 'Gesamtanzahl Mieter';
      case 'common.totalRentPaid':
        return 'Insgesamt bezahlte Miete';
      case 'common.totalRentDue':
        return 'Insgesamt fällige Miete';
      case 'common.totalApplication':
        return 'Gesamtanzahl Anträge';
      case 'common.pendingApplication':
        return 'Ausstehender Antrag';
      case 'common.processingApplication':
        return 'In Bearbeitung befindlicher Antrag';
      case 'common.approveApplication':
        return 'Antrag genehmigen';
      case 'common.rejectApplication':
        return 'Antrag ablehnen';
      case 'common.maintenanceCost':
        return 'Wartungskosten';
      case 'common.transactionSummary':
        return 'Transaktionsübersicht';
      case 'common.maintenanceRequest':
        return 'Wartungsanfrage';
      case 'common.notifications':
        return 'Benachrichtigungen';
      case 'common.myProperties':
        return 'Meine Immobilien';
      case 'common.recommendationProperties':
        return 'Empfohlene Immobilien';
      case 'common.laborList':
        return 'Personalverzeichnis';
      case 'common.addLabor':
        return 'Personal hinzufügen';
      case 'common.laborDetails':
        return 'Personaldetails';
      case 'common.laborSalary':
        return 'Personalgehalt';
      case 'common.editLabor':
        return 'Personal bearbeiten';
      case 'common.addNewLabor':
        return 'Neues Personal hinzufügen';
      case 'common.enterAmount':
        return 'Betrag eingeben';
      case 'common.maintenanceDetails':
        return 'Wartungsdetails';
      case 'common.laborName':
        return 'Personalname';
      case 'common.comment':
        return 'Kommentar';
      case 'common.image':
        return 'Bild';
      case 'common.complete':
        return 'Abgeschlossen';
      case 'common.details':
        return 'Details';
      case 'common.title':
        return 'Titel';
      case 'common.date':
        return 'Datum';
      case 'common.reason':
        return 'Grund';
      case 'common.edit':
        return 'Bearbeiten';
      case 'common.property':
        return 'Immobilie';
      case 'common.completeYourProfile':
        return 'Vervollständigen Sie Ihr Profil';
      case 'common.profileImage':
        return 'Profilbild';
      case 'common.imagePickHint':
        return 'Nur JPEG- und PNG-Bilder mit einer maximalen Größe von 120x120 Pixeln.';
      case 'common.invoiceId':
        return 'Rechnungs-ID';
      case 'common.depositAmount':
        return 'Kaution';
      case 'common.landlordPhone':
        return 'Telefonnummer Vermieter';
      case 'common.rentalAdvance':
        return 'Miete (Vorschuss)';
      case 'common.totalAmount':
        return 'Gesamtbetrag';
      case 'common.rentalAmount':
        return 'Mietbetrag';
      case 'common.adminCharge':
        return 'Verwaltungsgebühr';
      case 'common.editAccount':
        return 'Konto bearbeiten';
      case 'common.addNewAccount':
        return 'Neues Konto hinzufügen';
      case 'common.transactionId':
        return 'Transaktions-ID';
      case 'common.transactionType':
        return 'Transaktionsart';
      case 'common.requestDate':
        return 'Antragsdatum';
      case 'common.amount':
        return 'Betrag';
      case 'common.fee':
        return 'Gebühr';
      case 'common.paymentStatus':
        return 'Zahlungsstatus';
      case 'common.generatedTime':
        return 'Erstellungszeit';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Dies ist ein systemgenerierter Bericht von '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Auszahlungshistorie';
      case 'common.history':
        return 'Historie';
      case 'common.withdrawAmount':
        return 'Auszahlungsbetrag';
      case 'common.availableBalance':
        return 'Verfügbarer Saldo';
      case 'common.withdrawCharge':
        return 'Auszahlungsgebühr';
      case 'common.paymentMethod':
        return 'Zahlungsmethode';
      case 'common.requestSendSuccess':
        return 'Anfrage erfolgreich gesendet!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Zahlungsbeleg erfolgreich eingereicht.';
      case 'common.refundReason':
        return 'Rückerstattungsgrund';
      case 'common.note':
        return 'Hinweis';
      case 'common.refundReceiveSuccess':
        return 'Rückerstattung erfolgreich erhalten.';
      case 'common.downloadPaymentReceipt':
        return 'Zahlungsbeleg herunterladen';
      case 'common.invoice':
        return 'Rechnung';
      case 'common.selectPropertyToSeeInvoice':
        return 'Wählen Sie eine Immobilie aus, um die Rechnungsnummer anzuzeigen...';
      case 'common.bankAccName':
        return 'Name des Bankkontos';
      case 'common.bankName':
        return 'Bankname';
      case 'common.bankAccNum':
        return 'Bankkontonummer';
      case 'common.thankYou':
        return 'Vielen Dank!';
      case 'common.basicInfo':
        return 'Grundlegende Informationen';
      case 'common.descriptionPricing':
        return 'Beschreibung & Preisgestaltung';
      case 'common.contact':
        return 'Kontakt';
      case 'common.photos':
        return 'Fotos';
      case 'common.successfullySubmitted':
        return 'Erfolgreich eingereicht!';
      case 'common.editProperty':
        return 'Immobilie bearbeiten';
      case 'common.addNewProperty':
        return 'Neue Immobilie hinzufügen';
      case 'common.propertyManageRequestSuccess':
        return 'Ihre Anzeige wurde zur Überprüfung eingereicht.';
      case 'common.postAnotherProperty':
        return 'Weitere Immobilie inserieren';
      case 'common.browseYourProperty':
        return 'Ihre Immobilie durchsuchen';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Schritt '),
                step,
                const TextSpan(text: ' von '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Was möchten Sie inserieren?';
      case 'common.category':
        return 'Kategorie';
      case 'common.invalidCategory':
        return 'Ungültige Kategorie';
      case 'common.unitNumber':
        return 'Einheitennummer';
      case 'common.sqft':
        return 'm²';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Die Immobiliengröße muss größer als Null sein';
      case 'common.whatAreTheFacility':
        return 'Welche Einrichtungen gibt es?';
      case 'common.whatAreTheAmenity':
        return 'Welche Annehmlichkeiten gibt es?';
      case 'common.parkingLot':
        return 'Parkplatz';
      case 'common.houseType':
        return 'Haustyp';
      case 'common.value':
        return 'Wert';
      case 'common.unitLotSize':
        return 'Einheit / Grundstücksgröße';
      case 'common.landSize':
        return 'Grundstücksgröße';
      case 'common.acres':
        return 'Hektar';
      case 'common.roomSize':
        return 'Raumgröße';
      case 'common.askTenantPreference':
        return 'Was sind Ihre bevorzugten Mieter?';
      case 'common.couple':
        return 'Paar';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            'Beschreiben Sie die ${propertyType}';
      case 'common.adTitle':
        return 'Anzeigentitel';
      case 'common.minimumRentalPeriod':
        return 'Mindestmietdauer';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Nummer';
      case 'common.hideOrDisplayEmail':
        return 'E-Mail-Adresse anzeigen oder verbergen';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Vielen Dank für das Inserieren auf ${appName}!';
      case 'common.propertyList':
        return 'Immobilienliste';
      case 'common.newInviteRent':
        return 'Neue Mieteinladung';
      case 'common.rentAgreement':
        return 'Mietvertrag';
      case 'common.rentDetails':
        return 'Mietdetails';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Hinweis: '),
            note('Bitte warten Sie, bis der Mieter die Einladung annimmt.'),
          ],
        );
      case 'common.rent':
        return 'Miete';
      case 'common.editTenant':
        return 'Mieter bearbeiten';
      case 'common.addNewTenant':
        return 'Neuen Mieter hinzufügen';
      case 'common.shareInstallLink':
        return 'Installationslink teilen';
      case 'common.tenantList':
        return 'Mieterliste';
      case 'common.editMaintenanceRequest':
        return 'Wartungsanfrage bearbeiten';
      case 'common.addNewMaintenance':
        return 'Neue Wartung hinzufügen';
      case 'common.landlordId':
        return 'Vermieter-ID';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Hinweis: '),
            note(
              'Ihr Vertrag wird überprüft. Bitte warten Sie, bis der Vermieter Ihre Miete genehmigt hat.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Bewertung bearbeiten';
      case 'common.writeAReview':
        return 'Eine Bewertung schreiben';
      case 'common.selectRating':
        return 'Bewertung auswählen';
      case 'common.enterYourOpinion':
        return 'Geben Sie Ihre Meinung ein';
      case 'common.askToEnterReviewMsg':
        return 'Bitte geben Sie eine Bewertung ab';
      case 'common.pressBackAgainToExit':
        return 'Erneut zurückdrücken zum Beenden.';
      case 'common.selectPaymentMethod':
        return 'Zahlungsmethode auswählen';
      case 'common.filter':
        return 'Filtern';
      case 'common.perMonth':
        return '/Monat';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Suchen Sie nach etwas in ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Etwas ist schiefgelaufen, bitte versuchen Sie es erneut';
      case 'exceptions.noNidPassport':
        return 'Kein NID/Reisepass-Bild bereitgestellt.';
      case 'exceptions.noRentPropertyFound':
        return 'Keine Mietimmobilie für diesen Mieter gefunden.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Keine Immobilie gefunden!\nBitte versuchen Sie es mit anderen Schlüsselwörtern';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Kein Abonnementplan gefunden!\nBitte aktualisieren Sie die Seite und versuchen Sie es erneut.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Ungültige ${dataType} Info! Bitte aktualisieren Sie die Seite und versuchen Sie es erneut.';
      case 'exceptions.invalidDownloadUrl':
        return 'Ungültige Download-URL!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Datei konnte nicht gespeichert werden! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Fehler beim Öffnen der Datei! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Keine Fahrzeuginformationen angegeben.';
      case 'exceptions.yourApplicationRejected':
        return 'Ihr Antrag wurde abgelehnt';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Kein Antrag gefunden!\n${subject} wird hier angezeigt, wenn verfügbar.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Ihr Antrag';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Der Antrag des Mieters';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Keine Immobilie gefunden!\nBitte versuchen Sie, eine Immobilie hinzuzufügen, um sie hier zu sehen.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Keine empfohlenen Immobilien gefunden\nBitte versuchen Sie es später noch einmal.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Immobilien nicht verfügbar\nBitte versuchen Sie es später noch einmal.';
      case 'exceptions.noImageProvided':
        return 'Kein Bild bereitgestellt';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Keine ${status} Wartung gefunden.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Keine Wartung gefunden! Sie können eine Wartungsanfrage erstellen, um sie hier zu sehen.';
      case 'exceptions.noDepositFound':
        return 'Keine Kaution gefunden!\nBitte können Sie die Kautionen sehen, wenn sie verfügbar sind';
      case 'exceptions.noRentPaymentFound':
        return 'Keine Mietzahlung gefunden!\nBitte können Sie die Mietzahlungen sehen, wenn sie verfügbar sind';
      case 'exceptions.transactionSummaryApiException':
        return 'Fehler beim Abrufen der Transaktionsübersicht.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Keine Anfrage gefunden!\nBitte versuchen Sie, eine Auszahlungsanfrage zu erstellen, um sie hier zu sehen.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Diese Auszahlungsanfrage wurde nicht genehmigt!.';
      case 'exceptions.nonZeroError':
        return 'Bitte geben Sie einen gültigen Betrag größer als Null ein.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Der Betrag muss mindestens ${minValue} betragen.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Der Betrag darf ${maxValue} nicht überschreiten.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Bitte wählen Sie zuerst eine Zahlungsmethode aus.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Keine ${status} Rückerstattungsanfrage gefunden!\nSie können die Rückerstattungsanfrage hier sehen, wenn sie verfügbar ist.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Keine Rückerstattungsanfrage gefunden!\nSie können eine Rückerstattungsanfrage erstellen, um sie hier zu sehen.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Der Mieter genehmigt die Rückerstattung, wenn er das Geld zurückerhalten hat';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Wir werden die Rückerstattungsanfrage prüfen und sie innerhalb von 24 Stunden genehmigen.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Bitte wählen Sie die Anzahl der ${value}';
      case 'exceptions.invalidDateRange':
        return 'Ungültiger Datumsbereich.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} muss größer als Null sein.';
      case 'exceptions.editProperty.rentalChange':
        return 'Die Mietimmobilie ändert sich. Sie muss nur für die nächste Monatsmiete gültig (wirksam) sein.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Ihre Immobilie ist bereits an einen Mieter vermietet. Sie kann erst gelöscht werden, wenn der Mieter entfernt wurde';
      case 'exceptions.editProperty.alreayRented':
        return 'Diese Immobilie ist bereits vermietet. Bitte versuchen Sie es später noch einmal.\nOder Sie können sich an den Vermieter wenden, um weitere Informationen zu erhalten.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Keine Mieteinladung gefunden!\nBitte versuchen Sie, eine Mieteinladung zu erstellen, um sie hier zu sehen.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Keine Mieteinladung gefunden!\nSie können die Mieteinladung hier sehen, wenn sie verfügbar ist.';
      case 'exceptions.notenantFoundList':
        return 'Keine Mieter!\nBitte versuchen Sie, einen Mieter hinzuzufügen, um ihn hier zu sehen.';
      case 'exceptions.noFeaturesProvided':
        return 'Keine Funktionen bereitgestellt.';
      case 'exceptions.noNotificationFound':
        return 'Keine Benachrichtigung verfügbar.\nSie können Ihre Benachrichtigung hier sehen, wenn sie verfügbar ist.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Sind Sie sicher, dass Sie sich abmelden möchten?';
      case 'prompt.application.rejectTitle':
        return 'Warum lehnen Sie diesen Antrag ab?';
      case 'prompt.application.applicationSent.successfully':
        return 'Antrag erfolgreich gesendet!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Sie können diesen Antrag in Ihrer Antragsliste sehen';
      case 'prompt.labor.delete.title':
        return 'Personal löschen?';
      case 'prompt.labor.delete.description':
        return 'Sind Sie sicher, dass Sie dieses Personal löschen möchten?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Warum wird diese Anfrage abgelehnt?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Sind Sie sicher, dass Sie diese Wartungsanfrage bearbeiten möchten?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Arbeit abgeschlossen?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Auszahlungsmethode löschen?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Sind Sie sicher, dass Sie diese Auszahlungsmethode löschen möchten?';
      case 'prompt.unsavedChanges.title':
        return 'Sind Sie sicher, dass Sie zurückgehen möchten?';
      case 'prompt.unsavedChanges.message':
        return 'Geänderte Felder werden nicht gespeichert!';
      case 'prompt.property.delete.title':
        return 'Immobilie löschen?';
      case 'prompt.property.delete.message':
        return 'Sind Sie sicher, dass Sie diese Immobilie löschen möchten?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Sind Sie sicher, dass Sie diese Miete genehmigen möchten?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Stellen Sie sicher, dass Sie den vom Mieter unterzeichneten Vertrag geprüft haben.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Sind Sie sicher, dass Sie diese Einladung annehmen möchten?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Stellen Sie sicher, dass Sie die PDF-Datei des Vertrags heruntergeladen haben!';
      case 'prompt.sessionExpired.title':
        return 'Sitzung abgelaufen';
      case 'prompt.sessionExpired.message':
        return 'Ihre Sitzung ist abgelaufen. Bitte melden Sie sich erneut an.';
      case 'prompt.sessionExpired.action':
        return 'Anmelden';
      case 'prompt.noInternet.title':
        return 'Keine Internetverbindung';
      case 'prompt.noInternet.message':
        return 'Bitte überprüfen Sie Ihre WLAN- oder mobile Netzwerkverbindung und versuchen Sie es erneut.';
      case 'prompt.noInternet.action':
        return 'Erneut versuchen';
      case 'prompt.permissionHandler.title':
        return 'Berechtigung erforderlich!';
      case 'prompt.permissionHandler.message':
        return 'Sie müssen Berechtigungen in den App-Einstellungen erteilen. Möchten Sie die Einstellungen jetzt öffnen?';
      case 'prompt.permissionHandler.action':
        return 'Einstellungen öffnen';
      case 'prompt.imagePicker.title':
        return 'Option auswählen';
      case 'prompt.imagePicker.gallery':
        return 'Galerie';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'E-Mail bestätigen';
      case 'prompt.verificationDialog.message':
        return 'Wir haben eine E-Mail mit einem Bestätigungscode gesendet';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} an ${email}';
      case 'prompt.notification.clearTitle':
        return 'Benachrichtigungen löschen?';
      case 'prompt.notification.clearMessage':
        return 'Sind Sie sicher, dass Sie alle Benachrichtigungen löschen möchten?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Geben Sie ${_root.common.fullName} ein';
      case 'form.fullName.errors.required':
        return 'Bitte geben Sie Ihren ${_root.common.fullName} ein';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Geben Sie Ihre ${_root.common.email} ein';
      case 'form.email.errors.required':
        return 'Bitte geben Sie Ihre ${_root.common.email}-Adresse ein';
      case 'form.email.errors.invalid':
        return '⦸ Ungültige E-Mail, bitte versuchen Sie es erneut';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Bitte geben Sie Ihr ${_root.common.password} ein';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Das Passwort muss mindestens ${count} Zeichen lang sein!';
      case 'form.confirmPassword.label':
        return '${_root.common.password} bestätigen';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Bitte geben Sie Ihr ${_root.common.password} ein';
      case 'form.confirmPassword.errors.notMatched':
        return 'Die Passwörter stimmen nicht überein!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Bitte geben Sie Ihre ${_root.common.mobileNumber} ein';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Hausnummer und Straßenname';
      case 'form.address1.errors.required':
        return 'Bitte geben Sie Ihr ${_root.form.address1.label} ein';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Wohnung, Suite, Einheit usw.';
      case 'form.address2.errors.required':
        return 'Bitte geben Sie Ihr ${_root.form.address2.label} ein';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Geben Sie ${_root.common.postalCode} ein';
      case 'form.postalCode.errors.required':
        return 'Bitte geben Sie Ihre ${_root.common.postalCode} ein';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Geben Sie den ${_root.common.city}-Namen ein.';
      case 'form.city.errors.required':
        return 'Bitte geben Sie Ihren ${_root.common.city}-Namen ein.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Geben Sie den ${_root.common.state}-Namen ein.';
      case 'form.state.errors.required':
        return 'Bitte geben Sie Ihren ${_root.common.state}-Namen ein.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Wählen Sie ${_root.common.country} aus.';
      case 'form.country.errors.required':
        return 'Bitte wählen Sie Ihr ${_root.common.country} aus';
      case 'form.otp.errors.required':
        return 'Bitte geben Sie das OTP ein.';
      case 'form.otp.errors.invalid':
        return 'Bitte geben Sie das korrekte OTP ein.';
      case 'form.title.label':
        return 'Titel';
      case 'form.title.hint':
        return 'Geben Sie einen Titel ein';
      case 'form.title.errors.required':
        return 'Bitte geben Sie einen Titel ein';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Wählen Sie ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Bitte wählen Sie ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Grund';
      case 'form.reason.hint':
        return 'Geben Sie einen Grund ein';
      case 'form.reason.errors.required':
        return 'Bitte geben Sie einen Grund ein';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Wählen Sie ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Bitte wählen Sie ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => '${label} hochladen';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Bitte wählen Sie ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Geben Sie ${_root.form.note.label(note: note)} ein';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Bitte geben Sie ${_root.form.note.label(note: note)} ein';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Wählen Sie ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Bitte wählen Sie ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Geben Sie ${_root.form.anyField.label(label: label)} ein';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Bitte geben Sie ${_root.form.anyField.label(label: label)} ein';
      case 'form.anyField.errors.invalid':
        return 'Bitte geben Sie ein gültiges @form.anyField.label ein';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Wählen Sie ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Bitte wählen Sie ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Bitte wählen Sie ein gültiges @form.anyDropdown.label';
      case 'action.next':
        return 'Weiter';
      case 'action.getStarted':
        return 'Loslegen';
      case 'action.skip':
        return 'Überspringen';
      case 'action.select':
        return 'Auswählen';
      case 'action.save':
        return 'Speichern';
      case 'action.signIn':
        return 'Anmelden';
      case 'action.signUp':
        return 'Registrieren';
      case 'action.kContinue':
        return 'Fortsetzen';
      case 'action.clearAll':
        return 'Alles löschen';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Senden';
      case 'action.pay':
        return 'Bezahlen';
      case 'action.remove':
        return 'Entfernen';
      case 'action.goBack':
        return 'Zurückgehen';
      case 'action.buyNow':
        return 'Jetzt kaufen';
      case 'action.no':
        return 'Nein';
      case 'action.open':
        return 'Öffnen';
      case 'action.addProperty':
        return 'Immobilie hinzufügen';
      case 'action.process':
        return 'Verarbeiten';
      case 'action.approve':
        return 'Genehmigen';
      case 'action.reject':
        return 'Ablehnen';
      case 'action.viewRent':
        return 'Miete ansehen';
      case 'action.openNavigationMenu':
        return 'Navigationsmenü öffnen';
      case 'action.seeAll':
        return 'Alle anzeigen';
      case 'action.update':
        return 'Aktualisieren';
      case 'action.printTransaction':
        return 'Transaktion drucken';
      case 'action.payoutRequest':
        return 'Auszahlungsanfrage';
      case 'action.addNew':
        return '+ Neu hinzufügen';
      case 'action.sendRequest':
        return 'Anfrage senden';
      case 'action.print':
        return 'Drucken';
      case 'action.requestForRefund':
        return 'Rückerstattung anfordern';
      case 'action.previous':
        return 'Vorherige';
      case 'action.delete':
        return 'Löschen';
      case 'action.applyProperty':
        return 'Immobilie beantragen';
      case 'action.viewApplication':
        return 'Antrag ansehen';
      case 'action.inviteTenant':
        return 'Mieter einladen';
      case 'action.inviteRent':
        return 'Zur Miete einladen';
      case 'action.cancel':
        return 'Abbrechen';
      case 'action.accept':
        return 'Annehmen';
      case 'action.submit':
        return 'Absenden';
      case 'action.yes':
        return 'Ja';
      case 'action.okay':
        return 'Okay';
      case 'action.confirm':
        return 'Bestätigen';
      case 'action.apply':
        return 'Anwenden';
      case 'action.reset':
        return 'Zurücksetzen';
      case 'action.retry':
        return 'Erneut versuchen';
      case 'action.viewAll':
        return 'Alle anzeigen';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Finden Sie Ihre Immobilie';
      case 'pages.onboard.onboardData.data1.description':
        return 'Wir haben es Ihnen leicht gemacht, einen Ort zu finden, der zu Ihrem Leben passt – egal ob ein Zimmer, eine Wohnung oder ein Haus.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Wohnung in der Stadt';
      case 'pages.onboard.onboardData.data2.description':
        return 'Wir sparen Ihnen Zeit, indem wir Sie schnell mit der perfekten Immobilie zusammenbringen, bevor sie weg ist, damit Sie Ihr neues Zuhause genießen oder Ihr eigenes kostenlos inserieren können.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Ihr komfortables Haus';
      case 'pages.onboard.onboardData.data3.description':
        return 'Wenn Sie auf der Suche nach einem Wohnort sind, dann schauen Sie sich unsere Häuser zur Miete an. Wir haben eine große Auswahl an Häusern für Sie zur Auswahl im ganzen Land.';
      case 'pages.signIn.title':
        return 'Willkommen zurück';
      case 'pages.signIn.subtitle':
        return 'Melden Sie sich jetzt an, um eine fantastische Reise zu beginnen.';
      case 'pages.signIn.extra.rememberMe':
        return 'Angemeldet bleiben';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Noch kein Konto? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Passwort vergessen';
      case 'pages.forgotPassword.subtitle':
        return 'Geben Sie Ihre E-Mail-Adresse ein, um Ihr Passwort wiederherzustellen.';
      case 'pages.otpVerification.title':
        return 'Verifizierung';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Ein 4-stelliger PIN wurde an Ihre E-Mail-Adresse gesendet. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Code wird in ${minutes}:${seconds} gesendet';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Code erneut senden'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Passwort zurücksetzen';
      case 'pages.resetPassword.subtitle':
        return 'Setzen Sie Ihr Passwort zur Wiederherstellung zurück und melden Sie sich in Ihrem Konto an';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Erfolgreich geändert!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Melden Sie sich mit Ihrem neuen Passwort an.\nSie werden zur Anmeldung weitergeleitet...';
      case 'pages.signUp.title':
        return 'Konto erstellen';
      case 'pages.signUp.subtitle':
        return 'Melden Sie sich jetzt an, um eine fantastische Reise zu beginnen';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Haben Sie ein Konto? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Wer sind Sie?';
      case 'pages.welcome.subtitle':
        return 'Bitte wählen Sie die untenstehende Option aus.';
      case 'pages.welcome.extra.landlordTag':
        return 'Verwalten Sie Ihre eigenen Immobilien';
      case 'pages.welcome.extra.tenantTag':
        return 'Melden Sie sich in Ihrem Mietkonto an';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Benachrichtigungen';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Nachricht...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Warum ${_root.common.cancelRenting} Sie?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Grund schreiben';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Bitte geben Sie den Grund für die Mietkündigung an';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Offline-Zahlung';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Zahlungshinweis (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Geben Sie etwas Text ein...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Zahlungsbetrag: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Name des Kontoinhabers';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Kontonummer';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift-Code';
      case 'pages.offlinePayment.extra.branch':
        return 'Filiale';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Wählen Sie nur '),
            fileType('JPG, PNG, PDF'),
            const TextSpan(text: '- oder '),
            fileType('DOC'),
            const TextSpan(text: '-Formatdateien. Dateigröße '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Rechnung anzeigen';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Wir werden die Zahlung überprüfen und sie innerhalb von 24 Stunden genehmigen.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Erneut versuchen';
      case 'pages.paymentStatus.fail.title':
        return 'Ups! Zahlung fehlgeschlagen';
      case 'pages.paymentStatus.fail.description':
        return 'Ihre Transaktion ist aufgrund eines technischen Fehlers fehlgeschlagen.';
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
            const TextSpan(text: 'Ausstattung '),
            fa('(Einrichtungen & Annehmlichkeiten)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Mietdauer auswählen';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Bewertung schreiben';
      case 'pages.search.appbarTitle':
        return 'Suchen';
      case 'pages.search.extra.hint':
        return 'Suchen Sie nach Grundstücken, Wohnungen, Zimmern...';
      case 'pages.search.extra.noRecentSearch':
        return 'Sie haben keine kürzlichen Suchanfragen.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Wählen Sie Ihren Plan';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Abonnementzahlung erfolgreich.\nSie können jetzt auf die abonnierten Funktionen zugreifen.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Gesamte Wartungskosten: '),
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
        return 'Alle Immobilien';
      case 'enums.propertyStatus.pending':
        return 'Ausstehend';
      case 'enums.propertyStatus.active':
        return 'Aktiv';
      case 'enums.propertyStatus.inactive':
        return 'Inaktiv';
      case 'enums.propertyStatus.rejected':
        return 'Abgelehnt';
      case 'enums.propertyType.apartmentCondominium':
        return 'Wohnung/Eigentumswohnung';
      case 'enums.propertyType.house':
        return 'Haus';
      case 'enums.propertyType.commercialProperty':
        return 'Gewerbeimmobilie';
      case 'enums.propertyType.land':
        return 'Grundstück';
      case 'enums.propertyType.room':
        return 'Zimmer';
      case 'enums.applicationStatus.all':
        return 'Alle';
      case 'enums.applicationStatus.pending':
        return 'Ausstehend';
      case 'enums.applicationStatus.processing':
        return 'In Bearbeitung';
      case 'enums.applicationStatus.approved':
        return 'Genehmigt';
      case 'enums.applicationStatus.rejected':
        return 'Abgelehnt';
      case 'enums.myRentStatus.pending':
        return 'Ausstehend';
      case 'enums.myRentStatus.processing':
        return 'In Bearbeitung';
      case 'enums.myRentStatus.active':
        return 'Aktiv';
      case 'enums.myRentStatus.expired':
        return 'Abgelaufen';
      case 'enums.myRentStatus.cancelled':
        return 'Storniert';
      case 'enums.maintenanceStatus.pending':
        return 'Ausstehend';
      case 'enums.maintenanceStatus.processing':
        return 'In Bearbeitung';
      case 'enums.maintenanceStatus.rejected':
        return 'Abgelehnt';
      case 'enums.maintenanceStatus.completed':
        return 'Abgeschlossen';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privatperson';
      case 'enums.tenantProfileType.company':
        return 'Firma';
      case 'enums.tenantType.newTenant':
        return 'Neuer Mieter';
      case 'enums.tenantType.activeTenant':
        return 'Aktiver Mieter';
      case 'enums.tenantType.expiredTenant':
        return 'Abgelaufener Mieter';
      case 'enums.paymentStatus.all':
        return 'Alle';
      case 'enums.paymentStatus.pending':
        return 'Ausstehend';
      case 'enums.paymentStatus.paid':
        return 'Bezahlt';
      case 'enums.paymentStatus.unpaid':
        return 'Unbezahlt';
      case 'enums.paymentStatus.rejected':
        return 'Abgelehnt';
      case 'enums.paymentStatus.refund':
        return 'Rückerstattung';
      case 'enums.paymentOptions.onlinePayment':
        return 'Online-Zahlung';
      case 'enums.paymentOptions.offlinePayment':
        return 'Offline-Zahlung';
      case 'enums.paymentType.securityDeposit':
        return 'Kaution';
      case 'enums.paymentType.rentPayment':
        return 'Mietzahlung';
      case 'enums.paymentType.subscription':
        return 'Abonnement';
      case 'enums.gender.male':
        return 'Männlich';
      case 'enums.gender.female':
        return 'Weiblich';
      case 'enums.gender.other':
        return 'Andere';
      case 'enums.ecRelation.wife':
        return 'Ehefrau';
      case 'enums.ecRelation.parent':
        return 'Elternteil';
      case 'enums.ecRelation.friend':
        return 'Freund';
      case 'enums.ecRelation.brother':
        return 'Bruder';
      case 'enums.ecRelation.sister':
        return 'Schwester';
      case 'enums.ecRelation.child':
        return 'Kind';
      case 'enums.vehicleType.car':
        return 'Auto';
      case 'enums.vehicleType.motorcycles':
        return 'Motorräder';
      case 'enums.vehicleType.lorry':
        return 'LKW';
      case 'enums.sortBy.lowToHigh':
        return 'Niedrig zu Hoch';
      case 'enums.sortBy.highToLow':
        return 'Hoch zu Niedrig';
      case 'enums.residentialType.flat':
        return 'Wohnung';
      case 'enums.residentialType.apartment':
        return 'Apartment';
      case 'enums.residentialType.condominium':
        return 'Eigentumswohnung';
      case 'enums.residentialType.serviceResidence':
        return 'Service-Wohnung';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Maisonette';
      case 'enums.residentialType.townhouseCondo':
        return 'Reihenhaus';
      case 'enums.residentialType.others':
        return 'Andere';
      case 'enums.floorRange.high':
        return 'Hoch';
      case 'enums.floorRange.medium':
        return 'Mittel';
      case 'enums.floorRange.low':
        return 'Niedrig';
      case 'enums.furnishings.fullyFurnished':
        return 'Voll möbliert';
      case 'enums.furnishings.partiallyFurnished':
        return 'Teilmöbliert';
      case 'enums.furnishings.notFurnished':
        return 'Nicht möbliert';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Bürofläche';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Einzelhandelsfläche';
      case 'enums.commercialPropertyType.shopLot':
        return 'Geschäftslokal';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Lager/Fabrik';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel/Resort';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Andere';
      case 'enums.landPropertyType.residential':
        return 'Wohngebiet';
      case 'enums.landPropertyType.industrial':
        return 'Industriegebiet';
      case 'enums.landPropertyType.agricultural':
        return 'Landwirtschaftlich';
      case 'enums.landPropertyType.commercial':
        return 'Gewerblich';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Gemischte Bebauung';
      case 'enums.landPropertyType.others':
        return 'Andere';
      case 'enums.residentPropertyType.condo':
        return 'Eigentumswohnung/Service-Wohnung/Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Wohnung/Appartement';
      case 'enums.residentPropertyType.house':
        return 'Häuser';
      case 'enums.residentPropertyType.shoplot':
        return 'Geschäftslokal';
      case 'enums.residentPropertyType.sharing':
        return 'Wohngemeinschaft';
      case 'enums.residentPropertyType.others':
        return 'Andere';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 Monate';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 Jahr';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 Jahre';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 Jahre';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 Jahre';
      case 'enums.dropdownDateFilter.daily':
        return 'Täglich';
      case 'enums.dropdownDateFilter.weekly':
        return 'Wöchentlich';
      case 'enums.dropdownDateFilter.monthly':
        return 'Monatlich';
      case 'enums.dropdownDateFilter.yearly':
        return 'Jährlich';
      case 'enums.dropdownDateFilter.custom':
        return 'Benutzerdefiniert';
      default:
        return null;
    }
  }
}
