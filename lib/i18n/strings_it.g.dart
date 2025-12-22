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
class TranslationsIt implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsIt({
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
             locale: AppLocale.it,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <it>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsIt _root = this; // ignore: unused_field

  @override
  TranslationsIt $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsIt(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonIt common = _TranslationsCommonIt._(_root);
  @override
  late final _TranslationsExceptionsIt exceptions = _TranslationsExceptionsIt._(
    _root,
  );
  @override
  late final _TranslationsPromptIt prompt = _TranslationsPromptIt._(_root);
  @override
  late final _TranslationsFormIt form = _TranslationsFormIt._(_root);
  @override
  late final _TranslationsActionIt action = _TranslationsActionIt._(_root);
  @override
  late final _TranslationsPagesIt pages = _TranslationsPagesIt._(_root);
  @override
  late final _TranslationsEnumsIt enums = _TranslationsEnumsIt._(_root);
}

// Path: common
class _TranslationsCommonIt implements TranslationsCommonEn {
  _TranslationsCommonIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profilo';
  @override
  String get language => 'Lingua';
  @override
  String get subscriptionPlan => 'Piano di abbonamento';
  @override
  String get contactUs => 'Contattaci';
  @override
  String get termsAndConditions => 'Termini e Condizioni';
  @override
  String get aboutUs => 'Chi siamo';
  @override
  String get logout => 'Esci';
  @override
  String get editProfile => 'Modifica Profilo';
  @override
  String get fullName => 'Nome completo';
  @override
  String get email => 'Email';
  @override
  String get mobileNumber => 'Numero di cellulare';
  @override
  String get address => 'Indirizzo';
  @override
  String get postalCode => 'Codice postale';
  @override
  String get city => 'Città';
  @override
  String get country => 'Paese';
  @override
  String get state => 'Stato';
  @override
  String get password => 'Password';
  @override
  String get forgotPassword => 'Password dimenticata';
  @override
  String get tenant => 'Inquilino';
  @override
  String get landlord => 'Proprietario';
  @override
  String get cancelRenting => 'Annulla affitto';
  @override
  String get startDate => 'Data di inizio';
  @override
  String get endDate => 'Data di fine';
  @override
  String get fromDate => 'Da data';
  @override
  String get toDate => 'A data';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Elenco banche';
  @override
  String get withdrawMethod => 'Metodo di prelievo';
  @override
  String get uploadPaymentReceipt => 'Carica ricevuta di pagamento';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Il pagamento richiede l\'approvazione manuale da parte dell\'amministratore entro',
      ),
      const TextSpan(text: ' '),
      duraion('24~48 ore.'),
    ],
  );
  @override
  String get reviews => 'Recensioni';
  @override
  String get description => 'Descrizione';
  @override
  String get about => 'Informazioni su';
  @override
  String get propertyTypes => 'Tipi di proprietà';
  @override
  String get features => 'Caratteristiche';
  @override
  String get floorPlans => 'Piante dei piani';
  @override
  String get buildingDetails => 'Dettagli dell\'edificio';
  @override
  String get buildingName => 'Nome dell\'edificio';
  @override
  String get propertyAddress => 'Indirizzo della proprietà';
  @override
  String get completionYear => 'Anno di completamento';
  @override
  String get lotNumber => 'Numero di lotto';
  @override
  String get residentialType => 'Tipo di residenza';
  @override
  String get furnishings => 'Arredamento';
  @override
  String get floorRange => 'Piano';
  @override
  String get bedrooms => 'Camere da letto';
  @override
  String get bathrooms => 'Bagni';
  @override
  String get propertySize => 'Dimensione della proprietà';
  @override
  String get rentalPeriod => 'Periodo di affitto';
  @override
  String get securityDeposit => 'Deposito cauzionale';
  @override
  String get utilityBill => 'Bolletta delle utenze';
  @override
  String get facilities => 'Servizi';
  @override
  String get amenities => 'Servizi';
  @override
  String get expiringReason => 'Motivo di scadenza';
  @override
  String get tenantDetails => 'Dettagli inquilino';
  @override
  String get typeOfTenant => 'Tipo di inquilino';
  @override
  String get tenantName => 'Nome inquilino';
  @override
  String get nidPassport => 'NID/Passaporto';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID inquilino';
  @override
  String get dateOfBirth => 'Data di nascita';
  @override
  String get gender => 'Genere';
  @override
  String get nominee => 'Candidato';
  @override
  String get name => 'Nome';
  @override
  String get optional => 'Opzionale';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileIt nomineeMobile =
      _TranslationsCommonNomineeMobileIt._(_root);
  @override
  String get emergencyContact => 'Contatto di emergenza';
  @override
  String get relation => 'Relazione';
  @override
  String get relationWith => '${_root.common.relation} Con';
  @override
  String get relationWithYou => '${_root.common.relationWith} Con te';
  @override
  String get company => 'Azienda';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Luogo di lavoro';
  @override
  String get officePhoneNo => 'Numero di telefono dell\'ufficio';
  @override
  String get officeMobileNo => 'Ufficio ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Veicolo';
  @override
  late final _TranslationsCommonVehiclesInfoIt vehiclesInfo =
      _TranslationsCommonVehiclesInfoIt._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Tipo';
  @override
  late final _TranslationsCommonVehicleRegistrationNoIt vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoIt._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Marca';
  @override
  String get rentProperty => 'Affitta proprietà';
  @override
  String get propertyDetails => 'Dettagli della proprietà';
  @override
  String get propertyId => 'ID proprietà';
  @override
  String get propertyType => 'Tipo di proprietà';
  @override
  String get propertyName => 'Nome della proprietà';
  @override
  String get paymentDetails => 'Dettagli di pagamento';
  @override
  String get monthlyRent => 'Affitto mensile';
  @override
  String get thisMonthPayment => 'Pagamento questo mese';
  @override
  String get totalPaidRent => 'Affitto totale pagato';
  @override
  String get dueRent => 'Affitto dovuto';
  @override
  String get rentStartDate => 'Affitto ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Affitto ${_root.common.endDate}';
  @override
  String get status => 'Stato';
  @override
  String get rentAgreementPdf => 'PDF contratto di affitto';
  @override
  String get noFile => 'Nessun file';
  @override
  String get tenantImageOp => 'Immagine inquilino ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Aggiungi nuovi veicoli';
  @override
  String get uploadNidPassport => 'Carica NID/Passaporto';
  @override
  String get nidPassportUploadNote =>
      'Saranno accettate solo immagini di tipo file. Limite di dimensione del file fino a 2,5 MB.';
  @override
  String get search => 'Cerca';
  @override
  String get sortBy => 'Ordina per';
  @override
  String get subscription => 'Abbonamento';
  @override
  String get downloading => 'Download in corso...';
  @override
  String get downloadSuccess => 'File scaricato con successo!';
  @override
  String get addPropertyBannerTitle =>
      'Stai cercando di affittare la tua proprietà?';
  @override
  String get application => 'Applicazione';
  @override
  String get tenantHasPaidDeposit => 'L\'inquilino ha pagato la caparra.';
  @override
  String get askProcessingRentApplication =>
      'Sei sicuro di elaborare questa richiesta per la proprietà in affitto?';
  @override
  String get dateAndTime => 'Data e ora';
  @override
  String get applicationDetails => 'Dettagli dell\'applicazione';
  @override
  String get depositStatus => 'Stato della caparra';
  @override
  String get uploadRentAgreement => 'Carica contratto di affitto';
  @override
  String get uploadFilePDF => 'Carica file (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Si prega di selezionare un file del documento di accordo.';
  @override
  String get landlordRentAgreementPDF =>
      'PDF contratto di affitto del locatore';
  @override
  String get tenantRentAgreementPDF =>
      'PDF contratto di affitto dell\'inquilino';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Approva l\'applicazione solo dopo che l\'inquilino ha effettuato un pagamento di deposito.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Motivo del rifiuto';
  @override
  String get youveRejectedThisApplication =>
      'Hai rifiutato questa applicazione';
  @override
  String get landlordDetails => 'Dettagli del locatore';
  @override
  String get landlordName => 'Nome del locatore';
  @override
  String get downloadRentAgreement => 'Scarica contratto di affitto';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Accetta '),
      toc('Termini e Condizioni'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Si prega di scaricare e leggere l\'accordo. Si prega di inviare l\'accordo firmato al locatore tramite WhatsApp o e-mail.',
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
        'Il locatore approva la domanda quando l\'inquilino paga la caparra, le utenze e il pagamento dell\'affitto anticipato di un mese.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Contratto di affitto (PDF) '),
          complete('Contratto completo'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota : '),
      note(
        'Il locatore approva la domanda quando l\'inquilino paga la caparra, le utenze e il pagamento dell\'affitto anticipato di un mese.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Elenco delle applicazioni';
  @override
  String get viewDetails => 'Visualizza dettagli';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Casa';
  @override
  String get dashboard => 'Cruscotto';
  @override
  String get tenants => 'Inquilini';
  @override
  String get maintenance => 'Manutenzione';
  @override
  String get maintenanceList => 'Elenco manutenzioni';
  @override
  String get maintenanceReport => 'Rapporto di manutenzione';
  @override
  String get labor => 'Manodopera';
  @override
  String get applications => 'Applicazioni';
  @override
  String get rentInvitation => 'Invito di affitto';
  @override
  String get payment => 'Pagamento';
  @override
  String get rentPayment => 'Pagamento dell\'affitto';
  @override
  String get depositUtilityPayment => 'Pagamento di deposito e utenze';
  @override
  String get refundRequest => 'Richiesta di rimborso';
  @override
  String get withdrawRequest => 'Richiesta di prelievo';
  @override
  String get myProperty => 'La mia proprietà';
  @override
  String get myRent => 'Il mio affitto';
  @override
  String get wishlist => 'Lista dei desideri';
  @override
  String get properties => 'Proprietà';
  @override
  String get allProperties => 'Tutte le proprietà';
  @override
  String get totalPropery => 'Proprietà totale';
  @override
  String get occupied => 'Occupato';
  @override
  String get vacant => 'Vacante';
  @override
  String get accounting => 'Contabilità';
  @override
  String get totalIncome => 'Reddito totale';
  @override
  String get totalExpense => 'Spesa totale';
  @override
  String get currentBalance => 'Saldo attuale';
  @override
  String get totalWithdrawal => 'Totale (Prelievo)';
  @override
  String get totalProperties => 'Totale proprietà';
  @override
  String get totalTenant => 'Totale inquilini';
  @override
  String get totalRentPaid => 'Affitto totale pagato';
  @override
  String get totalRentDue => 'Affitto totale dovuto';
  @override
  String get totalApplication => 'Totale applicazioni';
  @override
  String get pendingApplication => 'Applicazione in sospeso';
  @override
  String get processingApplication => 'Applicazione in elaborazione';
  @override
  String get approveApplication => 'Approva applicazione';
  @override
  String get rejectApplication => 'Rifiuta applicazione';
  @override
  String get maintenanceCost => 'Costo di manutenzione';
  @override
  String get transactionSummary => 'Riepilogo delle transazioni';
  @override
  String get maintenanceRequest => 'Richiesta di manutenzione';
  @override
  String get notifications => 'Notifiche';
  @override
  String get myProperties => 'Le mie proprietà';
  @override
  String get recommendationProperties => 'Proprietà raccomandate';
  @override
  String get laborList => 'Elenco della manodopera';
  @override
  String get addLabor => 'Aggiungi manodopera';
  @override
  String get laborDetails => 'Dettagli della manodopera';
  @override
  String get laborSalary => 'Stipendio della manodopera';
  @override
  String get editLabor => 'Modifica manodopera';
  @override
  String get addNewLabor => 'Aggiungi nuova manodopera';
  @override
  String get enterAmount => 'Inserisci importo';
  @override
  String get maintenanceDetails => 'Dettagli di manutenzione';
  @override
  String get laborName => 'Nome della manodopera';
  @override
  String get comment => 'Commento';
  @override
  String get image => 'Immagine';
  @override
  String get complete => 'Completa';
  @override
  String get details => 'Dettagli';
  @override
  String get title => 'Titolo';
  @override
  String get date => 'Data';
  @override
  String get reason => 'Motivo';
  @override
  String get edit => 'Modifica';
  @override
  String get property => 'Proprietà';
  @override
  String get completeYourProfile => 'Completa il tuo profilo';
  @override
  String get profileImage => 'Immagine del profilo';
  @override
  String get imagePickHint =>
      'Solo immagini JPEG e PNG con una dimensione massima di 120x120 pixel.';
  @override
  String get invoiceId => 'ID fattura';
  @override
  String get depositAmount => 'Importo del deposito';
  @override
  String get landlordPhone => 'Telefono del locatore';
  @override
  String get rentalAdvance => 'Affitto (Anticipo)';
  @override
  String get totalAmount => 'Importo totale';
  @override
  String get rentalAmount => 'Importo dell\'affitto';
  @override
  String get adminCharge => 'Spesa amministrativa';
  @override
  String get editAccount => 'Modifica account';
  @override
  String get addNewAccount => 'Aggiungi nuovo account';
  @override
  String get transactionId => 'ID transazione';
  @override
  String get transactionType => 'Tipo di transazione';
  @override
  String get requestDate => 'Data richiesta';
  @override
  String get amount => 'Importo';
  @override
  String get fee => 'Commissione';
  @override
  String get paymentStatus => 'Stato del pagamento';
  @override
  String get generatedTime => 'Ora generata';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Questo è un rapporto generato dal sistema di '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Cronologia prelievi';
  @override
  String get history => 'Cronologia';
  @override
  String get withdrawAmount => 'Importo prelievo';
  @override
  String get availableBalance => 'Saldo disponibile';
  @override
  String get withdrawCharge => 'Commissione di prelievo';
  @override
  String get paymentMethod => 'Metodo di pagamento';
  @override
  String get requestSendSuccess => 'Richiesta inviata con successo!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Ricevuta di pagamento inviata con successo.';
  @override
  String get refundReason => 'Motivo del rimborso';
  @override
  String get note => 'Nota';
  @override
  String get refundReceiveSuccess => 'Rimborso ricevuto con successo.';
  @override
  String get downloadPaymentReceipt => 'Scarica ricevuta di pagamento';
  @override
  String get invoice => 'Fattura';
  @override
  String get selectPropertyToSeeInvoice =>
      'Seleziona la proprietà per visualizzare il numero di fattura...';
  @override
  String get bankAccName => 'Nome del conto bancario';
  @override
  String get bankName => 'Nome della banca';
  @override
  String get bankAccNum => 'Numero di conto bancario';
  @override
  String get thankYou => 'Grazie!';
  @override
  String get basicInfo => 'Informazioni di base';
  @override
  String get descriptionPricing => 'Descrizione e prezzi';
  @override
  String get contact => 'Contatto';
  @override
  String get photos => 'Foto';
  @override
  String get successfullySubmitted => 'Inviato con successo!';
  @override
  String get editProperty => 'Modifica proprietà';
  @override
  String get addNewProperty => 'Aggiungi nuova proprietà';
  @override
  String get propertyManageRequestSuccess =>
      'Il tuo annuncio è stato inviato per la revisione.';
  @override
  String get postAnotherProperty => 'Pubblica un\'altra proprietà';
  @override
  String get browseYourProperty => 'Sfoglia la tua proprietà';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Passaggio '),
      step,
      const TextSpan(text: ' di '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Cosa vorresti pubblicare?';
  @override
  String get category => 'Categoria';
  @override
  String get invalidCategory => 'Categoria non valida';
  @override
  String get unitNumber => 'Numero unità';
  @override
  String get sqft => 'mq';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'La dimensione della proprietà deve essere maggiore di zero';
  @override
  String get whatAreTheFacility => 'Quali sono i servizi?';
  @override
  String get whatAreTheAmenity => 'Quali sono i comfort?';
  @override
  String get parkingLot => 'Parcheggio';
  @override
  String get houseType => 'Tipo di casa';
  @override
  String get value => 'Valore';
  @override
  String get unitLotSize => 'Dimensione unità / lotto';
  @override
  String get landSize => 'Dimensione del terreno';
  @override
  String get acres => 'acro/i';
  @override
  String get roomSize => 'Dimensione della stanza';
  @override
  String get askTenantPreference =>
      'Qual è la tua preferenza per l\'inquilino?';
  @override
  String get couple => 'Coppia';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Descrivi il ${propertyType}';
  @override
  String get adTitle => 'Titolo dell\'annuncio';
  @override
  String get minimumRentalPeriod => 'Periodo minimo di affitto';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Numero';
  @override
  String get hideOrDisplayEmail => 'Nascondi o visualizza l\'indirizzo email';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Grazie per aver pubblicato su ${appName}!';
  @override
  String get propertyList => 'Elenco proprietà';
  @override
  String get newInviteRent => 'Nuovo invito all\'affitto';
  @override
  String get rentAgreement => 'Contratto di affitto';
  @override
  String get rentDetails => 'Dettagli dell\'affitto';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note('Si prega di attendere che l\'inquilino accetti l\'invito.'),
    ],
  );
  @override
  String get rent => 'Affitto';
  @override
  String get editTenant => 'Modifica inquilino';
  @override
  String get addNewTenant => 'Aggiungi nuovo inquilino';
  @override
  String get shareInstallLink => 'Condividi link di installazione';
  @override
  String get tenantList => 'Elenco inquilini';
  @override
  String get editMaintenanceRequest => 'Modifica richiesta di manutenzione';
  @override
  String get addNewMaintenance => 'Aggiungi nuova manutenzione';
  @override
  String get landlordId => 'ID locatore';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota '),
      note(
        'Il tuo accordo è in fase di revisione. Si prega di attendere che il locatore approvi l\'affitto.',
      ),
    ],
  );
  @override
  String get editReview => 'Modifica recensione';
  @override
  String get writeAReview => 'Scrivi una recensione';
  @override
  String get selectRating => 'Seleziona valutazione';
  @override
  String get enterYourOpinion => 'Inserisci la tua opinione';
  @override
  String get askToEnterReviewMsg =>
      'Si prega di inserire un messaggio di recensione';
  @override
  String get pressBackAgainToExit => 'Premere di nuovo indietro per uscire.';
  @override
  String get selectPaymentMethod => 'Seleziona metodo di pagamento';
  @override
  String get filter => 'Filtro';
  @override
  String get perMonth => '/1 Mese';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Cerca qualsiasi cosa in ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsIt implements TranslationsExceptionsEn {
  _TranslationsExceptionsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Qualcosa è andato storto, riprova';
  @override
  String get noNidPassport => 'Nessuna immagine NID/Passaporto fornita.';
  @override
  String get noRentPropertyFound =>
      'Nessuna proprietà in affitto trovata per questo inquilino.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Nessuna proprietà trovata!\nRiprova con parole chiave diverse';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Nessun piano di abbonamento trovato!\nRicarica la pagina e riprova.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Informazioni ${dataType} non valide! Ricarica la pagina e riprova.';
  @override
  String get invalidDownloadUrl => 'URL di download non valido!';
  @override
  String failedToSaveFile({required String error}) =>
      'Impossibile salvare il file! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Errore durante l\'apertura del file! ${error}';
  @override
  String get noVehicleInfoProvided =>
      'Nessuna informazione sul veicolo fornita.';
  @override
  String get yourApplicationRejected => 'La tua domanda è stata rifiutata';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintIt
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintIt._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintIt noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintIt._(_root);
  @override
  String get noImageProvided => 'Nessuna immagine fornita';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundIt
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundIt._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Nessun deposito di garanzia trovato!\nSi prega di visualizzare i depositi di garanzia quando disponibili';
  @override
  String get noRentPaymentFound =>
      'Nessun pagamento di affitto trovato!\nSi prega di visualizzare i pagamenti di affitto quando disponibili';
  @override
  String get transactionSummaryApiException =>
      'Impossibile ottenere il riepilogo delle transazioni.';
  @override
  String get noWithdrawRequestFound =>
      'Nessuna richiesta trovata!\nRiprova a creare una richiesta di prelievo per visualizzarla qui.';
  @override
  String get withdrawRequestNotApproved =>
      'Questa richiesta di prelievo non è stata approvata!.';
  @override
  String get nonZeroError =>
      'Si prega di inserire un importo valido maggiore di zero.';
  @override
  String minAmountError({required String minValue}) =>
      'L\'importo deve essere di almeno ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'L\'importo non deve superare ${maxValue}.';
  @override
  String get selectPaymentMethodHint =>
      'Si prega di selezionare prima un metodo di pagamento.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundIt
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundIt._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintIt refundRequestHint =
      _TranslationsExceptionsRefundRequestHintIt._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Si prega di selezionare il numero di ${value}';
  @override
  String get invalidDateRange => 'Intervallo di date non valido.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} deve essere maggiore di zero.';
  @override
  late final _TranslationsExceptionsEditPropertyIt editProperty =
      _TranslationsExceptionsEditPropertyIt._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationIt rentInvitation =
      _TranslationsExceptionsRentInvitationIt._(_root);
  @override
  String get notenantFoundList =>
      'Nessun inquilino!\nRiprova ad aggiungere un inquilino per visualizzarlo qui.';
  @override
  String get noFeaturesProvided => 'Nessuna funzionalità fornita.';
  @override
  String get noNotificationFound =>
      'Nessuna notifica disponibile.\nPuoi visualizzare la tua notifica qui quando disponibile.';
}

