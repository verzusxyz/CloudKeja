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
class TranslationsSk implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsSk({
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
             locale: AppLocale.sk,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <sk>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsSk _root = this; // ignore: unused_field

  @override
  TranslationsSk $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsSk(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonSk common = _TranslationsCommonSk._(_root);
  @override
  late final _TranslationsExceptionsSk exceptions = _TranslationsExceptionsSk._(
    _root,
  );
  @override
  late final _TranslationsPromptSk prompt = _TranslationsPromptSk._(_root);
  @override
  late final _TranslationsFormSk form = _TranslationsFormSk._(_root);
  @override
  late final _TranslationsActionSk action = _TranslationsActionSk._(_root);
  @override
  late final _TranslationsPagesSk pages = _TranslationsPagesSk._(_root);
  @override
  late final _TranslationsEnumsSk enums = _TranslationsEnumsSk._(_root);
}

// Path: common
class _TranslationsCommonSk implements TranslationsCommonEn {
  _TranslationsCommonSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Jazyk';
  @override
  String get subscriptionPlan => 'Plán predplatného';
  @override
  String get contactUs => 'Kontaktujte nás';
  @override
  String get termsAndConditions => 'Podmienky a pravidlá';
  @override
  String get aboutUs => 'O nás';
  @override
  String get logout => 'Odhlásiť sa';
  @override
  String get editProfile => 'Upraviť profil';
  @override
  String get fullName => 'Celé meno';
  @override
  String get email => 'E-mail';
  @override
  String get mobileNumber => 'Mobilné číslo';
  @override
  String get address => 'Adresa';
  @override
  String get postalCode => 'PSČ';
  @override
  String get city => 'Mesto';
  @override
  String get country => 'Krajina';
  @override
  String get state => 'Štát';
  @override
  String get password => 'Heslo';
  @override
  String get forgotPassword => 'Zabudnuté heslo';
  @override
  String get tenant => 'Nájomník';
  @override
  String get landlord => 'Prenajímateľ';
  @override
  String get cancelRenting => 'Zrušiť prenájom';
  @override
  String get startDate => 'Dátum začiatku';
  @override
  String get endDate => 'Dátum ukončenia';
  @override
  String get fromDate => 'Od dátumu';
  @override
  String get toDate => 'Do dátumu';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Zoznam bánk';
  @override
  String get withdrawMethod => 'Spôsob výberu';
  @override
  String get uploadPaymentReceipt => 'Nahrať potvrdenie o platbe';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Poznámka: '),
      note('Platba vyžaduje manuálne schválenie administrátorom do'),
      const TextSpan(text: ' '),
      duraion('24~48 hodín.'),
    ],
  );
  @override
  String get reviews => 'Recenzie';
  @override
  String get description => 'Popis';
  @override
  String get about => 'O';
  @override
  String get propertyTypes => 'Typy nehnuteľností';
  @override
  String get features => 'Vlastnosti';
  @override
  String get floorPlans => 'Pôdorysy';
  @override
  String get buildingDetails => 'Detaily budovy';
  @override
  String get buildingName => 'Názov budovy';
  @override
  String get propertyAddress => 'Adresa nehnuteľnosti';
  @override
  String get completionYear => 'Rok dokončenia';
  @override
  String get lotNumber => 'Číslo pozemku';
  @override
  String get residentialType => 'Typ bývania';
  @override
  String get furnishings => 'Zariadenie';
  @override
  String get floorRange => 'Rozsah poschodí';
  @override
  String get bedrooms => 'Spálne';
  @override
  String get bathrooms => 'Kúpeľne';
  @override
  String get propertySize => 'Veľkosť nehnuteľnosti';
  @override
  String get rentalPeriod => 'Doba prenájmu';
  @override
  String get securityDeposit => 'Záloha';
  @override
  String get utilityBill => 'Účet za energie';
  @override
  String get facilities => 'Vybavenie';
  @override
  String get amenities => 'Vybavenie';
  @override
  String get expiringReason => 'Dôvod vypršania platnosti';
  @override
  String get tenantDetails => 'Podrobnosti o nájomníkovi';
  @override
  String get typeOfTenant => 'Typ nájomníka';
  @override
  String get tenantName => 'Meno nájomníka';
  @override
  String get nidPassport => 'NID/Pas';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID nájomníka';
  @override
  String get dateOfBirth => 'Dátum narodenia';
  @override
  String get gender => 'Pohlavie';
  @override
  String get nominee => 'Nominant';
  @override
  String get name => 'Meno';
  @override
  String get optional => 'Voliteľné';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileSk nomineeMobile =
      _TranslationsCommonNomineeMobileSk._(_root);
  @override
  String get emergencyContact => 'Kontakt pre prípad núdze';
  @override
  String get relation => 'Vzťah';
  @override
  String get relationWith => '${_root.common.relation} S';
  @override
  String get relationWithYou => '${_root.common.relationWith} S tebou';
  @override
  String get company => 'Spoločnosť';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM č.';
  @override
  String get workplace => 'Pracovisko';
  @override
  String get officePhoneNo => 'Telefónne číslo do kancelárie';
  @override
  String get officeMobileNo => 'Kancelária ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Vozidlo';
  @override
  late final _TranslationsCommonVehiclesInfoSk vehiclesInfo =
      _TranslationsCommonVehiclesInfoSk._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Typ';
  @override
  late final _TranslationsCommonVehicleRegistrationNoSk vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoSk._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Značka';
  @override
  String get rentProperty => 'Prenajať nehnuteľnosť';
  @override
  String get propertyDetails => 'Detaily nehnuteľnosti';
  @override
  String get propertyId => 'ID nehnuteľnosti';
  @override
  String get propertyType => 'Typ nehnuteľnosti';
  @override
  String get propertyName => 'Názov nehnuteľnosti';
  @override
  String get paymentDetails => 'Detaily platby';
  @override
  String get monthlyRent => 'Mesačné nájomné';
  @override
  String get thisMonthPayment => 'Platba za tento mesiac';
  @override
  String get totalPaidRent => 'Celkom zaplatené nájomné';
  @override
  String get dueRent => 'Dlžné nájomné';
  @override
  String get rentStartDate => 'Nájom ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Nájom ${_root.common.endDate}';
  @override
  String get status => 'Stav';
  @override
  String get rentAgreementPdf => 'PDF zmluvy o prenájme';
  @override
  String get noFile => 'Žiadny súbor';
  @override
  String get tenantImageOp => 'Obrázok nájomníka ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Pridať nové vozidlá';
  @override
  String get uploadNidPassport => 'Nahrať NID/Pas';
  @override
  String get nidPassportUploadNote =>
      'Budú akceptované iba obrázky typu súboru. Limit veľkosti súboru do 2,5 MB.';
  @override
  String get search => 'Hľadať';
  @override
  String get sortBy => 'Zoradiť podľa';
  @override
  String get subscription => 'Predplatné';
  @override
  String get downloading => 'Sťahovanie...';
  @override
  String get downloadSuccess => 'Súbor bol úspešne stiahnutý!';
  @override
  String get addPropertyBannerTitle => 'Chcete prenajať svoju nehnuteľnosť?';
  @override
  String get application => 'Žiadosť';
  @override
  String get tenantHasPaidDeposit => 'Nájomník zaplatil zálohu.';
  @override
  String get askProcessingRentApplication =>
      'Ste si istý, že spracovávate túto žiadosť o prenájom nehnuteľnosti?';
  @override
  String get dateAndTime => 'Dátum a čas';
  @override
  String get applicationDetails => 'Detaily žiadosti';
  @override
  String get depositStatus => 'Stav zálohy';
  @override
  String get uploadRentAgreement => 'Nahrať zmluvu o prenájme';
  @override
  String get uploadFilePDF => 'Nahrať súbor (PDF)';
  @override
  String get askSelectRentAgreement => 'Vyberte súbor s dokumentom zmluvy.';
  @override
  String get landlordRentAgreementPDF => 'PDF zmluvy o prenájme prenajímateľom';
  @override
  String get tenantRentAgreementPDF => 'PDF zmluvy o prenájme nájomníkom';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Poznámka: '),
          note('Žiadosť schváľte až po zaplatení zálohy nájomníkom.'),
        ],
      );
  @override
  String get reasonOfRejection => 'Dôvod zamietnutia';
  @override
  String get youveRejectedThisApplication => 'Túto žiadosť ste zamietli';
  @override
  String get landlordDetails => 'Detaily prenajímateľa';
  @override
  String get landlordName => 'Meno prenajímateľa';
  @override
  String get downloadRentAgreement => 'Stiahnuť zmluvu o prenájme';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Akceptovať '),
      toc('Podmienky a pravidlá'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Poznámka: '),
      note(
        'Stiahnite si a prečítajte si zmluvu. Podpísanú zmluvu pošlite prenajímateľovi cez WhatsApp alebo e-mailom.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Poznámka: '),
      note(
        'Prenajímateľ schváli žiadosť, keď nájomník zaplatí zálohu, energie a nájomné za jeden mesiac vopred.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Zmluva o prenájme (PDF) '),
          complete('Kompletná zmluva'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Poznámka : '),
      note(
        'Prenajímateľ schváli žiadosť, keď nájomník zaplatí zálohu, energie a nájomné za jeden mesiac vopred.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Zoznam žiadostí';
  @override
  String get viewDetails => 'Zobraziť detaily';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Domov';
  @override
  String get dashboard => 'Dashboard';
  @override
  String get tenants => 'Nájomníci';
  @override
  String get maintenance => 'Údržba';
  @override
  String get maintenanceList => 'Zoznam údržby';
  @override
  String get maintenanceReport => 'Správa o údržbe';
  @override
  String get labor => 'Práca';
  @override
  String get applications => 'Žiadosti';
  @override
  String get rentInvitation => 'Pozvánka na prenájom';
  @override
  String get payment => 'Platba';
  @override
  String get rentPayment => 'Platba nájomného';
  @override
  String get depositUtilityPayment => 'Platba zálohy a energií';
  @override
  String get refundRequest => 'Žiadosť o vrátenie peňazí';
  @override
  String get withdrawRequest => 'Žiadosť o výber';
  @override
  String get myProperty => 'Moja nehnuteľnosť';
  @override
  String get myRent => 'Môj nájom';
  @override
  String get wishlist => 'Zoznam želaní';
  @override
  String get properties => 'Nehnuteľnosti';
  @override
  String get allProperties => 'Všetky nehnuteľnosti';
  @override
  String get totalPropery => 'Celkom nehnuteľností';
  @override
  String get occupied => 'Obsadené';
  @override
  String get vacant => 'Voľné';
  @override
  String get accounting => 'Účtovníctvo';
  @override
  String get totalIncome => 'Celkový príjem';
  @override
  String get totalExpense => 'Celkové výdavky';
  @override
  String get currentBalance => 'Aktuálny zostatok';
  @override
  String get totalWithdrawal => 'Celkom (výber)';
  @override
  String get totalProperties => 'Celkom nehnuteľností';
  @override
  String get totalTenant => 'Celkom nájomníkov';
  @override
  String get totalRentPaid => 'Celkom zaplatené nájomné';
  @override
  String get totalRentDue => 'Celkom dlžné nájomné';
  @override
  String get totalApplication => 'Celkom žiadostí';
  @override
  String get pendingApplication => 'Čakajúce žiadosti';
  @override
  String get processingApplication => 'Spracovávané žiadosti';
  @override
  String get approveApplication => 'Schváliť žiadosti';
  @override
  String get rejectApplication => 'Zamietnuť žiadosti';
  @override
  String get maintenanceCost => 'Náklady na údržbu';
  @override
  String get transactionSummary => 'Súhrn transakcií';
  @override
  String get maintenanceRequest => 'Žiadosť o údržbu';
  @override
  String get notifications => 'Oznámenia';
  @override
  String get myProperties => 'Moje nehnuteľnosti';
  @override
  String get recommendationProperties => 'Odporúčané nehnuteľnosti';
  @override
  String get laborList => 'Zoznam pracovníkov';
  @override
  String get addLabor => 'Pridať pracovníka';
  @override
  String get laborDetails => 'Detaily pracovníka';
  @override
  String get laborSalary => 'Mzda pracovníka';
  @override
  String get editLabor => 'Upraviť pracovníka';
  @override
  String get addNewLabor => 'Pridať nového pracovníka';
  @override
  String get enterAmount => 'Zadať sumu';
  @override
  String get maintenanceDetails => 'Detaily údržby';
  @override
  String get laborName => 'Meno pracovníka';
  @override
  String get comment => 'Komentár';
  @override
  String get image => 'Obrázok';
  @override
  String get complete => 'Dokončiť';
  @override
  String get details => 'Detaily';
  @override
  String get title => 'Názov';
  @override
  String get date => 'Dátum';
  @override
  String get reason => 'Dôvod';
  @override
  String get edit => 'Upraviť';
  @override
  String get property => 'Nehnuteľnosť';
  @override
  String get completeYourProfile => 'Dokončite svoj profil';
  @override
  String get profileImage => 'Profilový obrázok';
  @override
  String get imagePickHint =>
      'Iba obrázok JPEG a PNG s maximálnou veľkosťou 120 x 120 pixelov.';
  @override
  String get invoiceId => 'ID faktúry';
  @override
  String get depositAmount => 'Suma zálohy';
  @override
  String get landlordPhone => 'Telefón prenajímateľa';
  @override
  String get rentalAdvance => 'Nájomné (vopred)';
  @override
  String get totalAmount => 'Celková suma';
  @override
  String get rentalAmount => 'Suma nájomného';
  @override
  String get adminCharge => 'Poplatok za správu';
  @override
  String get editAccount => 'Upraviť účet';
  @override
  String get addNewAccount => 'Pridať nový účet';
  @override
  String get transactionId => 'ID transakcie';
  @override
  String get transactionType => 'Typ transakcie';
  @override
  String get requestDate => 'Dátum žiadosti';
  @override
  String get amount => 'Suma';
  @override
  String get fee => 'Poplatok';
  @override
  String get paymentStatus => 'Stav platby';
  @override
  String get generatedTime => 'Čas vygenerovania';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Toto je systémom generovaná správa o aplikácii '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'História výberov';
  @override
  String get history => 'História';
  @override
  String get withdrawAmount => 'Suma výberu';
  @override
  String get availableBalance => 'Dostupný zostatok';
  @override
  String get withdrawCharge => 'Poplatok za výber';
  @override
  String get paymentMethod => 'Spôsob platby';
  @override
  String get requestSendSuccess => 'Žiadosť bola úspešne odoslaná!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Potvrdenie o platbe bolo úspešne odoslané.';
  @override
  String get refundReason => 'Dôvod vrátenia peňazí';
  @override
  String get note => 'Poznámka';
  @override
  String get refundReceiveSuccess => 'Vrátenie peňazí bolo úspešne prijaté.';
  @override
  String get downloadPaymentReceipt => 'Stiahnuť potvrdenie o platbe';
  @override
  String get invoice => 'Faktúra';
  @override
  String get selectPropertyToSeeInvoice =>
      'Vyberte nehnuteľnosť, aby ste videli číslo faktúry...';
  @override
  String get bankAccName => 'Názov bankového účtu';
  @override
  String get bankName => 'Názov banky';
  @override
  String get bankAccNum => 'Číslo bankového účtu';
  @override
  String get thankYou => 'Ďakujeme!';
  @override
  String get basicInfo => 'Základné informácie';
  @override
  String get descriptionPricing => 'Popis a cena';
  @override
  String get contact => 'Kontakt';
  @override
  String get photos => 'Fotografie';
  @override
  String get successfullySubmitted => 'Úspešne odoslané!';
  @override
  String get editProperty => 'Upraviť nehnuteľnosť';
  @override
  String get addNewProperty => 'Pridať novú nehnuteľnosť';
  @override
  String get propertyManageRequestSuccess =>
      'Váš inzerát bol odoslaný na kontrolu.';
  @override
  String get postAnotherProperty => 'Uverejniť ďalšiu nehnuteľnosť';
  @override
  String get browseYourProperty => 'Prezrieť si svoju nehnuteľnosť';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Krok '),
      step,
      const TextSpan(text: ' z '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Čo by ste chceli uverejniť?';
  @override
  String get category => 'Kategória';
  @override
  String get invalidCategory => 'Neplatná kategória';
  @override
  String get unitNumber => 'Číslo jednotky';
  @override
  String get sqft => 'štvorcových stôp';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Veľkosť nehnuteľnosti by mala byť väčšia ako nula';
  @override
  String get whatAreTheFacility => 'Aké sú zariadenia?';
  @override
  String get whatAreTheAmenity => 'Aké je vybavenie?';
  @override
  String get parkingLot => 'Parkovisko';
  @override
  String get houseType => 'Typ domu';
  @override
  String get value => 'Hodnota';
  @override
  String get unitLotSize => 'Veľkosť jednotky / pozemku';
  @override
  String get landSize => 'Veľkosť pozemku';
  @override
  String get acres => 'akrov';
  @override
  String get roomSize => 'Veľkosť izby';
  @override
  String get askTenantPreference => 'Aké sú vaše preferencie nájomníkov?';
  @override
  String get couple => 'Pár';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Popíšte ${propertyType}';
  @override
  String get adTitle => 'Názov inzerátu';
  @override
  String get minimumRentalPeriod => 'Minimálna doba prenájmu';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Číslo';
  @override
  String get hideOrDisplayEmail => 'Skryť alebo zobraziť e-mailovú adresu';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Ďakujeme, že ste uverejnili na ${appName}!';
  @override
  String get propertyList => 'Zoznam nehnuteľností';
  @override
  String get newInviteRent => 'Nová pozvánka na prenájom';
  @override
  String get rentAgreement => 'Zmluva o prenájme';
  @override
  String get rentDetails => 'Detaily prenájmu';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Poznámka: '),
      note('Počkajte, kým nájomník prijme pozvánku.'),
    ],
  );
  @override
  String get rent => 'Nájom';
  @override
  String get editTenant => 'Upraviť nájomníka';
  @override
  String get addNewTenant => 'Pridať nového nájomníka';
  @override
  String get shareInstallLink => 'Zdieľať odkaz na inštaláciu';
  @override
  String get tenantList => 'Zoznam nájomníkov';
  @override
  String get editMaintenanceRequest => 'Upraviť žiadosť o údržbu';
  @override
  String get addNewMaintenance => 'Pridať novú údržbu';
  @override
  String get landlordId => 'ID prenajímateľa';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Poznámka '),
      note(
        'Vaša zmluva je kontrolovaná. Počkajte, kým prenajímateľ schváli váš prenájom.',
      ),
    ],
  );
  @override
  String get editReview => 'Upraviť recenziu';
  @override
  String get writeAReview => 'Napísať recenziu';
  @override
  String get selectRating => 'Vybrať hodnotenie';
  @override
  String get enterYourOpinion => 'Zadať svoj názor';
  @override
  String get askToEnterReviewMsg => 'Zadajte správu s recenziou';
  @override
  String get pressBackAgainToExit =>
      'Stlačte znova tlačidlo Späť pre ukončenie.';
  @override
  String get selectPaymentMethod => 'Vybrať spôsob platby';
  @override
  String get filter => 'Filter';
  @override
  String get perMonth => '/1 mesiac';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Hľadať čokoľvek v aplikácii ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsSk implements TranslationsExceptionsEn {
  _TranslationsExceptionsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Niečo sa pokazilo, skúste to znova';
  @override
  String get noNidPassport => 'Nebol poskytnutý žiadny obrázok NID/Pasu.';
  @override
  String get noRentPropertyFound =>
      'Pre tohto nájomníka sa nenašla žiadna prenajatá nehnuteľnosť.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Nenájdená žiadna nehnuteľnosť!\nSkúste to s inými kľúčovými slovami';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Nenašiel sa žiadny plán predplatného!\nObnovte stránku a skúste to znova.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Neplatné informácie o ${dataType}! Obnovte stránku a skúste to znova.';
  @override
  String get invalidDownloadUrl => 'Neplatná adresa URL na stiahnutie!';
  @override
  String failedToSaveFile({required String error}) =>
      'Nepodarilo sa uložiť súbor! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Chyba pri otváraní súboru! ${error}';
  @override
  String get noVehicleInfoProvided =>
      'Neboli poskytnuté žiadne informácie o vozidle.';
  @override
  String get yourApplicationRejected => 'Vaša žiadosť bola zamietnutá';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSk
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintSk._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintSk noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintSk._(_root);
  @override
  String get noImageProvided => 'Nebol poskytnutý žiadny obrázok';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundSk
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundSk._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Nenájdená žiadna záloha!\nZálohy si môžete pozrieť, keď budú k dispozícii';
  @override
  String get noRentPaymentFound =>
      'Nenájdená žiadna platba nájomného!\nPlatby nájomného si môžete pozrieť, keď budú k dispozícii';
  @override
  String get transactionSummaryApiException =>
      'Nepodarilo sa získať súhrn transakcií.';
  @override
  String get noWithdrawRequestFound =>
      'Nenájdená žiadna žiadosť!\nSkúste vytvoriť žiadosť o výber, aby ste ju tu videli.';
  @override
  String get withdrawRequestNotApproved =>
      'Táto žiadosť o výber nebola schválená!.';
  @override
  String get nonZeroError => 'Zadajte platnú sumu väčšiu ako nula.';
  @override
  String minAmountError({required String minValue}) =>
      'Suma musí byť aspoň ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Suma nesmie presiahnuť ${maxValue}.';
  @override
  String get selectPaymentMethodHint => 'Najprv vyberte spôsob platby.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundSk
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundSk._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintSk refundRequestHint =
      _TranslationsExceptionsRefundRequestHintSk._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Vyberte počet ${value}';
  @override
  String get invalidDateRange => 'Neplatný rozsah dátumov.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} musí byť väčšie ako nula.';
  @override
  late final _TranslationsExceptionsEditPropertySk editProperty =
      _TranslationsExceptionsEditPropertySk._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationSk rentInvitation =
      _TranslationsExceptionsRentInvitationSk._(_root);
  @override
  String get notenantFoundList =>
      'Žiadni nájomníci!\nSkúste pridať nájomníka, aby ste ho tu videli.';
  @override
  String get noFeaturesProvided => 'Neboli poskytnuté žiadne funkcie.';
  @override
  String get noNotificationFound =>
      'Žiadne dostupné oznámenie.\nOznámenie si môžete pozrieť tu, keď bude k dispozícii.';
}

