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
class TranslationsRo implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsRo({
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
             locale: AppLocale.ro,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ro>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsRo _root = this; // ignore: unused_field

  @override
  TranslationsRo $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsRo(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonRo common = _TranslationsCommonRo._(_root);
  @override
  late final _TranslationsExceptionsRo exceptions = _TranslationsExceptionsRo._(
    _root,
  );
  @override
  late final _TranslationsPromptRo prompt = _TranslationsPromptRo._(_root);
  @override
  late final _TranslationsFormRo form = _TranslationsFormRo._(_root);
  @override
  late final _TranslationsActionRo action = _TranslationsActionRo._(_root);
  @override
  late final _TranslationsPagesRo pages = _TranslationsPagesRo._(_root);
  @override
  late final _TranslationsEnumsRo enums = _TranslationsEnumsRo._(_root);
}

// Path: common
class _TranslationsCommonRo implements TranslationsCommonEn {
  _TranslationsCommonRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Limba';
  @override
  String get subscriptionPlan => 'Plan de Abonament';
  @override
  String get contactUs => 'Contactați-ne';
  @override
  String get termsAndConditions => 'Termeni și Condiții';
  @override
  String get aboutUs => 'Despre Noi';
  @override
  String get logout => 'Deconectare';
  @override
  String get editProfile => 'Editați Profilul';
  @override
  String get fullName => 'Numele Complet';
  @override
  String get email => 'Email';
  @override
  String get mobileNumber => 'Număr de Telefon Mobil';
  @override
  String get address => 'Adresă';
  @override
  String get postalCode => 'Cod Poștal';
  @override
  String get city => 'Oraș';
  @override
  String get country => 'Țară';
  @override
  String get state => 'Stat';
  @override
  String get password => 'Parolă';
  @override
  String get forgotPassword => 'Ați uitat parola';
  @override
  String get tenant => 'Chiriaș';
  @override
  String get landlord => 'Proprietar';
  @override
  String get cancelRenting => 'Anulați Închirierea';
  @override
  String get startDate => 'Data de Început';
  @override
  String get endDate => 'Data de Sfârșit';
  @override
  String get fromDate => 'De la Data';
  @override
  String get toDate => 'Până la Data';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Lista Bancară';
  @override
  String get withdrawMethod => 'Metoda de Retragere';
  @override
  String get uploadPaymentReceipt => 'Încărcați Chitanța de Plată';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Notă: '),
      note(
        'Plata necesită aprobarea manuală de către administrator în termen de',
      ),
      const TextSpan(text: ' '),
      duraion('24~48 ore.'),
    ],
  );
  @override
  String get reviews => 'Recenzii';
  @override
  String get description => 'Descriere';
  @override
  String get about => 'Despre';
  @override
  String get propertyTypes => 'Tipuri de Proprietăți';
  @override
  String get features => 'Caracteristici';
  @override
  String get floorPlans => 'Planuri de Etaj';
  @override
  String get buildingDetails => 'Detalii Clădire';
  @override
  String get buildingName => 'Numele Clădirii';
  @override
  String get propertyAddress => 'Adresa Proprietății';
  @override
  String get completionYear => 'Anul Finalizării';
  @override
  String get lotNumber => 'Numărul Lotului';
  @override
  String get residentialType => 'Tip Rezidențial';
  @override
  String get furnishings => 'Mobilier';
  @override
  String get floorRange => 'Interval Etaj';
  @override
  String get bedrooms => 'Dormitoare';
  @override
  String get bathrooms => 'Băi';
  @override
  String get propertySize => 'Suprafața Proprietății';
  @override
  String get rentalPeriod => 'Perioada de Închiriere';
  @override
  String get securityDeposit => 'Garanție';
  @override
  String get utilityBill => 'Factură Utilități';
  @override
  String get facilities => 'Facilități';
  @override
  String get amenities => 'Facilități';
  @override
  String get expiringReason => 'Motivul Expirării';
  @override
  String get tenantDetails => 'Detalii Chiriaș';
  @override
  String get typeOfTenant => 'Tipul Chiriașului';
  @override
  String get tenantName => 'Numele Chiriașului';
  @override
  String get nidPassport => 'NID/Pașaport';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID Chiriaș';
  @override
  String get dateOfBirth => 'Data Nașterii';
  @override
  String get gender => 'Gen';
  @override
  String get nominee => 'Candidat';
  @override
  String get name => 'Nume';
  @override
  String get optional => 'Opțional';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileRo nomineeMobile =
      _TranslationsCommonNomineeMobileRo._(_root);
  @override
  String get emergencyContact => 'Contact de Urgență';
  @override
  String get relation => 'Relație';
  @override
  String get relationWith => '${_root.common.relation} With';
  @override
  String get relationWithYou => '${_root.common.relationWith} You';
  @override
  String get company => 'Companie';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Loc de Muncă';
  @override
  String get officePhoneNo => 'Număr de Telefon Birou';
  @override
  String get officeMobileNo => 'Birou ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Vehicul';
  @override
  late final _TranslationsCommonVehiclesInfoRo vehiclesInfo =
      _TranslationsCommonVehiclesInfoRo._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoRo vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoRo._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Brand';
  @override
  String get rentProperty => 'Închiriază Proprietatea';
  @override
  String get propertyDetails => 'Detalii Proprietate';
  @override
  String get propertyId => 'ID Proprietate';
  @override
  String get propertyType => 'Tip Proprietate';
  @override
  String get propertyName => 'Nume Proprietate';
  @override
  String get paymentDetails => 'Detalii Plată';
  @override
  String get monthlyRent => 'Chirie Lunară';
  @override
  String get thisMonthPayment => 'Plata Lunii Curente';
  @override
  String get totalPaidRent => 'Total Chirie Plătită';
  @override
  String get dueRent => 'Chirie Restantă';
  @override
  String get rentStartDate => 'Început Închiriere ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Sfârșit Închiriere ${_root.common.endDate}';
  @override
  String get status => 'Statut';
  @override
  String get rentAgreementPdf => 'PDF Contract Închiriere';
  @override
  String get noFile => 'Niciun Fișier';
  @override
  String get tenantImageOp => 'Imagine Chiriaș ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Adaugă Vehicule Noi';
  @override
  String get uploadNidPassport => 'Încarcă NID/Pașaport';
  @override
  String get nidPassportUploadNote =>
      'Vor fi acceptate doar imagini de tip fișier. Limită fișier până la 2,5 MB.';
  @override
  String get search => 'Caută';
  @override
  String get sortBy => 'Sortează După';
  @override
  String get subscription => 'Abonament';
  @override
  String get downloading => 'Se descarcă...';
  @override
  String get downloadSuccess => 'Fișier descărcat cu succes!';
  @override
  String get addPropertyBannerTitle => 'Dorești să-ți Închiriezi Proprietatea?';
  @override
  String get application => 'Aplicație';
  @override
  String get tenantHasPaidDeposit => 'Chiriașul a plătit garanția.';
  @override
  String get askProcessingRentApplication =>
      'Sigur procesați această cerere de închiriere a proprietății?';
  @override
  String get dateAndTime => 'Data și Ora';
  @override
  String get applicationDetails => 'Detalii Aplicație';
  @override
  String get depositStatus => 'Statut Garanție';
  @override
  String get uploadRentAgreement => 'Încarcă Contract Închiriere';
  @override
  String get uploadFilePDF => 'Încarcă Fișier (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Vă rugăm să selectați un fișier document de acord.';
  @override
  String get landlordRentAgreementPDF => 'PDF Contract Închiriere Proprietar';
  @override
  String get tenantRentAgreementPDF => 'PDF Contract Închiriere Chiriaș';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Notă: '),
      note(
        'Aprobați cererea numai după ce chiriașul efectuează o plată a garanției.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Motivul Respingerii';
  @override
  String get youveRejectedThisApplication => 'Ați respins această cerere';
  @override
  String get landlordDetails => 'Detalii Proprietar';
  @override
  String get landlordName => 'Nume Proprietar';
  @override
  String get downloadRentAgreement => 'Descarcă Contract Închiriere';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Acceptați '),
      toc('Termeni și Condiții'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Notă: '),
      note(
        'Vă rugăm să descărcați și să citiți acordul. Vă rugăm să trimiteți acordul semnat proprietarului prin WhatsApp sau email.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Notă: '),
      note(
        'Proprietarul aprobă cererea, când chiriașul plătește garanția, utilitățile și plata chiriei în avans pe o lună.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Contract Închiriere (PDF) '),
          complete('Contract Complet'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Notă : '),
      note(
        'Proprietarul aprobă cererea, când chiriașul plătește garanția, utilitățile și plata chiriei în avans pe o lună.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Lista Aplicații';
  @override
  String get viewDetails => 'Vezi Detalii';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Acasă';
  @override
  String get dashboard => 'Panou de Control';
  @override
  String get tenants => 'Chiriași';
  @override
  String get maintenance => 'Întreținere';
  @override
  String get maintenanceList => 'Lista Întrețineri';
  @override
  String get maintenanceReport => 'Raport Întreținere';
  @override
  String get labor => 'Muncă';
  @override
  String get applications => 'Aplicații';
  @override
  String get rentInvitation => 'Invitație Închiriere';
  @override
  String get payment => 'Plată';
  @override
  String get rentPayment => 'Plată Chirie';
  @override
  String get depositUtilityPayment => 'Plată Garanție & Utilități';
  @override
  String get refundRequest => 'Cerere de Rambursare';
  @override
  String get withdrawRequest => 'Cerere de Retragere';
  @override
  String get myProperty => 'Proprietatea Mea';
  @override
  String get myRent => 'Chiria Mea';
  @override
  String get wishlist => 'Lista de Dorințe';
  @override
  String get properties => 'Proprietăți';
  @override
  String get allProperties => 'Toate Proprietățile';
  @override
  String get totalPropery => 'Total Proprietăți';
  @override
  String get occupied => 'Ocupat';
  @override
  String get vacant => 'Liber';
  @override
  String get accounting => 'Contabilitate';
  @override
  String get totalIncome => 'Venit Total';
  @override
  String get totalExpense => 'Cheltuieli Totale';
  @override
  String get currentBalance => 'Sold Curent';
  @override
  String get totalWithdrawal => 'Total (Retragere)';
  @override
  String get totalProperties => 'Total Proprietăți';
  @override
  String get totalTenant => 'Total Chiriași';
  @override
  String get totalRentPaid => 'Total Chirie Plătită';
  @override
  String get totalRentDue => 'Total Chirie Restantă';
  @override
  String get totalApplication => 'Total Aplicații';
  @override
  String get pendingApplication => 'Aplicație În Așteptare';
  @override
  String get processingApplication => 'Aplicație în Procesare';
  @override
  String get approveApplication => 'Aprobă Aplicația';
  @override
  String get rejectApplication => 'Respinge Aplicația';
  @override
  String get maintenanceCost => 'Cost Întreținere';
  @override
  String get transactionSummary => 'Rezumat Tranzacții';
  @override
  String get maintenanceRequest => 'Cerere de Întreținere';
  @override
  String get notifications => 'Notificări';
  @override
  String get myProperties => 'Proprietățile Mele';
  @override
  String get recommendationProperties => 'Proprietăți Recomandate';
  @override
  String get laborList => 'Lista Muncitori';
  @override
  String get addLabor => 'Adaugă Muncitor';
  @override
  String get laborDetails => 'Detalii Muncitor';
  @override
  String get laborSalary => 'Salariu Muncitor';
  @override
  String get editLabor => 'Editează Muncitor';
  @override
  String get addNewLabor => 'Adaugă Muncitor Nou';
  @override
  String get enterAmount => 'Introdu Suma';
  @override
  String get maintenanceDetails => 'Detalii Întreținere';
  @override
  String get laborName => 'Nume Muncitor';
  @override
  String get comment => 'Comentariu';
  @override
  String get image => 'Imagine';
  @override
  String get complete => 'Finalizat';
  @override
  String get details => 'Detalii';
  @override
  String get title => 'Titlu';
  @override
  String get date => 'Data';
  @override
  String get reason => 'Motiv';
  @override
  String get edit => 'Editează';
  @override
  String get property => 'Proprietate';
  @override
  String get completeYourProfile => 'Completează-ți Profilul';
  @override
  String get profileImage => 'Imagine de Profil';
  @override
  String get imagePickHint =>
      'Numai imagine JPEG și PNG cu dimensiunea maximă de 120x120 pixeli.';
  @override
  String get invoiceId => 'ID Factură';
  @override
  String get depositAmount => 'Suma Garanției';
  @override
  String get landlordPhone => 'Telefon Proprietar';
  @override
  String get rentalAdvance => 'Chirie (Avans)';
  @override
  String get totalAmount => 'Suma Totală';
  @override
  String get rentalAmount => 'Suma Chiriei';
  @override
  String get adminCharge => 'Taxă Administrativă';
  @override
  String get editAccount => 'Editează Contul';
  @override
  String get addNewAccount => 'Adaugă Cont Nou';
  @override
  String get transactionId => 'ID Tranzacție';
  @override
  String get transactionType => 'Tip Tranzacție';
  @override
  String get requestDate => 'Data Cererii';
  @override
  String get amount => 'Suma';
  @override
  String get fee => 'Taxă';
  @override
  String get paymentStatus => 'Statut Plată';
  @override
  String get generatedTime => 'Ora Generării';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Acesta este un raport generat de sistem al '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Istoric Retrageri';
  @override
  String get history => 'Istoric';
  @override
  String get withdrawAmount => 'Suma Retrasă';
  @override
  String get availableBalance => 'Sold Disponibil';
  @override
  String get withdrawCharge => 'Taxă Retragere';
  @override
  String get paymentMethod => 'Metodă de Plată';
  @override
  String get requestSendSuccess => 'Cerere trimisă cu succes!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Chitanță de plată trimisă cu succes.';
  @override
  String get refundReason => 'Motiv Rambursare';
  @override
  String get note => 'Notă';
  @override
  String get refundReceiveSuccess => 'Rambursare primită cu succes.';
  @override
  String get downloadPaymentReceipt => 'Descarcă Chitanță de Plată';
  @override
  String get invoice => 'Factură';
  @override
  String get selectPropertyToSeeInvoice =>
      'Selectați proprietatea pentru a vedea numărul facturii...';
  @override
  String get bankAccName => 'Nume Cont Bancar';
  @override
  String get bankName => 'Nume Bancă';
  @override
  String get bankAccNum => 'Număr Cont Bancar';
  @override
  String get thankYou => 'Mulțumim!';
  @override
  String get basicInfo => 'Informații de Bază';
  @override
  String get descriptionPricing => 'Descriere și Prețuri';
  @override
  String get contact => 'Contact';
  @override
  String get photos => 'Fotografii';
  @override
  String get successfullySubmitted => 'Trimis cu succes!';
  @override
  String get editProperty => 'Editează Proprietatea';
  @override
  String get addNewProperty => 'Adaugă Proprietate Nouă';
  @override
  String get propertyManageRequestSuccess =>
      'Anunțul dvs. a fost trimis spre examinare.';
  @override
  String get postAnotherProperty => 'Publică Altă Proprietate';
  @override
  String get browseYourProperty => 'Răsfoiți-vă Proprietatea';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pasul '),
      step,
      const TextSpan(text: ' din '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Ce Ați Dori să Publicați?';
  @override
  String get category => 'Categorie';
  @override
  String get invalidCategory => 'Categorie Invalidă';
  @override
  String get unitNumber => 'Număr Unitate';
  @override
  String get sqft => 'mp';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Suprafața proprietății trebuie să fie mai mare decât zero';
  @override
  String get whatAreTheFacility => 'Care sunt facilitățile?';
  @override
  String get whatAreTheAmenity => 'Care sunt facilitățile?';
  @override
  String get parkingLot => 'Parcare';
  @override
  String get houseType => 'Tip Casă';
  @override
  String get value => 'Valoare';
  @override
  String get unitLotSize => 'Dimensiune Unitate / Lot';
  @override
  String get landSize => 'Suprafață Teren';
  @override
  String get acres => 'acru(i)';
  @override
  String get roomSize => 'Dimensiune Cameră';
  @override
  String get askTenantPreference => 'Care este preferința dvs. de chiriaș?';
  @override
  String get couple => 'Cuplu';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Descrieți ${propertyType}';
  @override
  String get adTitle => 'Titlu Anunț';
  @override
  String get minimumRentalPeriod => 'Perioadă Minimă de Închiriere';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  @override
  String get hideOrDisplayEmail => 'Ascundeți sau afișați adresa de email';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Vă mulțumim că ați publicat pe ${appName}!';
  @override
  String get propertyList => 'Lista Proprietăți';
  @override
  String get newInviteRent => 'Invitație Nouă de Închiriere';
  @override
  String get rentAgreement => 'Contract de Închiriere';
  @override
  String get rentDetails => 'Detalii Închiriere';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Notă: '),
      note('Vă rugăm să așteptați ca chiriașul să accepte invitația.'),
    ],
  );
  @override
  String get rent => 'Închiriere';
  @override
  String get editTenant => 'Editează Chiriaș';
  @override
  String get addNewTenant => 'Adaugă Chiriaș Nou';
  @override
  String get shareInstallLink => 'Partajați link-ul de instalare';
  @override
  String get tenantList => 'Lista Chiriași';
  @override
  String get editMaintenanceRequest => 'Editează Cerere de Întreținere';
  @override
  String get addNewMaintenance => 'Adaugă Întreținere Nouă';
  @override
  String get landlordId => 'ID Proprietar';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Notă '),
      note(
        'Acordul dvs. este în curs de examinare. Vă rugăm să așteptați până când proprietarul vă aprobă chiria.',
      ),
    ],
  );
  @override
  String get editReview => 'Editează Recenzia';
  @override
  String get writeAReview => 'Scrie o recenzie';
  @override
  String get selectRating => 'Selectați Evaluarea';
  @override
  String get enterYourOpinion => 'Introduceți-vă Opinia';
  @override
  String get askToEnterReviewMsg =>
      'Vă rugăm să introduceți un mesaj de recenzie';
  @override
  String get pressBackAgainToExit => 'Apăsați din nou înapoi pentru a ieși.';
  @override
  String get selectPaymentMethod => 'Selectați Metoda de Plată';
  @override
  String get filter => 'Filtru';
  @override
  String get perMonth => '/1 Lună';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Căutați orice în ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsRo implements TranslationsExceptionsEn {
  _TranslationsExceptionsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong =>
      'Ceva nu a mers bine, vă rugăm să încercați din nou';
  @override
  String get noNidPassport => 'Nu a fost furnizată nicio imagine NID/Pașaport.';
  @override
  String get noRentPropertyFound =>
      'Nu s-a găsit nicio proprietate de închiriat pentru acest chiriaș.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Nu s-a găsit nicio proprietate!\nVă rugăm să încercați cu alte cuvinte cheie';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Nu s-a găsit niciun plan de abonament!\nVă rugăm să reîmprospătați pagina și să încercați din nou.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Informații ${dataType} nevalide! Vă rugăm să reîmprospătați pagina și să încercați din nou.';
  @override
  String get invalidDownloadUrl => 'URL de descărcare invalid!';
  @override
  String failedToSaveFile({required String error}) =>
      'Nu s-a putut salva fișierul! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Eroare la deschiderea fișierului! ${error}';
  @override
  String get noVehicleInfoProvided =>
      'Nu au fost furnizate informații despre vehicul.';
  @override
  String get yourApplicationRejected => 'Cererea dvs. a fost respinsă';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintRo
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintRo._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintRo noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintRo._(_root);
  @override
  String get noImageProvided => 'Nu a fost furnizată nicio imagine';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundRo
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundRo._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Nu s-a găsit nicio garanție!\nVă rugăm să puteți vedea garanțiile când vor fi disponibile';
  @override
  String get noRentPaymentFound =>
      'Nu s-a găsit nicio plată de chirie!\nVă rugăm să puteți vedea plățile de chirie când vor fi disponibile';
  @override
  String get transactionSummaryApiException =>
      'Nu s-a putut obține rezumatul tranzacțiilor.';
  @override
  String get noWithdrawRequestFound =>
      'Nu s-a găsit nicio cerere!\nVă rugăm să încercați să creați o cerere de retragere pentru a o vedea aici.';
  @override
  String get withdrawRequestNotApproved =>
      'Această cerere de retragere nu a fost aprobată!.';
  @override
  String get nonZeroError =>
      'Vă rugăm să introduceți o sumă validă mai mare decât zero.';
  @override
  String minAmountError({required String minValue}) =>
      'Suma trebuie să fie de cel puțin ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Suma nu trebuie să depășească ${maxValue}.';
  @override
  String get selectPaymentMethodHint =>
      'Vă rugăm să selectați mai întâi o metodă de plată.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundRo
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundRo._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintRo refundRequestHint =
      _TranslationsExceptionsRefundRequestHintRo._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Vă rugăm să selectați numărul de ${value}';
  @override
  String get invalidDateRange => 'Interval de date nevalid.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} trebuie să fie mai mare decât zero.';
  @override
  late final _TranslationsExceptionsEditPropertyRo editProperty =
      _TranslationsExceptionsEditPropertyRo._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationRo rentInvitation =
      _TranslationsExceptionsRentInvitationRo._(_root);
  @override
  String get notenantFoundList =>
      'Nu există chiriași!\nVă rugăm să încercați să adăugați un chiriaș pentru a-l vedea aici.';
  @override
  String get noFeaturesProvided => 'Nu au fost furnizate caracteristici.';
  @override
  String get noNotificationFound =>
      'Nu există nicio notificare disponibilă.\nPuteți vedea notificarea dvs. aici când va fi disponibilă.';
}

// Path: prompt
class _TranslationsPromptRo implements TranslationsPromptEn {
  _TranslationsPromptRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutRo logout = _TranslationsPromptLogoutRo._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationRo application =
      _TranslationsPromptApplicationRo._(_root);
  @override
  late final _TranslationsPromptLaborRo labor = _TranslationsPromptLaborRo._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestRo maintenanceRequest =
      _TranslationsPromptMaintenanceRequestRo._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodRo withdrawMethod =
      _TranslationsPromptWithdrawMethodRo._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesRo unsavedChanges =
      _TranslationsPromptUnsavedChangesRo._(_root);
  @override
  late final _TranslationsPromptPropertyRo property =
      _TranslationsPromptPropertyRo._(_root);
  @override
  late final _TranslationsPromptRentInvitationRo rentInvitation =
      _TranslationsPromptRentInvitationRo._(_root);
  @override
  late final _TranslationsPromptSessionExpiredRo sessionExpired =
      _TranslationsPromptSessionExpiredRo._(_root);
  @override
  late final _TranslationsPromptNoInternetRo noInternet =
      _TranslationsPromptNoInternetRo._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerRo permissionHandler =
      _TranslationsPromptPermissionHandlerRo._(_root);
  @override
  late final _TranslationsPromptImagePickerRo imagePicker =
      _TranslationsPromptImagePickerRo._(_root);
  @override
  late final _TranslationsPromptVerificationDialogRo verificationDialog =
      _TranslationsPromptVerificationDialogRo._(_root);
  @override
  late final _TranslationsPromptNotificationRo notification =
      _TranslationsPromptNotificationRo._(_root);
}

// Path: form
class _TranslationsFormRo implements TranslationsFormEn {
  _TranslationsFormRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameRo fullName =
      _TranslationsFormFullNameRo._(_root);
  @override
  late final _TranslationsFormEmailRo email = _TranslationsFormEmailRo._(_root);
  @override
  late final _TranslationsFormPasswordRo password =
      _TranslationsFormPasswordRo._(_root);
  @override
  late final _TranslationsFormConfirmPasswordRo confirmPassword =
      _TranslationsFormConfirmPasswordRo._(_root);
  @override
  late final _TranslationsFormMobileNumberRo mobileNumber =
      _TranslationsFormMobileNumberRo._(_root);
  @override
  late final _TranslationsFormAddress1Ro address1 =
      _TranslationsFormAddress1Ro._(_root);
  @override
  late final _TranslationsFormAddress2Ro address2 =
      _TranslationsFormAddress2Ro._(_root);
  @override
  late final _TranslationsFormPostalCodeRo postalCode =
      _TranslationsFormPostalCodeRo._(_root);
  @override
  late final _TranslationsFormCityRo city = _TranslationsFormCityRo._(_root);
  @override
  late final _TranslationsFormStateRo state = _TranslationsFormStateRo._(_root);
  @override
  late final _TranslationsFormCountryRo country = _TranslationsFormCountryRo._(
    _root,
  );
  @override
  late final _TranslationsFormOtpRo otp = _TranslationsFormOtpRo._(_root);
  @override
  late final _TranslationsFormTitleRo title = _TranslationsFormTitleRo._(_root);
  @override
  late final _TranslationsFormDateRo date = _TranslationsFormDateRo._(_root);
  @override
  late final _TranslationsFormReasonRo reason = _TranslationsFormReasonRo._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodRo withdrawMethod =
      _TranslationsFormWithdrawMethodRo._(_root);
  @override
  late final _TranslationsFormFileFieldRo fileField =
      _TranslationsFormFileFieldRo._(_root);
  @override
  late final _TranslationsFormNoteRo note = _TranslationsFormNoteRo._(_root);
  @override
  late final _TranslationsFormGenderRo gender = _TranslationsFormGenderRo._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldRo anyField =
      _TranslationsFormAnyFieldRo._(_root);
  @override
  late final _TranslationsFormAnyDropdownRo anyDropdown =
      _TranslationsFormAnyDropdownRo._(_root);
}

// Path: action
class _TranslationsActionRo implements TranslationsActionEn {
  _TranslationsActionRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Următorul';
  @override
  String get getStarted => 'Începeți';
  @override
  String get skip => 'Omiteți';
  @override
  String get select => 'Selectați';
  @override
  String get save => 'Salvați';
  @override
  String get signIn => 'Conectați-vă';
  @override
  String get signUp => 'Înregistrați-vă';
  @override
  String get kContinue => 'Continuați';
  @override
  String get clearAll => 'Ștergeți tot';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Trimiteți';
  @override
  String get pay => 'Plătiți';
  @override
  String get remove => 'Eliminați';
  @override
  String get goBack => 'Înapoi';
  @override
  String get buyNow => 'Cumpărați acum';
  @override
  String get no => 'Nu';
  @override
  String get open => 'Deschideți';
  @override
  String get addProperty => 'Adăugați proprietatea';
  @override
  String get process => 'Procesați';
  @override
  String get approve => 'Aprobați';
  @override
  String get reject => 'Respingeți';
  @override
  String get viewRent => 'Vizualizați chiria';
  @override
  String get openNavigationMenu => 'Deschideți meniul de navigare';
  @override
  String get seeAll => 'Vezi tot';
  @override
  String get update => 'Actualizați';
  @override
  String get printTransaction => 'Imprimați tranzacția';
  @override
  String get payoutRequest => 'Cerere de plată';
  @override
  String get addNew => '+ Adăugați nou';
  @override
  String get sendRequest => 'Trimiteți cererea';
  @override
  String get print => 'Imprimați';
  @override
  String get requestForRefund => 'Cerere de rambursare';
  @override
  String get previous => 'Anterior';
  @override
  String get delete => 'Ștergeți';
  @override
  String get applyProperty => 'Aplicați proprietatea';
  @override
  String get viewApplication => 'Vizualizați cererea';
  @override
  String get inviteTenant => 'Invitați chiriașul';
  @override
  String get inviteRent => 'Invitați chiria';
  @override
  String get cancel => 'Anulați';
  @override
  String get accept => 'Acceptați';
  @override
  String get submit => 'Trimiteți';
  @override
  String get yes => 'Da';
  @override
  String get okay => 'Bine';
  @override
  String get confirm => 'Confirmați';
  @override
  String get apply => 'Aplicați';
  @override
  String get reset => 'Resetați';
  @override
  String get retry => 'Încercați din nou';
  @override
  String get viewAll => 'Vezi tot';
}

// Path: pages
class _TranslationsPagesRo implements TranslationsPagesEn {
  _TranslationsPagesRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageRo language =
      _TranslationsPagesLanguageRo._(_root);
  @override
  late final _TranslationsPagesOnboardRo onboard =
      _TranslationsPagesOnboardRo._(_root);
  @override
  late final _TranslationsPagesSignInRo signIn = _TranslationsPagesSignInRo._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordRo forgotPassword =
      _TranslationsPagesForgotPasswordRo._(_root);
  @override
  late final _TranslationsPagesOtpVerificationRo otpVerification =
      _TranslationsPagesOtpVerificationRo._(_root);
  @override
  late final _TranslationsPagesResetPasswordRo resetPassword =
      _TranslationsPagesResetPasswordRo._(_root);
  @override
  late final _TranslationsPagesSignUpRo signUp = _TranslationsPagesSignUpRo._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeRo welcome =
      _TranslationsPagesWelcomeRo._(_root);
  @override
  late final _TranslationsPagesAboutUsRo aboutUs =
      _TranslationsPagesAboutUsRo._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsRo termsAndConditions =
      _TranslationsPagesTermsAndConditionsRo._(_root);
  @override
  late final _TranslationsPagesNotificationListRo notificationList =
      _TranslationsPagesNotificationListRo._(_root);
  @override
  late final _TranslationsPagesContactUsRo contactUs =
      _TranslationsPagesContactUsRo._(_root);
  @override
  late final _TranslationsPagesCancelRentingRo cancelRenting =
      _TranslationsPagesCancelRentingRo._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsRo invoiceDetails =
      _TranslationsPagesInvoiceDetailsRo._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentRo offlinePayment =
      _TranslationsPagesOfflinePaymentRo._(_root);
  @override
  late final _TranslationsPagesPaymentStatusRo paymentStatus =
      _TranslationsPagesPaymentStatusRo._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsRo propertyDetails =
      _TranslationsPagesPropertyDetailsRo._(_root);
  @override
  late final _TranslationsPagesSearchRo search = _TranslationsPagesSearchRo._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanRo subscriptionPlan =
      _TranslationsPagesSubscriptionPlanRo._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportRo
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportRo._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsRo implements TranslationsEnumsEn {
  _TranslationsEnumsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusRo propertyStatus =
      _TranslationsEnumsPropertyStatusRo._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeRo propertyType =
      _TranslationsEnumsPropertyTypeRo._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusRo applicationStatus =
      _TranslationsEnumsApplicationStatusRo._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusRo myRentStatus =
      _TranslationsEnumsMyRentStatusRo._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusRo maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusRo._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeRo tenantProfileType =
      _TranslationsEnumsTenantProfileTypeRo._(_root);
  @override
  late final _TranslationsEnumsTenantTypeRo tenantType =
      _TranslationsEnumsTenantTypeRo._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusRo paymentStatus =
      _TranslationsEnumsPaymentStatusRo._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsRo paymentOptions =
      _TranslationsEnumsPaymentOptionsRo._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeRo paymentType =
      _TranslationsEnumsPaymentTypeRo._(_root);
  @override
  late final _TranslationsEnumsGenderRo gender = _TranslationsEnumsGenderRo._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationRo ecRelation =
      _TranslationsEnumsEcRelationRo._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeRo vehicleType =
      _TranslationsEnumsVehicleTypeRo._(_root);
  @override
  late final _TranslationsEnumsSortByRo sortBy = _TranslationsEnumsSortByRo._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeRo residentialType =
      _TranslationsEnumsResidentialTypeRo._(_root);
  @override
  late final _TranslationsEnumsFloorRangeRo floorRange =
      _TranslationsEnumsFloorRangeRo._(_root);
  @override
  late final _TranslationsEnumsFurnishingsRo furnishings =
      _TranslationsEnumsFurnishingsRo._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeRo commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeRo._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeRo landPropertyType =
      _TranslationsEnumsLandPropertyTypeRo._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeRo residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeRo._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodRo minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodRo._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterRo dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterRo._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileRo
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoRo
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informații Vehicule';
  @override
  String get optional => 'Informații Vehicule (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoRo
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Nr. Înregistrare Vehicul';
  @override
  String get short => 'Nr. Înregistrare';
  @override
  String get alt => 'Nr. Plăcuță';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintRo
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Nu s-a găsit nicio aplicație!\n${subject} va fi afișat aici când va fi disponibil.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsRo subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsRo._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintRo
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Nu s-a găsit nicio proprietate!\nVă rugăm să încercați să adăugați o proprietate pentru a o vedea aici.';
  @override
  String get tenantRecommended =>
      'Nu s-au găsit proprietăți recomandate\nVă rugăm să încercați din nou mai târziu.';
  @override
  String get tenantAllProperty =>
      'Proprietăți indisponibile\nVă rugăm să încercați din nou mai târziu.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundRo
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nu s-a găsit nicio întreținere ${status}.';
  @override
  String get tenant =>
      'Nu s-a găsit nicio întreținere! Puteți crea o cerere de întreținere pentru a o vedea aici.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundRo
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nu s-a găsit nicio cerere de rambursare ${status}!\nPuteți vedea cererea de rambursare aici când va fi disponibilă.';
  @override
  String get tenant =>
      'Nu s-a găsit nicio cerere de rambursare!\nPuteți crea o cerere de rambursare pentru a o vedea aici.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintRo
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Chiriașul va aproba rambursarea când va primi banii înapoi';
  @override
  String get tenantReqSuccess =>
      'Vom examina cererea de rambursare și o vom aproba în 24 de ore.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyRo
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Proprietatea de închiriat se schimbă. Trebuie să fie valabilă (efectivă) numai pentru plata chiriei lunii următoare.';
  @override
  String get deleteOnRent =>
      'Proprietatea dvs. este deja închiriată de chiriaș. Nu o puteți șterge până când nu eliminați mai întâi chiriașul';
  @override
  String get alreayRented =>
      'Această proprietate este deja închiriată. Vă rugăm să încercați din nou mai târziu.\nSau puteți contacta proprietarul pentru mai multe informații.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationRo
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Nu s-a găsit nicio invitație de închiriere!\nVă rugăm să încercați să creați o invitație de închiriere pentru a o vedea aici.';
  @override
  String get tenantNoRentInvitation =>
      'Nu s-a găsit nicio invitație de închiriere!\nPuteți vedea invitația de închiriere aici când va fi disponibilă.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutRo implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Sigur doriți să vă deconectați?';
}

// Path: prompt.application
class _TranslationsPromptApplicationRo
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'De ce respingeți această cerere?';
  @override
  late final _TranslationsPromptApplicationApplicationSentRo applicationSent =
      _TranslationsPromptApplicationApplicationSentRo._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborRo implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteRo delete =
      _TranslationsPromptLaborDeleteRo._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestRo
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'De ce este respinsă această cerere?';
  @override
  String get processTitle => 'Sigur procesați această cerere de întreținere?';
  @override
  String get completeTitle => 'Lucrare finalizată?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodRo
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Ștergeți Metoda de Retragere?';
  @override
  String get deleteDescription =>
      'Sigur doriți să ștergeți această metodă de retragere?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesRo
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sigur doriți să reveniți?';
  @override
  String get message => 'Câmpurile care sunt modificate nu vor fi salvate!';
}

// Path: prompt.property
class _TranslationsPromptPropertyRo implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteRo delete =
      _TranslationsPromptPropertyDeleteRo._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationRo
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveRo
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveRo._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptRo tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptRo._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredRo
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sesiune expirată';
  @override
  String get message =>
      'Sesiunea dvs. a expirat. Vă rugăm să vă autentificați din nou';
  @override
  String get action => 'Autentificare';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetRo
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Fără Conexiune la Internet';
  @override
  String get message =>
      'Vă rugăm să verificați conexiunea la rețeaua Wi-Fi sau mobilă și să încercați din nou';
  @override
  String get action => 'Încearcă din nou';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerRo
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Permisiune necesară!';
  @override
  String get message =>
      'Trebuie să acordați permisiuni în setările aplicației. Doriți să deschideți setările acum?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerRo
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Selectați Opțiunea';
  @override
  String get gallery => 'Galerie';
  @override
  String get camera => 'Cameră';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogRo
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verificați-vă Emailul';
  @override
  String get message => 'Am trimis un email cu cod de verificare';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} la ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationRo
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Ștergeți notificările?';
  @override
  String get clearMessage => 'Sigur doriți să ștergeți toate notificările?';
}