// Path: prompt
class _TranslationsPromptIt implements TranslationsPromptEn {
  _TranslationsPromptIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutIt logout = _TranslationsPromptLogoutIt._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationIt application =
      _TranslationsPromptApplicationIt._(_root);
  @override
  late final _TranslationsPromptLaborIt labor = _TranslationsPromptLaborIt._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestIt maintenanceRequest =
      _TranslationsPromptMaintenanceRequestIt._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodIt withdrawMethod =
      _TranslationsPromptWithdrawMethodIt._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesIt unsavedChanges =
      _TranslationsPromptUnsavedChangesIt._(_root);
  @override
  late final _TranslationsPromptPropertyIt property =
      _TranslationsPromptPropertyIt._(_root);
  @override
  late final _TranslationsPromptRentInvitationIt rentInvitation =
      _TranslationsPromptRentInvitationIt._(_root);
  @override
  late final _TranslationsPromptSessionExpiredIt sessionExpired =
      _TranslationsPromptSessionExpiredIt._(_root);
  @override
  late final _TranslationsPromptNoInternetIt noInternet =
      _TranslationsPromptNoInternetIt._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerIt permissionHandler =
      _TranslationsPromptPermissionHandlerIt._(_root);
  @override
  late final _TranslationsPromptImagePickerIt imagePicker =
      _TranslationsPromptImagePickerIt._(_root);
  @override
  late final _TranslationsPromptVerificationDialogIt verificationDialog =
      _TranslationsPromptVerificationDialogIt._(_root);
  @override
  late final _TranslationsPromptNotificationIt notification =
      _TranslationsPromptNotificationIt._(_root);
}