// Path: prompt
class _TranslationsPromptSk implements TranslationsPromptEn {
  _TranslationsPromptSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutSk logout = _TranslationsPromptLogoutSk._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationSk application =
      _TranslationsPromptApplicationSk._(_root);
  @override
  late final _TranslationsPromptLaborSk labor = _TranslationsPromptLaborSk._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestSk maintenanceRequest =
      _TranslationsPromptMaintenanceRequestSk._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodSk withdrawMethod =
      _TranslationsPromptWithdrawMethodSk._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesSk unsavedChanges =
      _TranslationsPromptUnsavedChangesSk._(_root);
  @override
  late final _TranslationsPromptPropertySk property =
      _TranslationsPromptPropertySk._(_root);
  @override
  late final _TranslationsPromptRentInvitationSk rentInvitation =
      _TranslationsPromptRentInvitationSk._(_root);
  @override
  late final _TranslationsPromptSessionExpiredSk sessionExpired =
      _TranslationsPromptSessionExpiredSk._(_root);
  @override
  late final _TranslationsPromptNoInternetSk noInternet =
      _TranslationsPromptNoInternetSk._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerSk permissionHandler =
      _TranslationsPromptPermissionHandlerSk._(_root);
  @override
  late final _TranslationsPromptImagePickerSk imagePicker =
      _TranslationsPromptImagePickerSk._(_root);
  @override
  late final _TranslationsPromptVerificationDialogSk verificationDialog =
      _TranslationsPromptVerificationDialogSk._(_root);
  @override
  late final _TranslationsPromptNotificationSk notification =
      _TranslationsPromptNotificationSk._(_root);
}