// Path: form.fullName
class _TranslationsFormFullNameRo implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Introduceți ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsRo errors =
      _TranslationsFormFullNameErrorsRo._(_root);
}

// Path: form.email
class _TranslationsFormEmailRo implements TranslationsFormEmailEn {
  _TranslationsFormEmailRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Introduceți ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsRo errors =
      _TranslationsFormEmailErrorsRo._(_root);
}

// Path: form.password
class _TranslationsFormPasswordRo implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsRo errors =
      _TranslationsFormPasswordErrorsRo._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordRo
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Confirmați ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsRo errors =
      _TranslationsFormConfirmPasswordErrorsRo._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberRo
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsRo errors =
      _TranslationsFormMobileNumberErrorsRo._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Ro implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Ro._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Numărul casei și numele străzii';
  @override
  late final _TranslationsFormAddress1ErrorsRo errors =
      _TranslationsFormAddress1ErrorsRo._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Ro implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Ro._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Apartament, suită, unitate etc.';
  @override
  late final _TranslationsFormAddress2ErrorsRo errors =
      _TranslationsFormAddress2ErrorsRo._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeRo implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Introduceți ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsRo errors =
      _TranslationsFormPostalCodeErrorsRo._(_root);
}

// Path: form.city
class _TranslationsFormCityRo implements TranslationsFormCityEn {
  _TranslationsFormCityRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Introduceți numele ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsRo errors =
      _TranslationsFormCityErrorsRo._(_root);
}