// Path: form
class _TranslationsFormIt implements TranslationsFormEn {
  _TranslationsFormIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameIt fullName =
      _TranslationsFormFullNameIt._(_root);
  @override
  late final _TranslationsFormEmailIt email = _TranslationsFormEmailIt._(_root);
  @override
  late final _TranslationsFormPasswordIt password =
      _TranslationsFormPasswordIt._(_root);
  @override
  late final _TranslationsFormConfirmPasswordIt confirmPassword =
      _TranslationsFormConfirmPasswordIt._(_root);
  @override
  late final _TranslationsFormMobileNumberIt mobileNumber =
      _TranslationsFormMobileNumberIt._(_root);
  @override
  late final _TranslationsFormAddress1It address1 =
      _TranslationsFormAddress1It._(_root);
  @override
  late final _TranslationsFormAddress2It address2 =
      _TranslationsFormAddress2It._(_root);
  @override
  late final _TranslationsFormPostalCodeIt postalCode =
      _TranslationsFormPostalCodeIt._(_root);
  @override
  late final _TranslationsFormCityIt city = _TranslationsFormCityIt._(_root);
  @override
  late final _TranslationsFormStateIt state = _TranslationsFormStateIt._(_root);
  @override
  late final _TranslationsFormCountryIt country = _TranslationsFormCountryIt._(
    _root,
  );
  @override
  late final _TranslationsFormOtpIt otp = _TranslationsFormOtpIt._(_root);
  @override
  late final _TranslationsFormTitleIt title = _TranslationsFormTitleIt._(_root);
  @override
  late final _TranslationsFormDateIt date = _TranslationsFormDateIt._(_root);
  @override
  late final _TranslationsFormReasonIt reason = _TranslationsFormReasonIt._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodIt withdrawMethod =
      _TranslationsFormWithdrawMethodIt._(_root);
  @override
  late final _TranslationsFormFileFieldIt fileField =
      _TranslationsFormFileFieldIt._(_root);
  @override
  late final _TranslationsFormNoteIt note = _TranslationsFormNoteIt._(_root);
  @override
  late final _TranslationsFormGenderIt gender = _TranslationsFormGenderIt._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldIt anyField =
      _TranslationsFormAnyFieldIt._(_root);
  @override
  late final _TranslationsFormAnyDropdownIt anyDropdown =
      _TranslationsFormAnyDropdownIt._(_root);
}

// Path: action
class _TranslationsActionIt implements TranslationsActionEn {
  _TranslationsActionIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Avanti';
  @override
  String get getStarted => 'Inizia';
  @override
  String get skip => 'Salta';
  @override
  String get select => 'Seleziona';
  @override
  String get save => 'Salva';
  @override
  String get signIn => 'Accedi';
  @override
  String get signUp => 'Iscriviti';
  @override
  String get kContinue => 'Continua';
  @override
  String get clearAll => 'Cancella tutto';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Invia';
  @override
  String get pay => 'Paga';
  @override
  String get remove => 'Rimuovi';
  @override
  String get goBack => 'Torna indietro';
  @override
  String get buyNow => 'Acquista ora';
  @override
  String get no => 'No';
  @override
  String get open => 'Apri';
  @override
  String get addProperty => 'Aggiungi proprietà';
  @override
  String get process => 'Elabora';
  @override
  String get approve => 'Approva';
  @override
  String get reject => 'Rifiuta';
  @override
  String get viewRent => 'Visualizza affitto';
  @override
  String get openNavigationMenu => 'Apri il menu di navigazione';
  @override
  String get seeAll => 'Vedi tutto';
  @override
  String get update => 'Aggiorna';
  @override
  String get printTransaction => 'Stampa transazione';
  @override
  String get payoutRequest => 'Richiesta di pagamento';
  @override
  String get addNew => '+ Aggiungi nuovo';
  @override
  String get sendRequest => 'Invia richiesta';
  @override
  String get print => 'Stampa';
  @override
  String get requestForRefund => 'Richiesta di rimborso';
  @override
  String get previous => 'Precedente';
  @override
  String get delete => 'Elimina';
  @override
  String get applyProperty => 'Applica proprietà';
  @override
  String get viewApplication => 'Visualizza applicazione';
  @override
  String get inviteTenant => 'Invita inquilino';
  @override
  String get inviteRent => 'Invita affitto';
  @override
  String get cancel => 'Annulla';
  @override
  String get accept => 'Accetta';
  @override
  String get submit => 'Invia';
  @override
  String get yes => 'Sì';
  @override
  String get okay => 'Okay';
  @override
  String get confirm => 'Conferma';
  @override
  String get apply => 'Applica';
  @override
  String get reset => 'Ripristina';
  @override
  String get retry => 'Riprova';
  @override
  String get viewAll => 'Visualizza tutto';
}

// Path: pages
class _TranslationsPagesIt implements TranslationsPagesEn {
  _TranslationsPagesIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageIt language =
      _TranslationsPagesLanguageIt._(_root);
  @override
  late final _TranslationsPagesOnboardIt onboard =
      _TranslationsPagesOnboardIt._(_root);
  @override
  late final _TranslationsPagesSignInIt signIn = _TranslationsPagesSignInIt._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordIt forgotPassword =
      _TranslationsPagesForgotPasswordIt._(_root);
  @override
  late final _TranslationsPagesOtpVerificationIt otpVerification =
      _TranslationsPagesOtpVerificationIt._(_root);
  @override
  late final _TranslationsPagesResetPasswordIt resetPassword =
      _TranslationsPagesResetPasswordIt._(_root);
  @override
  late final _TranslationsPagesSignUpIt signUp = _TranslationsPagesSignUpIt._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeIt welcome =
      _TranslationsPagesWelcomeIt._(_root);
  @override
  late final _TranslationsPagesAboutUsIt aboutUs =
      _TranslationsPagesAboutUsIt._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsIt termsAndConditions =
      _TranslationsPagesTermsAndConditionsIt._(_root);
  @override
  late final _TranslationsPagesNotificationListIt notificationList =
      _TranslationsPagesNotificationListIt._(_root);
  @override
  late final _TranslationsPagesContactUsIt contactUs =
      _TranslationsPagesContactUsIt._(_root);
  @override
  late final _TranslationsPagesCancelRentingIt cancelRenting =
      _TranslationsPagesCancelRentingIt._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsIt invoiceDetails =
      _TranslationsPagesInvoiceDetailsIt._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentIt offlinePayment =
      _TranslationsPagesOfflinePaymentIt._(_root);
  @override
  late final _TranslationsPagesPaymentStatusIt paymentStatus =
      _TranslationsPagesPaymentStatusIt._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsIt propertyDetails =
      _TranslationsPagesPropertyDetailsIt._(_root);
  @override
  late final _TranslationsPagesSearchIt search = _TranslationsPagesSearchIt._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanIt subscriptionPlan =
      _TranslationsPagesSubscriptionPlanIt._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportIt
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportIt._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsIt implements TranslationsEnumsEn {
  _TranslationsEnumsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusIt propertyStatus =
      _TranslationsEnumsPropertyStatusIt._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeIt propertyType =
      _TranslationsEnumsPropertyTypeIt._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusIt applicationStatus =
      _TranslationsEnumsApplicationStatusIt._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusIt myRentStatus =
      _TranslationsEnumsMyRentStatusIt._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusIt maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusIt._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeIt tenantProfileType =
      _TranslationsEnumsTenantProfileTypeIt._(_root);
  @override
  late final _TranslationsEnumsTenantTypeIt tenantType =
      _TranslationsEnumsTenantTypeIt._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusIt paymentStatus =
      _TranslationsEnumsPaymentStatusIt._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsIt paymentOptions =
      _TranslationsEnumsPaymentOptionsIt._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeIt paymentType =
      _TranslationsEnumsPaymentTypeIt._(_root);
  @override
  late final _TranslationsEnumsGenderIt gender = _TranslationsEnumsGenderIt._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationIt ecRelation =
      _TranslationsEnumsEcRelationIt._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeIt vehicleType =
      _TranslationsEnumsVehicleTypeIt._(_root);
  @override
  late final _TranslationsEnumsSortByIt sortBy = _TranslationsEnumsSortByIt._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeIt residentialType =
      _TranslationsEnumsResidentialTypeIt._(_root);
  @override
  late final _TranslationsEnumsFloorRangeIt floorRange =
      _TranslationsEnumsFloorRangeIt._(_root);
  @override
  late final _TranslationsEnumsFurnishingsIt furnishings =
      _TranslationsEnumsFurnishingsIt._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeIt commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeIt._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeIt landPropertyType =
      _TranslationsEnumsLandPropertyTypeIt._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeIt residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeIt._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodIt minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodIt._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterIt dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterIt._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileIt
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoIt
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informazioni sui veicoli';
  @override
  String get optional => 'Informazioni sui veicoli (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoIt
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Numero di targa del veicolo';
  @override
  String get short => 'Numero di targa';
  @override
  String get alt => 'Numero di targa';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintIt
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Nessuna applicazione trovata!\n${subject} verrà visualizzata qui quando disponibile.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsIt subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsIt._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintIt
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Nessuna proprietà trovata!\nRiprova ad aggiungere una proprietà per visualizzarla qui.';
  @override
  String get tenantRecommended =>
      'Nessuna proprietà consigliata trovata\nRiprova più tardi.';
  @override
  String get tenantAllProperty =>
      'Proprietà non disponibili\nRiprova più tardi.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundIt
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nessuna manutenzione ${status} trovata.';
  @override
  String get tenant =>
      'Nessuna manutenzione trovata! Puoi creare una richiesta di manutenzione per visualizzarla qui.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundIt
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nessuna richiesta di rimborso ${status} trovata!\nPuoi visualizzare la richiesta di rimborso qui quando disponibile.';
  @override
  String get tenant =>
      'Nessuna richiesta di rimborso trovata!\nPuoi creare una richiesta di rimborso per visualizzarla qui.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintIt
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'L\'inquilino approverà il rimborso quando avrà ricevuto i soldi indietro';
  @override
  String get tenantReqSuccess =>
      'Esamineremo la richiesta di rimborso e la approveremo entro 24 ore.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyIt
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'La proprietà in affitto sta cambiando. Deve essere valida (effettiva) solo per il pagamento dell\'affitto del prossimo mese.';
  @override
  String get deleteOnRent =>
      'La tua proprietà è già affittata dall\'inquilino. Impossibile eliminarla fino a quando non rimuovi prima l\'inquilino';
  @override
  String get alreayRented =>
      'Questa proprietà è già affittata. Riprova più tardi.\nOppure puoi contattare il locatore per maggiori informazioni.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationIt
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Nessun invito di affitto trovato!\nRiprova a creare un invito di affitto per visualizzarlo qui.';
  @override
  String get tenantNoRentInvitation =>
      'Nessun invito di affitto trovato!\nPuoi visualizzare l\'invito di affitto qui quando disponibile.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutIt implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Sei sicuro di voler uscire?';
}

// Path: prompt.application
class _TranslationsPromptApplicationIt
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Perché stai rifiutando questa domanda?';
  @override
  late final _TranslationsPromptApplicationApplicationSentIt applicationSent =
      _TranslationsPromptApplicationApplicationSentIt._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborIt implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteIt delete =
      _TranslationsPromptLaborDeleteIt._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestIt
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Perché questa richiesta viene rifiutata?';
  @override
  String get processTitle =>
      'Sei sicuro di elaborare questa richiesta di manutenzione?';
  @override
  String get completeTitle => 'Lavoro completato?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodIt
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Eliminare il metodo di prelievo?';
  @override
  String get deleteDescription =>
      'Sei sicuro di voler eliminare questo metodo di prelievo?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesIt
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sei sicuro di voler tornare indietro?';
  @override
  String get message => 'I campi modificati non verranno salvati!';
}