// Path: form
class _TranslationsFormSk implements TranslationsFormEn {
  _TranslationsFormSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameSk fullName =
      _TranslationsFormFullNameSk._(_root);
  @override
  late final _TranslationsFormEmailSk email = _TranslationsFormEmailSk._(_root);
  @override
  late final _TranslationsFormPasswordSk password =
      _TranslationsFormPasswordSk._(_root);
  @override
  late final _TranslationsFormConfirmPasswordSk confirmPassword =
      _TranslationsFormConfirmPasswordSk._(_root);
  @override
  late final _TranslationsFormMobileNumberSk mobileNumber =
      _TranslationsFormMobileNumberSk._(_root);
  @override
  late final _TranslationsFormAddress1Sk address1 =
      _TranslationsFormAddress1Sk._(_root);
  @override
  late final _TranslationsFormAddress2Sk address2 =
      _TranslationsFormAddress2Sk._(_root);
  @override
  late final _TranslationsFormPostalCodeSk postalCode =
      _TranslationsFormPostalCodeSk._(_root);
  @override
  late final _TranslationsFormCitySk city = _TranslationsFormCitySk._(_root);
  @override
  late final _TranslationsFormStateSk state = _TranslationsFormStateSk._(_root);
  @override
  late final _TranslationsFormCountrySk country = _TranslationsFormCountrySk._(
    _root,
  );
  @override
  late final _TranslationsFormOtpSk otp = _TranslationsFormOtpSk._(_root);
  @override
  late final _TranslationsFormTitleSk title = _TranslationsFormTitleSk._(_root);
  @override
  late final _TranslationsFormDateSk date = _TranslationsFormDateSk._(_root);
  @override
  late final _TranslationsFormReasonSk reason = _TranslationsFormReasonSk._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodSk withdrawMethod =
      _TranslationsFormWithdrawMethodSk._(_root);
  @override
  late final _TranslationsFormFileFieldSk fileField =
      _TranslationsFormFileFieldSk._(_root);
  @override
  late final _TranslationsFormNoteSk note = _TranslationsFormNoteSk._(_root);
  @override
  late final _TranslationsFormGenderSk gender = _TranslationsFormGenderSk._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldSk anyField =
      _TranslationsFormAnyFieldSk._(_root);
  @override
  late final _TranslationsFormAnyDropdownSk anyDropdown =
      _TranslationsFormAnyDropdownSk._(_root);
}

// Path: action
class _TranslationsActionSk implements TranslationsActionEn {
  _TranslationsActionSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Ďalej';
  @override
  String get getStarted => 'Začať';
  @override
  String get skip => 'Preskočiť';
  @override
  String get select => 'Vybrať';
  @override
  String get save => 'Uložiť';
  @override
  String get signIn => 'Prihlásiť sa';
  @override
  String get signUp => 'Zaregistrovať sa';
  @override
  String get kContinue => 'Pokračovať';
  @override
  String get clearAll => 'Vymazať všetko';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Odoslať';
  @override
  String get pay => 'Zaplatiť';
  @override
  String get remove => 'Odstrániť';
  @override
  String get goBack => 'Ísť späť';
  @override
  String get buyNow => 'Kúpiť teraz';
  @override
  String get no => 'Nie';
  @override
  String get open => 'Otvoriť';
  @override
  String get addProperty => 'Pridať nehnuteľnosť';
  @override
  String get process => 'Spracovať';
  @override
  String get approve => 'Schváliť';
  @override
  String get reject => 'Zamietnuť';
  @override
  String get viewRent => 'Zobraziť nájom';
  @override
  String get openNavigationMenu => 'Otvoriť navigačnú ponuku';
  @override
  String get seeAll => 'Zobraziť všetko';
  @override
  String get update => 'Aktualizovať';
  @override
  String get printTransaction => 'Vytlačiť transakciu';
  @override
  String get payoutRequest => 'Žiadosť o výplatu';
  @override
  String get addNew => '+ Pridať nový';
  @override
  String get sendRequest => 'Odoslať žiadosť';
  @override
  String get print => 'Vytlačiť';
  @override
  String get requestForRefund => 'Žiadosť o vrátenie peňazí';
  @override
  String get previous => 'Predchádzajúci';
  @override
  String get delete => 'Odstrániť';
  @override
  String get applyProperty => 'Požiadať o nehnuteľnosť';
  @override
  String get viewApplication => 'Zobraziť žiadosť';
  @override
  String get inviteTenant => 'Pozvať nájomníka';
  @override
  String get inviteRent => 'Pozvať na prenájom';
  @override
  String get cancel => 'Zrušiť';
  @override
  String get accept => 'Prijať';
  @override
  String get submit => 'Odoslať';
  @override
  String get yes => 'Áno';
  @override
  String get okay => 'Dobre';
  @override
  String get confirm => 'Potvrdiť';
  @override
  String get apply => 'Použiť';
  @override
  String get reset => 'Resetovať';
  @override
  String get retry => 'Skúsiť znova';
  @override
  String get viewAll => 'Zobraziť všetko';
}

// Path: pages
class _TranslationsPagesSk implements TranslationsPagesEn {
  _TranslationsPagesSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageSk language =
      _TranslationsPagesLanguageSk._(_root);
  @override
  late final _TranslationsPagesOnboardSk onboard =
      _TranslationsPagesOnboardSk._(_root);
  @override
  late final _TranslationsPagesSignInSk signIn = _TranslationsPagesSignInSk._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordSk forgotPassword =
      _TranslationsPagesForgotPasswordSk._(_root);
  @override
  late final _TranslationsPagesOtpVerificationSk otpVerification =
      _TranslationsPagesOtpVerificationSk._(_root);
  @override
  late final _TranslationsPagesResetPasswordSk resetPassword =
      _TranslationsPagesResetPasswordSk._(_root);
  @override
  late final _TranslationsPagesSignUpSk signUp = _TranslationsPagesSignUpSk._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeSk welcome =
      _TranslationsPagesWelcomeSk._(_root);
  @override
  late final _TranslationsPagesAboutUsSk aboutUs =
      _TranslationsPagesAboutUsSk._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsSk termsAndConditions =
      _TranslationsPagesTermsAndConditionsSk._(_root);
  @override
  late final _TranslationsPagesNotificationListSk notificationList =
      _TranslationsPagesNotificationListSk._(_root);
  @override
  late final _TranslationsPagesContactUsSk contactUs =
      _TranslationsPagesContactUsSk._(_root);
  @override
  late final _TranslationsPagesCancelRentingSk cancelRenting =
      _TranslationsPagesCancelRentingSk._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsSk invoiceDetails =
      _TranslationsPagesInvoiceDetailsSk._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentSk offlinePayment =
      _TranslationsPagesOfflinePaymentSk._(_root);
  @override
  late final _TranslationsPagesPaymentStatusSk paymentStatus =
      _TranslationsPagesPaymentStatusSk._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsSk propertyDetails =
      _TranslationsPagesPropertyDetailsSk._(_root);
  @override
  late final _TranslationsPagesSearchSk search = _TranslationsPagesSearchSk._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanSk subscriptionPlan =
      _TranslationsPagesSubscriptionPlanSk._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportSk
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportSk._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsSk implements TranslationsEnumsEn {
  _TranslationsEnumsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusSk propertyStatus =
      _TranslationsEnumsPropertyStatusSk._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeSk propertyType =
      _TranslationsEnumsPropertyTypeSk._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusSk applicationStatus =
      _TranslationsEnumsApplicationStatusSk._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusSk myRentStatus =
      _TranslationsEnumsMyRentStatusSk._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusSk maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusSk._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeSk tenantProfileType =
      _TranslationsEnumsTenantProfileTypeSk._(_root);
  @override
  late final _TranslationsEnumsTenantTypeSk tenantType =
      _TranslationsEnumsTenantTypeSk._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusSk paymentStatus =
      _TranslationsEnumsPaymentStatusSk._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsSk paymentOptions =
      _TranslationsEnumsPaymentOptionsSk._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeSk paymentType =
      _TranslationsEnumsPaymentTypeSk._(_root);
  @override
  late final _TranslationsEnumsGenderSk gender = _TranslationsEnumsGenderSk._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationSk ecRelation =
      _TranslationsEnumsEcRelationSk._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeSk vehicleType =
      _TranslationsEnumsVehicleTypeSk._(_root);
  @override
  late final _TranslationsEnumsSortBySk sortBy = _TranslationsEnumsSortBySk._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeSk residentialType =
      _TranslationsEnumsResidentialTypeSk._(_root);
  @override
  late final _TranslationsEnumsFloorRangeSk floorRange =
      _TranslationsEnumsFloorRangeSk._(_root);
  @override
  late final _TranslationsEnumsFurnishingsSk furnishings =
      _TranslationsEnumsFurnishingsSk._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeSk commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeSk._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeSk landPropertyType =
      _TranslationsEnumsLandPropertyTypeSk._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeSk residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeSk._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodSk minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodSk._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterSk dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterSk._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileSk
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. č.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoSk
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informácie o vozidlách';
  @override
  String get optional => 'Informácie o vozidlách (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoSk
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Číslo registrácie vozidla';
  @override
  String get short => 'Registračné číslo';
  @override
  String get alt => 'Číslo evidenčnej tabuľky';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintSk
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Nenájdená žiadna žiadosť!\n${subject} sa tu zobrazí, keď bude k dispozícii.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsSk subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsSk._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintSk
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Nenájdená žiadna nehnuteľnosť!\nSkúste pridať nehnuteľnosť, aby ste ju tu videli.';
  @override
  String get tenantRecommended =>
      'Nenájdené žiadne odporúčané nehnuteľnosti\nSkúste to znova neskôr.';
  @override
  String get tenantAllProperty =>
      'Nehnuteľnosti nie sú k dispozícii\nSkúste to znova neskôr.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundSk
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nenájdená žiadna údržba v stave ${status}.';
  @override
  String get tenant =>
      'Nenájdená žiadna údržba! Môžete vytvoriť žiadosť o údržbu a uvidíte ju tu.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundSk
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nenájdená žiadna žiadosť o vrátenie peňazí v stave ${status}!\nŽiadosť o vrátenie peňazí tu uvidíte, keď bude k dispozícii.';
  @override
  String get tenant =>
      'Nenájdená žiadna žiadosť o vrátenie peňazí!\nMôžete vytvoriť žiadosť o vrátenie peňazí a uvidíte ju tu.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintSk
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Nájomník schváli vrátenie peňazí, keď dostane peniaze späť';
  @override
  String get tenantReqSuccess =>
      'Žiadosť o vrátenie peňazí skontrolujeme a schválime do 24 hodín.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertySk
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertySk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Prenajatá nehnuteľnosť sa mení. Musí byť platná (účinná) len pre platbu nájomného na budúci mesiac.';
  @override
  String get deleteOnRent =>
      'Vašu nehnuteľnosť už prenajíma nájomník. Nemôžete ju vymazať, kým najprv neodstránite nájomníka';
  @override
  String get alreayRented =>
      'Táto nehnuteľnosť je už prenajatá. Skúste to znova neskôr.\nAlebo môžete kontaktovať prenajímateľa pre viac informácií.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationSk
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Nenájdená žiadna pozvánka na prenájom!\nSkúste vytvoriť pozvánku na prenájom, aby ste ju tu videli.';
  @override
  String get tenantNoRentInvitation =>
      'Nenájdená žiadna pozvánka na prenájom!\nPozvánku na prenájom si môžete pozrieť tu, keď bude k dispozícii.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutSk implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Ste si istý, že sa chcete odhlásiť?';
}

// Path: prompt.application
class _TranslationsPromptApplicationSk
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Prečo zamietate túto žiadosť?';
  @override
  late final _TranslationsPromptApplicationApplicationSentSk applicationSent =
      _TranslationsPromptApplicationApplicationSentSk._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborSk implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteSk delete =
      _TranslationsPromptLaborDeleteSk._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestSk
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Prečo je táto žiadosť zamietnutá?';
  @override
  String get processTitle =>
      'Ste si istý, že spracovávate túto žiadosť o údržbu?';
  @override
  String get completeTitle => 'Práca dokončená?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodSk
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Odstrániť spôsob výberu?';
  @override
  String get deleteDescription =>
      'Ste si istý, že chcete odstrániť tento spôsob výberu?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesSk
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ste si istý, že sa chcete vrátiť?';
  @override
  String get message => 'Zmenené polia nebudú uložené!';
}