// Path: form.state
class _TranslationsFormStateRo implements TranslationsFormStateEn {
  _TranslationsFormStateRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Introduceți numele ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsRo errors =
      _TranslationsFormStateErrorsRo._(_root);
}

// Path: form.country
class _TranslationsFormCountryRo implements TranslationsFormCountryEn {
  _TranslationsFormCountryRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Selectați ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsRo errors =
      _TranslationsFormCountryErrorsRo._(_root);
}

// Path: form.otp
class _TranslationsFormOtpRo implements TranslationsFormOtpEn {
  _TranslationsFormOtpRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsRo errors =
      _TranslationsFormOtpErrorsRo._(_root);
}

// Path: form.title
class _TranslationsFormTitleRo implements TranslationsFormTitleEn {
  _TranslationsFormTitleRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Titlu';
  @override
  String get hint => 'Introduceți titlul';
  @override
  late final _TranslationsFormTitleErrorsRo errors =
      _TranslationsFormTitleErrorsRo._(_root);
}

// Path: form.date
class _TranslationsFormDateRo implements TranslationsFormDateEn {
  _TranslationsFormDateRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Selectați ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsRo errors =
      _TranslationsFormDateErrorsRo._(_root);
}

// Path: form.reason
class _TranslationsFormReasonRo implements TranslationsFormReasonEn {
  _TranslationsFormReasonRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Motiv';
  @override
  String get hint => 'Introduceți motivul';
  @override
  late final _TranslationsFormReasonErrorsRo errors =
      _TranslationsFormReasonErrorsRo._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodRo
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Selectați ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsRo errors =
      _TranslationsFormWithdrawMethodErrorsRo._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldRo implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Încărcați ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsRo errors =
      _TranslationsFormFileFieldErrorsRo._(_root);
}