// Path: prompt.property
class _TranslationsPromptPropertyIt implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteIt delete =
      _TranslationsPromptPropertyDeleteIt._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationIt
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveIt
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveIt._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptIt tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptIt._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredIt
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sessione scaduta';
  @override
  String get message =>
      'La tua sessione è scaduta. Effettua di nuovo l\'accesso';
  @override
  String get action => 'Accedi';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetIt
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nessuna connessione Internet';
  @override
  String get message =>
      'Verifica la tua connessione di rete mobile Wi-Fi e riprova';
  @override
  String get action => 'Riprova';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerIt
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Permesso richiesto!';
  @override
  String get message =>
      'Devi concedere i permessi nelle impostazioni dell\'app. Vuoi aprire le impostazioni ora?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerIt
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Seleziona opzione';
  @override
  String get gallery => 'Galleria';
  @override
  String get camera => 'Fotocamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogIt
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifica la tua email';
  @override
  String get message => 'Abbiamo inviato un\'email con codice di verifica';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} a ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationIt
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Cancellare le notifiche?';
  @override
  String get clearMessage =>
      'Sei sicuro di voler cancellare tutte le notifiche?';
}

// Path: form.fullName
class _TranslationsFormFullNameIt implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Inserisci ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsIt errors =
      _TranslationsFormFullNameErrorsIt._(_root);
}

// Path: form.email
class _TranslationsFormEmailIt implements TranslationsFormEmailEn {
  _TranslationsFormEmailIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Inserisci il tuo ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsIt errors =
      _TranslationsFormEmailErrorsIt._(_root);
}