// Path: prompt.property
class _TranslationsPromptPropertySk implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertySk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteSk delete =
      _TranslationsPromptPropertyDeleteSk._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationSk
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveSk
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveSk._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptSk tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptSk._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredSk
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Relácia vypršala';
  @override
  String get message => 'Vaša relácia vypršala. Prihláste sa znova';
  @override
  String get action => 'Prihlásiť sa';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetSk
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Žiadne internetové pripojenie';
  @override
  String get message =>
      'Skontrolujte pripojenie k sieti Wi-Fi alebo mobilnej sieti a skúste to znova';
  @override
  String get action => 'Skúsiť znova';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerSk
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vyžaduje sa povolenie!';
  @override
  String get message =>
      'Musíte udeliť povolenia v nastaveniach aplikácie. Chcete teraz otvoriť nastavenia?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerSk
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vybrať možnosť';
  @override
  String get gallery => 'Galéria';
  @override
  String get camera => 'Fotoaparát';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogSk
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Overte svoj e-mail';
  @override
  String get message => 'Poslali sme overovací kód e-mailom';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} na ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationSk
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Vymazať upozornenia?';
  @override
  String get clearMessage =>
      'Ste si istý, že chcete vymazať všetky upozornenia?';
}

// Path: form.fullName
class _TranslationsFormFullNameSk implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Zadajte ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsSk errors =
      _TranslationsFormFullNameErrorsSk._(_root);
}

// Path: form.email
class _TranslationsFormEmailSk implements TranslationsFormEmailEn {
  _TranslationsFormEmailSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Zadajte svoj ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsSk errors =
      _TranslationsFormEmailErrorsSk._(_root);
}

// Path: form.password
class _TranslationsFormPasswordSk implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsSk errors =
      _TranslationsFormPasswordErrorsSk._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordSk
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Potvrďte ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsSk errors =
      _TranslationsFormConfirmPasswordErrorsSk._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberSk
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsSk errors =
      _TranslationsFormMobileNumberErrorsSk._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Sk implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Sk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Číslo domu a názov ulice';
  @override
  late final _TranslationsFormAddress1ErrorsSk errors =
      _TranslationsFormAddress1ErrorsSk._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Sk implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Sk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Byt, suita, jednotka atď.';
  @override
  late final _TranslationsFormAddress2ErrorsSk errors =
      _TranslationsFormAddress2ErrorsSk._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeSk implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Zadajte ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsSk errors =
      _TranslationsFormPostalCodeErrorsSk._(_root);
}

// Path: form.city
class _TranslationsFormCitySk implements TranslationsFormCityEn {
  _TranslationsFormCitySk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Zadajte názov ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsSk errors =
      _TranslationsFormCityErrorsSk._(_root);
}

// Path: form.state
class _TranslationsFormStateSk implements TranslationsFormStateEn {
  _TranslationsFormStateSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Zadajte názov ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsSk errors =
      _TranslationsFormStateErrorsSk._(_root);
}

// Path: form.country
class _TranslationsFormCountrySk implements TranslationsFormCountryEn {
  _TranslationsFormCountrySk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Vyberte ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsSk errors =
      _TranslationsFormCountryErrorsSk._(_root);
}

// Path: form.otp
class _TranslationsFormOtpSk implements TranslationsFormOtpEn {
  _TranslationsFormOtpSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsSk errors =
      _TranslationsFormOtpErrorsSk._(_root);
}

// Path: form.title
class _TranslationsFormTitleSk implements TranslationsFormTitleEn {
  _TranslationsFormTitleSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Názov';
  @override
  String get hint => 'Zadať názov';
  @override
  late final _TranslationsFormTitleErrorsSk errors =
      _TranslationsFormTitleErrorsSk._(_root);
}

// Path: form.date
class _TranslationsFormDateSk implements TranslationsFormDateEn {
  _TranslationsFormDateSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Vyberte ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsSk errors =
      _TranslationsFormDateErrorsSk._(_root);
}

// Path: form.reason
class _TranslationsFormReasonSk implements TranslationsFormReasonEn {
  _TranslationsFormReasonSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Dôvod';
  @override
  String get hint => 'Zadať dôvod';
  @override
  late final _TranslationsFormReasonErrorsSk errors =
      _TranslationsFormReasonErrorsSk._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodSk
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Vyberte ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsSk errors =
      _TranslationsFormWithdrawMethodErrorsSk._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldSk implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Nahrať ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsSk errors =
      _TranslationsFormFileFieldErrorsSk._(_root);
}

// Path: form.note
class _TranslationsFormNoteSk implements TranslationsFormNoteEn {
  _TranslationsFormNoteSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Zadajte ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsSk errors =
      _TranslationsFormNoteErrorsSk._(_root);
}

// Path: form.gender
class _TranslationsFormGenderSk implements TranslationsFormGenderEn {
  _TranslationsFormGenderSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Vyberte ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsSk errors =
      _TranslationsFormGenderErrorsSk._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldSk implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Zadajte ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsSk errors =
      _TranslationsFormAnyFieldErrorsSk._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownSk implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Vyberte ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsSk errors =
      _TranslationsFormAnyDropdownErrorsSk._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageSk implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardSk implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataSk onboardData =
      _TranslationsPagesOnboardOnboardDataSk._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInSk implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vitajte späť';
  @override
  String get subtitle => 'Prihláste sa teraz a začnite úžasnú cestu.';
  @override
  late final _TranslationsPagesSignInExtraSk extra =
      _TranslationsPagesSignInExtraSk._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordSk
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Zabudnuté heslo';
  @override
  String get subtitle => 'Zadajte svoju e-mailovú adresu na obnovenie hesla.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationSk
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Overenie';
  @override
  String subtitle({required String email}) =>
      '4-miestny kód bol odoslaný na vašu e-mailovú adresu. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraSk extra =
      _TranslationsPagesOtpVerificationExtraSk._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordSk
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Resetovať heslo';
  @override
  String get subtitle =>
      'Resetujte si heslo na obnovenie a prihlásenie do svojho účtu.';
  @override
  late final _TranslationsPagesResetPasswordExtraSk extra =
      _TranslationsPagesResetPasswordExtraSk._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpSk implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vytvoriť účet';
  @override
  String get subtitle => 'Zaregistrujte sa teraz a začnite úžasnú cestu';
  @override
  late final _TranslationsPagesSignUpExtraSk extra =
      _TranslationsPagesSignUpExtraSk._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeSk implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kto ste?';
  @override
  String get subtitle => 'Vyberte si možnosť nižšie.';
  @override
  late final _TranslationsPagesWelcomeExtraSk extra =
      _TranslationsPagesWelcomeExtraSk._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsSk implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsSk
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListSk
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Oznámenia';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsSk implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraSk extra =
      _TranslationsPagesContactUsExtraSk._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingSk
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Prečo ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormSk form =
      _TranslationsPagesCancelRentingFormSk._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsSk
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentSk
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Offline platba';
  @override
  late final _TranslationsPagesOfflinePaymentFormSk form =
      _TranslationsPagesOfflinePaymentFormSk._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraSk extra =
      _TranslationsPagesOfflinePaymentExtraSk._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusSk
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessSk success =
      _TranslationsPagesPaymentStatusSuccessSk._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailSk fail =
      _TranslationsPagesPaymentStatusFailSk._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsSk
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraSk extra =
      _TranslationsPagesPropertyDetailsExtraSk._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchSk implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Hľadať';
  @override
  late final _TranslationsPagesSearchExtraSk extra =
      _TranslationsPagesSearchExtraSk._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanSk
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Vyberte si plán';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraSk extra =
      _TranslationsPagesSubscriptionPlanExtraSk._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportSk
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Celkové náklady na údržbu: '),
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
class _TranslationsEnumsPropertyStatusSk
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Všetky nehnuteľnosti';
  @override
  String get pending => 'Čakajúce';
  @override
  String get active => 'Aktívne';
  @override
  String get inactive => 'Neaktívne';
  @override
  String get rejected => 'Zamietnuté';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeSk
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Byt/Kondomínium';
  @override
  String get house => 'Dom';
  @override
  String get commercialProperty => 'Komerčná nehnuteľnosť';
  @override
  String get land => 'Pozemok';
  @override
  String get room => 'Izba';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusSk
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Všetky';
  @override
  String get pending => 'Čakajúce';
  @override
  String get processing => 'Spracovávané';
  @override
  String get approved => 'Schválené';
  @override
  String get rejected => 'Zamietnuté';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusSk
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Čakajúce';
  @override
  String get processing => 'Spracovávané';
  @override
  String get active => 'Aktívne';
  @override
  String get expired => 'Vypršané';
  @override
  String get cancelled => 'Zrušené';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusSk
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Čakajúce';
  @override
  String get processing => 'Spracovávané';
  @override
  String get rejected => 'Zamietnuté';
  @override
  String get completed => 'Dokončené';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeSk
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Súkromná osoba';
  @override
  String get company => 'Spoločnosť';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeSk implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Nový nájomník';
  @override
  String get activeTenant => 'Aktívny nájomník';
  @override
  String get expiredTenant => 'Nájomník s vypršanou platnosťou';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusSk
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Všetky';
  @override
  String get pending => 'Čakajúce';
  @override
  String get paid => 'Zaplatené';
  @override
  String get unpaid => 'Nezaplatené';
  @override
  String get rejected => 'Zamietnuté';
  @override
  String get refund => 'Vrátenie peňazí';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsSk
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Online platba';
  @override
  String get offlinePayment => 'Offline platba';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeSk
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Záloha';
  @override
  String get rentPayment => 'Platba nájomného';
  @override
  String get subscription => 'Predplatné';
}

// Path: enums.gender
class _TranslationsEnumsGenderSk implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Muž';
  @override
  String get female => 'Žena';
  @override
  String get other => 'Iné';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationSk implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Manželka';
  @override
  String get parent => 'Rodič';
  @override
  String get friend => 'Priateľ';
  @override
  String get brother => 'Brat';
  @override
  String get sister => 'Sestra';
  @override
  String get child => 'Dieťa';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeSk
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Auto';
  @override
  String get motorcycles => 'Motocykle';
  @override
  String get lorry => 'Nákladné auto';
}