// Path: form.note
class _TranslationsFormNoteRo implements TranslationsFormNoteEn {
  _TranslationsFormNoteRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Introduceți ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsRo errors =
      _TranslationsFormNoteErrorsRo._(_root);
}

// Path: form.gender
class _TranslationsFormGenderRo implements TranslationsFormGenderEn {
  _TranslationsFormGenderRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Selectați ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsRo errors =
      _TranslationsFormGenderErrorsRo._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldRo implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Introduceți ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsRo errors =
      _TranslationsFormAnyFieldErrorsRo._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownRo implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Selectați ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsRo errors =
      _TranslationsFormAnyDropdownErrorsRo._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageRo implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardRo implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataRo onboardData =
      _TranslationsPagesOnboardOnboardDataRo._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInRo implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bine ați revenit';
  @override
  String get subtitle =>
      'Conectați-vă acum pentru a începe o călătorie uimitoare.';
  @override
  late final _TranslationsPagesSignInExtraRo extra =
      _TranslationsPagesSignInExtraRo._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordRo
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Parola uitată';
  @override
  String get subtitle =>
      'Introduceți adresa dvs. de e-mail pentru a vă recupera parola.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationRo
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verificare';
  @override
  String subtitle({required String email}) =>
      'Codul PIN din 4 cifre a fost trimis la adresa dvs. de e-mail. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraRo extra =
      _TranslationsPagesOtpVerificationExtraRo._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordRo
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Resetează parola';
  @override
  String get subtitle =>
      'Resetați-vă parola pentru recuperare și conectați-vă la contul dvs.';
  @override
  late final _TranslationsPagesResetPasswordExtraRo extra =
      _TranslationsPagesResetPasswordExtraRo._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpRo implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Creați un cont';
  @override
  String get subtitle =>
      'Înregistrați-vă acum pentru a începe o călătorie uimitoare';
  @override
  late final _TranslationsPagesSignUpExtraRo extra =
      _TranslationsPagesSignUpExtraRo._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeRo implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Cine sunteți?';
  @override
  String get subtitle => 'Vă rugăm să selectați opțiunea de mai jos.';
  @override
  late final _TranslationsPagesWelcomeExtraRo extra =
      _TranslationsPagesWelcomeExtraRo._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsRo implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsRo
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListRo
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Notificări';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsRo implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraRo extra =
      _TranslationsPagesContactUsExtraRo._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingRo
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'De ce ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormRo form =
      _TranslationsPagesCancelRentingFormRo._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsRo
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentRo
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Plată offline';
  @override
  late final _TranslationsPagesOfflinePaymentFormRo form =
      _TranslationsPagesOfflinePaymentFormRo._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraRo extra =
      _TranslationsPagesOfflinePaymentExtraRo._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusRo
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessRo success =
      _TranslationsPagesPaymentStatusSuccessRo._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailRo fail =
      _TranslationsPagesPaymentStatusFailRo._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsRo
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraRo extra =
      _TranslationsPagesPropertyDetailsExtraRo._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchRo implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Căutare';
  @override
  late final _TranslationsPagesSearchExtraRo extra =
      _TranslationsPagesSearchExtraRo._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanRo
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Alegeți-vă planul';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraRo extra =
      _TranslationsPagesSubscriptionPlanExtraRo._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportRo
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Cost total întreținere: '),
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
class _TranslationsEnumsPropertyStatusRo
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Toată proprietatea';
  @override
  String get pending => 'În așteptare';
  @override
  String get active => 'Activ';
  @override
  String get inactive => 'Inactiv';
  @override
  String get rejected => 'Respins';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeRo
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Apartament/Condominiu';
  @override
  String get house => 'Casă';
  @override
  String get commercialProperty => 'Proprietate comercială';
  @override
  String get land => 'Teren';
  @override
  String get room => 'Cameră';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusRo
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Toate';
  @override
  String get pending => 'În așteptare';
  @override
  String get processing => 'În curs de procesare';
  @override
  String get approved => 'Aprobat';
  @override
  String get rejected => 'Respins';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusRo
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'În așteptare';
  @override
  String get processing => 'În curs de procesare';
  @override
  String get active => 'Activ';
  @override
  String get expired => 'Expirat';
  @override
  String get cancelled => 'Anulat';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusRo
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'În așteptare';
  @override
  String get processing => 'În curs de procesare';
  @override
  String get rejected => 'Respins';
  @override
  String get completed => 'Finalizat';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeRo
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privat (persoană fizică)';
  @override
  String get company => 'Companie';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeRo implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Chiriaș nou';
  @override
  String get activeTenant => 'Chiriaș activ';
  @override
  String get expiredTenant => 'Chiriaș expirat';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusRo
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Toate';
  @override
  String get pending => 'În așteptare';
  @override
  String get paid => 'Plătit';
  @override
  String get unpaid => 'Neplătit';
  @override
  String get rejected => 'Respins';
  @override
  String get refund => 'Rambursare';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsRo
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Plată online';
  @override
  String get offlinePayment => 'Plată offline';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeRo
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Depozit de garanție';
  @override
  String get rentPayment => 'Plată chirie';
  @override
  String get subscription => 'Abonament';
}