// Path: form.password
class _TranslationsFormPasswordIt implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsIt errors =
      _TranslationsFormPasswordErrorsIt._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordIt
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Conferma ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsIt errors =
      _TranslationsFormConfirmPasswordErrorsIt._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberIt
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsIt errors =
      _TranslationsFormMobileNumberErrorsIt._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1It implements TranslationsFormAddress1En {
  _TranslationsFormAddress1It._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Numero civico e nome della via';
  @override
  late final _TranslationsFormAddress1ErrorsIt errors =
      _TranslationsFormAddress1ErrorsIt._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2It implements TranslationsFormAddress2En {
  _TranslationsFormAddress2It._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Appartamento, suite, unità, ecc.';
  @override
  late final _TranslationsFormAddress2ErrorsIt errors =
      _TranslationsFormAddress2ErrorsIt._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeIt implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Inserisci ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsIt errors =
      _TranslationsFormPostalCodeErrorsIt._(_root);
}

// Path: form.city
class _TranslationsFormCityIt implements TranslationsFormCityEn {
  _TranslationsFormCityIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Inserisci il nome della ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsIt errors =
      _TranslationsFormCityErrorsIt._(_root);
}

// Path: form.state
class _TranslationsFormStateIt implements TranslationsFormStateEn {
  _TranslationsFormStateIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Inserisci il nome della ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsIt errors =
      _TranslationsFormStateErrorsIt._(_root);
}

// Path: form.country
class _TranslationsFormCountryIt implements TranslationsFormCountryEn {
  _TranslationsFormCountryIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Seleziona ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsIt errors =
      _TranslationsFormCountryErrorsIt._(_root);
}

// Path: form.otp
class _TranslationsFormOtpIt implements TranslationsFormOtpEn {
  _TranslationsFormOtpIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsIt errors =
      _TranslationsFormOtpErrorsIt._(_root);
}

// Path: form.title
class _TranslationsFormTitleIt implements TranslationsFormTitleEn {
  _TranslationsFormTitleIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Titolo';
  @override
  String get hint => 'Inserisci titolo';
  @override
  late final _TranslationsFormTitleErrorsIt errors =
      _TranslationsFormTitleErrorsIt._(_root);
}

// Path: form.date
class _TranslationsFormDateIt implements TranslationsFormDateEn {
  _TranslationsFormDateIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Seleziona ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsIt errors =
      _TranslationsFormDateErrorsIt._(_root);
}

// Path: form.reason
class _TranslationsFormReasonIt implements TranslationsFormReasonEn {
  _TranslationsFormReasonIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Motivo';
  @override
  String get hint => 'Inserisci motivo';
  @override
  late final _TranslationsFormReasonErrorsIt errors =
      _TranslationsFormReasonErrorsIt._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodIt
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Seleziona ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsIt errors =
      _TranslationsFormWithdrawMethodErrorsIt._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldIt implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Carica ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsIt errors =
      _TranslationsFormFileFieldErrorsIt._(_root);
}

// Path: form.note
class _TranslationsFormNoteIt implements TranslationsFormNoteEn {
  _TranslationsFormNoteIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Inserisci ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsIt errors =
      _TranslationsFormNoteErrorsIt._(_root);
}

// Path: form.gender
class _TranslationsFormGenderIt implements TranslationsFormGenderEn {
  _TranslationsFormGenderIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Seleziona ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsIt errors =
      _TranslationsFormGenderErrorsIt._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldIt implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Inserisci ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsIt errors =
      _TranslationsFormAnyFieldErrorsIt._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownIt implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Seleziona ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsIt errors =
      _TranslationsFormAnyDropdownErrorsIt._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageIt implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardIt implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataIt onboardData =
      _TranslationsPagesOnboardOnboardDataIt._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInIt implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bentornato';
  @override
  String get subtitle => 'Accedi ora per iniziare un viaggio straordinario.';
  @override
  late final _TranslationsPagesSignInExtraIt extra =
      _TranslationsPagesSignInExtraIt._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordIt
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Password dimenticata';
  @override
  String get subtitle =>
      'Inserisci il tuo indirizzo email per recuperare la password.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationIt
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifica';
  @override
  String subtitle({required String email}) =>
      'Un codice PIN di 4 cifre è stato inviato al tuo indirizzo email. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraIt extra =
      _TranslationsPagesOtpVerificationExtraIt._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordIt
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Reset password';
  @override
  String get subtitle =>
      'Reimposta la password per recuperarla e accedere al tuo account';
  @override
  late final _TranslationsPagesResetPasswordExtraIt extra =
      _TranslationsPagesResetPasswordExtraIt._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpIt implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Crea un account';
  @override
  String get subtitle => 'Iscriviti ora per iniziare un viaggio straordinario';
  @override
  late final _TranslationsPagesSignUpExtraIt extra =
      _TranslationsPagesSignUpExtraIt._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeIt implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Chi sei?';
  @override
  String get subtitle => 'Seleziona l\'opzione qui sotto.';
  @override
  late final _TranslationsPagesWelcomeExtraIt extra =
      _TranslationsPagesWelcomeExtraIt._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsIt implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsIt
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListIt
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Notifiche';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsIt implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraIt extra =
      _TranslationsPagesContactUsExtraIt._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingIt
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Perché stai ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormIt form =
      _TranslationsPagesCancelRentingFormIt._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsIt
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentIt
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pagamento offline';
  @override
  late final _TranslationsPagesOfflinePaymentFormIt form =
      _TranslationsPagesOfflinePaymentFormIt._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraIt extra =
      _TranslationsPagesOfflinePaymentExtraIt._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusIt
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessIt success =
      _TranslationsPagesPaymentStatusSuccessIt._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailIt fail =
      _TranslationsPagesPaymentStatusFailIt._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsIt
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraIt extra =
      _TranslationsPagesPropertyDetailsExtraIt._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchIt implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Cerca';
  @override
  late final _TranslationsPagesSearchExtraIt extra =
      _TranslationsPagesSearchExtraIt._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanIt
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Scegli il tuo piano';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraIt extra =
      _TranslationsPagesSubscriptionPlanExtraIt._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportIt
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Costo totale di manutenzione: '),
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
class _TranslationsEnumsPropertyStatusIt
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Tutte le proprietà';
  @override
  String get pending => 'In attesa';
  @override
  String get active => 'Attivo';
  @override
  String get inactive => 'Inattivo';
  @override
  String get rejected => 'Rifiutato';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeIt
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Appartamento/Condominio';
  @override
  String get house => 'Casa';
  @override
  String get commercialProperty => 'Immobile commerciale';
  @override
  String get land => 'Terreno';
  @override
  String get room => 'Stanza';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusIt
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Tutti';
  @override
  String get pending => 'In attesa';
  @override
  String get processing => 'In elaborazione';
  @override
  String get approved => 'Approvato';
  @override
  String get rejected => 'Rifiutato';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusIt
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'In attesa';
  @override
  String get processing => 'In elaborazione';
  @override
  String get active => 'Attivo';
  @override
  String get expired => 'Scaduto';
  @override
  String get cancelled => 'Annullato';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusIt
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'In attesa';
  @override
  String get processing => 'In elaborazione';
  @override
  String get rejected => 'Rifiutato';
  @override
  String get completed => 'Completato';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeIt
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privato (Individuale)';
  @override
  String get company => 'Azienda';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeIt implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Nuovo inquilino';
  @override
  String get activeTenant => 'Inquilino attivo';
  @override
  String get expiredTenant => 'Inquilino scaduto';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusIt
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Tutti';
  @override
  String get pending => 'In attesa';
  @override
  String get paid => 'Pagato';
  @override
  String get unpaid => 'Non pagato';
  @override
  String get rejected => 'Rifiutato';
  @override
  String get refund => 'Rimborso';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsIt
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Pagamento online';
  @override
  String get offlinePayment => 'Pagamento offline';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeIt
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Deposito cauzionale';
  @override
  String get rentPayment => 'Pagamento dell\'affitto';
  @override
  String get subscription => 'Abbonamento';
}

// Path: enums.gender
class _TranslationsEnumsGenderIt implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Maschio';
  @override
  String get female => 'Femmina';
  @override
  String get other => 'Altro';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationIt implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Moglie';
  @override
  String get parent => 'Genitore';
  @override
  String get friend => 'Amico';
  @override
  String get brother => 'Fratello';
  @override
  String get sister => 'Sorella';
  @override
  String get child => 'Figlio/a';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeIt
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Auto';
  @override
  String get motorcycles => 'Motociclette';
  @override
  String get lorry => 'Camion';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByIt implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Dal più basso al più alto';
  @override
  String get highToLow => 'Dal più alto al più basso';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeIt
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Appartamento';
  @override
  String get apartment => 'Appartamento';
  @override
  String get condominium => 'Condominio';
  @override
  String get serviceResidence => 'Residenza di servizio';
  @override
  String get studio => 'Monolocale';
  @override
  String get duplex => 'Duplex';
  @override
  String get townhouseCondo => 'Casa a schiera/Condominio';
  @override
  String get others => 'Altri';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeIt implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Alto';
  @override
  String get medium => 'Medio';
  @override
  String get low => 'Basso';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsIt
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Completamente arredato';
  @override
  String get partiallyFurnished => 'Parzialmente arredato';
  @override
  String get notFurnished => 'Non arredato';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeIt
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Ufficio';
  @override
  String get retailSpace => 'Spazio commerciale';
  @override
  String get shopLot => 'Negozio';
  @override
  String get warehouseFactory => 'Magazzino / Fabbrica';
  @override
  String get hotelResort => 'Hotel / Resort';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Altri';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeIt
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Residenziale';
  @override
  String get industrial => 'Industriale';
  @override
  String get agricultural => 'Agricolo';
  @override
  String get commercial => 'Commerciale';
  @override
  String get mixedDevelopment => 'Sviluppo misto';
  @override
  String get others => 'Altri';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeIt
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Condominio / Residenza di servizio / Attico';
  @override
  String get apartment => 'Appartamento';
  @override
  String get house => 'Case';
  @override
  String get shoplot => 'Negozio';
  @override
  String get sharing => 'Condivisione di una casa / appartamento';
  @override
  String get others => 'Altri';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodIt
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 Mesi';
  @override
  String get oneYear => '1 Anno';
  @override
  String get oneAndHalfYears => '1,5 Anni';
  @override
  String get twoYears => '2 Anni';
  @override
  String get twoAndHalfYears => '2,5 Anni';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterIt
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Giornaliero';
  @override
  String get weekly => 'Settimanale';
  @override
  String get monthly => 'Mensile';
  @override
  String get yearly => 'Annuale';
  @override
  String get custom => 'Personalizzato';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsIt
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'La tua applicazione';
  @override
  String get landlord => 'Domanda dell\'inquilino';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentIt
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Domanda inviata con successo!';
  @override
  String get sucessDescription =>
      'Puoi vedere questa domanda nella tua lista di domande';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteIt
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Eliminare la manodopera?';
  @override
  String get description => 'Sei sicuro di voler eliminare questa manodopera?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteIt
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Eliminare la proprietà?';
  @override
  String get message => 'Sei sicuro di voler eliminare questa proprietà?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveIt
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sei sicuro di approvare questo affitto?';
  @override
  String get description =>
      'Assicurati di aver esaminato l\'accordo firmato dall\'inquilino.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptIt
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sei sicuro di accettare questo invito?';
  @override
  String get description =>
      'Assicurati di aver scaricato il file pdf dell\'accordo!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsIt
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire il proprio ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsIt implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire il proprio indirizzo ${_root.common.email}';
  @override
  String get invalid => '⦸ Email non valido, riprova';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsIt
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire la propria ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'La password deve essere di almeno ${count} caratteri!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsIt
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire la propria ${_root.common.password}';
  @override
  String get notMatched => 'La password di conferma non corrisponde!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsIt
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire il proprio ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsIt
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire il proprio ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsIt
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire il proprio ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsIt
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire il proprio ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsIt implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire il nome della propria ${_root.common.city}.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsIt implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire il nome della propria ${_root.common.state}.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsIt
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di selezionare il proprio ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsIt implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Si prega di inserire l\'otp.';
  @override
  String get invalid => 'Si prega di inserire un otp corretto.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsIt implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Si prega di inserire il titolo';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsIt implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Si prega di selezionare ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsIt
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Si prega di inserire il motivo';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsIt
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di selezionare ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsIt
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Si prega di selezionare ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsIt implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Si prega di inserire ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsIt
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Si prega di selezionare ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsIt
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Si prega di inserire ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Si prega di inserire un @form.anyField.label valido';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsIt
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Si prega di selezionare ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid =>
      'Si prega di selezionare un @form.anyDropdown.label valido';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataIt
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1It data1 =
      _TranslationsPagesOnboardOnboardDataData1It._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2It data2 =
      _TranslationsPagesOnboardOnboardDataData2It._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3It data3 =
      _TranslationsPagesOnboardOnboardDataData3It._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraIt
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Ricordami';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Non hai un account? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraIt
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendIt codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendIt._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraIt
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogIt dialog =
      _TranslationsPagesResetPasswordExtraDialogIt._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraIt
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Hai un account? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraIt
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Gestisci le tue proprietà';
  @override
  String get tenantTag => 'Accedi al tuo account di affitto';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraIt
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Messaggio...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormIt
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonIt reason =
      _TranslationsPagesCancelRentingFormReasonIt._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormIt
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteIt paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteIt._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraIt
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Importo da pagare: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Nome del titolare del conto';
  @override
  String get accountNumber => 'Numero di conto';
  @override
  String get swiftCode => 'Codice Swift';
  @override
  String get branch => 'Filiale';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Scegli file in formato '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' o solo '),
      fileType('DOC'),
      const TextSpan(text: '. Dimensione file '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessIt
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Visualizza fattura';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Esamineremo il pagamento e lo approveremo entro 24 ore.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailIt
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Riprova';
  @override
  String get title => 'Oops! Pagamento fallito';
  @override
  String get description =>
      'La tua transazione è fallita a causa di un errore tecnico.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraIt
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

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
      const TextSpan(text: 'Caratteristiche '),
      fa('(Facilities & Amenities)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Seleziona il periodo di affitto';
  @override
  String get writeAReview => '+ Scrivi una recensione';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraIt
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Cerca trame, appartamenti, stanze...';
  @override
  String get noRecentSearch => 'Non hai ricerche recenti.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraIt
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Pagamento dell\'abbonamento avvenuto con successo.\nOra puoi accedere alle funzionalità in abbonamento.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1It
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1It._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Trova la tua proprietà';
  @override
  String get description =>
      'Abbiamo reso semplicissimo trovare un posto che si adatti alla tua vita, che si tratti di una stanza, un appartamento o una casa.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2It
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2It._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Appartamento in città';
  @override
  String get description =>
      'Ti facciamo risparmiare tempo abbinandoti rapidamente alla proprietà perfetta prima che sparisca, così puoi goderti la tua nuova casa o pubblicare la tua gratuitamente.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3It
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3It._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'La tua casa confortevole';
  @override
  String get description =>
      'Se stai cercando un posto in cui vivere, dai un\'occhiata alle nostre case in affitto. Abbiamo una vasta gamma di case tra cui scegliere in tutto il paese.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendIt
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Codice inviato tra ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Invia di nuovo il codice'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogIt
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Modificata con successo!';
  @override
  String get subtitle =>
      'Accedi con la tua nuova password.\n Reindirizzamento all\'accesso...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonIt
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Scrivi il motivo';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsIt errors =
      _TranslationsPagesCancelRentingFormReasonErrorsIt._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteIt
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Nota di pagamento (${_root.common.optional})';
  @override
  String get hint => 'Inserisci del testo...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsIt
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsIt._(this._root);

  final TranslationsIt _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Si prega di inserire il motivo della cancellazione dell\'affitto';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsIt {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profilo';
      case 'common.language':
        return 'Lingua';
      case 'common.subscriptionPlan':
        return 'Piano di abbonamento';
      case 'common.contactUs':
        return 'Contattaci';
      case 'common.termsAndConditions':
        return 'Termini e Condizioni';
      case 'common.aboutUs':
        return 'Chi siamo';
      case 'common.logout':
        return 'Esci';
      case 'common.editProfile':
        return 'Modifica Profilo';
      case 'common.fullName':
        return 'Nome completo';
      case 'common.email':
        return 'Email';
      case 'common.mobileNumber':
        return 'Numero di cellulare';
      case 'common.address':
        return 'Indirizzo';
      case 'common.postalCode':
        return 'Codice postale';
      case 'common.city':
        return 'Città';
      case 'common.country':
        return 'Paese';
      case 'common.state':
        return 'Stato';
      case 'common.password':
        return 'Password';
      case 'common.forgotPassword':
        return 'Password dimenticata';
      case 'common.tenant':
        return 'Inquilino';
      case 'common.landlord':
        return 'Proprietario';
      case 'common.cancelRenting':
        return 'Annulla affitto';
      case 'common.startDate':
        return 'Data di inizio';
      case 'common.endDate':
        return 'Data di fine';
      case 'common.fromDate':
        return 'Da data';
      case 'common.toDate':
        return 'A data';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Elenco banche';
      case 'common.withdrawMethod':
        return 'Metodo di prelievo';
      case 'common.uploadPaymentReceipt':
        return 'Carica ricevuta di pagamento';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Il pagamento richiede l\'approvazione manuale da parte dell\'amministratore entro',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 ore.'),
          ],
        );
      case 'common.reviews':
        return 'Recensioni';
      case 'common.description':
        return 'Descrizione';
      case 'common.about':
        return 'Informazioni su';
      case 'common.propertyTypes':
        return 'Tipi di proprietà';
      case 'common.features':
        return 'Caratteristiche';
      case 'common.floorPlans':
        return 'Piante dei piani';
      case 'common.buildingDetails':
        return 'Dettagli dell\'edificio';
      case 'common.buildingName':
        return 'Nome dell\'edificio';
      case 'common.propertyAddress':
        return 'Indirizzo della proprietà';
      case 'common.completionYear':
        return 'Anno di completamento';
      case 'common.lotNumber':
        return 'Numero di lotto';
      case 'common.residentialType':
        return 'Tipo di residenza';
      case 'common.furnishings':
        return 'Arredamento';
      case 'common.floorRange':
        return 'Piano';
      case 'common.bedrooms':
        return 'Camere da letto';
      case 'common.bathrooms':
        return 'Bagni';
      case 'common.propertySize':
        return 'Dimensione della proprietà';
      case 'common.rentalPeriod':
        return 'Periodo di affitto';
      case 'common.securityDeposit':
        return 'Deposito cauzionale';
      case 'common.utilityBill':
        return 'Bolletta delle utenze';
      case 'common.facilities':
        return 'Servizi';
      case 'common.amenities':
        return 'Servizi';
      case 'common.expiringReason':
        return 'Motivo di scadenza';
      case 'common.tenantDetails':
        return 'Dettagli inquilino';
      case 'common.typeOfTenant':
        return 'Tipo di inquilino';
      case 'common.tenantName':
        return 'Nome inquilino';
      case 'common.nidPassport':
        return 'NID/Passaporto';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID inquilino';
      case 'common.dateOfBirth':
        return 'Data di nascita';
      case 'common.gender':
        return 'Genere';
      case 'common.nominee':
        return 'Candidato';
      case 'common.name':
        return 'Nome';
      case 'common.optional':
        return 'Opzionale';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Contatto di emergenza';
      case 'common.relation':
        return 'Relazione';
      case 'common.relationWith':
        return '${_root.common.relation} Con';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} Con te';
      case 'common.company':
        return 'Azienda';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Luogo di lavoro';
      case 'common.officePhoneNo':
        return 'Numero di telefono dell\'ufficio';
      case 'common.officeMobileNo':
        return 'Ufficio ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Veicolo';
      case 'common.vehiclesInfo.plain':
        return 'Informazioni sui veicoli';
      case 'common.vehiclesInfo.optional':
        return 'Informazioni sui veicoli (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Tipo';
      case 'common.vehicleRegistrationNo.normal':
        return 'Numero di targa del veicolo';
      case 'common.vehicleRegistrationNo.short':
        return 'Numero di targa';
      case 'common.vehicleRegistrationNo.alt':
        return 'Numero di targa';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Marca';
      case 'common.rentProperty':
        return 'Affitta proprietà';
      case 'common.propertyDetails':
        return 'Dettagli della proprietà';
      case 'common.propertyId':
        return 'ID proprietà';
      case 'common.propertyType':
        return 'Tipo di proprietà';
      case 'common.propertyName':
        return 'Nome della proprietà';
      case 'common.paymentDetails':
        return 'Dettagli di pagamento';
      case 'common.monthlyRent':
        return 'Affitto mensile';
      case 'common.thisMonthPayment':
        return 'Pagamento questo mese';
      case 'common.totalPaidRent':
        return 'Affitto totale pagato';
      case 'common.dueRent':
        return 'Affitto dovuto';
      case 'common.rentStartDate':
        return 'Affitto ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Affitto ${_root.common.endDate}';
      case 'common.status':
        return 'Stato';
      case 'common.rentAgreementPdf':
        return 'PDF contratto di affitto';
      case 'common.noFile':
        return 'Nessun file';
      case 'common.tenantImageOp':
        return 'Immagine inquilino ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Aggiungi nuovi veicoli';
      case 'common.uploadNidPassport':
        return 'Carica NID/Passaporto';
      case 'common.nidPassportUploadNote':
        return 'Saranno accettate solo immagini di tipo file. Limite di dimensione del file fino a 2,5 MB.';
      case 'common.search':
        return 'Cerca';
      case 'common.sortBy':
        return 'Ordina per';
      case 'common.subscription':
        return 'Abbonamento';
      case 'common.downloading':
        return 'Download in corso...';
      case 'common.downloadSuccess':
        return 'File scaricato con successo!';
      case 'common.addPropertyBannerTitle':
        return 'Stai cercando di affittare la tua proprietà?';
      case 'common.application':
        return 'Applicazione';
      case 'common.tenantHasPaidDeposit':
        return 'L\'inquilino ha pagato la caparra.';
      case 'common.askProcessingRentApplication':
        return 'Sei sicuro di elaborare questa richiesta per la proprietà in affitto?';
      case 'common.dateAndTime':
        return 'Data e ora';
      case 'common.applicationDetails':
        return 'Dettagli dell\'applicazione';
      case 'common.depositStatus':
        return 'Stato della caparra';
      case 'common.uploadRentAgreement':
        return 'Carica contratto di affitto';
      case 'common.uploadFilePDF':
        return 'Carica file (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Si prega di selezionare un file del documento di accordo.';
      case 'common.landlordRentAgreementPDF':
        return 'PDF contratto di affitto del locatore';
      case 'common.tenantRentAgreementPDF':
        return 'PDF contratto di affitto dell\'inquilino';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Approva l\'applicazione solo dopo che l\'inquilino ha effettuato un pagamento di deposito.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Motivo del rifiuto';
      case 'common.youveRejectedThisApplication':
        return 'Hai rifiutato questa applicazione';
      case 'common.landlordDetails':
        return 'Dettagli del locatore';
      case 'common.landlordName':
        return 'Nome del locatore';
      case 'common.downloadRentAgreement':
        return 'Scarica contratto di affitto';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Accetta '),
            toc('Termini e Condizioni'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Si prega di scaricare e leggere l\'accordo. Si prega di inviare l\'accordo firmato al locatore tramite WhatsApp o e-mail.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Il locatore approva la domanda quando l\'inquilino paga la caparra, le utenze e il pagamento dell\'affitto anticipato di un mese.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Contratto di affitto (PDF) '),
            complete('Contratto completo'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota : '),
            note(
              'Il locatore approva la domanda quando l\'inquilino paga la caparra, le utenze e il pagamento dell\'affitto anticipato di un mese.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Elenco delle applicazioni';
      case 'common.viewDetails':
        return 'Visualizza dettagli';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Casa';
      case 'common.dashboard':
        return 'Cruscotto';
      case 'common.tenants':
        return 'Inquilini';
      case 'common.maintenance':
        return 'Manutenzione';
      case 'common.maintenanceList':
        return 'Elenco manutenzioni';
      case 'common.maintenanceReport':
        return 'Rapporto di manutenzione';
      case 'common.labor':
        return 'Manodopera';
      case 'common.applications':
        return 'Applicazioni';
      case 'common.rentInvitation':
        return 'Invito di affitto';
      case 'common.payment':
        return 'Pagamento';
      case 'common.rentPayment':
        return 'Pagamento dell\'affitto';
      case 'common.depositUtilityPayment':
        return 'Pagamento di deposito e utenze';
      case 'common.refundRequest':
        return 'Richiesta di rimborso';
      case 'common.withdrawRequest':
        return 'Richiesta di prelievo';
      case 'common.myProperty':
        return 'La mia proprietà';
      case 'common.myRent':
        return 'Il mio affitto';
      case 'common.wishlist':
        return 'Lista dei desideri';
      case 'common.properties':
        return 'Proprietà';
      case 'common.allProperties':
        return 'Tutte le proprietà';
      case 'common.totalPropery':
        return 'Proprietà totale';
      case 'common.occupied':
        return 'Occupato';
      case 'common.vacant':
        return 'Vacante';
      case 'common.accounting':
        return 'Contabilità';
      case 'common.totalIncome':
        return 'Reddito totale';
      case 'common.totalExpense':
        return 'Spesa totale';
      case 'common.currentBalance':
        return 'Saldo attuale';
      case 'common.totalWithdrawal':
        return 'Totale (Prelievo)';
      case 'common.totalProperties':
        return 'Totale proprietà';
      case 'common.totalTenant':
        return 'Totale inquilini';
      case 'common.totalRentPaid':
        return 'Affitto totale pagato';
      case 'common.totalRentDue':
        return 'Affitto totale dovuto';
      case 'common.totalApplication':
        return 'Totale applicazioni';
      case 'common.pendingApplication':
        return 'Applicazione in sospeso';
      case 'common.processingApplication':
        return 'Applicazione in elaborazione';
      case 'common.approveApplication':
        return 'Approva applicazione';
      case 'common.rejectApplication':
        return 'Rifiuta applicazione';
      case 'common.maintenanceCost':
        return 'Costo di manutenzione';
      case 'common.transactionSummary':
        return 'Riepilogo delle transazioni';
      case 'common.maintenanceRequest':
        return 'Richiesta di manutenzione';
      case 'common.notifications':
        return 'Notifiche';
      case 'common.myProperties':
        return 'Le mie proprietà';
      case 'common.recommendationProperties':
        return 'Proprietà raccomandate';
      case 'common.laborList':
        return 'Elenco della manodopera';
      case 'common.addLabor':
        return 'Aggiungi manodopera';
      case 'common.laborDetails':
        return 'Dettagli della manodopera';
      case 'common.laborSalary':
        return 'Stipendio della manodopera';
      case 'common.editLabor':
        return 'Modifica manodopera';
      case 'common.addNewLabor':
        return 'Aggiungi nuova manodopera';
      case 'common.enterAmount':
        return 'Inserisci importo';
      case 'common.maintenanceDetails':
        return 'Dettagli di manutenzione';
      case 'common.laborName':
        return 'Nome della manodopera';
      case 'common.comment':
        return 'Commento';
      case 'common.image':
        return 'Immagine';
      case 'common.complete':
        return 'Completa';
      case 'common.details':
        return 'Dettagli';
      case 'common.title':
        return 'Titolo';
      case 'common.date':
        return 'Data';
      case 'common.reason':
        return 'Motivo';
      case 'common.edit':
        return 'Modifica';
      case 'common.property':
        return 'Proprietà';
      case 'common.completeYourProfile':
        return 'Completa il tuo profilo';
      case 'common.profileImage':
        return 'Immagine del profilo';
      case 'common.imagePickHint':
        return 'Solo immagini JPEG e PNG con una dimensione massima di 120x120 pixel.';
      case 'common.invoiceId':
        return 'ID fattura';
      case 'common.depositAmount':
        return 'Importo del deposito';
      case 'common.landlordPhone':
        return 'Telefono del locatore';
      case 'common.rentalAdvance':
        return 'Affitto (Anticipo)';
      case 'common.totalAmount':
        return 'Importo totale';
      case 'common.rentalAmount':
        return 'Importo dell\'affitto';
      case 'common.adminCharge':
        return 'Spesa amministrativa';
      case 'common.editAccount':
        return 'Modifica account';
      case 'common.addNewAccount':
        return 'Aggiungi nuovo account';
      case 'common.transactionId':
        return 'ID transazione';
      case 'common.transactionType':
        return 'Tipo di transazione';
      case 'common.requestDate':
        return 'Data richiesta';
      case 'common.amount':
        return 'Importo';
      case 'common.fee':
        return 'Commissione';
      case 'common.paymentStatus':
        return 'Stato del pagamento';
      case 'common.generatedTime':
        return 'Ora generata';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text: 'Questo è un rapporto generato dal sistema di ',
            ),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Cronologia prelievi';
      case 'common.history':
        return 'Cronologia';
      case 'common.withdrawAmount':
        return 'Importo prelievo';
      case 'common.availableBalance':
        return 'Saldo disponibile';
      case 'common.withdrawCharge':
        return 'Commissione di prelievo';
      case 'common.paymentMethod':
        return 'Metodo di pagamento';
      case 'common.requestSendSuccess':
        return 'Richiesta inviata con successo!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Ricevuta di pagamento inviata con successo.';
      case 'common.refundReason':
        return 'Motivo del rimborso';
      case 'common.note':
        return 'Nota';
      case 'common.refundReceiveSuccess':
        return 'Rimborso ricevuto con successo.';
      case 'common.downloadPaymentReceipt':
        return 'Scarica ricevuta di pagamento';
      case 'common.invoice':
        return 'Fattura';
      case 'common.selectPropertyToSeeInvoice':
        return 'Seleziona la proprietà per visualizzare il numero di fattura...';
      case 'common.bankAccName':
        return 'Nome del conto bancario';
      case 'common.bankName':
        return 'Nome della banca';
      case 'common.bankAccNum':
        return 'Numero di conto bancario';
      case 'common.thankYou':
        return 'Grazie!';
      case 'common.basicInfo':
        return 'Informazioni di base';
      case 'common.descriptionPricing':
        return 'Descrizione e prezzi';
      case 'common.contact':
        return 'Contatto';
      case 'common.photos':
        return 'Foto';
      case 'common.successfullySubmitted':
        return 'Inviato con successo!';
      case 'common.editProperty':
        return 'Modifica proprietà';
      case 'common.addNewProperty':
        return 'Aggiungi nuova proprietà';
      case 'common.propertyManageRequestSuccess':
        return 'Il tuo annuncio è stato inviato per la revisione.';
      case 'common.postAnotherProperty':
        return 'Pubblica un\'altra proprietà';
      case 'common.browseYourProperty':
        return 'Sfoglia la tua proprietà';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Passaggio '),
                step,
                const TextSpan(text: ' di '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Cosa vorresti pubblicare?';
      case 'common.category':
        return 'Categoria';
      case 'common.invalidCategory':
        return 'Categoria non valida';
      case 'common.unitNumber':
        return 'Numero unità';
      case 'common.sqft':
        return 'mq';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'La dimensione della proprietà deve essere maggiore di zero';
      case 'common.whatAreTheFacility':
        return 'Quali sono i servizi?';
      case 'common.whatAreTheAmenity':
        return 'Quali sono i comfort?';
      case 'common.parkingLot':
        return 'Parcheggio';
      case 'common.houseType':
        return 'Tipo di casa';
      case 'common.value':
        return 'Valore';
      case 'common.unitLotSize':
        return 'Dimensione unità / lotto';
      case 'common.landSize':
        return 'Dimensione del terreno';
      case 'common.acres':
        return 'acro/i';
      case 'common.roomSize':
        return 'Dimensione della stanza';
      case 'common.askTenantPreference':
        return 'Qual è la tua preferenza per l\'inquilino?';
      case 'common.couple':
        return 'Coppia';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            'Descrivi il ${propertyType}';
      case 'common.adTitle':
        return 'Titolo dell\'annuncio';
      case 'common.minimumRentalPeriod':
        return 'Periodo minimo di affitto';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Numero';
      case 'common.hideOrDisplayEmail':
        return 'Nascondi o visualizza l\'indirizzo email';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Grazie per aver pubblicato su ${appName}!';
      case 'common.propertyList':
        return 'Elenco proprietà';
      case 'common.newInviteRent':
        return 'Nuovo invito all\'affitto';
      case 'common.rentAgreement':
        return 'Contratto di affitto';
      case 'common.rentDetails':
        return 'Dettagli dell\'affitto';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note('Si prega di attendere che l\'inquilino accetti l\'invito.'),
          ],
        );
      case 'common.rent':
        return 'Affitto';
      case 'common.editTenant':
        return 'Modifica inquilino';
      case 'common.addNewTenant':
        return 'Aggiungi nuovo inquilino';
      case 'common.shareInstallLink':
        return 'Condividi link di installazione';
      case 'common.tenantList':
        return 'Elenco inquilini';
      case 'common.editMaintenanceRequest':
        return 'Modifica richiesta di manutenzione';
      case 'common.addNewMaintenance':
        return 'Aggiungi nuova manutenzione';
      case 'common.landlordId':
        return 'ID locatore';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota '),
            note(
              'Il tuo accordo è in fase di revisione. Si prega di attendere che il locatore approvi l\'affitto.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Modifica recensione';
      case 'common.writeAReview':
        return 'Scrivi una recensione';
      case 'common.selectRating':
        return 'Seleziona valutazione';
      case 'common.enterYourOpinion':
        return 'Inserisci la tua opinione';
      case 'common.askToEnterReviewMsg':
        return 'Si prega di inserire un messaggio di recensione';
      case 'common.pressBackAgainToExit':
        return 'Premere di nuovo indietro per uscire.';
      case 'common.selectPaymentMethod':
        return 'Seleziona metodo di pagamento';
      case 'common.filter':
        return 'Filtro';
      case 'common.perMonth':
        return '/1 Mese';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Cerca qualsiasi cosa in ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Qualcosa è andato storto, riprova';
      case 'exceptions.noNidPassport':
        return 'Nessuna immagine NID/Passaporto fornita.';
      case 'exceptions.noRentPropertyFound':
        return 'Nessuna proprietà in affitto trovata per questo inquilino.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Nessuna proprietà trovata!\nRiprova con parole chiave diverse';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Nessun piano di abbonamento trovato!\nRicarica la pagina e riprova.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Informazioni ${dataType} non valide! Ricarica la pagina e riprova.';
      case 'exceptions.invalidDownloadUrl':
        return 'URL di download non valido!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Impossibile salvare il file! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Errore durante l\'apertura del file! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Nessuna informazione sul veicolo fornita.';
      case 'exceptions.yourApplicationRejected':
        return 'La tua domanda è stata rifiutata';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Nessuna applicazione trovata!\n${subject} verrà visualizzata qui quando disponibile.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'La tua applicazione';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Domanda dell\'inquilino';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Nessuna proprietà trovata!\nRiprova ad aggiungere una proprietà per visualizzarla qui.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Nessuna proprietà consigliata trovata\nRiprova più tardi.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Proprietà non disponibili\nRiprova più tardi.';
      case 'exceptions.noImageProvided':
        return 'Nessuna immagine fornita';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Nessuna manutenzione ${status} trovata.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Nessuna manutenzione trovata! Puoi creare una richiesta di manutenzione per visualizzarla qui.';
      case 'exceptions.noDepositFound':
        return 'Nessun deposito di garanzia trovato!\nSi prega di visualizzare i depositi di garanzia quando disponibili';
      case 'exceptions.noRentPaymentFound':
        return 'Nessun pagamento di affitto trovato!\nSi prega di visualizzare i pagamenti di affitto quando disponibili';
      case 'exceptions.transactionSummaryApiException':
        return 'Impossibile ottenere il riepilogo delle transazioni.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Nessuna richiesta trovata!\nRiprova a creare una richiesta di prelievo per visualizzarla qui.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Questa richiesta di prelievo non è stata approvata!.';
      case 'exceptions.nonZeroError':
        return 'Si prega di inserire un importo valido maggiore di zero.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'L\'importo deve essere di almeno ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'L\'importo non deve superare ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Si prega di selezionare prima un metodo di pagamento.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Nessuna richiesta di rimborso ${status} trovata!\nPuoi visualizzare la richiesta di rimborso qui quando disponibile.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Nessuna richiesta di rimborso trovata!\nPuoi creare una richiesta di rimborso per visualizzarla qui.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'L\'inquilino approverà il rimborso quando avrà ricevuto i soldi indietro';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Esamineremo la richiesta di rimborso e la approveremo entro 24 ore.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Si prega di selezionare il numero di ${value}';
      case 'exceptions.invalidDateRange':
        return 'Intervallo di date non valido.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} deve essere maggiore di zero.';
      case 'exceptions.editProperty.rentalChange':
        return 'La proprietà in affitto sta cambiando. Deve essere valida (effettiva) solo per il pagamento dell\'affitto del prossimo mese.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'La tua proprietà è già affittata dall\'inquilino. Impossibile eliminarla fino a quando non rimuovi prima l\'inquilino';
      case 'exceptions.editProperty.alreayRented':
        return 'Questa proprietà è già affittata. Riprova più tardi.\nOppure puoi contattare il locatore per maggiori informazioni.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Nessun invito di affitto trovato!\nRiprova a creare un invito di affitto per visualizzarlo qui.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Nessun invito di affitto trovato!\nPuoi visualizzare l\'invito di affitto qui quando disponibile.';
      case 'exceptions.notenantFoundList':
        return 'Nessun inquilino!\nRiprova ad aggiungere un inquilino per visualizzarlo qui.';
      case 'exceptions.noFeaturesProvided':
        return 'Nessuna funzionalità fornita.';
      case 'exceptions.noNotificationFound':
        return 'Nessuna notifica disponibile.\nPuoi visualizzare la tua notifica qui quando disponibile.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Sei sicuro di voler uscire?';
      case 'prompt.application.rejectTitle':
        return 'Perché stai rifiutando questa domanda?';
      case 'prompt.application.applicationSent.successfully':
        return 'Domanda inviata con successo!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Puoi vedere questa domanda nella tua lista di domande';
      case 'prompt.labor.delete.title':
        return 'Eliminare la manodopera?';
      case 'prompt.labor.delete.description':
        return 'Sei sicuro di voler eliminare questa manodopera?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Perché questa richiesta viene rifiutata?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Sei sicuro di elaborare questa richiesta di manutenzione?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Lavoro completato?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Eliminare il metodo di prelievo?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Sei sicuro di voler eliminare questo metodo di prelievo?';
      case 'prompt.unsavedChanges.title':
        return 'Sei sicuro di voler tornare indietro?';
      case 'prompt.unsavedChanges.message':
        return 'I campi modificati non verranno salvati!';
      case 'prompt.property.delete.title':
        return 'Eliminare la proprietà?';
      case 'prompt.property.delete.message':
        return 'Sei sicuro di voler eliminare questa proprietà?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Sei sicuro di approvare questo affitto?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Assicurati di aver esaminato l\'accordo firmato dall\'inquilino.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Sei sicuro di accettare questo invito?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Assicurati di aver scaricato il file pdf dell\'accordo!';
      case 'prompt.sessionExpired.title':
        return 'Sessione scaduta';
      case 'prompt.sessionExpired.message':
        return 'La tua sessione è scaduta. Effettua di nuovo l\'accesso';
      case 'prompt.sessionExpired.action':
        return 'Accedi';
      case 'prompt.noInternet.title':
        return 'Nessuna connessione Internet';
      case 'prompt.noInternet.message':
        return 'Verifica la tua connessione di rete mobile Wi-Fi e riprova';
      case 'prompt.noInternet.action':
        return 'Riprova';
      case 'prompt.permissionHandler.title':
        return 'Permesso richiesto!';
      case 'prompt.permissionHandler.message':
        return 'Devi concedere i permessi nelle impostazioni dell\'app. Vuoi aprire le impostazioni ora?';
      case 'prompt.imagePicker.title':
        return 'Seleziona opzione';
      case 'prompt.imagePicker.gallery':
        return 'Galleria';
      case 'prompt.imagePicker.camera':
        return 'Fotocamera';
      case 'prompt.verificationDialog.title':
        return 'Verifica la tua email';
      case 'prompt.verificationDialog.message':
        return 'Abbiamo inviato un\'email con codice di verifica';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} a ${email}';
      case 'prompt.notification.clearTitle':
        return 'Cancellare le notifiche?';
      case 'prompt.notification.clearMessage':
        return 'Sei sicuro di voler cancellare tutte le notifiche?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Inserisci ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Si prega di inserire il proprio ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Inserisci il tuo ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Si prega di inserire il proprio indirizzo ${_root.common.email}';
      case 'form.email.errors.invalid':
        return '⦸ Email non valido, riprova';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Si prega di inserire la propria ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'La password deve essere di almeno ${count} caratteri!';
      case 'form.confirmPassword.label':
        return 'Conferma ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Si prega di inserire la propria ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'La password di conferma non corrisponde!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Si prega di inserire il proprio ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Numero civico e nome della via';
      case 'form.address1.errors.required':
        return 'Si prega di inserire il proprio ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Appartamento, suite, unità, ecc.';
      case 'form.address2.errors.required':
        return 'Si prega di inserire il proprio ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Inserisci ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Si prega di inserire il proprio ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Inserisci il nome della ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Si prega di inserire il nome della propria ${_root.common.city}.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Inserisci il nome della ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Si prega di inserire il nome della propria ${_root.common.state}.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Seleziona ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Si prega di selezionare il proprio ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Si prega di inserire l\'otp.';
      case 'form.otp.errors.invalid':
        return 'Si prega di inserire un otp corretto.';
      case 'form.title.label':
        return 'Titolo';
      case 'form.title.hint':
        return 'Inserisci titolo';
      case 'form.title.errors.required':
        return 'Si prega di inserire il titolo';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Seleziona ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Si prega di selezionare ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Motivo';
      case 'form.reason.hint':
        return 'Inserisci motivo';
      case 'form.reason.errors.required':
        return 'Si prega di inserire il motivo';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Seleziona ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Si prega di selezionare ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Carica ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Si prega di selezionare ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Inserisci ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Si prega di inserire ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Seleziona ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Si prega di selezionare ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Inserisci ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Si prega di inserire ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Si prega di inserire un @form.anyField.label valido';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Seleziona ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Si prega di selezionare ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Si prega di selezionare un @form.anyDropdown.label valido';
      case 'action.next':
        return 'Avanti';
      case 'action.getStarted':
        return 'Inizia';
      case 'action.skip':
        return 'Salta';
      case 'action.select':
        return 'Seleziona';
      case 'action.save':
        return 'Salva';
      case 'action.signIn':
        return 'Accedi';
      case 'action.signUp':
        return 'Iscriviti';
      case 'action.kContinue':
        return 'Continua';
      case 'action.clearAll':
        return 'Cancella tutto';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Invia';
      case 'action.pay':
        return 'Paga';
      case 'action.remove':
        return 'Rimuovi';
      case 'action.goBack':
        return 'Torna indietro';
      case 'action.buyNow':
        return 'Acquista ora';
      case 'action.no':
        return 'No';
      case 'action.open':
        return 'Apri';
      case 'action.addProperty':
        return 'Aggiungi proprietà';
      case 'action.process':
        return 'Elabora';
      case 'action.approve':
        return 'Approva';
      case 'action.reject':
        return 'Rifiuta';
      case 'action.viewRent':
        return 'Visualizza affitto';
      case 'action.openNavigationMenu':
        return 'Apri il menu di navigazione';
      case 'action.seeAll':
        return 'Vedi tutto';
      case 'action.update':
        return 'Aggiorna';
      case 'action.printTransaction':
        return 'Stampa transazione';
      case 'action.payoutRequest':
        return 'Richiesta di pagamento';
      case 'action.addNew':
        return '+ Aggiungi nuovo';
      case 'action.sendRequest':
        return 'Invia richiesta';
      case 'action.print':
        return 'Stampa';
      case 'action.requestForRefund':
        return 'Richiesta di rimborso';
      case 'action.previous':
        return 'Precedente';
      case 'action.delete':
        return 'Elimina';
      case 'action.applyProperty':
        return 'Applica proprietà';
      case 'action.viewApplication':
        return 'Visualizza applicazione';
      case 'action.inviteTenant':
        return 'Invita inquilino';
      case 'action.inviteRent':
        return 'Invita affitto';
      case 'action.cancel':
        return 'Annulla';
      case 'action.accept':
        return 'Accetta';
      case 'action.submit':
        return 'Invia';
      case 'action.yes':
        return 'Sì';
      case 'action.okay':
        return 'Okay';
      case 'action.confirm':
        return 'Conferma';
      case 'action.apply':
        return 'Applica';
      case 'action.reset':
        return 'Ripristina';
      case 'action.retry':
        return 'Riprova';
      case 'action.viewAll':
        return 'Visualizza tutto';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Trova la tua proprietà';
      case 'pages.onboard.onboardData.data1.description':
        return 'Abbiamo reso semplicissimo trovare un posto che si adatti alla tua vita, che si tratti di una stanza, un appartamento o una casa.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Appartamento in città';
      case 'pages.onboard.onboardData.data2.description':
        return 'Ti facciamo risparmiare tempo abbinandoti rapidamente alla proprietà perfetta prima che sparisca, così puoi goderti la tua nuova casa o pubblicare la tua gratuitamente.';
      case 'pages.onboard.onboardData.data3.title':
        return 'La tua casa confortevole';
      case 'pages.onboard.onboardData.data3.description':
        return 'Se stai cercando un posto in cui vivere, dai un\'occhiata alle nostre case in affitto. Abbiamo una vasta gamma di case tra cui scegliere in tutto il paese.';
      case 'pages.signIn.title':
        return 'Bentornato';
      case 'pages.signIn.subtitle':
        return 'Accedi ora per iniziare un viaggio straordinario.';
      case 'pages.signIn.extra.rememberMe':
        return 'Ricordami';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Non hai un account? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Password dimenticata';
      case 'pages.forgotPassword.subtitle':
        return 'Inserisci il tuo indirizzo email per recuperare la password.';
      case 'pages.otpVerification.title':
        return 'Verifica';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Un codice PIN di 4 cifre è stato inviato al tuo indirizzo email. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Codice inviato tra ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Invia di nuovo il codice'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Reset password';
      case 'pages.resetPassword.subtitle':
        return 'Reimposta la password per recuperarla e accedere al tuo account';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Modificata con successo!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Accedi con la tua nuova password.\n Reindirizzamento all\'accesso...';
      case 'pages.signUp.title':
        return 'Crea un account';
      case 'pages.signUp.subtitle':
        return 'Iscriviti ora per iniziare un viaggio straordinario';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Hai un account? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Chi sei?';
      case 'pages.welcome.subtitle':
        return 'Seleziona l\'opzione qui sotto.';
      case 'pages.welcome.extra.landlordTag':
        return 'Gestisci le tue proprietà';
      case 'pages.welcome.extra.tenantTag':
        return 'Accedi al tuo account di affitto';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Notifiche';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Messaggio...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Perché stai ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Scrivi il motivo';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Si prega di inserire il motivo della cancellazione dell\'affitto';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Pagamento offline';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Nota di pagamento (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Inserisci del testo...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Importo da pagare: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Nome del titolare del conto';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Numero di conto';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Codice Swift';
      case 'pages.offlinePayment.extra.branch':
        return 'Filiale';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Scegli file in formato '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' o solo '),
            fileType('DOC'),
            const TextSpan(text: '. Dimensione file '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Visualizza fattura';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Esamineremo il pagamento e lo approveremo entro 24 ore.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Riprova';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Pagamento fallito';
      case 'pages.paymentStatus.fail.description':
        return 'La tua transazione è fallita a causa di un errore tecnico.';
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
            const TextSpan(text: 'Caratteristiche '),
            fa('(Facilities & Amenities)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Seleziona il periodo di affitto';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Scrivi una recensione';
      case 'pages.search.appbarTitle':
        return 'Cerca';
      case 'pages.search.extra.hint':
        return 'Cerca trame, appartamenti, stanze...';
      case 'pages.search.extra.noRecentSearch':
        return 'Non hai ricerche recenti.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Scegli il tuo piano';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Pagamento dell\'abbonamento avvenuto con successo.\nOra puoi accedere alle funzionalità in abbonamento.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Costo totale di manutenzione: '),
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
        return 'Tutte le proprietà';
      case 'enums.propertyStatus.pending':
        return 'In attesa';
      case 'enums.propertyStatus.active':
        return 'Attivo';
      case 'enums.propertyStatus.inactive':
        return 'Inattivo';
      case 'enums.propertyStatus.rejected':
        return 'Rifiutato';
      case 'enums.propertyType.apartmentCondominium':
        return 'Appartamento/Condominio';
      case 'enums.propertyType.house':
        return 'Casa';
      case 'enums.propertyType.commercialProperty':
        return 'Immobile commerciale';
      case 'enums.propertyType.land':
        return 'Terreno';
      case 'enums.propertyType.room':
        return 'Stanza';
      case 'enums.applicationStatus.all':
        return 'Tutti';
      case 'enums.applicationStatus.pending':
        return 'In attesa';
      case 'enums.applicationStatus.processing':
        return 'In elaborazione';
      case 'enums.applicationStatus.approved':
        return 'Approvato';
      case 'enums.applicationStatus.rejected':
        return 'Rifiutato';
      case 'enums.myRentStatus.pending':
        return 'In attesa';
      case 'enums.myRentStatus.processing':
        return 'In elaborazione';
      case 'enums.myRentStatus.active':
        return 'Attivo';
      case 'enums.myRentStatus.expired':
        return 'Scaduto';
      case 'enums.myRentStatus.cancelled':
        return 'Annullato';
      case 'enums.maintenanceStatus.pending':
        return 'In attesa';
      case 'enums.maintenanceStatus.processing':
        return 'In elaborazione';
      case 'enums.maintenanceStatus.rejected':
        return 'Rifiutato';
      case 'enums.maintenanceStatus.completed':
        return 'Completato';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privato (Individuale)';
      case 'enums.tenantProfileType.company':
        return 'Azienda';
      case 'enums.tenantType.newTenant':
        return 'Nuovo inquilino';
      case 'enums.tenantType.activeTenant':
        return 'Inquilino attivo';
      case 'enums.tenantType.expiredTenant':
        return 'Inquilino scaduto';
      case 'enums.paymentStatus.all':
        return 'Tutti';
      case 'enums.paymentStatus.pending':
        return 'In attesa';
      case 'enums.paymentStatus.paid':
        return 'Pagato';
      case 'enums.paymentStatus.unpaid':
        return 'Non pagato';
      case 'enums.paymentStatus.rejected':
        return 'Rifiutato';
      case 'enums.paymentStatus.refund':
        return 'Rimborso';
      case 'enums.paymentOptions.onlinePayment':
        return 'Pagamento online';
      case 'enums.paymentOptions.offlinePayment':
        return 'Pagamento offline';
      case 'enums.paymentType.securityDeposit':
        return 'Deposito cauzionale';
      case 'enums.paymentType.rentPayment':
        return 'Pagamento dell\'affitto';
      case 'enums.paymentType.subscription':
        return 'Abbonamento';
      case 'enums.gender.male':
        return 'Maschio';
      case 'enums.gender.female':
        return 'Femmina';
      case 'enums.gender.other':
        return 'Altro';
      case 'enums.ecRelation.wife':
        return 'Moglie';
      case 'enums.ecRelation.parent':
        return 'Genitore';
      case 'enums.ecRelation.friend':
        return 'Amico';
      case 'enums.ecRelation.brother':
        return 'Fratello';
      case 'enums.ecRelation.sister':
        return 'Sorella';
      case 'enums.ecRelation.child':
        return 'Figlio/a';
      case 'enums.vehicleType.car':
        return 'Auto';
      case 'enums.vehicleType.motorcycles':
        return 'Motociclette';
      case 'enums.vehicleType.lorry':
        return 'Camion';
      case 'enums.sortBy.lowToHigh':
        return 'Dal più basso al più alto';
      case 'enums.sortBy.highToLow':
        return 'Dal più alto al più basso';
      case 'enums.residentialType.flat':
        return 'Appartamento';
      case 'enums.residentialType.apartment':
        return 'Appartamento';
      case 'enums.residentialType.condominium':
        return 'Condominio';
      case 'enums.residentialType.serviceResidence':
        return 'Residenza di servizio';
      case 'enums.residentialType.studio':
        return 'Monolocale';
      case 'enums.residentialType.duplex':
        return 'Duplex';
      case 'enums.residentialType.townhouseCondo':
        return 'Casa a schiera/Condominio';
      case 'enums.residentialType.others':
        return 'Altri';
      case 'enums.floorRange.high':
        return 'Alto';
      case 'enums.floorRange.medium':
        return 'Medio';
      case 'enums.floorRange.low':
        return 'Basso';
      case 'enums.furnishings.fullyFurnished':
        return 'Completamente arredato';
      case 'enums.furnishings.partiallyFurnished':
        return 'Parzialmente arredato';
      case 'enums.furnishings.notFurnished':
        return 'Non arredato';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Ufficio';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Spazio commerciale';
      case 'enums.commercialPropertyType.shopLot':
        return 'Negozio';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Magazzino / Fabbrica';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Resort';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Altri';
      case 'enums.landPropertyType.residential':
        return 'Residenziale';
      case 'enums.landPropertyType.industrial':
        return 'Industriale';
      case 'enums.landPropertyType.agricultural':
        return 'Agricolo';
      case 'enums.landPropertyType.commercial':
        return 'Commerciale';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Sviluppo misto';
      case 'enums.landPropertyType.others':
        return 'Altri';
      case 'enums.residentPropertyType.condo':
        return 'Condominio / Residenza di servizio / Attico';
      case 'enums.residentPropertyType.apartment':
        return 'Appartamento';
      case 'enums.residentPropertyType.house':
        return 'Case';
      case 'enums.residentPropertyType.shoplot':
        return 'Negozio';
      case 'enums.residentPropertyType.sharing':
        return 'Condivisione di una casa / appartamento';
      case 'enums.residentPropertyType.others':
        return 'Altri';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 Mesi';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 Anno';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 Anni';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 Anni';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 Anni';
      case 'enums.dropdownDateFilter.daily':
        return 'Giornaliero';
      case 'enums.dropdownDateFilter.weekly':
        return 'Settimanale';
      case 'enums.dropdownDateFilter.monthly':
        return 'Mensile';
      case 'enums.dropdownDateFilter.yearly':
        return 'Annuale';
      case 'enums.dropdownDateFilter.custom':
        return 'Personalizzato';
      default:
        return null;
    }
  }
}