// Path: enums.sortBy
class _TranslationsEnumsSortBySk implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortBySk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Od nízkej po vysokú';
  @override
  String get highToLow => 'Od vysokej po nízku';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeSk
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Byt';
  @override
  String get apartment => 'Apartmán';
  @override
  String get condominium => 'Kondomínium';
  @override
  String get serviceResidence => 'Rezidencia s kompletnými službami';
  @override
  String get studio => 'Štúdio';
  @override
  String get duplex => 'Duplex';
  @override
  String get townhouseCondo => 'Mestský dom/Kondomínium';
  @override
  String get others => 'Iné';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeSk implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Vysoké';
  @override
  String get medium => 'Stredné';
  @override
  String get low => 'Nízke';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsSk
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Kompletne zariadené';
  @override
  String get partiallyFurnished => 'Čiastočne zariadené';
  @override
  String get notFurnished => 'Nezariadené';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeSk
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Kancelárske priestory';
  @override
  String get retailSpace => 'Maloobchodné priestory';
  @override
  String get shopLot => 'Obchodný priestor';
  @override
  String get warehouseFactory => 'Sklad/Fabrika';
  @override
  String get hotelResort => 'Hotel/Rezort';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Iné';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeSk
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Obytné';
  @override
  String get industrial => 'Priemyselné';
  @override
  String get agricultural => 'Poľnohospodárske';
  @override
  String get commercial => 'Komerčné';
  @override
  String get mixedDevelopment => 'Zmiešaná výstavba';
  @override
  String get others => 'Iné';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeSk
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get condo =>
      'Kondomínium / Rezidencia s kompletnými službami / Penthouse';
  @override
  String get apartment => 'Apartmán / Byt';
  @override
  String get house => 'Domy';
  @override
  String get shoplot => 'Obchodný priestor';
  @override
  String get sharing => 'Zdieľanie domu / bytu';
  @override
  String get others => 'Iné';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodSk
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 mesiacov';
  @override
  String get oneYear => '1 rok';
  @override
  String get oneAndHalfYears => '1,5 roka';
  @override
  String get twoYears => '2 roky';
  @override
  String get twoAndHalfYears => '2,5 roka';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterSk
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Denne';
  @override
  String get weekly => 'Týždenne';
  @override
  String get monthly => 'Mesačne';
  @override
  String get yearly => 'Ročne';
  @override
  String get custom => 'Vlastné';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsSk
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Vaša žiadosť';
  @override
  String get landlord => 'Žiadosť nájomníka';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentSk
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Žiadosť bola úspešne odoslaná!';
  @override
  String get sucessDescription =>
      'Túto žiadosť si môžete pozrieť vo svojom zozname žiadostí';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteSk
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Odstrániť pracovníka?';
  @override
  String get description =>
      'Ste si istý, že chcete odstrániť tohto pracovníka?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteSk
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Odstrániť nehnuteľnosť?';
  @override
  String get message => 'Ste si istý, že chcete odstrániť túto nehnuteľnosť?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveSk
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ste si istý, že chcete schváliť tento prenájom?';
  @override
  String get description =>
      'Uistite sa, že ste si prezreli zmluvu podpísanú nájomníkom.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptSk
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ste si istý, že chcete prijať túto pozvánku?';
  @override
  String get description =>
      'Uistite sa, že ste si stiahli súbor PDF so zmluvou!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsSk
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte svoje ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsSk implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte svoju e-mailovú adresu ${_root.common.email}';
  @override
  String get invalid => '⦸ Neplatný e-mail, skúste to znova';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsSk
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte svoje ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Heslo musí mať dĺžku aspoň ${count} znakov!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsSk
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte svoje ${_root.common.password}';
  @override
  String get notMatched => 'Potvrdenie hesla sa nezhoduje!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsSk
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte svoje ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsSk
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte svoju ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsSk
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte svoju ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsSk
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte svoje ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsSk implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte názov ${_root.common.city}.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsSk implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte názov ${_root.common.state}.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsSk
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vyberte svoju ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsSk implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte OTP.';
  @override
  String get invalid => 'Zadajte správne OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsSk implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte názov';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsSk implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vyberte ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsSk
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte dôvod';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsSk
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vyberte ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsSk
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Vyberte ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsSk implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Zadajte ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsSk
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Vyberte ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsSk
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Zadajte ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Zadajte platný @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsSk
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Vyberte ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Vyberte platný @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataSk
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Sk data1 =
      _TranslationsPagesOnboardOnboardDataData1Sk._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Sk data2 =
      _TranslationsPagesOnboardOnboardDataData2Sk._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Sk data3 =
      _TranslationsPagesOnboardOnboardDataData3Sk._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraSk
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Zapamätať si ma';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Nemáte účet? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraSk
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendSk codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendSk._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraSk
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogSk dialog =
      _TranslationsPagesResetPasswordExtraDialogSk._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraSk
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Máte účet? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraSk
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Spravujte svoje vlastné nehnuteľnosti';
  @override
  String get tenantTag => 'Prihláste sa do svojho nájomného účtu';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraSk
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Správa...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormSk
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonSk reason =
      _TranslationsPagesCancelRentingFormReasonSk._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormSk
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteSk paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteSk._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraSk
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Suma platby: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Meno držiteľa účtu';
  @override
  String get accountNumber => 'Číslo účtu';
  @override
  String get swiftCode => 'Swift kód';
  @override
  String get branch => 'Pobočka';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Vyberte iba súbory vo formáte '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' alebo '),
      fileType('DOC'),
      const TextSpan(text: '. Veľkosť súboru '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessSk
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Zobraziť faktúru';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description => 'Platbu skontrolujeme a schválime do 24 hodín.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailSk
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Skúsiť znova';
  @override
  String get title => 'Oops! Platba zlyhala';
  @override
  String get description =>
      'Vaša transakcia zlyhala z dôvodu nejakej technickej chyby.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraSk
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

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
      const TextSpan(text: 'Vlastnosti '),
      fa('(Vybavenie a vybavenie)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Vyberte dobu prenájmu';
  @override
  String get writeAReview => '+ Napísať recenziu';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraSk
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Hľadať pozemky, byty, izby...';
  @override
  String get noRecentSearch => 'Nemáte žiadne nedávne vyhľadávania.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraSk
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Platba za predplatné úspešná.\nTeraz máte prístup k funkciám predplatného.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Sk
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Sk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nájdite si nehnuteľnosť';
  @override
  String get description =>
      'Uľahčili sme vám nájsť si miesto, ktoré vyhovuje vášmu životu – či už ide o izbu, byt alebo dom.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Sk
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Sk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Byt v meste';
  @override
  String get description =>
      'Šetríme vám čas tým, že vás rýchlo spojíme s ideálnou nehnuteľnosťou skôr, ako zmizne, aby ste si mohli užiť svoj nový domov, alebo si bezplatne uverejniť vlastnú ponuku.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Sk
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Sk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Váš pohodlný dom';
  @override
  String get description =>
      'Ak hľadáte miesto na bývanie, pozrite si naše domy na prenájom. Máme širokú škálu domov, z ktorých si môžete vybrať po celej krajine.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendSk
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Kód bude odoslaný za ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Znova odoslať kód'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogSk
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Úspešne zmenené!';
  @override
  String get subtitle =>
      'Prihláste sa pomocou svojho nového hesla.\nPresmerovanie na prihlásenie...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonSk
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Napísať dôvod';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsSk errors =
      _TranslationsPagesCancelRentingFormReasonErrorsSk._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteSk
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Poznámka k platbe (${_root.common.optional})';
  @override
  String get hint => 'Zadať text...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsSk
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsSk._(this._root);

  final TranslationsSk _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Zadajte dôvod zrušenia prenájmu';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsSk {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Jazyk';
      case 'common.subscriptionPlan':
        return 'Plán predplatného';
      case 'common.contactUs':
        return 'Kontaktujte nás';
      case 'common.termsAndConditions':
        return 'Podmienky a pravidlá';
      case 'common.aboutUs':
        return 'O nás';
      case 'common.logout':
        return 'Odhlásiť sa';
      case 'common.editProfile':
        return 'Upraviť profil';
      case 'common.fullName':
        return 'Celé meno';
      case 'common.email':
        return 'E-mail';
      case 'common.mobileNumber':
        return 'Mobilné číslo';
      case 'common.address':
        return 'Adresa';
      case 'common.postalCode':
        return 'PSČ';
      case 'common.city':
        return 'Mesto';
      case 'common.country':
        return 'Krajina';
      case 'common.state':
        return 'Štát';
      case 'common.password':
        return 'Heslo';
      case 'common.forgotPassword':
        return 'Zabudnuté heslo';
      case 'common.tenant':
        return 'Nájomník';
      case 'common.landlord':
        return 'Prenajímateľ';
      case 'common.cancelRenting':
        return 'Zrušiť prenájom';
      case 'common.startDate':
        return 'Dátum začiatku';
      case 'common.endDate':
        return 'Dátum ukončenia';
      case 'common.fromDate':
        return 'Od dátumu';
      case 'common.toDate':
        return 'Do dátumu';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Zoznam bánk';
      case 'common.withdrawMethod':
        return 'Spôsob výberu';
      case 'common.uploadPaymentReceipt':
        return 'Nahrať potvrdenie o platbe';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Poznámka: '),
            note('Platba vyžaduje manuálne schválenie administrátorom do'),
            const TextSpan(text: ' '),
            duraion('24~48 hodín.'),
          ],
        );
      case 'common.reviews':
        return 'Recenzie';
      case 'common.description':
        return 'Popis';
      case 'common.about':
        return 'O';
      case 'common.propertyTypes':
        return 'Typy nehnuteľností';
      case 'common.features':
        return 'Vlastnosti';
      case 'common.floorPlans':
        return 'Pôdorysy';
      case 'common.buildingDetails':
        return 'Detaily budovy';
      case 'common.buildingName':
        return 'Názov budovy';
      case 'common.propertyAddress':
        return 'Adresa nehnuteľnosti';
      case 'common.completionYear':
        return 'Rok dokončenia';
      case 'common.lotNumber':
        return 'Číslo pozemku';
      case 'common.residentialType':
        return 'Typ bývania';
      case 'common.furnishings':
        return 'Zariadenie';
      case 'common.floorRange':
        return 'Rozsah poschodí';
      case 'common.bedrooms':
        return 'Spálne';
      case 'common.bathrooms':
        return 'Kúpeľne';
      case 'common.propertySize':
        return 'Veľkosť nehnuteľnosti';
      case 'common.rentalPeriod':
        return 'Doba prenájmu';
      case 'common.securityDeposit':
        return 'Záloha';
      case 'common.utilityBill':
        return 'Účet za energie';
      case 'common.facilities':
        return 'Vybavenie';
      case 'common.amenities':
        return 'Vybavenie';
      case 'common.expiringReason':
        return 'Dôvod vypršania platnosti';
      case 'common.tenantDetails':
        return 'Podrobnosti o nájomníkovi';
      case 'common.typeOfTenant':
        return 'Typ nájomníka';
      case 'common.tenantName':
        return 'Meno nájomníka';
      case 'common.nidPassport':
        return 'NID/Pas';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID nájomníka';
      case 'common.dateOfBirth':
        return 'Dátum narodenia';
      case 'common.gender':
        return 'Pohlavie';
      case 'common.nominee':
        return 'Nominant';
      case 'common.name':
        return 'Meno';
      case 'common.optional':
        return 'Voliteľné';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. č.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Kontakt pre prípad núdze';
      case 'common.relation':
        return 'Vzťah';
      case 'common.relationWith':
        return '${_root.common.relation} S';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} S tebou';
      case 'common.company':
        return 'Spoločnosť';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM č.';
      case 'common.workplace':
        return 'Pracovisko';
      case 'common.officePhoneNo':
        return 'Telefónne číslo do kancelárie';
      case 'common.officeMobileNo':
        return 'Kancelária ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Vozidlo';
      case 'common.vehiclesInfo.plain':
        return 'Informácie o vozidlách';
      case 'common.vehiclesInfo.optional':
        return 'Informácie o vozidlách (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Typ';
      case 'common.vehicleRegistrationNo.normal':
        return 'Číslo registrácie vozidla';
      case 'common.vehicleRegistrationNo.short':
        return 'Registračné číslo';
      case 'common.vehicleRegistrationNo.alt':
        return 'Číslo evidenčnej tabuľky';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Značka';
      case 'common.rentProperty':
        return 'Prenajať nehnuteľnosť';
      case 'common.propertyDetails':
        return 'Detaily nehnuteľnosti';
      case 'common.propertyId':
        return 'ID nehnuteľnosti';
      case 'common.propertyType':
        return 'Typ nehnuteľnosti';
      case 'common.propertyName':
        return 'Názov nehnuteľnosti';
      case 'common.paymentDetails':
        return 'Detaily platby';
      case 'common.monthlyRent':
        return 'Mesačné nájomné';
      case 'common.thisMonthPayment':
        return 'Platba za tento mesiac';
      case 'common.totalPaidRent':
        return 'Celkom zaplatené nájomné';
      case 'common.dueRent':
        return 'Dlžné nájomné';
      case 'common.rentStartDate':
        return 'Nájom ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Nájom ${_root.common.endDate}';
      case 'common.status':
        return 'Stav';
      case 'common.rentAgreementPdf':
        return 'PDF zmluvy o prenájme';
      case 'common.noFile':
        return 'Žiadny súbor';
      case 'common.tenantImageOp':
        return 'Obrázok nájomníka ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Pridať nové vozidlá';
      case 'common.uploadNidPassport':
        return 'Nahrať NID/Pas';
      case 'common.nidPassportUploadNote':
        return 'Budú akceptované iba obrázky typu súboru. Limit veľkosti súboru do 2,5 MB.';
      case 'common.search':
        return 'Hľadať';
      case 'common.sortBy':
        return 'Zoradiť podľa';
      case 'common.subscription':
        return 'Predplatné';
      case 'common.downloading':
        return 'Sťahovanie...';
      case 'common.downloadSuccess':
        return 'Súbor bol úspešne stiahnutý!';
      case 'common.addPropertyBannerTitle':
        return 'Chcete prenajať svoju nehnuteľnosť?';
      case 'common.application':
        return 'Žiadosť';
      case 'common.tenantHasPaidDeposit':
        return 'Nájomník zaplatil zálohu.';
      case 'common.askProcessingRentApplication':
        return 'Ste si istý, že spracovávate túto žiadosť o prenájom nehnuteľnosti?';
      case 'common.dateAndTime':
        return 'Dátum a čas';
      case 'common.applicationDetails':
        return 'Detaily žiadosti';
      case 'common.depositStatus':
        return 'Stav zálohy';
      case 'common.uploadRentAgreement':
        return 'Nahrať zmluvu o prenájme';
      case 'common.uploadFilePDF':
        return 'Nahrať súbor (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Vyberte súbor s dokumentom zmluvy.';
      case 'common.landlordRentAgreementPDF':
        return 'PDF zmluvy o prenájme prenajímateľom';
      case 'common.tenantRentAgreementPDF':
        return 'PDF zmluvy o prenájme nájomníkom';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Poznámka: '),
            note('Žiadosť schváľte až po zaplatení zálohy nájomníkom.'),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Dôvod zamietnutia';
      case 'common.youveRejectedThisApplication':
        return 'Túto žiadosť ste zamietli';
      case 'common.landlordDetails':
        return 'Detaily prenajímateľa';
      case 'common.landlordName':
        return 'Meno prenajímateľa';
      case 'common.downloadRentAgreement':
        return 'Stiahnuť zmluvu o prenájme';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Akceptovať '),
            toc('Podmienky a pravidlá'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Poznámka: '),
            note(
              'Stiahnite si a prečítajte si zmluvu. Podpísanú zmluvu pošlite prenajímateľovi cez WhatsApp alebo e-mailom.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Poznámka: '),
            note(
              'Prenajímateľ schváli žiadosť, keď nájomník zaplatí zálohu, energie a nájomné za jeden mesiac vopred.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Zmluva o prenájme (PDF) '),
            complete('Kompletná zmluva'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Poznámka : '),
            note(
              'Prenajímateľ schváli žiadosť, keď nájomník zaplatí zálohu, energie a nájomné za jeden mesiac vopred.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Zoznam žiadostí';
      case 'common.viewDetails':
        return 'Zobraziť detaily';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Domov';
      case 'common.dashboard':
        return 'Dashboard';
      case 'common.tenants':
        return 'Nájomníci';
      case 'common.maintenance':
        return 'Údržba';
      case 'common.maintenanceList':
        return 'Zoznam údržby';
      case 'common.maintenanceReport':
        return 'Správa o údržbe';
      case 'common.labor':
        return 'Práca';
      case 'common.applications':
        return 'Žiadosti';
      case 'common.rentInvitation':
        return 'Pozvánka na prenájom';
      case 'common.payment':
        return 'Platba';
      case 'common.rentPayment':
        return 'Platba nájomného';
      case 'common.depositUtilityPayment':
        return 'Platba zálohy a energií';
      case 'common.refundRequest':
        return 'Žiadosť o vrátenie peňazí';
      case 'common.withdrawRequest':
        return 'Žiadosť o výber';
      case 'common.myProperty':
        return 'Moja nehnuteľnosť';
      case 'common.myRent':
        return 'Môj nájom';
      case 'common.wishlist':
        return 'Zoznam želaní';
      case 'common.properties':
        return 'Nehnuteľnosti';
      case 'common.allProperties':
        return 'Všetky nehnuteľnosti';
      case 'common.totalPropery':
        return 'Celkom nehnuteľností';
      case 'common.occupied':
        return 'Obsadené';
      case 'common.vacant':
        return 'Voľné';
      case 'common.accounting':
        return 'Účtovníctvo';
      case 'common.totalIncome':
        return 'Celkový príjem';
      case 'common.totalExpense':
        return 'Celkové výdavky';
      case 'common.currentBalance':
        return 'Aktuálny zostatok';
      case 'common.totalWithdrawal':
        return 'Celkom (výber)';
      case 'common.totalProperties':
        return 'Celkom nehnuteľností';
      case 'common.totalTenant':
        return 'Celkom nájomníkov';
      case 'common.totalRentPaid':
        return 'Celkom zaplatené nájomné';
      case 'common.totalRentDue':
        return 'Celkom dlžné nájomné';
      case 'common.totalApplication':
        return 'Celkom žiadostí';
      case 'common.pendingApplication':
        return 'Čakajúce žiadosti';
      case 'common.processingApplication':
        return 'Spracovávané žiadosti';
      case 'common.approveApplication':
        return 'Schváliť žiadosti';
      case 'common.rejectApplication':
        return 'Zamietnuť žiadosti';
      case 'common.maintenanceCost':
        return 'Náklady na údržbu';
      case 'common.transactionSummary':
        return 'Súhrn transakcií';
      case 'common.maintenanceRequest':
        return 'Žiadosť o údržbu';
      case 'common.notifications':
        return 'Oznámenia';
      case 'common.myProperties':
        return 'Moje nehnuteľnosti';
      case 'common.recommendationProperties':
        return 'Odporúčané nehnuteľnosti';
      case 'common.laborList':
        return 'Zoznam pracovníkov';
      case 'common.addLabor':
        return 'Pridať pracovníka';
      case 'common.laborDetails':
        return 'Detaily pracovníka';
      case 'common.laborSalary':
        return 'Mzda pracovníka';
      case 'common.editLabor':
        return 'Upraviť pracovníka';
      case 'common.addNewLabor':
        return 'Pridať nového pracovníka';
      case 'common.enterAmount':
        return 'Zadať sumu';
      case 'common.maintenanceDetails':
        return 'Detaily údržby';
      case 'common.laborName':
        return 'Meno pracovníka';
      case 'common.comment':
        return 'Komentár';
      case 'common.image':
        return 'Obrázok';
      case 'common.complete':
        return 'Dokončiť';
      case 'common.details':
        return 'Detaily';
      case 'common.title':
        return 'Názov';
      case 'common.date':
        return 'Dátum';
      case 'common.reason':
        return 'Dôvod';
      case 'common.edit':
        return 'Upraviť';
      case 'common.property':
        return 'Nehnuteľnosť';
      case 'common.completeYourProfile':
        return 'Dokončite svoj profil';
      case 'common.profileImage':
        return 'Profilový obrázok';
      case 'common.imagePickHint':
        return 'Iba obrázok JPEG a PNG s maximálnou veľkosťou 120 x 120 pixelov.';
      case 'common.invoiceId':
        return 'ID faktúry';
      case 'common.depositAmount':
        return 'Suma zálohy';
      case 'common.landlordPhone':
        return 'Telefón prenajímateľa';
      case 'common.rentalAdvance':
        return 'Nájomné (vopred)';
      case 'common.totalAmount':
        return 'Celková suma';
      case 'common.rentalAmount':
        return 'Suma nájomného';
      case 'common.adminCharge':
        return 'Poplatok za správu';
      case 'common.editAccount':
        return 'Upraviť účet';
      case 'common.addNewAccount':
        return 'Pridať nový účet';
      case 'common.transactionId':
        return 'ID transakcie';
      case 'common.transactionType':
        return 'Typ transakcie';
      case 'common.requestDate':
        return 'Dátum žiadosti';
      case 'common.amount':
        return 'Suma';
      case 'common.fee':
        return 'Poplatok';
      case 'common.paymentStatus':
        return 'Stav platby';
      case 'common.generatedTime':
        return 'Čas vygenerovania';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text: 'Toto je systémom generovaná správa o aplikácii ',
            ),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'História výberov';
      case 'common.history':
        return 'História';
      case 'common.withdrawAmount':
        return 'Suma výberu';
      case 'common.availableBalance':
        return 'Dostupný zostatok';
      case 'common.withdrawCharge':
        return 'Poplatok za výber';
      case 'common.paymentMethod':
        return 'Spôsob platby';
      case 'common.requestSendSuccess':
        return 'Žiadosť bola úspešne odoslaná!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Potvrdenie o platbe bolo úspešne odoslané.';
      case 'common.refundReason':
        return 'Dôvod vrátenia peňazí';
      case 'common.note':
        return 'Poznámka';
      case 'common.refundReceiveSuccess':
        return 'Vrátenie peňazí bolo úspešne prijaté.';
      case 'common.downloadPaymentReceipt':
        return 'Stiahnuť potvrdenie o platbe';
      case 'common.invoice':
        return 'Faktúra';
      case 'common.selectPropertyToSeeInvoice':
        return 'Vyberte nehnuteľnosť, aby ste videli číslo faktúry...';
      case 'common.bankAccName':
        return 'Názov bankového účtu';
      case 'common.bankName':
        return 'Názov banky';
      case 'common.bankAccNum':
        return 'Číslo bankového účtu';
      case 'common.thankYou':
        return 'Ďakujeme!';
      case 'common.basicInfo':
        return 'Základné informácie';
      case 'common.descriptionPricing':
        return 'Popis a cena';
      case 'common.contact':
        return 'Kontakt';
      case 'common.photos':
        return 'Fotografie';
      case 'common.successfullySubmitted':
        return 'Úspešne odoslané!';
      case 'common.editProperty':
        return 'Upraviť nehnuteľnosť';
      case 'common.addNewProperty':
        return 'Pridať novú nehnuteľnosť';
      case 'common.propertyManageRequestSuccess':
        return 'Váš inzerát bol odoslaný na kontrolu.';
      case 'common.postAnotherProperty':
        return 'Uverejniť ďalšiu nehnuteľnosť';
      case 'common.browseYourProperty':
        return 'Prezrieť si svoju nehnuteľnosť';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Krok '),
                step,
                const TextSpan(text: ' z '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Čo by ste chceli uverejniť?';
      case 'common.category':
        return 'Kategória';
      case 'common.invalidCategory':
        return 'Neplatná kategória';
      case 'common.unitNumber':
        return 'Číslo jednotky';
      case 'common.sqft':
        return 'štvorcových stôp';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Veľkosť nehnuteľnosti by mala byť väčšia ako nula';
      case 'common.whatAreTheFacility':
        return 'Aké sú zariadenia?';
      case 'common.whatAreTheAmenity':
        return 'Aké je vybavenie?';
      case 'common.parkingLot':
        return 'Parkovisko';
      case 'common.houseType':
        return 'Typ domu';
      case 'common.value':
        return 'Hodnota';
      case 'common.unitLotSize':
        return 'Veľkosť jednotky / pozemku';
      case 'common.landSize':
        return 'Veľkosť pozemku';
      case 'common.acres':
        return 'akrov';
      case 'common.roomSize':
        return 'Veľkosť izby';
      case 'common.askTenantPreference':
        return 'Aké sú vaše preferencie nájomníkov?';
      case 'common.couple':
        return 'Pár';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Popíšte ${propertyType}';
      case 'common.adTitle':
        return 'Názov inzerátu';
      case 'common.minimumRentalPeriod':
        return 'Minimálna doba prenájmu';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Číslo';
      case 'common.hideOrDisplayEmail':
        return 'Skryť alebo zobraziť e-mailovú adresu';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Ďakujeme, že ste uverejnili na ${appName}!';
      case 'common.propertyList':
        return 'Zoznam nehnuteľností';
      case 'common.newInviteRent':
        return 'Nová pozvánka na prenájom';
      case 'common.rentAgreement':
        return 'Zmluva o prenájme';
      case 'common.rentDetails':
        return 'Detaily prenájmu';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Poznámka: '),
            note('Počkajte, kým nájomník prijme pozvánku.'),
          ],
        );
      case 'common.rent':
        return 'Nájom';
      case 'common.editTenant':
        return 'Upraviť nájomníka';
      case 'common.addNewTenant':
        return 'Pridať nového nájomníka';
      case 'common.shareInstallLink':
        return 'Zdieľať odkaz na inštaláciu';
      case 'common.tenantList':
        return 'Zoznam nájomníkov';
      case 'common.editMaintenanceRequest':
        return 'Upraviť žiadosť o údržbu';
      case 'common.addNewMaintenance':
        return 'Pridať novú údržbu';
      case 'common.landlordId':
        return 'ID prenajímateľa';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Poznámka '),
            note(
              'Vaša zmluva je kontrolovaná. Počkajte, kým prenajímateľ schváli váš prenájom.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Upraviť recenziu';
      case 'common.writeAReview':
        return 'Napísať recenziu';
      case 'common.selectRating':
        return 'Vybrať hodnotenie';
      case 'common.enterYourOpinion':
        return 'Zadať svoj názor';
      case 'common.askToEnterReviewMsg':
        return 'Zadajte správu s recenziou';
      case 'common.pressBackAgainToExit':
        return 'Stlačte znova tlačidlo Späť pre ukončenie.';
      case 'common.selectPaymentMethod':
        return 'Vybrať spôsob platby';
      case 'common.filter':
        return 'Filter';
      case 'common.perMonth':
        return '/1 mesiac';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Hľadať čokoľvek v aplikácii ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Niečo sa pokazilo, skúste to znova';
      case 'exceptions.noNidPassport':
        return 'Nebol poskytnutý žiadny obrázok NID/Pasu.';
      case 'exceptions.noRentPropertyFound':
        return 'Pre tohto nájomníka sa nenašla žiadna prenajatá nehnuteľnosť.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Nenájdená žiadna nehnuteľnosť!\nSkúste to s inými kľúčovými slovami';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Nenašiel sa žiadny plán predplatného!\nObnovte stránku a skúste to znova.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Neplatné informácie o ${dataType}! Obnovte stránku a skúste to znova.';
      case 'exceptions.invalidDownloadUrl':
        return 'Neplatná adresa URL na stiahnutie!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Nepodarilo sa uložiť súbor! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Chyba pri otváraní súboru! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Neboli poskytnuté žiadne informácie o vozidle.';
      case 'exceptions.yourApplicationRejected':
        return 'Vaša žiadosť bola zamietnutá';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Nenájdená žiadna žiadosť!\n${subject} sa tu zobrazí, keď bude k dispozícii.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Vaša žiadosť';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Žiadosť nájomníka';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Nenájdená žiadna nehnuteľnosť!\nSkúste pridať nehnuteľnosť, aby ste ju tu videli.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Nenájdené žiadne odporúčané nehnuteľnosti\nSkúste to znova neskôr.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Nehnuteľnosti nie sú k dispozícii\nSkúste to znova neskôr.';
      case 'exceptions.noImageProvided':
        return 'Nebol poskytnutý žiadny obrázok';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Nenájdená žiadna údržba v stave ${status}.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Nenájdená žiadna údržba! Môžete vytvoriť žiadosť o údržbu a uvidíte ju tu.';
      case 'exceptions.noDepositFound':
        return 'Nenájdená žiadna záloha!\nZálohy si môžete pozrieť, keď budú k dispozícii';
      case 'exceptions.noRentPaymentFound':
        return 'Nenájdená žiadna platba nájomného!\nPlatby nájomného si môžete pozrieť, keď budú k dispozícii';
      case 'exceptions.transactionSummaryApiException':
        return 'Nepodarilo sa získať súhrn transakcií.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Nenájdená žiadna žiadosť!\nSkúste vytvoriť žiadosť o výber, aby ste ju tu videli.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Táto žiadosť o výber nebola schválená!.';
      case 'exceptions.nonZeroError':
        return 'Zadajte platnú sumu väčšiu ako nula.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Suma musí byť aspoň ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Suma nesmie presiahnuť ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Najprv vyberte spôsob platby.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Nenájdená žiadna žiadosť o vrátenie peňazí v stave ${status}!\nŽiadosť o vrátenie peňazí tu uvidíte, keď bude k dispozícii.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Nenájdená žiadna žiadosť o vrátenie peňazí!\nMôžete vytvoriť žiadosť o vrátenie peňazí a uvidíte ju tu.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Nájomník schváli vrátenie peňazí, keď dostane peniaze späť';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Žiadosť o vrátenie peňazí skontrolujeme a schválime do 24 hodín.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Vyberte počet ${value}';
      case 'exceptions.invalidDateRange':
        return 'Neplatný rozsah dátumov.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} musí byť väčšie ako nula.';
      case 'exceptions.editProperty.rentalChange':
        return 'Prenajatá nehnuteľnosť sa mení. Musí byť platná (účinná) len pre platbu nájomného na budúci mesiac.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Vašu nehnuteľnosť už prenajíma nájomník. Nemôžete ju vymazať, kým najprv neodstránite nájomníka';
      case 'exceptions.editProperty.alreayRented':
        return 'Táto nehnuteľnosť je už prenajatá. Skúste to znova neskôr.\nAlebo môžete kontaktovať prenajímateľa pre viac informácií.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Nenájdená žiadna pozvánka na prenájom!\nSkúste vytvoriť pozvánku na prenájom, aby ste ju tu videli.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Nenájdená žiadna pozvánka na prenájom!\nPozvánku na prenájom si môžete pozrieť tu, keď bude k dispozícii.';
      case 'exceptions.notenantFoundList':
        return 'Žiadni nájomníci!\nSkúste pridať nájomníka, aby ste ho tu videli.';
      case 'exceptions.noFeaturesProvided':
        return 'Neboli poskytnuté žiadne funkcie.';
      case 'exceptions.noNotificationFound':
        return 'Žiadne dostupné oznámenie.\nOznámenie si môžete pozrieť tu, keď bude k dispozícii.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Ste si istý, že sa chcete odhlásiť?';
      case 'prompt.application.rejectTitle':
        return 'Prečo zamietate túto žiadosť?';
      case 'prompt.application.applicationSent.successfully':
        return 'Žiadosť bola úspešne odoslaná!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Túto žiadosť si môžete pozrieť vo svojom zozname žiadostí';
      case 'prompt.labor.delete.title':
        return 'Odstrániť pracovníka?';
      case 'prompt.labor.delete.description':
        return 'Ste si istý, že chcete odstrániť tohto pracovníka?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Prečo je táto žiadosť zamietnutá?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Ste si istý, že spracovávate túto žiadosť o údržbu?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Práca dokončená?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Odstrániť spôsob výberu?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Ste si istý, že chcete odstrániť tento spôsob výberu?';
      case 'prompt.unsavedChanges.title':
        return 'Ste si istý, že sa chcete vrátiť?';
      case 'prompt.unsavedChanges.message':
        return 'Zmenené polia nebudú uložené!';
      case 'prompt.property.delete.title':
        return 'Odstrániť nehnuteľnosť?';
      case 'prompt.property.delete.message':
        return 'Ste si istý, že chcete odstrániť túto nehnuteľnosť?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Ste si istý, že chcete schváliť tento prenájom?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Uistite sa, že ste si prezreli zmluvu podpísanú nájomníkom.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Ste si istý, že chcete prijať túto pozvánku?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Uistite sa, že ste si stiahli súbor PDF so zmluvou!';
      case 'prompt.sessionExpired.title':
        return 'Relácia vypršala';
      case 'prompt.sessionExpired.message':
        return 'Vaša relácia vypršala. Prihláste sa znova';
      case 'prompt.sessionExpired.action':
        return 'Prihlásiť sa';
      case 'prompt.noInternet.title':
        return 'Žiadne internetové pripojenie';
      case 'prompt.noInternet.message':
        return 'Skontrolujte pripojenie k sieti Wi-Fi alebo mobilnej sieti a skúste to znova';
      case 'prompt.noInternet.action':
        return 'Skúsiť znova';
      case 'prompt.permissionHandler.title':
        return 'Vyžaduje sa povolenie!';
      case 'prompt.permissionHandler.message':
        return 'Musíte udeliť povolenia v nastaveniach aplikácie. Chcete teraz otvoriť nastavenia?';
      case 'prompt.imagePicker.title':
        return 'Vybrať možnosť';
      case 'prompt.imagePicker.gallery':
        return 'Galéria';
      case 'prompt.imagePicker.camera':
        return 'Fotoaparát';
      case 'prompt.verificationDialog.title':
        return 'Overte svoj e-mail';
      case 'prompt.verificationDialog.message':
        return 'Poslali sme overovací kód e-mailom';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} na ${email}';
      case 'prompt.notification.clearTitle':
        return 'Vymazať upozornenia?';
      case 'prompt.notification.clearMessage':
        return 'Ste si istý, že chcete vymazať všetky upozornenia?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Zadajte ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Zadajte svoje ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Zadajte svoj ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Zadajte svoju e-mailovú adresu ${_root.common.email}';
      case 'form.email.errors.invalid':
        return '⦸ Neplatný e-mail, skúste to znova';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Zadajte svoje ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Heslo musí mať dĺžku aspoň ${count} znakov!';
      case 'form.confirmPassword.label':
        return 'Potvrďte ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Zadajte svoje ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Potvrdenie hesla sa nezhoduje!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Zadajte svoje ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Číslo domu a názov ulice';
      case 'form.address1.errors.required':
        return 'Zadajte svoju ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Byt, suita, jednotka atď.';
      case 'form.address2.errors.required':
        return 'Zadajte svoju ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Zadajte ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Zadajte svoje ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Zadajte názov ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Zadajte názov ${_root.common.city}.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Zadajte názov ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Zadajte názov ${_root.common.state}.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Vyberte ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Vyberte svoju ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Zadajte OTP.';
      case 'form.otp.errors.invalid':
        return 'Zadajte správne OTP.';
      case 'form.title.label':
        return 'Názov';
      case 'form.title.hint':
        return 'Zadať názov';
      case 'form.title.errors.required':
        return 'Zadajte názov';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Vyberte ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Vyberte ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Dôvod';
      case 'form.reason.hint':
        return 'Zadať dôvod';
      case 'form.reason.errors.required':
        return 'Zadajte dôvod';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Vyberte ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Vyberte ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Nahrať ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Vyberte ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Zadajte ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Zadajte ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Vyberte ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Vyberte ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Zadajte ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Zadajte ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Zadajte platný @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Vyberte ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Vyberte ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Vyberte platný @form.anyDropdown.label';
      case 'action.next':
        return 'Ďalej';
      case 'action.getStarted':
        return 'Začať';
      case 'action.skip':
        return 'Preskočiť';
      case 'action.select':
        return 'Vybrať';
      case 'action.save':
        return 'Uložiť';
      case 'action.signIn':
        return 'Prihlásiť sa';
      case 'action.signUp':
        return 'Zaregistrovať sa';
      case 'action.kContinue':
        return 'Pokračovať';
      case 'action.clearAll':
        return 'Vymazať všetko';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Odoslať';
      case 'action.pay':
        return 'Zaplatiť';
      case 'action.remove':
        return 'Odstrániť';
      case 'action.goBack':
        return 'Ísť späť';
      case 'action.buyNow':
        return 'Kúpiť teraz';
      case 'action.no':
        return 'Nie';
      case 'action.open':
        return 'Otvoriť';
      case 'action.addProperty':
        return 'Pridať nehnuteľnosť';
      case 'action.process':
        return 'Spracovať';
      case 'action.approve':
        return 'Schváliť';
      case 'action.reject':
        return 'Zamietnuť';
      case 'action.viewRent':
        return 'Zobraziť nájom';
      case 'action.openNavigationMenu':
        return 'Otvoriť navigačnú ponuku';
      case 'action.seeAll':
        return 'Zobraziť všetko';
      case 'action.update':
        return 'Aktualizovať';
      case 'action.printTransaction':
        return 'Vytlačiť transakciu';
      case 'action.payoutRequest':
        return 'Žiadosť o výplatu';
      case 'action.addNew':
        return '+ Pridať nový';
      case 'action.sendRequest':
        return 'Odoslať žiadosť';
      case 'action.print':
        return 'Vytlačiť';
      case 'action.requestForRefund':
        return 'Žiadosť o vrátenie peňazí';
      case 'action.previous':
        return 'Predchádzajúci';
      case 'action.delete':
        return 'Odstrániť';
      case 'action.applyProperty':
        return 'Požiadať o nehnuteľnosť';
      case 'action.viewApplication':
        return 'Zobraziť žiadosť';
      case 'action.inviteTenant':
        return 'Pozvať nájomníka';
      case 'action.inviteRent':
        return 'Pozvať na prenájom';
      case 'action.cancel':
        return 'Zrušiť';
      case 'action.accept':
        return 'Prijať';
      case 'action.submit':
        return 'Odoslať';
      case 'action.yes':
        return 'Áno';
      case 'action.okay':
        return 'Dobre';
      case 'action.confirm':
        return 'Potvrdiť';
      case 'action.apply':
        return 'Použiť';
      case 'action.reset':
        return 'Resetovať';
      case 'action.retry':
        return 'Skúsiť znova';
      case 'action.viewAll':
        return 'Zobraziť všetko';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Nájdite si nehnuteľnosť';
      case 'pages.onboard.onboardData.data1.description':
        return 'Uľahčili sme vám nájsť si miesto, ktoré vyhovuje vášmu životu – či už ide o izbu, byt alebo dom.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Byt v meste';
      case 'pages.onboard.onboardData.data2.description':
        return 'Šetríme vám čas tým, že vás rýchlo spojíme s ideálnou nehnuteľnosťou skôr, ako zmizne, aby ste si mohli užiť svoj nový domov, alebo si bezplatne uverejniť vlastnú ponuku.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Váš pohodlný dom';
      case 'pages.onboard.onboardData.data3.description':
        return 'Ak hľadáte miesto na bývanie, pozrite si naše domy na prenájom. Máme širokú škálu domov, z ktorých si môžete vybrať po celej krajine.';
      case 'pages.signIn.title':
        return 'Vitajte späť';
      case 'pages.signIn.subtitle':
        return 'Prihláste sa teraz a začnite úžasnú cestu.';
      case 'pages.signIn.extra.rememberMe':
        return 'Zapamätať si ma';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Nemáte účet? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Zabudnuté heslo';
      case 'pages.forgotPassword.subtitle':
        return 'Zadajte svoju e-mailovú adresu na obnovenie hesla.';
      case 'pages.otpVerification.title':
        return 'Overenie';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-miestny kód bol odoslaný na vašu e-mailovú adresu. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Kód bude odoslaný za ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Znova odoslať kód'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Resetovať heslo';
      case 'pages.resetPassword.subtitle':
        return 'Resetujte si heslo na obnovenie a prihlásenie do svojho účtu.';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Úspešne zmenené!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Prihláste sa pomocou svojho nového hesla.\nPresmerovanie na prihlásenie...';
      case 'pages.signUp.title':
        return 'Vytvoriť účet';
      case 'pages.signUp.subtitle':
        return 'Zaregistrujte sa teraz a začnite úžasnú cestu';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Máte účet? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Kto ste?';
      case 'pages.welcome.subtitle':
        return 'Vyberte si možnosť nižšie.';
      case 'pages.welcome.extra.landlordTag':
        return 'Spravujte svoje vlastné nehnuteľnosti';
      case 'pages.welcome.extra.tenantTag':
        return 'Prihláste sa do svojho nájomného účtu';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Oznámenia';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Správa...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Prečo ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Napísať dôvod';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Zadajte dôvod zrušenia prenájmu';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Offline platba';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Poznámka k platbe (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Zadať text...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Suma platby: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Meno držiteľa účtu';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Číslo účtu';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift kód';
      case 'pages.offlinePayment.extra.branch':
        return 'Pobočka';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Vyberte iba súbory vo formáte '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' alebo '),
            fileType('DOC'),
            const TextSpan(text: '. Veľkosť súboru '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Zobraziť faktúru';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Platbu skontrolujeme a schválime do 24 hodín.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Skúsiť znova';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Platba zlyhala';
      case 'pages.paymentStatus.fail.description':
        return 'Vaša transakcia zlyhala z dôvodu nejakej technickej chyby.';
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
            const TextSpan(text: 'Vlastnosti '),
            fa('(Vybavenie a vybavenie)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Vyberte dobu prenájmu';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Napísať recenziu';
      case 'pages.search.appbarTitle':
        return 'Hľadať';
      case 'pages.search.extra.hint':
        return 'Hľadať pozemky, byty, izby...';
      case 'pages.search.extra.noRecentSearch':
        return 'Nemáte žiadne nedávne vyhľadávania.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Vyberte si plán';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Platba za predplatné úspešná.\nTeraz máte prístup k funkciám predplatného.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Celkové náklady na údržbu: '),
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
        return 'Všetky nehnuteľnosti';
      case 'enums.propertyStatus.pending':
        return 'Čakajúce';
      case 'enums.propertyStatus.active':
        return 'Aktívne';
      case 'enums.propertyStatus.inactive':
        return 'Neaktívne';
      case 'enums.propertyStatus.rejected':
        return 'Zamietnuté';
      case 'enums.propertyType.apartmentCondominium':
        return 'Byt/Kondomínium';
      case 'enums.propertyType.house':
        return 'Dom';
      case 'enums.propertyType.commercialProperty':
        return 'Komerčná nehnuteľnosť';
      case 'enums.propertyType.land':
        return 'Pozemok';
      case 'enums.propertyType.room':
        return 'Izba';
      case 'enums.applicationStatus.all':
        return 'Všetky';
      case 'enums.applicationStatus.pending':
        return 'Čakajúce';
      case 'enums.applicationStatus.processing':
        return 'Spracovávané';
      case 'enums.applicationStatus.approved':
        return 'Schválené';
      case 'enums.applicationStatus.rejected':
        return 'Zamietnuté';
      case 'enums.myRentStatus.pending':
        return 'Čakajúce';
      case 'enums.myRentStatus.processing':
        return 'Spracovávané';
      case 'enums.myRentStatus.active':
        return 'Aktívne';
      case 'enums.myRentStatus.expired':
        return 'Vypršané';
      case 'enums.myRentStatus.cancelled':
        return 'Zrušené';
      case 'enums.maintenanceStatus.pending':
        return 'Čakajúce';
      case 'enums.maintenanceStatus.processing':
        return 'Spracovávané';
      case 'enums.maintenanceStatus.rejected':
        return 'Zamietnuté';
      case 'enums.maintenanceStatus.completed':
        return 'Dokončené';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Súkromná osoba';
      case 'enums.tenantProfileType.company':
        return 'Spoločnosť';
      case 'enums.tenantType.newTenant':
        return 'Nový nájomník';
      case 'enums.tenantType.activeTenant':
        return 'Aktívny nájomník';
      case 'enums.tenantType.expiredTenant':
        return 'Nájomník s vypršanou platnosťou';
      case 'enums.paymentStatus.all':
        return 'Všetky';
      case 'enums.paymentStatus.pending':
        return 'Čakajúce';
      case 'enums.paymentStatus.paid':
        return 'Zaplatené';
      case 'enums.paymentStatus.unpaid':
        return 'Nezaplatené';
      case 'enums.paymentStatus.rejected':
        return 'Zamietnuté';
      case 'enums.paymentStatus.refund':
        return 'Vrátenie peňazí';
      case 'enums.paymentOptions.onlinePayment':
        return 'Online platba';
      case 'enums.paymentOptions.offlinePayment':
        return 'Offline platba';
      case 'enums.paymentType.securityDeposit':
        return 'Záloha';
      case 'enums.paymentType.rentPayment':
        return 'Platba nájomného';
      case 'enums.paymentType.subscription':
        return 'Predplatné';
      case 'enums.gender.male':
        return 'Muž';
      case 'enums.gender.female':
        return 'Žena';
      case 'enums.gender.other':
        return 'Iné';
      case 'enums.ecRelation.wife':
        return 'Manželka';
      case 'enums.ecRelation.parent':
        return 'Rodič';
      case 'enums.ecRelation.friend':
        return 'Priateľ';
      case 'enums.ecRelation.brother':
        return 'Brat';
      case 'enums.ecRelation.sister':
        return 'Sestra';
      case 'enums.ecRelation.child':
        return 'Dieťa';
      case 'enums.vehicleType.car':
        return 'Auto';
      case 'enums.vehicleType.motorcycles':
        return 'Motocykle';
      case 'enums.vehicleType.lorry':
        return 'Nákladné auto';
      case 'enums.sortBy.lowToHigh':
        return 'Od nízkej po vysokú';
      case 'enums.sortBy.highToLow':
        return 'Od vysokej po nízku';
      case 'enums.residentialType.flat':
        return 'Byt';
      case 'enums.residentialType.apartment':
        return 'Apartmán';
      case 'enums.residentialType.condominium':
        return 'Kondomínium';
      case 'enums.residentialType.serviceResidence':
        return 'Rezidencia s kompletnými službami';
      case 'enums.residentialType.studio':
        return 'Štúdio';
      case 'enums.residentialType.duplex':
        return 'Duplex';
      case 'enums.residentialType.townhouseCondo':
        return 'Mestský dom/Kondomínium';
      case 'enums.residentialType.others':
        return 'Iné';
      case 'enums.floorRange.high':
        return 'Vysoké';
      case 'enums.floorRange.medium':
        return 'Stredné';
      case 'enums.floorRange.low':
        return 'Nízke';
      case 'enums.furnishings.fullyFurnished':
        return 'Kompletne zariadené';
      case 'enums.furnishings.partiallyFurnished':
        return 'Čiastočne zariadené';
      case 'enums.furnishings.notFurnished':
        return 'Nezariadené';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Kancelárske priestory';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Maloobchodné priestory';
      case 'enums.commercialPropertyType.shopLot':
        return 'Obchodný priestor';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Sklad/Fabrika';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel/Rezort';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Iné';
      case 'enums.landPropertyType.residential':
        return 'Obytné';
      case 'enums.landPropertyType.industrial':
        return 'Priemyselné';
      case 'enums.landPropertyType.agricultural':
        return 'Poľnohospodárske';
      case 'enums.landPropertyType.commercial':
        return 'Komerčné';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Zmiešaná výstavba';
      case 'enums.landPropertyType.others':
        return 'Iné';
      case 'enums.residentPropertyType.condo':
        return 'Kondomínium / Rezidencia s kompletnými službami / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Apartmán / Byt';
      case 'enums.residentPropertyType.house':
        return 'Domy';
      case 'enums.residentPropertyType.shoplot':
        return 'Obchodný priestor';
      case 'enums.residentPropertyType.sharing':
        return 'Zdieľanie domu / bytu';
      case 'enums.residentPropertyType.others':
        return 'Iné';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 mesiacov';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 rok';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 roka';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 roky';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 roka';
      case 'enums.dropdownDateFilter.daily':
        return 'Denne';
      case 'enums.dropdownDateFilter.weekly':
        return 'Týždenne';
      case 'enums.dropdownDateFilter.monthly':
        return 'Mesačne';
      case 'enums.dropdownDateFilter.yearly':
        return 'Ročne';
      case 'enums.dropdownDateFilter.custom':
        return 'Vlastné';
      default:
        return null;
    }
  }
}