// Path: enums.gender
class _TranslationsEnumsGenderRo implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Masculin';
  @override
  String get female => 'Feminin';
  @override
  String get other => 'Altul';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationRo implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Soție';
  @override
  String get parent => 'Părinte';
  @override
  String get friend => 'Prieten';
  @override
  String get brother => 'Frate';
  @override
  String get sister => 'Soră';
  @override
  String get child => 'Copil';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeRo
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Mașină';
  @override
  String get motorcycles => 'Motociclete';
  @override
  String get lorry => 'Camion';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByRo implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'De la mic la mare';
  @override
  String get highToLow => 'De la mare la mic';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeRo
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Garsonieră';
  @override
  String get apartment => 'Apartament';
  @override
  String get condominium => 'Condominiu';
  @override
  String get serviceResidence => 'Rezidență de servicii';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Duplex';
  @override
  String get townhouseCondo => 'Casă înșiruită/Condo';
  @override
  String get others => 'Altele';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeRo implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Înalt';
  @override
  String get medium => 'Mediu';
  @override
  String get low => 'Scăzut';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsRo
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Complet mobilat';
  @override
  String get partiallyFurnished => 'Parțial mobilat';
  @override
  String get notFurnished => 'Nemobilat';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeRo
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Spațiu de birouri';
  @override
  String get retailSpace => 'Spațiu comercial';
  @override
  String get shopLot => 'Magazin';
  @override
  String get warehouseFactory => 'Depozit / Fabrică';
  @override
  String get hotelResort => 'Hotel / Stațiune';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Altele';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeRo
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Rezidențial';
  @override
  String get industrial => 'Industrial';
  @override
  String get agricultural => 'Agricol';
  @override
  String get commercial => 'Comercial';
  @override
  String get mixedDevelopment => 'Dezvoltare mixtă';
  @override
  String get others => 'Altele';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeRo
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Condo / Rezidență de servicii / Penthouse';
  @override
  String get apartment => 'Apartament / Garsonieră';
  @override
  String get house => 'Case';
  @override
  String get shoplot => 'Magazin';
  @override
  String get sharing => 'Împărțirea unei case / apartament';
  @override
  String get others => 'Altele';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodRo
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 luni';
  @override
  String get oneYear => '1 an';
  @override
  String get oneAndHalfYears => '1,5 ani';
  @override
  String get twoYears => '2 ani';
  @override
  String get twoAndHalfYears => '2,5 ani';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterRo
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Zilnic';
  @override
  String get weekly => 'Săptămânal';
  @override
  String get monthly => 'Lunar';
  @override
  String get yearly => 'Anual';
  @override
  String get custom => 'Personalizat';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsRo
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Cererea dvs.';
  @override
  String get landlord => 'Cererea chiriașului';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentRo
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Cerere trimisă cu succes!';
  @override
  String get sucessDescription =>
      'Puteți vedea această cerere în lista dvs. de cereri';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteRo
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ștergeți Muncitorul?';
  @override
  String get description => 'Sigur doriți să ștergeți acest muncitor?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteRo
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ștergeți Proprietatea?';
  @override
  String get message => 'Sigur doriți să ștergeți această proprietate?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveRo
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sigur doriți să aprobați această chirie?';
  @override
  String get description =>
      'Asigurați-vă că ați examinat acordul semnat de chiriaș.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptRo
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sigur doriți să acceptați această invitație?';
  @override
  String get description =>
      'Asigurați-vă că ați descărcat fișierul pdf al acordului!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsRo
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsRo implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Vă rugăm să introduceți adresa dvs. de ${_root.common.email}';
  @override
  String get invalid => '⦸ Email invalid, vă rugăm să încercați din nou';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsRo
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Parola trebuie să aibă cel puțin ${count} de caractere!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsRo
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți ${_root.common.password}';
  @override
  String get notMatched => 'Parola de confirmare nu se potrivește!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsRo
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsRo
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsRo
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsRo
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsRo implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți numele ${_root.common.city}.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsRo implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Vă rugăm să introduceți numele ${_root.common.state}.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsRo
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să selectați ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsRo implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți codul OTP.';
  @override
  String get invalid => 'Vă rugăm să introduceți un cod OTP corect.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsRo implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți titlul';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsRo implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vă rugăm să selectați ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsRo
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți motivul';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsRo
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să selectați ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsRo
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Vă rugăm să selectați ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsRo implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Vă rugăm să introduceți ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsRo
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să selectați ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsRo
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vă rugăm să introduceți ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Vă rugăm să introduceți un @form.anyField.label valid';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsRo
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vă rugăm să selectați ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid =>
      'Vă rugăm să selectați un @form.anyDropdown.label valid';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataRo
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Ro data1 =
      _TranslationsPagesOnboardOnboardDataData1Ro._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Ro data2 =
      _TranslationsPagesOnboardOnboardDataData2Ro._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Ro data3 =
      _TranslationsPagesOnboardOnboardDataData3Ro._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraRo
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Ține-mă minte';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Nu aveți un cont? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraRo
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendRo codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendRo._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraRo
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogRo dialog =
      _TranslationsPagesResetPasswordExtraDialogRo._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraRo
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Aveți un cont? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraRo
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Gestionați-vă propriile proprietăți';
  @override
  String get tenantTag => 'Conectați-vă la contul dvs. de închiriere';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraRo
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Mesaj...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormRo
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonRo reason =
      _TranslationsPagesCancelRentingFormReasonRo._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormRo
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteRo paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteRo._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraRo
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Suma de plată: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Numele titularului contului';
  @override
  String get accountNumber => 'Numărul contului';
  @override
  String get swiftCode => 'Cod Swift';
  @override
  String get branch => 'Sucursala';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Alegeți fișierele în format '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' sau numai în format '),
      fileType('DOC'),
      const TextSpan(text: '. Dimensiunea fișierului '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessRo
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Vizualizați factura';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description => 'Vom examina plata și o vom aproba în 24 de ore.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailRo
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Încercați din nou';
  @override
  String get title => 'Oops! Plata a eșuat';
  @override
  String get description =>
      'Tranzacția dvs. a eșuat din cauza unei erori tehnice.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraRo
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

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
      const TextSpan(text: 'Facilități '),
      fa('(Facilități și dotări)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Selectați perioada de închiriere';
  @override
  String get writeAReview => '+ Scrieți o recenzie';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraRo
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Căutați parcele, apartamente, camere...';
  @override
  String get noRecentSearch => 'Nu aveți căutări recente.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraRo
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Plata abonamentului a fost efectuată cu succes.\nPuteți accesa funcțiile la care v-ați abonat acum.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Ro
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Ro._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Găsiți-vă proprietatea';
  @override
  String get description =>
      'Am făcut ca găsirea unui loc care să se potrivească vieții tale să fie o joacă de copii - fie că este o cameră, un apartament sau o casă.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Ro
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Ro._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Apartament în oraș';
  @override
  String get description =>
      'Vă economisim timp prin potrivirea rapidă cu proprietatea perfectă înainte ca aceasta să dispară, astfel încât să vă puteți bucura de noua dvs. casă sau să o înregistrați pe a dvs. gratuit.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Ro
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Ro._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Casa ta confortabilă';
  @override
  String get description =>
      'Dacă sunteți în căutarea unui loc de locuit, aruncați o privire la casele noastre de închiriat. Avem o gamă largă de case din care puteți alege din toată țara.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendRo
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Codul trimis în ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Retrimite codul'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogRo
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Modificat cu succes!';
  @override
  String get subtitle =>
      'Conectați-vă cu noua dvs. parolă.\nRedirecționare către Conectare...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonRo
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Scrieți un motiv';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsRo errors =
      _TranslationsPagesCancelRentingFormReasonErrorsRo._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteRo
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Notă de plată (${_root.common.optional})';
  @override
  String get hint => 'Introduceți un text...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsRo
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsRo._(this._root);

  final TranslationsRo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vă rugăm să introduceți motivul anulării chiriei';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsRo {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Limba';
      case 'common.subscriptionPlan':
        return 'Plan de Abonament';
      case 'common.contactUs':
        return 'Contactați-ne';
      case 'common.termsAndConditions':
        return 'Termeni și Condiții';
      case 'common.aboutUs':
        return 'Despre Noi';
      case 'common.logout':
        return 'Deconectare';
      case 'common.editProfile':
        return 'Editați Profilul';
      case 'common.fullName':
        return 'Numele Complet';
      case 'common.email':
        return 'Email';
      case 'common.mobileNumber':
        return 'Număr de Telefon Mobil';
      case 'common.address':
        return 'Adresă';
      case 'common.postalCode':
        return 'Cod Poștal';
      case 'common.city':
        return 'Oraș';
      case 'common.country':
        return 'Țară';
      case 'common.state':
        return 'Stat';
      case 'common.password':
        return 'Parolă';
      case 'common.forgotPassword':
        return 'Ați uitat parola';
      case 'common.tenant':
        return 'Chiriaș';
      case 'common.landlord':
        return 'Proprietar';
      case 'common.cancelRenting':
        return 'Anulați Închirierea';
      case 'common.startDate':
        return 'Data de Început';
      case 'common.endDate':
        return 'Data de Sfârșit';
      case 'common.fromDate':
        return 'De la Data';
      case 'common.toDate':
        return 'Până la Data';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Lista Bancară';
      case 'common.withdrawMethod':
        return 'Metoda de Retragere';
      case 'common.uploadPaymentReceipt':
        return 'Încărcați Chitanța de Plată';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Notă: '),
            note(
              'Plata necesită aprobarea manuală de către administrator în termen de',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 ore.'),
          ],
        );
      case 'common.reviews':
        return 'Recenzii';
      case 'common.description':
        return 'Descriere';
      case 'common.about':
        return 'Despre';
      case 'common.propertyTypes':
        return 'Tipuri de Proprietăți';
      case 'common.features':
        return 'Caracteristici';
      case 'common.floorPlans':
        return 'Planuri de Etaj';
      case 'common.buildingDetails':
        return 'Detalii Clădire';
      case 'common.buildingName':
        return 'Numele Clădirii';
      case 'common.propertyAddress':
        return 'Adresa Proprietății';
      case 'common.completionYear':
        return 'Anul Finalizării';
      case 'common.lotNumber':
        return 'Numărul Lotului';
      case 'common.residentialType':
        return 'Tip Rezidențial';
      case 'common.furnishings':
        return 'Mobilier';
      case 'common.floorRange':
        return 'Interval Etaj';
      case 'common.bedrooms':
        return 'Dormitoare';
      case 'common.bathrooms':
        return 'Băi';
      case 'common.propertySize':
        return 'Suprafața Proprietății';
      case 'common.rentalPeriod':
        return 'Perioada de Închiriere';
      case 'common.securityDeposit':
        return 'Garanție';
      case 'common.utilityBill':
        return 'Factură Utilități';
      case 'common.facilities':
        return 'Facilități';
      case 'common.amenities':
        return 'Facilități';
      case 'common.expiringReason':
        return 'Motivul Expirării';
      case 'common.tenantDetails':
        return 'Detalii Chiriaș';
      case 'common.typeOfTenant':
        return 'Tipul Chiriașului';
      case 'common.tenantName':
        return 'Numele Chiriașului';
      case 'common.nidPassport':
        return 'NID/Pașaport';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID Chiriaș';
      case 'common.dateOfBirth':
        return 'Data Nașterii';
      case 'common.gender':
        return 'Gen';
      case 'common.nominee':
        return 'Candidat';
      case 'common.name':
        return 'Nume';
      case 'common.optional':
        return 'Opțional';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Contact de Urgență';
      case 'common.relation':
        return 'Relație';
      case 'common.relationWith':
        return '${_root.common.relation} With';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} You';
      case 'common.company':
        return 'Companie';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Loc de Muncă';
      case 'common.officePhoneNo':
        return 'Număr de Telefon Birou';
      case 'common.officeMobileNo':
        return 'Birou ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Vehicul';
      case 'common.vehiclesInfo.plain':
        return 'Informații Vehicule';
      case 'common.vehiclesInfo.optional':
        return 'Informații Vehicule (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Nr. Înregistrare Vehicul';
      case 'common.vehicleRegistrationNo.short':
        return 'Nr. Înregistrare';
      case 'common.vehicleRegistrationNo.alt':
        return 'Nr. Plăcuță';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Brand';
      case 'common.rentProperty':
        return 'Închiriază Proprietatea';
      case 'common.propertyDetails':
        return 'Detalii Proprietate';
      case 'common.propertyId':
        return 'ID Proprietate';
      case 'common.propertyType':
        return 'Tip Proprietate';
      case 'common.propertyName':
        return 'Nume Proprietate';
      case 'common.paymentDetails':
        return 'Detalii Plată';
      case 'common.monthlyRent':
        return 'Chirie Lunară';
      case 'common.thisMonthPayment':
        return 'Plata Lunii Curente';
      case 'common.totalPaidRent':
        return 'Total Chirie Plătită';
      case 'common.dueRent':
        return 'Chirie Restantă';
      case 'common.rentStartDate':
        return 'Început Închiriere ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Sfârșit Închiriere ${_root.common.endDate}';
      case 'common.status':
        return 'Statut';
      case 'common.rentAgreementPdf':
        return 'PDF Contract Închiriere';
      case 'common.noFile':
        return 'Niciun Fișier';
      case 'common.tenantImageOp':
        return 'Imagine Chiriaș ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Adaugă Vehicule Noi';
      case 'common.uploadNidPassport':
        return 'Încarcă NID/Pașaport';
      case 'common.nidPassportUploadNote':
        return 'Vor fi acceptate doar imagini de tip fișier. Limită fișier până la 2,5 MB.';
      case 'common.search':
        return 'Caută';
      case 'common.sortBy':
        return 'Sortează După';
      case 'common.subscription':
        return 'Abonament';
      case 'common.downloading':
        return 'Se descarcă...';
      case 'common.downloadSuccess':
        return 'Fișier descărcat cu succes!';
      case 'common.addPropertyBannerTitle':
        return 'Dorești să-ți Închiriezi Proprietatea?';
      case 'common.application':
        return 'Aplicație';
      case 'common.tenantHasPaidDeposit':
        return 'Chiriașul a plătit garanția.';
      case 'common.askProcessingRentApplication':
        return 'Sigur procesați această cerere de închiriere a proprietății?';
      case 'common.dateAndTime':
        return 'Data și Ora';
      case 'common.applicationDetails':
        return 'Detalii Aplicație';
      case 'common.depositStatus':
        return 'Statut Garanție';
      case 'common.uploadRentAgreement':
        return 'Încarcă Contract Închiriere';
      case 'common.uploadFilePDF':
        return 'Încarcă Fișier (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Vă rugăm să selectați un fișier document de acord.';
      case 'common.landlordRentAgreementPDF':
        return 'PDF Contract Închiriere Proprietar';
      case 'common.tenantRentAgreementPDF':
        return 'PDF Contract Închiriere Chiriaș';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Notă: '),
            note(
              'Aprobați cererea numai după ce chiriașul efectuează o plată a garanției.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Motivul Respingerii';
      case 'common.youveRejectedThisApplication':
        return 'Ați respins această cerere';
      case 'common.landlordDetails':
        return 'Detalii Proprietar';
      case 'common.landlordName':
        return 'Nume Proprietar';
      case 'common.downloadRentAgreement':
        return 'Descarcă Contract Închiriere';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Acceptați '),
            toc('Termeni și Condiții'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Notă: '),
            note(
              'Vă rugăm să descărcați și să citiți acordul. Vă rugăm să trimiteți acordul semnat proprietarului prin WhatsApp sau email.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Notă: '),
            note(
              'Proprietarul aprobă cererea, când chiriașul plătește garanția, utilitățile și plata chiriei în avans pe o lună.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Contract Închiriere (PDF) '),
            complete('Contract Complet'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Notă : '),
            note(
              'Proprietarul aprobă cererea, când chiriașul plătește garanția, utilitățile și plata chiriei în avans pe o lună.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Lista Aplicații';
      case 'common.viewDetails':
        return 'Vezi Detalii';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Acasă';
      case 'common.dashboard':
        return 'Panou de Control';
      case 'common.tenants':
        return 'Chiriași';
      case 'common.maintenance':
        return 'Întreținere';
      case 'common.maintenanceList':
        return 'Lista Întrețineri';
      case 'common.maintenanceReport':
        return 'Raport Întreținere';
      case 'common.labor':
        return 'Muncă';
      case 'common.applications':
        return 'Aplicații';
      case 'common.rentInvitation':
        return 'Invitație Închiriere';
      case 'common.payment':
        return 'Plată';
      case 'common.rentPayment':
        return 'Plată Chirie';
      case 'common.depositUtilityPayment':
        return 'Plată Garanție & Utilități';
      case 'common.refundRequest':
        return 'Cerere de Rambursare';
      case 'common.withdrawRequest':
        return 'Cerere de Retragere';
      case 'common.myProperty':
        return 'Proprietatea Mea';
      case 'common.myRent':
        return 'Chiria Mea';
      case 'common.wishlist':
        return 'Lista de Dorințe';
      case 'common.properties':
        return 'Proprietăți';
      case 'common.allProperties':
        return 'Toate Proprietățile';
      case 'common.totalPropery':
        return 'Total Proprietăți';
      case 'common.occupied':
        return 'Ocupat';
      case 'common.vacant':
        return 'Liber';
      case 'common.accounting':
        return 'Contabilitate';
      case 'common.totalIncome':
        return 'Venit Total';
      case 'common.totalExpense':
        return 'Cheltuieli Totale';
      case 'common.currentBalance':
        return 'Sold Curent';
      case 'common.totalWithdrawal':
        return 'Total (Retragere)';
      case 'common.totalProperties':
        return 'Total Proprietăți';
      case 'common.totalTenant':
        return 'Total Chiriași';
      case 'common.totalRentPaid':
        return 'Total Chirie Plătită';
      case 'common.totalRentDue':
        return 'Total Chirie Restantă';
      case 'common.totalApplication':
        return 'Total Aplicații';
      case 'common.pendingApplication':
        return 'Aplicație În Așteptare';
      case 'common.processingApplication':
        return 'Aplicație în Procesare';
      case 'common.approveApplication':
        return 'Aprobă Aplicația';
      case 'common.rejectApplication':
        return 'Respinge Aplicația';
      case 'common.maintenanceCost':
        return 'Cost Întreținere';
      case 'common.transactionSummary':
        return 'Rezumat Tranzacții';
      case 'common.maintenanceRequest':
        return 'Cerere de Întreținere';
      case 'common.notifications':
        return 'Notificări';
      case 'common.myProperties':
        return 'Proprietățile Mele';
      case 'common.recommendationProperties':
        return 'Proprietăți Recomandate';
      case 'common.laborList':
        return 'Lista Muncitori';
      case 'common.addLabor':
        return 'Adaugă Muncitor';
      case 'common.laborDetails':
        return 'Detalii Muncitor';
      case 'common.laborSalary':
        return 'Salariu Muncitor';
      case 'common.editLabor':
        return 'Editează Muncitor';
      case 'common.addNewLabor':
        return 'Adaugă Muncitor Nou';
      case 'common.enterAmount':
        return 'Introdu Suma';
      case 'common.maintenanceDetails':
        return 'Detalii Întreținere';
      case 'common.laborName':
        return 'Nume Muncitor';
      case 'common.comment':
        return 'Comentariu';
      case 'common.image':
        return 'Imagine';
      case 'common.complete':
        return 'Finalizat';
      case 'common.details':
        return 'Detalii';
      case 'common.title':
        return 'Titlu';
      case 'common.date':
        return 'Data';
      case 'common.reason':
        return 'Motiv';
      case 'common.edit':
        return 'Editează';
      case 'common.property':
        return 'Proprietate';
      case 'common.completeYourProfile':
        return 'Completează-ți Profilul';
      case 'common.profileImage':
        return 'Imagine de Profil';
      case 'common.imagePickHint':
        return 'Numai imagine JPEG și PNG cu dimensiunea maximă de 120x120 pixeli.';
      case 'common.invoiceId':
        return 'ID Factură';
      case 'common.depositAmount':
        return 'Suma Garanției';
      case 'common.landlordPhone':
        return 'Telefon Proprietar';
      case 'common.rentalAdvance':
        return 'Chirie (Avans)';
      case 'common.totalAmount':
        return 'Suma Totală';
      case 'common.rentalAmount':
        return 'Suma Chiriei';
      case 'common.adminCharge':
        return 'Taxă Administrativă';
      case 'common.editAccount':
        return 'Editează Contul';
      case 'common.addNewAccount':
        return 'Adaugă Cont Nou';
      case 'common.transactionId':
        return 'ID Tranzacție';
      case 'common.transactionType':
        return 'Tip Tranzacție';
      case 'common.requestDate':
        return 'Data Cererii';
      case 'common.amount':
        return 'Suma';
      case 'common.fee':
        return 'Taxă';
      case 'common.paymentStatus':
        return 'Statut Plată';
      case 'common.generatedTime':
        return 'Ora Generării';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Acesta este un raport generat de sistem al '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Istoric Retrageri';
      case 'common.history':
        return 'Istoric';
      case 'common.withdrawAmount':
        return 'Suma Retrasă';
      case 'common.availableBalance':
        return 'Sold Disponibil';
      case 'common.withdrawCharge':
        return 'Taxă Retragere';
      case 'common.paymentMethod':
        return 'Metodă de Plată';
      case 'common.requestSendSuccess':
        return 'Cerere trimisă cu succes!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Chitanță de plată trimisă cu succes.';
      case 'common.refundReason':
        return 'Motiv Rambursare';
      case 'common.note':
        return 'Notă';
      case 'common.refundReceiveSuccess':
        return 'Rambursare primită cu succes.';
      case 'common.downloadPaymentReceipt':
        return 'Descarcă Chitanță de Plată';
      case 'common.invoice':
        return 'Factură';
      case 'common.selectPropertyToSeeInvoice':
        return 'Selectați proprietatea pentru a vedea numărul facturii...';
      case 'common.bankAccName':
        return 'Nume Cont Bancar';
      case 'common.bankName':
        return 'Nume Bancă';
      case 'common.bankAccNum':
        return 'Număr Cont Bancar';
      case 'common.thankYou':
        return 'Mulțumim!';
      case 'common.basicInfo':
        return 'Informații de Bază';
      case 'common.descriptionPricing':
        return 'Descriere și Prețuri';
      case 'common.contact':
        return 'Contact';
      case 'common.photos':
        return 'Fotografii';
      case 'common.successfullySubmitted':
        return 'Trimis cu succes!';
      case 'common.editProperty':
        return 'Editează Proprietatea';
      case 'common.addNewProperty':
        return 'Adaugă Proprietate Nouă';
      case 'common.propertyManageRequestSuccess':
        return 'Anunțul dvs. a fost trimis spre examinare.';
      case 'common.postAnotherProperty':
        return 'Publică Altă Proprietate';
      case 'common.browseYourProperty':
        return 'Răsfoiți-vă Proprietatea';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Pasul '),
                step,
                const TextSpan(text: ' din '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Ce Ați Dori să Publicați?';
      case 'common.category':
        return 'Categorie';
      case 'common.invalidCategory':
        return 'Categorie Invalidă';
      case 'common.unitNumber':
        return 'Număr Unitate';
      case 'common.sqft':
        return 'mp';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Suprafața proprietății trebuie să fie mai mare decât zero';
      case 'common.whatAreTheFacility':
        return 'Care sunt facilitățile?';
      case 'common.whatAreTheAmenity':
        return 'Care sunt facilitățile?';
      case 'common.parkingLot':
        return 'Parcare';
      case 'common.houseType':
        return 'Tip Casă';
      case 'common.value':
        return 'Valoare';
      case 'common.unitLotSize':
        return 'Dimensiune Unitate / Lot';
      case 'common.landSize':
        return 'Suprafață Teren';
      case 'common.acres':
        return 'acru(i)';
      case 'common.roomSize':
        return 'Dimensiune Cameră';
      case 'common.askTenantPreference':
        return 'Care este preferința dvs. de chiriaș?';
      case 'common.couple':
        return 'Cuplu';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Descrieți ${propertyType}';
      case 'common.adTitle':
        return 'Titlu Anunț';
      case 'common.minimumRentalPeriod':
        return 'Perioadă Minimă de Închiriere';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Ascundeți sau afișați adresa de email';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Vă mulțumim că ați publicat pe ${appName}!';
      case 'common.propertyList':
        return 'Lista Proprietăți';
      case 'common.newInviteRent':
        return 'Invitație Nouă de Închiriere';
      case 'common.rentAgreement':
        return 'Contract de Închiriere';
      case 'common.rentDetails':
        return 'Detalii Închiriere';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Notă: '),
            note('Vă rugăm să așteptați ca chiriașul să accepte invitația.'),
          ],
        );
      case 'common.rent':
        return 'Închiriere';
      case 'common.editTenant':
        return 'Editează Chiriaș';
      case 'common.addNewTenant':
        return 'Adaugă Chiriaș Nou';
      case 'common.shareInstallLink':
        return 'Partajați link-ul de instalare';
      case 'common.tenantList':
        return 'Lista Chiriași';
      case 'common.editMaintenanceRequest':
        return 'Editează Cerere de Întreținere';
      case 'common.addNewMaintenance':
        return 'Adaugă Întreținere Nouă';
      case 'common.landlordId':
        return 'ID Proprietar';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Notă '),
            note(
              'Acordul dvs. este în curs de examinare. Vă rugăm să așteptați până când proprietarul vă aprobă chiria.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Editează Recenzia';
      case 'common.writeAReview':
        return 'Scrie o recenzie';
      case 'common.selectRating':
        return 'Selectați Evaluarea';
      case 'common.enterYourOpinion':
        return 'Introduceți-vă Opinia';
      case 'common.askToEnterReviewMsg':
        return 'Vă rugăm să introduceți un mesaj de recenzie';
      case 'common.pressBackAgainToExit':
        return 'Apăsați din nou înapoi pentru a ieși.';
      case 'common.selectPaymentMethod':
        return 'Selectați Metoda de Plată';
      case 'common.filter':
        return 'Filtru';
      case 'common.perMonth':
        return '/1 Lună';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => 'Căutați orice în ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Ceva nu a mers bine, vă rugăm să încercați din nou';
      case 'exceptions.noNidPassport':
        return 'Nu a fost furnizată nicio imagine NID/Pașaport.';
      case 'exceptions.noRentPropertyFound':
        return 'Nu s-a găsit nicio proprietate de închiriat pentru acest chiriaș.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Nu s-a găsit nicio proprietate!\nVă rugăm să încercați cu alte cuvinte cheie';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Nu s-a găsit niciun plan de abonament!\nVă rugăm să reîmprospătați pagina și să încercați din nou.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Informații ${dataType} nevalide! Vă rugăm să reîmprospătați pagina și să încercați din nou.';
      case 'exceptions.invalidDownloadUrl':
        return 'URL de descărcare invalid!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Nu s-a putut salva fișierul! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Eroare la deschiderea fișierului! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Nu au fost furnizate informații despre vehicul.';
      case 'exceptions.yourApplicationRejected':
        return 'Cererea dvs. a fost respinsă';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Nu s-a găsit nicio aplicație!\n${subject} va fi afișat aici când va fi disponibil.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Cererea dvs.';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Cererea chiriașului';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Nu s-a găsit nicio proprietate!\nVă rugăm să încercați să adăugați o proprietate pentru a o vedea aici.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Nu s-au găsit proprietăți recomandate\nVă rugăm să încercați din nou mai târziu.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Proprietăți indisponibile\nVă rugăm să încercați din nou mai târziu.';
      case 'exceptions.noImageProvided':
        return 'Nu a fost furnizată nicio imagine';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Nu s-a găsit nicio întreținere ${status}.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Nu s-a găsit nicio întreținere! Puteți crea o cerere de întreținere pentru a o vedea aici.';
      case 'exceptions.noDepositFound':
        return 'Nu s-a găsit nicio garanție!\nVă rugăm să puteți vedea garanțiile când vor fi disponibile';
      case 'exceptions.noRentPaymentFound':
        return 'Nu s-a găsit nicio plată de chirie!\nVă rugăm să puteți vedea plățile de chirie când vor fi disponibile';
      case 'exceptions.transactionSummaryApiException':
        return 'Nu s-a putut obține rezumatul tranzacțiilor.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Nu s-a găsit nicio cerere!\nVă rugăm să încercați să creați o cerere de retragere pentru a o vedea aici.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Această cerere de retragere nu a fost aprobată!.';
      case 'exceptions.nonZeroError':
        return 'Vă rugăm să introduceți o sumă validă mai mare decât zero.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Suma trebuie să fie de cel puțin ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Suma nu trebuie să depășească ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Vă rugăm să selectați mai întâi o metodă de plată.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Nu s-a găsit nicio cerere de rambursare ${status}!\nPuteți vedea cererea de rambursare aici când va fi disponibilă.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Nu s-a găsit nicio cerere de rambursare!\nPuteți crea o cerere de rambursare pentru a o vedea aici.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Chiriașul va aproba rambursarea când va primi banii înapoi';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Vom examina cererea de rambursare și o vom aproba în 24 de ore.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Vă rugăm să selectați numărul de ${value}';
      case 'exceptions.invalidDateRange':
        return 'Interval de date nevalid.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} trebuie să fie mai mare decât zero.';
      case 'exceptions.editProperty.rentalChange':
        return 'Proprietatea de închiriat se schimbă. Trebuie să fie valabilă (efectivă) numai pentru plata chiriei lunii următoare.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Proprietatea dvs. este deja închiriată de chiriaș. Nu o puteți șterge până când nu eliminați mai întâi chiriașul';
      case 'exceptions.editProperty.alreayRented':
        return 'Această proprietate este deja închiriată. Vă rugăm să încercați din nou mai târziu.\nSau puteți contacta proprietarul pentru mai multe informații.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Nu s-a găsit nicio invitație de închiriere!\nVă rugăm să încercați să creați o invitație de închiriere pentru a o vedea aici.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Nu s-a găsit nicio invitație de închiriere!\nPuteți vedea invitația de închiriere aici când va fi disponibilă.';
      case 'exceptions.notenantFoundList':
        return 'Nu există chiriași!\nVă rugăm să încercați să adăugați un chiriaș pentru a-l vedea aici.';
      case 'exceptions.noFeaturesProvided':
        return 'Nu au fost furnizate caracteristici.';
      case 'exceptions.noNotificationFound':
        return 'Nu există nicio notificare disponibilă.\nPuteți vedea notificarea dvs. aici când va fi disponibilă.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Sigur doriți să vă deconectați?';
      case 'prompt.application.rejectTitle':
        return 'De ce respingeți această cerere?';
      case 'prompt.application.applicationSent.successfully':
        return 'Cerere trimisă cu succes!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Puteți vedea această cerere în lista dvs. de cereri';
      case 'prompt.labor.delete.title':
        return 'Ștergeți Muncitorul?';
      case 'prompt.labor.delete.description':
        return 'Sigur doriți să ștergeți acest muncitor?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'De ce este respinsă această cerere?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Sigur procesați această cerere de întreținere?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Lucrare finalizată?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Ștergeți Metoda de Retragere?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Sigur doriți să ștergeți această metodă de retragere?';
      case 'prompt.unsavedChanges.title':
        return 'Sigur doriți să reveniți?';
      case 'prompt.unsavedChanges.message':
        return 'Câmpurile care sunt modificate nu vor fi salvate!';
      case 'prompt.property.delete.title':
        return 'Ștergeți Proprietatea?';
      case 'prompt.property.delete.message':
        return 'Sigur doriți să ștergeți această proprietate?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Sigur doriți să aprobați această chirie?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Asigurați-vă că ați examinat acordul semnat de chiriaș.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Sigur doriți să acceptați această invitație?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Asigurați-vă că ați descărcat fișierul pdf al acordului!';
      case 'prompt.sessionExpired.title':
        return 'Sesiune expirată';
      case 'prompt.sessionExpired.message':
        return 'Sesiunea dvs. a expirat. Vă rugăm să vă autentificați din nou';
      case 'prompt.sessionExpired.action':
        return 'Autentificare';
      case 'prompt.noInternet.title':
        return 'Fără Conexiune la Internet';
      case 'prompt.noInternet.message':
        return 'Vă rugăm să verificați conexiunea la rețeaua Wi-Fi sau mobilă și să încercați din nou';
      case 'prompt.noInternet.action':
        return 'Încearcă din nou';
      case 'prompt.permissionHandler.title':
        return 'Permisiune necesară!';
      case 'prompt.permissionHandler.message':
        return 'Trebuie să acordați permisiuni în setările aplicației. Doriți să deschideți setările acum?';
      case 'prompt.imagePicker.title':
        return 'Selectați Opțiunea';
      case 'prompt.imagePicker.gallery':
        return 'Galerie';
      case 'prompt.imagePicker.camera':
        return 'Cameră';
      case 'prompt.verificationDialog.title':
        return 'Verificați-vă Emailul';
      case 'prompt.verificationDialog.message':
        return 'Am trimis un email cu cod de verificare';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} la ${email}';
      case 'prompt.notification.clearTitle':
        return 'Ștergeți notificările?';
      case 'prompt.notification.clearMessage':
        return 'Sigur doriți să ștergeți toate notificările?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Introduceți ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Vă rugăm să introduceți ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Introduceți ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Vă rugăm să introduceți adresa dvs. de ${_root.common.email}';
      case 'form.email.errors.invalid':
        return '⦸ Email invalid, vă rugăm să încercați din nou';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Vă rugăm să introduceți ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Parola trebuie să aibă cel puțin ${count} de caractere!';
      case 'form.confirmPassword.label':
        return 'Confirmați ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Vă rugăm să introduceți ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Parola de confirmare nu se potrivește!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Vă rugăm să introduceți ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Numărul casei și numele străzii';
      case 'form.address1.errors.required':
        return 'Vă rugăm să introduceți ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Apartament, suită, unitate etc.';
      case 'form.address2.errors.required':
        return 'Vă rugăm să introduceți ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Introduceți ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Vă rugăm să introduceți ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Introduceți numele ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Vă rugăm să introduceți numele ${_root.common.city}.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Introduceți numele ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Vă rugăm să introduceți numele ${_root.common.state}.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Selectați ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Vă rugăm să selectați ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Vă rugăm să introduceți codul OTP.';
      case 'form.otp.errors.invalid':
        return 'Vă rugăm să introduceți un cod OTP corect.';
      case 'form.title.label':
        return 'Titlu';
      case 'form.title.hint':
        return 'Introduceți titlul';
      case 'form.title.errors.required':
        return 'Vă rugăm să introduceți titlul';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Selectați ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Vă rugăm să selectați ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Motiv';
      case 'form.reason.hint':
        return 'Introduceți motivul';
      case 'form.reason.errors.required':
        return 'Vă rugăm să introduceți motivul';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Selectați ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Vă rugăm să selectați ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Încărcați ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Vă rugăm să selectați ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Introduceți ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Vă rugăm să introduceți ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Selectați ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Vă rugăm să selectați ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Introduceți ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Vă rugăm să introduceți ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Vă rugăm să introduceți un @form.anyField.label valid';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Selectați ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Vă rugăm să selectați ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Vă rugăm să selectați un @form.anyDropdown.label valid';
      case 'action.next':
        return 'Următorul';
      case 'action.getStarted':
        return 'Începeți';
      case 'action.skip':
        return 'Omiteți';
      case 'action.select':
        return 'Selectați';
      case 'action.save':
        return 'Salvați';
      case 'action.signIn':
        return 'Conectați-vă';
      case 'action.signUp':
        return 'Înregistrați-vă';
      case 'action.kContinue':
        return 'Continuați';
      case 'action.clearAll':
        return 'Ștergeți tot';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Trimiteți';
      case 'action.pay':
        return 'Plătiți';
      case 'action.remove':
        return 'Eliminați';
      case 'action.goBack':
        return 'Înapoi';
      case 'action.buyNow':
        return 'Cumpărați acum';
      case 'action.no':
        return 'Nu';
      case 'action.open':
        return 'Deschideți';
      case 'action.addProperty':
        return 'Adăugați proprietatea';
      case 'action.process':
        return 'Procesați';
      case 'action.approve':
        return 'Aprobați';
      case 'action.reject':
        return 'Respingeți';
      case 'action.viewRent':
        return 'Vizualizați chiria';
      case 'action.openNavigationMenu':
        return 'Deschideți meniul de navigare';
      case 'action.seeAll':
        return 'Vezi tot';
      case 'action.update':
        return 'Actualizați';
      case 'action.printTransaction':
        return 'Imprimați tranzacția';
      case 'action.payoutRequest':
        return 'Cerere de plată';
      case 'action.addNew':
        return '+ Adăugați nou';
      case 'action.sendRequest':
        return 'Trimiteți cererea';
      case 'action.print':
        return 'Imprimați';
      case 'action.requestForRefund':
        return 'Cerere de rambursare';
      case 'action.previous':
        return 'Anterior';
      case 'action.delete':
        return 'Ștergeți';
      case 'action.applyProperty':
        return 'Aplicați proprietatea';
      case 'action.viewApplication':
        return 'Vizualizați cererea';
      case 'action.inviteTenant':
        return 'Invitați chiriașul';
      case 'action.inviteRent':
        return 'Invitați chiria';
      case 'action.cancel':
        return 'Anulați';
      case 'action.accept':
        return 'Acceptați';
      case 'action.submit':
        return 'Trimiteți';
      case 'action.yes':
        return 'Da';
      case 'action.okay':
        return 'Bine';
      case 'action.confirm':
        return 'Confirmați';
      case 'action.apply':
        return 'Aplicați';
      case 'action.reset':
        return 'Resetați';
      case 'action.retry':
        return 'Încercați din nou';
      case 'action.viewAll':
        return 'Vezi tot';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Găsiți-vă proprietatea';
      case 'pages.onboard.onboardData.data1.description':
        return 'Am făcut ca găsirea unui loc care să se potrivească vieții tale să fie o joacă de copii - fie că este o cameră, un apartament sau o casă.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Apartament în oraș';
      case 'pages.onboard.onboardData.data2.description':
        return 'Vă economisim timp prin potrivirea rapidă cu proprietatea perfectă înainte ca aceasta să dispară, astfel încât să vă puteți bucura de noua dvs. casă sau să o înregistrați pe a dvs. gratuit.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Casa ta confortabilă';
      case 'pages.onboard.onboardData.data3.description':
        return 'Dacă sunteți în căutarea unui loc de locuit, aruncați o privire la casele noastre de închiriat. Avem o gamă largă de case din care puteți alege din toată țara.';
      case 'pages.signIn.title':
        return 'Bine ați revenit';
      case 'pages.signIn.subtitle':
        return 'Conectați-vă acum pentru a începe o călătorie uimitoare.';
      case 'pages.signIn.extra.rememberMe':
        return 'Ține-mă minte';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Nu aveți un cont? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Parola uitată';
      case 'pages.forgotPassword.subtitle':
        return 'Introduceți adresa dvs. de e-mail pentru a vă recupera parola.';
      case 'pages.otpVerification.title':
        return 'Verificare';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Codul PIN din 4 cifre a fost trimis la adresa dvs. de e-mail. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Codul trimis în ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Retrimite codul'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Resetează parola';
      case 'pages.resetPassword.subtitle':
        return 'Resetați-vă parola pentru recuperare și conectați-vă la contul dvs.';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Modificat cu succes!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Conectați-vă cu noua dvs. parolă.\nRedirecționare către Conectare...';
      case 'pages.signUp.title':
        return 'Creați un cont';
      case 'pages.signUp.subtitle':
        return 'Înregistrați-vă acum pentru a începe o călătorie uimitoare';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Aveți un cont? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Cine sunteți?';
      case 'pages.welcome.subtitle':
        return 'Vă rugăm să selectați opțiunea de mai jos.';
      case 'pages.welcome.extra.landlordTag':
        return 'Gestionați-vă propriile proprietăți';
      case 'pages.welcome.extra.tenantTag':
        return 'Conectați-vă la contul dvs. de închiriere';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Notificări';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Mesaj...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'De ce ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Scrieți un motiv';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Vă rugăm să introduceți motivul anulării chiriei';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Plată offline';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Notă de plată (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Introduceți un text...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Suma de plată: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Numele titularului contului';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Numărul contului';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Cod Swift';
      case 'pages.offlinePayment.extra.branch':
        return 'Sucursala';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Alegeți fișierele în format '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' sau numai în format '),
            fileType('DOC'),
            const TextSpan(text: '. Dimensiunea fișierului '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Vizualizați factura';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Vom examina plata și o vom aproba în 24 de ore.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Încercați din nou';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Plata a eșuat';
      case 'pages.paymentStatus.fail.description':
        return 'Tranzacția dvs. a eșuat din cauza unei erori tehnice.';
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
            const TextSpan(text: 'Facilități '),
            fa('(Facilități și dotări)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Selectați perioada de închiriere';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Scrieți o recenzie';
      case 'pages.search.appbarTitle':
        return 'Căutare';
      case 'pages.search.extra.hint':
        return 'Căutați parcele, apartamente, camere...';
      case 'pages.search.extra.noRecentSearch':
        return 'Nu aveți căutări recente.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Alegeți-vă planul';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Plata abonamentului a fost efectuată cu succes.\nPuteți accesa funcțiile la care v-ați abonat acum.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Cost total întreținere: '),
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
        return 'Toată proprietatea';
      case 'enums.propertyStatus.pending':
        return 'În așteptare';
      case 'enums.propertyStatus.active':
        return 'Activ';
      case 'enums.propertyStatus.inactive':
        return 'Inactiv';
      case 'enums.propertyStatus.rejected':
        return 'Respins';
      case 'enums.propertyType.apartmentCondominium':
        return 'Apartament/Condominiu';
      case 'enums.propertyType.house':
        return 'Casă';
      case 'enums.propertyType.commercialProperty':
        return 'Proprietate comercială';
      case 'enums.propertyType.land':
        return 'Teren';
      case 'enums.propertyType.room':
        return 'Cameră';
      case 'enums.applicationStatus.all':
        return 'Toate';
      case 'enums.applicationStatus.pending':
        return 'În așteptare';
      case 'enums.applicationStatus.processing':
        return 'În curs de procesare';
      case 'enums.applicationStatus.approved':
        return 'Aprobat';
      case 'enums.applicationStatus.rejected':
        return 'Respins';
      case 'enums.myRentStatus.pending':
        return 'În așteptare';
      case 'enums.myRentStatus.processing':
        return 'În curs de procesare';
      case 'enums.myRentStatus.active':
        return 'Activ';
      case 'enums.myRentStatus.expired':
        return 'Expirat';
      case 'enums.myRentStatus.cancelled':
        return 'Anulat';
      case 'enums.maintenanceStatus.pending':
        return 'În așteptare';
      case 'enums.maintenanceStatus.processing':
        return 'În curs de procesare';
      case 'enums.maintenanceStatus.rejected':
        return 'Respins';
      case 'enums.maintenanceStatus.completed':
        return 'Finalizat';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privat (persoană fizică)';
      case 'enums.tenantProfileType.company':
        return 'Companie';
      case 'enums.tenantType.newTenant':
        return 'Chiriaș nou';
      case 'enums.tenantType.activeTenant':
        return 'Chiriaș activ';
      case 'enums.tenantType.expiredTenant':
        return 'Chiriaș expirat';
      case 'enums.paymentStatus.all':
        return 'Toate';
      case 'enums.paymentStatus.pending':
        return 'În așteptare';
      case 'enums.paymentStatus.paid':
        return 'Plătit';
      case 'enums.paymentStatus.unpaid':
        return 'Neplătit';
      case 'enums.paymentStatus.rejected':
        return 'Respins';
      case 'enums.paymentStatus.refund':
        return 'Rambursare';
      case 'enums.paymentOptions.onlinePayment':
        return 'Plată online';
      case 'enums.paymentOptions.offlinePayment':
        return 'Plată offline';
      case 'enums.paymentType.securityDeposit':
        return 'Depozit de garanție';
      case 'enums.paymentType.rentPayment':
        return 'Plată chirie';
      case 'enums.paymentType.subscription':
        return 'Abonament';
      case 'enums.gender.male':
        return 'Masculin';
      case 'enums.gender.female':
        return 'Feminin';
      case 'enums.gender.other':
        return 'Altul';
      case 'enums.ecRelation.wife':
        return 'Soție';
      case 'enums.ecRelation.parent':
        return 'Părinte';
      case 'enums.ecRelation.friend':
        return 'Prieten';
      case 'enums.ecRelation.brother':
        return 'Frate';
      case 'enums.ecRelation.sister':
        return 'Soră';
      case 'enums.ecRelation.child':
        return 'Copil';
      case 'enums.vehicleType.car':
        return 'Mașină';
      case 'enums.vehicleType.motorcycles':
        return 'Motociclete';
      case 'enums.vehicleType.lorry':
        return 'Camion';
      case 'enums.sortBy.lowToHigh':
        return 'De la mic la mare';
      case 'enums.sortBy.highToLow':
        return 'De la mare la mic';
      case 'enums.residentialType.flat':
        return 'Garsonieră';
      case 'enums.residentialType.apartment':
        return 'Apartament';
      case 'enums.residentialType.condominium':
        return 'Condominiu';
      case 'enums.residentialType.serviceResidence':
        return 'Rezidență de servicii';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Duplex';
      case 'enums.residentialType.townhouseCondo':
        return 'Casă înșiruită/Condo';
      case 'enums.residentialType.others':
        return 'Altele';
      case 'enums.floorRange.high':
        return 'Înalt';
      case 'enums.floorRange.medium':
        return 'Mediu';
      case 'enums.floorRange.low':
        return 'Scăzut';
      case 'enums.furnishings.fullyFurnished':
        return 'Complet mobilat';
      case 'enums.furnishings.partiallyFurnished':
        return 'Parțial mobilat';
      case 'enums.furnishings.notFurnished':
        return 'Nemobilat';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Spațiu de birouri';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Spațiu comercial';
      case 'enums.commercialPropertyType.shopLot':
        return 'Magazin';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Depozit / Fabrică';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Stațiune';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Altele';
      case 'enums.landPropertyType.residential':
        return 'Rezidențial';
      case 'enums.landPropertyType.industrial':
        return 'Industrial';
      case 'enums.landPropertyType.agricultural':
        return 'Agricol';
      case 'enums.landPropertyType.commercial':
        return 'Comercial';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Dezvoltare mixtă';
      case 'enums.landPropertyType.others':
        return 'Altele';
      case 'enums.residentPropertyType.condo':
        return 'Condo / Rezidență de servicii / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Apartament / Garsonieră';
      case 'enums.residentPropertyType.house':
        return 'Case';
      case 'enums.residentPropertyType.shoplot':
        return 'Magazin';
      case 'enums.residentPropertyType.sharing':
        return 'Împărțirea unei case / apartament';
      case 'enums.residentPropertyType.others':
        return 'Altele';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 luni';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 an';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 ani';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 ani';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 ani';
      case 'enums.dropdownDateFilter.daily':
        return 'Zilnic';
      case 'enums.dropdownDateFilter.weekly':
        return 'Săptămânal';
      case 'enums.dropdownDateFilter.monthly':
        return 'Lunar';
      case 'enums.dropdownDateFilter.yearly':
        return 'Anual';
      case 'enums.dropdownDateFilter.custom':
        return 'Personalizat';
      default:
        return null;
    }
  }
}
