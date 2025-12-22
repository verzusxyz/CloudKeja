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
class TranslationsHu implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsHu({
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
             locale: AppLocale.hu,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <hu>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsHu _root = this; // ignore: unused_field

  @override
  TranslationsHu $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsHu(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonHu common = _TranslationsCommonHu._(_root);
  @override
  late final _TranslationsExceptionsHu exceptions = _TranslationsExceptionsHu._(
    _root,
  );
  @override
  late final _TranslationsPromptHu prompt = _TranslationsPromptHu._(_root);
  @override
  late final _TranslationsFormHu form = _TranslationsFormHu._(_root);
  @override
  late final _TranslationsActionHu action = _TranslationsActionHu._(_root);
  @override
  late final _TranslationsPagesHu pages = _TranslationsPagesHu._(_root);
  @override
  late final _TranslationsEnumsHu enums = _TranslationsEnumsHu._(_root);
}

// Path: common
class _TranslationsCommonHu implements TranslationsCommonEn {
  _TranslationsCommonHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Nyelv';
  @override
  String get subscriptionPlan => 'Előfizetési terv';
  @override
  String get contactUs => 'Kapcsolatfelvétel';
  @override
  String get termsAndConditions => 'Általános Szerződési Feltételek';
  @override
  String get aboutUs => 'Rólunk';
  @override
  String get logout => 'Kijelentkezés';
  @override
  String get editProfile => 'Profil szerkesztése';
  @override
  String get fullName => 'Teljes név';
  @override
  String get email => 'E-mail';
  @override
  String get mobileNumber => 'Mobilszám';
  @override
  String get address => 'Cím';
  @override
  String get postalCode => 'Irányítószám';
  @override
  String get city => 'Város';
  @override
  String get country => 'Ország';
  @override
  String get state => 'Állam';
  @override
  String get password => 'Jelszó';
  @override
  String get forgotPassword => 'Elfelejtett jelszó';
  @override
  String get tenant => 'Bérlő';
  @override
  String get landlord => 'Bérbeadó';
  @override
  String get cancelRenting => 'Bérlés lemondása';
  @override
  String get startDate => 'Kezdő dátum';
  @override
  String get endDate => 'Befejező dátum';
  @override
  String get fromDate => 'Mettől';
  @override
  String get toDate => 'Meddig';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Banklista';
  @override
  String get withdrawMethod => 'Kifizetési mód';
  @override
  String get uploadPaymentReceipt => 'Fizetési bizonylat feltöltése';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Megjegyzés: '),
      note('A fizetés manuális jóváhagyást igényel a rendszergazdától'),
      const TextSpan(text: ' '),
      duraion('24-48 órán belül.'),
    ],
  );
  @override
  String get reviews => 'Vélemények';
  @override
  String get description => 'Leírás';
  @override
  String get about => 'Rólunk';
  @override
  String get propertyTypes => 'Ingatlan típusok';
  @override
  String get features => 'Jellemzők';
  @override
  String get floorPlans => 'Alaprajzok';
  @override
  String get buildingDetails => 'Épület részletei';
  @override
  String get buildingName => 'Épület neve';
  @override
  String get propertyAddress => 'Ingatlan címe';
  @override
  String get completionYear => 'Építés éve';
  @override
  String get lotNumber => 'Telekszám';
  @override
  String get residentialType => 'Lakó típus';
  @override
  String get furnishings => 'Berendezés';
  @override
  String get floorRange => 'Emelet';
  @override
  String get bedrooms => 'Hálószobák';
  @override
  String get bathrooms => 'Fürdőszobák';
  @override
  String get propertySize => 'Ingatlan mérete';
  @override
  String get rentalPeriod => 'Bérleti időszak';
  @override
  String get securityDeposit => 'Biztonsági letét';
  @override
  String get utilityBill => 'Közüzemi számla';
  @override
  String get facilities => 'Létesítmények';
  @override
  String get amenities => 'Kényelmi szolgáltatások';
  @override
  String get expiringReason => 'Lejárati ok';
  @override
  String get tenantDetails => 'Bérlő adatai';
  @override
  String get typeOfTenant => 'Bérlő típusa';
  @override
  String get tenantName => 'Bérlő neve';
  @override
  String get nidPassport => 'NID/Útlevél';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Bérlő azonosító';
  @override
  String get dateOfBirth => 'Születési dátum';
  @override
  String get gender => 'Nem';
  @override
  String get nominee => 'Jelölt';
  @override
  String get name => 'Név';
  @override
  String get optional => 'Opcionális';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileHu nomineeMobile =
      _TranslationsCommonNomineeMobileHu._(_root);
  @override
  String get emergencyContact => 'Sürgősségi kapcsolat';
  @override
  String get relation => 'Kapcsolat';
  @override
  String get relationWith => '${_root.common.relation} -val';
  @override
  String get relationWithYou => '${_root.common.relationWith} Önnel';
  @override
  String get company => 'Cég';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM szám';
  @override
  String get workplace => 'Munkahely';
  @override
  String get officePhoneNo => 'Irodai telefonszám';
  @override
  String get officeMobileNo => 'Irodai ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Jármű';
  @override
  late final _TranslationsCommonVehiclesInfoHu vehiclesInfo =
      _TranslationsCommonVehiclesInfoHu._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Típus';
  @override
  late final _TranslationsCommonVehicleRegistrationNoHu vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoHu._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Márka';
  @override
  String get rentProperty => 'Bérlés ingatlan';
  @override
  String get propertyDetails => 'Ingatlan részletei';
  @override
  String get propertyId => 'Ingatlan azonosító';
  @override
  String get propertyType => 'Ingatlan típusa';
  @override
  String get propertyName => 'Ingatlan neve';
  @override
  String get paymentDetails => 'Fizetési részletek';
  @override
  String get monthlyRent => 'Havi bérleti díj';
  @override
  String get thisMonthPayment => 'Ebben a hónapban fizetett összeg';
  @override
  String get totalPaidRent => 'Összesen fizetett bérleti díj';
  @override
  String get dueRent => 'Hátralévő bérleti díj';
  @override
  String get rentStartDate =>
      'Bérleti szerződés kezdete ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Bérleti szerződés vége ${_root.common.endDate}';
  @override
  String get status => 'Állapot';
  @override
  String get rentAgreementPdf => 'Bérleti szerződés PDF';
  @override
  String get noFile => 'Nincs fájl';
  @override
  String get tenantImageOp => 'Bérlő képe ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Új jármű hozzáadása';
  @override
  String get uploadNidPassport => 'NID/Útlevél feltöltése';
  @override
  String get nidPassportUploadNote =>
      'Csak fájltípus kép fogadható el. Fájlméret legfeljebb 2,5 MB.';
  @override
  String get search => 'Keresés';
  @override
  String get sortBy => 'Rendezés';
  @override
  String get subscription => 'Előfizetés';
  @override
  String get downloading => 'Letöltés...';
  @override
  String get downloadSuccess => 'A fájl sikeresen letöltve!';
  @override
  String get addPropertyBannerTitle => 'Szeretné kiadni ingatlanát?';
  @override
  String get application => 'Jelentkezés';
  @override
  String get tenantHasPaidDeposit => 'A bérlő befizette a kauciót.';
  @override
  String get askProcessingRentApplication =>
      'Biztosan feldolgozza ezt a bérleti ingatlanra vonatkozó kérelmet?';
  @override
  String get dateAndTime => 'Dátum és idő';
  @override
  String get applicationDetails => 'Jelentkezés részletei';
  @override
  String get depositStatus => 'Kaució állapota';
  @override
  String get uploadRentAgreement => 'Bérleti szerződés feltöltése';
  @override
  String get uploadFilePDF => 'Fájl feltöltése (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Kérjük, válasszon egy szerződés dokumentumfájlt.';
  @override
  String get landlordRentAgreementPDF => 'Bérbeadó bérleti szerződése PDF';
  @override
  String get tenantRentAgreementPDF => 'Bérlő bérleti szerződése PDF';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Megjegyzés: '),
      note(
        'Csak akkor hagyja jóvá a kérelmet, miután a bérlő befizette a kauciót.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Az elutasítás oka';
  @override
  String get youveRejectedThisApplication => 'Elutasította ezt a kérelmet';
  @override
  String get landlordDetails => 'Bérbeadó adatai';
  @override
  String get landlordName => 'Bérbeadó neve';
  @override
  String get downloadRentAgreement => 'Bérleti szerződés letöltése';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Elfogadom a '),
      toc('Általános Szerződési Feltételeket'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Megjegyzés: '),
      note(
        'Kérjük, töltse le és olvassa el a szerződést. Kérjük, küldje el az aláírt szerződést a bérbeadónak WhatsApp-on vagy e-mailben.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Megjegyzés: '),
      note(
        'A bérbeadó akkor hagyja jóvá a kérelmet, ha a bérlő befizeti a biztonsági, közüzemi és egyhavi előlegbérleti díjat.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Bérleti szerződés (PDF) '),
          complete('Teljes szerződés'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Megjegyzés: '),
      note(
        'A bérbeadó akkor hagyja jóvá a kérelmet, ha a bérlő befizeti a biztonsági, közüzemi és egyhavi előlegbérleti díjat.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Jelentkezések listája';
  @override
  String get viewDetails => 'Részletek megtekintése';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Kezdőlap';
  @override
  String get dashboard => 'Műszerfal';
  @override
  String get tenants => 'Bérlők';
  @override
  String get maintenance => 'Karbantartás';
  @override
  String get maintenanceList => 'Karbantartási lista';
  @override
  String get maintenanceReport => 'Karbantartási jelentés';
  @override
  String get labor => 'Munkás';
  @override
  String get applications => 'Jelentkezések';
  @override
  String get rentInvitation => 'Bérleti meghívó';
  @override
  String get payment => 'Fizetés';
  @override
  String get rentPayment => 'Bérleti díj fizetés';
  @override
  String get depositUtilityPayment => 'Kaució és közüzemi díj fizetés';
  @override
  String get refundRequest => 'Visszatérítési kérelem';
  @override
  String get withdrawRequest => 'Kifizetési kérelem';
  @override
  String get myProperty => 'Saját ingatlan';
  @override
  String get myRent => 'Saját bérlet';
  @override
  String get wishlist => 'Kívánságlista';
  @override
  String get properties => 'Ingatlanok';
  @override
  String get allProperties => 'Összes ingatlan';
  @override
  String get totalPropery => 'Összes ingatlan';
  @override
  String get occupied => 'Foglalt';
  @override
  String get vacant => 'Szabad';
  @override
  String get accounting => 'Könyvelés';
  @override
  String get totalIncome => 'Összes bevétel';
  @override
  String get totalExpense => 'Összes kiadás';
  @override
  String get currentBalance => 'Aktuális egyenleg';
  @override
  String get totalWithdrawal => 'Összesen (Kifizetés)';
  @override
  String get totalProperties => 'Összes ingatlan';
  @override
  String get totalTenant => 'Összes bérlő';
  @override
  String get totalRentPaid => 'Összes befizetett bérleti díj';
  @override
  String get totalRentDue => 'Összes hátralévő bérleti díj';
  @override
  String get totalApplication => 'Összes jelentkezés';
  @override
  String get pendingApplication => 'Függőben lévő jelentkezés';
  @override
  String get processingApplication => 'Feldolgozás alatt lévő jelentkezés';
  @override
  String get approveApplication => 'Jelentkezés jóváhagyása';
  @override
  String get rejectApplication => 'Jelentkezés elutasítása';
  @override
  String get maintenanceCost => 'Karbantartási költség';
  @override
  String get transactionSummary => 'Tranzakciós összefoglalás';
  @override
  String get maintenanceRequest => 'Karbantartási kérelem';
  @override
  String get notifications => 'Értesítések';
  @override
  String get myProperties => 'Saját ingatlanok';
  @override
  String get recommendationProperties => 'Ajánlott ingatlanok';
  @override
  String get laborList => 'Munkáslista';
  @override
  String get addLabor => 'Munkás hozzáadása';
  @override
  String get laborDetails => 'Munkás részletei';
  @override
  String get laborSalary => 'Munkás fizetése';
  @override
  String get editLabor => 'Munkás szerkesztése';
  @override
  String get addNewLabor => 'Új munkás hozzáadása';
  @override
  String get enterAmount => 'Adja meg az összeget';
  @override
  String get maintenanceDetails => 'Karbantartás részletei';
  @override
  String get laborName => 'Munkás neve';
  @override
  String get comment => 'Megjegyzés';
  @override
  String get image => 'Kép';
  @override
  String get complete => 'Befejezés';
  @override
  String get details => 'Részletek';
  @override
  String get title => 'Cím';
  @override
  String get date => 'Dátum';
  @override
  String get reason => 'Ok';
  @override
  String get edit => 'Szerkesztés';
  @override
  String get property => 'Ingatlan';
  @override
  String get completeYourProfile => 'Töltse ki a profilját';
  @override
  String get profileImage => 'Profilkép';
  @override
  String get imagePickHint =>
      'Csak JPEG és PNG kép fogadható el, legfeljebb 120x120 képpont méretben.';
  @override
  String get invoiceId => 'Számlaazonosító';
  @override
  String get depositAmount => 'Kaució összege';
  @override
  String get landlordPhone => 'Bérbeadó telefonszáma';
  @override
  String get rentalAdvance => 'Bérleti díj (előleg)';
  @override
  String get totalAmount => 'Összes összeg';
  @override
  String get rentalAmount => 'Bérleti díj összege';
  @override
  String get adminCharge => 'Adminisztrációs díj';
  @override
  String get editAccount => 'Fiók szerkesztése';
  @override
  String get addNewAccount => 'Új fiók hozzáadása';
  @override
  String get transactionId => 'Tranzakciós azonosító';
  @override
  String get transactionType => 'Tranzakció típusa';
  @override
  String get requestDate => 'Kérelem dátuma';
  @override
  String get amount => 'Összeg';
  @override
  String get fee => 'Díj';
  @override
  String get paymentStatus => 'Fizetési állapot';
  @override
  String get generatedTime => 'Létrehozás ideje';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Ez egy rendszer által generált jelentés a(z) '),
      appName,
      const TextSpan(text: ' alkalmazásról'),
    ],
  );
  @override
  String get withdrawHistory => 'Kifizetési előzmények';
  @override
  String get history => 'Előzmények';
  @override
  String get withdrawAmount => 'Kifizetett összeg';
  @override
  String get availableBalance => 'Elérhető egyenleg';
  @override
  String get withdrawCharge => 'Kifizetési díj';
  @override
  String get paymentMethod => 'Fizetési mód';
  @override
  String get requestSendSuccess => 'A kérelem sikeresen elküldve!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'A fizetési bizonylat sikeresen elküldve.';
  @override
  String get refundReason => 'Visszatérítés oka';
  @override
  String get note => 'Megjegyzés';
  @override
  String get refundReceiveSuccess => 'A visszatérítés sikeresen megérkezett.';
  @override
  String get downloadPaymentReceipt => 'Fizetési bizonylat letöltése';
  @override
  String get invoice => 'Számla';
  @override
  String get selectPropertyToSeeInvoice =>
      'Válassza ki az ingatlant a számla megtekintéséhez...';
  @override
  String get bankAccName => 'Bankszámla neve';
  @override
  String get bankName => 'Bank neve';
  @override
  String get bankAccNum => 'Bankszámlaszám';
  @override
  String get thankYou => 'Köszönjük!';
  @override
  String get basicInfo => 'Alapvető információk';
  @override
  String get descriptionPricing => 'Leírás és árazás';
  @override
  String get contact => 'Kapcsolat';
  @override
  String get photos => 'Fotók';
  @override
  String get successfullySubmitted => 'Sikeresen elküldve!';
  @override
  String get editProperty => 'Ingatlan szerkesztése';
  @override
  String get addNewProperty => 'Új ingatlan hozzáadása';
  @override
  String get propertyManageRequestSuccess =>
      'Hirdetése elküldésre került felülvizsgálatra.';
  @override
  String get postAnotherProperty => 'Újabb ingatlan hirdetése';
  @override
  String get browseYourProperty => 'Ingatlan megtekintése';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      step,
      const TextSpan(text: '. lépés a(z) '),
      totalSteps,
      const TextSpan(text: ' lépésből'),
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Mit szeretne közzétenni?';
  @override
  String get category => 'Kategória';
  @override
  String get invalidCategory => 'Érvénytelen kategória';
  @override
  String get unitNumber => 'Lakásszám';
  @override
  String get sqft => 'nm';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Az ingatlan méretének nullánál nagyobbnak kell lennie';
  @override
  String get whatAreTheFacility => 'Milyen létesítmények állnak rendelkezésre?';
  @override
  String get whatAreTheAmenity => 'Milyen szolgáltatások állnak rendelkezésre?';
  @override
  String get parkingLot => 'Parkolóhely';
  @override
  String get houseType => 'Ház típus';
  @override
  String get value => 'Érték';
  @override
  String get unitLotSize => 'Telek/Lakás mérete';
  @override
  String get landSize => 'Telek mérete';
  @override
  String get acres => 'hektár';
  @override
  String get roomSize => 'Szoba mérete';
  @override
  String get askTenantPreference => 'Mi a bérlői preferenciája?';
  @override
  String get couple => 'Pár';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Írja le a(z) ${propertyType} ingatlant';
  @override
  String get adTitle => 'Hirdetés címe';
  @override
  String get minimumRentalPeriod => 'Minimum bérleti időszak';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Szám';
  @override
  String get hideOrDisplayEmail => 'E-mail cím elrejtése vagy megjelenítése';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Köszönjük, hogy hirdetett a(z) ${appName} oldalon!';
  @override
  String get propertyList => 'Ingatlanok listája';
  @override
  String get newInviteRent => 'Új bérleti meghívás';
  @override
  String get rentAgreement => 'Bérleti szerződés';
  @override
  String get rentDetails => 'Bérleti adatok';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Megjegyzés: '),
      note('Kérjük, várja meg, amíg a bérlő elfogadja a meghívást.'),
    ],
  );
  @override
  String get rent => 'Bérlet';
  @override
  String get editTenant => 'Bérlő szerkesztése';
  @override
  String get addNewTenant => 'Új bérlő hozzáadása';
  @override
  String get shareInstallLink => 'Telepítési link megosztása';
  @override
  String get tenantList => 'Bérlők listája';
  @override
  String get editMaintenanceRequest => 'Karbantartási kérelem szerkesztése';
  @override
  String get addNewMaintenance => 'Új karbantartás hozzáadása';
  @override
  String get landlordId => 'Bérbeadó azonosító';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Megjegyzés: '),
      note(
        'A szerződése felülvizsgálat alatt áll. Kérjük, várja meg, amíg a bérbeadó jóváhagyja a bérletet.',
      ),
    ],
  );
  @override
  String get editReview => 'Értékelés szerkesztése';
  @override
  String get writeAReview => 'Értékelés írása';
  @override
  String get selectRating => 'Értékelés kiválasztása';
  @override
  String get enterYourOpinion => 'Írja be véleményét';
  @override
  String get askToEnterReviewMsg => 'Kérjük, írjon egy értékelést';
  @override
  String get pressBackAgainToExit =>
      'Nyomja meg újra a Vissza gombot a kilépéshez.';
  @override
  String get selectPaymentMethod => 'Válasszon fizetési módot';
  @override
  String get filter => 'Szűrő';
  @override
  String get perMonth => '/hónap';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Keressen bármit a(z) ${appName} alkalmazásban...';
}

// Path: exceptions
class _TranslationsExceptionsHu implements TranslationsExceptionsEn {
  _TranslationsExceptionsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Valami hiba történt, kérjük, próbálja újra';
  @override
  String get noNidPassport => 'Nincs megadva NID/Útlevél kép.';
  @override
  String get noRentPropertyFound =>
      'Ehhez a bérlőhöz nem található bérelt ingatlan.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Nem található ingatlan!\nKérjük, próbálja más kulcsszavakkal';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Nem található előfizetési csomag!\nKérjük, frissítse az oldalt, és próbálja újra.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Érvénytelen ${dataType} információ! Kérjük, frissítse az oldalt, és próbálja újra.';
  @override
  String get invalidDownloadUrl => 'Érvénytelen letöltési URL!';
  @override
  String failedToSaveFile({required String error}) =>
      'Nem sikerült menteni a fájlt! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Hiba a fájl megnyitásakor! ${error}';
  @override
  String get noVehicleInfoProvided => 'Nem adtak meg járműinformációt.';
  @override
  String get yourApplicationRejected => 'A jelentkezését elutasították';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintHu
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintHu._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintHu noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintHu._(_root);
  @override
  String get noImageProvided => 'Nem adtak meg képet';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundHu
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundHu._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Nem található kaució!\nKérjük, itt láthatja a kauciókat, ha elérhetőek lesznek';
  @override
  String get noRentPaymentFound =>
      'Nem található bérleti díj fizetés!\nKérjük, itt láthatja a bérleti díj fizetéseket, ha elérhetőek lesznek';
  @override
  String get transactionSummaryApiException =>
      'Nem sikerült lekérni a tranzakciós összefoglalást.';
  @override
  String get noWithdrawRequestFound =>
      'Nem található kérelem!\nKérjük, hozzon létre egy kifizetési kérelmet, hogy itt megjelenjen.';
  @override
  String get withdrawRequestNotApproved =>
      'Ezt a kifizetési kérelmet nem hagyták jóvá!';
  @override
  String get nonZeroError =>
      'Kérjük, nullánál nagyobb érvényes összeget adjon meg.';
  @override
  String minAmountError({required String minValue}) =>
      'Az összegnek legalább ${minValue} összegnek kell lennie.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Az összeg nem haladhatja meg a(z) ${maxValue} összeget.';
  @override
  String get selectPaymentMethodHint =>
      'Kérjük, először válasszon fizetési módot.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundHu
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundHu._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintHu refundRequestHint =
      _TranslationsExceptionsRefundRequestHintHu._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Kérjük, válassza ki a(z) ${value} számát';
  @override
  String get invalidDateRange => 'Érvénytelen dátumtartomány.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      'A(z) ${value} nagyobb kell, hogy legyen nullánál.';
  @override
  late final _TranslationsExceptionsEditPropertyHu editProperty =
      _TranslationsExceptionsEditPropertyHu._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationHu rentInvitation =
      _TranslationsExceptionsRentInvitationHu._(_root);
  @override
  String get notenantFoundList =>
      'Nincsenek bérlők!\nKérjük, adjon hozzá egy bérlőt, hogy itt megjelenjen.';
  @override
  String get noFeaturesProvided => 'Nincsenek megadott funkciók.';
  @override
  String get noNotificationFound =>
      'Nincs elérhető értesítés.\nItt láthatja az értesítéseit, ha elérhetőek lesznek.';
}

// Path: prompt
class _TranslationsPromptHu implements TranslationsPromptEn {
  _TranslationsPromptHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutHu logout = _TranslationsPromptLogoutHu._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationHu application =
      _TranslationsPromptApplicationHu._(_root);
  @override
  late final _TranslationsPromptLaborHu labor = _TranslationsPromptLaborHu._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestHu maintenanceRequest =
      _TranslationsPromptMaintenanceRequestHu._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodHu withdrawMethod =
      _TranslationsPromptWithdrawMethodHu._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesHu unsavedChanges =
      _TranslationsPromptUnsavedChangesHu._(_root);
  @override
  late final _TranslationsPromptPropertyHu property =
      _TranslationsPromptPropertyHu._(_root);
  @override
  late final _TranslationsPromptRentInvitationHu rentInvitation =
      _TranslationsPromptRentInvitationHu._(_root);
  @override
  late final _TranslationsPromptSessionExpiredHu sessionExpired =
      _TranslationsPromptSessionExpiredHu._(_root);
  @override
  late final _TranslationsPromptNoInternetHu noInternet =
      _TranslationsPromptNoInternetHu._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerHu permissionHandler =
      _TranslationsPromptPermissionHandlerHu._(_root);
  @override
  late final _TranslationsPromptImagePickerHu imagePicker =
      _TranslationsPromptImagePickerHu._(_root);
  @override
  late final _TranslationsPromptVerificationDialogHu verificationDialog =
      _TranslationsPromptVerificationDialogHu._(_root);
  @override
  late final _TranslationsPromptNotificationHu notification =
      _TranslationsPromptNotificationHu._(_root);
}

// Path: form
class _TranslationsFormHu implements TranslationsFormEn {
  _TranslationsFormHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameHu fullName =
      _TranslationsFormFullNameHu._(_root);
  @override
  late final _TranslationsFormEmailHu email = _TranslationsFormEmailHu._(_root);
  @override
  late final _TranslationsFormPasswordHu password =
      _TranslationsFormPasswordHu._(_root);
  @override
  late final _TranslationsFormConfirmPasswordHu confirmPassword =
      _TranslationsFormConfirmPasswordHu._(_root);
  @override
  late final _TranslationsFormMobileNumberHu mobileNumber =
      _TranslationsFormMobileNumberHu._(_root);
  @override
  late final _TranslationsFormAddress1Hu address1 =
      _TranslationsFormAddress1Hu._(_root);
  @override
  late final _TranslationsFormAddress2Hu address2 =
      _TranslationsFormAddress2Hu._(_root);
  @override
  late final _TranslationsFormPostalCodeHu postalCode =
      _TranslationsFormPostalCodeHu._(_root);
  @override
  late final _TranslationsFormCityHu city = _TranslationsFormCityHu._(_root);
  @override
  late final _TranslationsFormStateHu state = _TranslationsFormStateHu._(_root);
  @override
  late final _TranslationsFormCountryHu country = _TranslationsFormCountryHu._(
    _root,
  );
  @override
  late final _TranslationsFormOtpHu otp = _TranslationsFormOtpHu._(_root);
  @override
  late final _TranslationsFormTitleHu title = _TranslationsFormTitleHu._(_root);
  @override
  late final _TranslationsFormDateHu date = _TranslationsFormDateHu._(_root);
  @override
  late final _TranslationsFormReasonHu reason = _TranslationsFormReasonHu._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodHu withdrawMethod =
      _TranslationsFormWithdrawMethodHu._(_root);
  @override
  late final _TranslationsFormFileFieldHu fileField =
      _TranslationsFormFileFieldHu._(_root);
  @override
  late final _TranslationsFormNoteHu note = _TranslationsFormNoteHu._(_root);
  @override
  late final _TranslationsFormGenderHu gender = _TranslationsFormGenderHu._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldHu anyField =
      _TranslationsFormAnyFieldHu._(_root);
  @override
  late final _TranslationsFormAnyDropdownHu anyDropdown =
      _TranslationsFormAnyDropdownHu._(_root);
}

// Path: action
class _TranslationsActionHu implements TranslationsActionEn {
  _TranslationsActionHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Következő';
  @override
  String get getStarted => 'Kezdés';
  @override
  String get skip => 'Átugrás';
  @override
  String get select => 'Kiválasztás';
  @override
  String get save => 'Mentés';
  @override
  String get signIn => 'Bejelentkezés';
  @override
  String get signUp => 'Regisztráció';
  @override
  String get kContinue => 'Folytatás';
  @override
  String get clearAll => 'Összes törlése';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Küldés';
  @override
  String get pay => 'Fizetés';
  @override
  String get remove => 'Eltávolítás';
  @override
  String get goBack => 'Vissza';
  @override
  String get buyNow => 'Vásárlás most';
  @override
  String get no => 'Nem';
  @override
  String get open => 'Megnyitás';
  @override
  String get addProperty => 'Ingatlan hozzáadása';
  @override
  String get process => 'Feldolgozás';
  @override
  String get approve => 'Jóváhagyás';
  @override
  String get reject => 'Elutasítás';
  @override
  String get viewRent => 'Bérlet megtekintése';
  @override
  String get openNavigationMenu => 'Navigációs menü megnyitása';
  @override
  String get seeAll => 'Összes megtekintése';
  @override
  String get update => 'Frissítés';
  @override
  String get printTransaction => 'Tranzakció nyomtatása';
  @override
  String get payoutRequest => 'Kifizetési kérelem';
  @override
  String get addNew => '+ Új hozzáadása';
  @override
  String get sendRequest => 'Kérelem küldése';
  @override
  String get print => 'Nyomtatás';
  @override
  String get requestForRefund => 'Visszatérítés kérése';
  @override
  String get previous => 'Előző';
  @override
  String get delete => 'Törlés';
  @override
  String get applyProperty => 'Ingatlan megpályázása';
  @override
  String get viewApplication => 'Jelentkezés megtekintése';
  @override
  String get inviteTenant => 'Bérlő meghívása';
  @override
  String get inviteRent => 'Bérlet meghívása';
  @override
  String get cancel => 'Mégsem';
  @override
  String get accept => 'Elfogadás';
  @override
  String get submit => 'Beküldés';
  @override
  String get yes => 'Igen';
  @override
  String get okay => 'Rendben';
  @override
  String get confirm => 'Megerősítés';
  @override
  String get apply => 'Alkalmazás';
  @override
  String get reset => 'Visszaállítás';
  @override
  String get retry => 'Újrapróbálás';
  @override
  String get viewAll => 'Megtekintés';
}

// Path: pages
class _TranslationsPagesHu implements TranslationsPagesEn {
  _TranslationsPagesHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageHu language =
      _TranslationsPagesLanguageHu._(_root);
  @override
  late final _TranslationsPagesOnboardHu onboard =
      _TranslationsPagesOnboardHu._(_root);
  @override
  late final _TranslationsPagesSignInHu signIn = _TranslationsPagesSignInHu._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordHu forgotPassword =
      _TranslationsPagesForgotPasswordHu._(_root);
  @override
  late final _TranslationsPagesOtpVerificationHu otpVerification =
      _TranslationsPagesOtpVerificationHu._(_root);
  @override
  late final _TranslationsPagesResetPasswordHu resetPassword =
      _TranslationsPagesResetPasswordHu._(_root);
  @override
  late final _TranslationsPagesSignUpHu signUp = _TranslationsPagesSignUpHu._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeHu welcome =
      _TranslationsPagesWelcomeHu._(_root);
  @override
  late final _TranslationsPagesAboutUsHu aboutUs =
      _TranslationsPagesAboutUsHu._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsHu termsAndConditions =
      _TranslationsPagesTermsAndConditionsHu._(_root);
  @override
  late final _TranslationsPagesNotificationListHu notificationList =
      _TranslationsPagesNotificationListHu._(_root);
  @override
  late final _TranslationsPagesContactUsHu contactUs =
      _TranslationsPagesContactUsHu._(_root);
  @override
  late final _TranslationsPagesCancelRentingHu cancelRenting =
      _TranslationsPagesCancelRentingHu._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsHu invoiceDetails =
      _TranslationsPagesInvoiceDetailsHu._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentHu offlinePayment =
      _TranslationsPagesOfflinePaymentHu._(_root);
  @override
  late final _TranslationsPagesPaymentStatusHu paymentStatus =
      _TranslationsPagesPaymentStatusHu._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsHu propertyDetails =
      _TranslationsPagesPropertyDetailsHu._(_root);
  @override
  late final _TranslationsPagesSearchHu search = _TranslationsPagesSearchHu._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanHu subscriptionPlan =
      _TranslationsPagesSubscriptionPlanHu._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportHu
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportHu._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsHu implements TranslationsEnumsEn {
  _TranslationsEnumsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusHu propertyStatus =
      _TranslationsEnumsPropertyStatusHu._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeHu propertyType =
      _TranslationsEnumsPropertyTypeHu._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusHu applicationStatus =
      _TranslationsEnumsApplicationStatusHu._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusHu myRentStatus =
      _TranslationsEnumsMyRentStatusHu._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusHu maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusHu._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeHu tenantProfileType =
      _TranslationsEnumsTenantProfileTypeHu._(_root);
  @override
  late final _TranslationsEnumsTenantTypeHu tenantType =
      _TranslationsEnumsTenantTypeHu._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusHu paymentStatus =
      _TranslationsEnumsPaymentStatusHu._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsHu paymentOptions =
      _TranslationsEnumsPaymentOptionsHu._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeHu paymentType =
      _TranslationsEnumsPaymentTypeHu._(_root);
  @override
  late final _TranslationsEnumsGenderHu gender = _TranslationsEnumsGenderHu._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationHu ecRelation =
      _TranslationsEnumsEcRelationHu._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeHu vehicleType =
      _TranslationsEnumsVehicleTypeHu._(_root);
  @override
  late final _TranslationsEnumsSortByHu sortBy = _TranslationsEnumsSortByHu._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeHu residentialType =
      _TranslationsEnumsResidentialTypeHu._(_root);
  @override
  late final _TranslationsEnumsFloorRangeHu floorRange =
      _TranslationsEnumsFloorRangeHu._(_root);
  @override
  late final _TranslationsEnumsFurnishingsHu furnishings =
      _TranslationsEnumsFurnishingsHu._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeHu commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeHu._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeHu landPropertyType =
      _TranslationsEnumsLandPropertyTypeHu._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeHu residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeHu._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodHu minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodHu._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterHu dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterHu._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileHu
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mobilszám';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoHu
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Jármű információk';
  @override
  String get optional => 'Jármű információk (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoHu
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Jármű rendszám';
  @override
  String get short => 'Rendszám';
  @override
  String get alt => 'Rendszámtábla szám';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintHu
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Nem található jelentkezés!\nA(z) ${subject} itt jelenik meg, ha elérhető lesz.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsHu subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsHu._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintHu
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Nem található ingatlan!\nKérjük, adjon hozzá egy ingatlant, hogy itt megjelenjen.';
  @override
  String get tenantRecommended =>
      'Nem található ajánlott ingatlan!\nKérjük, próbálja újra később.';
  @override
  String get tenantAllProperty =>
      'Ingatlanok nem érhetők el!\nKérjük, próbálja újra később.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundHu
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nem található ${status} karbantartás.';
  @override
  String get tenant =>
      'Nem található karbantartás! Létrehozhat karbantartási kérelmet, hogy itt megjelenjen.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundHu
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nem található ${status} visszatérítési kérelem!\nItt láthatja a visszatérítési kérelmet, ha elérhető lesz.';
  @override
  String get tenant =>
      'Nem található visszatérítési kérelem!\nLétrehozhat visszatérítési kérelmet, hogy itt megjelenjen.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintHu
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'A bérlő akkor hagyja jóvá a visszatérítést, amikor visszakapta a pénzt';
  @override
  String get tenantReqSuccess =>
      'Áttekintjük a visszatérítési kérelmet, és 24 órán belül jóváhagyjuk.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyHu
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'A bérleti ingatlan változik. Csak a következő havi bérleti díj fizetésére lehet érvényes (hatályos).';
  @override
  String get deleteOnRent =>
      'Ingatlanát már bérli egy bérlő. Nem törölheti, amíg előbb el nem távolítja a bérlőt';
  @override
  String get alreayRented =>
      'Ez az ingatlan már ki van bérelve. Kérjük, próbálja újra később.\nVagy további információkért forduljon a bérbeadóhoz.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationHu
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Nem található bérleti meghívó!\nKérjük, hozzon létre egy bérleti meghívót, hogy itt megjelenjen.';
  @override
  String get tenantNoRentInvitation =>
      'Nem található bérleti meghívó!\nItt láthatja a bérleti meghívót, ha elérhető lesz.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutHu implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Biztosan ki szeretne jelentkezni?';
}

// Path: prompt.application
class _TranslationsPromptApplicationHu
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Miért utasítja el ezt a jelentkezést?';
  @override
  late final _TranslationsPromptApplicationApplicationSentHu applicationSent =
      _TranslationsPromptApplicationApplicationSentHu._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborHu implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteHu delete =
      _TranslationsPromptLaborDeleteHu._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestHu
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Miért utasítják el ezt a kérelmet?';
  @override
  String get processTitle =>
      'Biztosan feldolgozza ezt a karbantartási kérelmet?';
  @override
  String get completeTitle => 'Elvégezték a munkát?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodHu
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Törli a kifizetési módot?';
  @override
  String get deleteDescription => 'Biztosan törli ezt a kifizetési módot?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesHu
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Biztosan vissza szeretne menni?';
  @override
  String get message => 'A módosított mezők nem lesznek mentve!';
}

// Path: prompt.property
class _TranslationsPromptPropertyHu implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteHu delete =
      _TranslationsPromptPropertyDeleteHu._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationHu
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveHu
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveHu._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptHu tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptHu._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredHu
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'A munkamenet lejárt';
  @override
  String get message => 'A munkamenete lejárt. Kérjük, jelentkezzen be újra';
  @override
  String get action => 'Bejelentkezés';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetHu
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nincs internetkapcsolat';
  @override
  String get message =>
      'Kérjük, ellenőrizze a Wi-Fi vagy mobilhálózat kapcsolatát, és próbálja újra';
  @override
  String get action => 'Újrapróbálás';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerHu
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Engedély szükséges!';
  @override
  String get message =>
      'Engedélyeket kell adnia az alkalmazás beállításaiban. Szeretné most megnyitni a beállításokat?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerHu
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Válasszon lehetőséget';
  @override
  String get gallery => 'Galéria';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogHu
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ellenőrizze az e-mail címét';
  @override
  String get message => 'Küldtünk egy ellenőrző kódot tartalmazó e-mailt';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} a(z) ${email} címre';
}

// Path: prompt.notification
class _TranslationsPromptNotificationHu
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Értesítések törlése?';
  @override
  String get clearMessage => 'Biztosan törli az összes értesítést?';
}

// Path: form.fullName
class _TranslationsFormFullNameHu implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Adja meg a(z) ${_root.common.fullName} nevet';
  @override
  late final _TranslationsFormFullNameErrorsHu errors =
      _TranslationsFormFullNameErrorsHu._(_root);
}

// Path: form.email
class _TranslationsFormEmailHu implements TranslationsFormEmailEn {
  _TranslationsFormEmailHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Adja meg a(z) ${_root.common.email} címét';
  @override
  late final _TranslationsFormEmailErrorsHu errors =
      _TranslationsFormEmailErrorsHu._(_root);
}

// Path: form.password
class _TranslationsFormPasswordHu implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsHu errors =
      _TranslationsFormPasswordErrorsHu._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordHu
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Jelszó megerősítése ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsHu errors =
      _TranslationsFormConfirmPasswordErrorsHu._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberHu
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsHu errors =
      _TranslationsFormMobileNumberErrorsHu._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Hu implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Hu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Házszám és utcanév';
  @override
  late final _TranslationsFormAddress1ErrorsHu errors =
      _TranslationsFormAddress1ErrorsHu._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Hu implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Hu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Lakás, lakosztály, egység stb.';
  @override
  late final _TranslationsFormAddress2ErrorsHu errors =
      _TranslationsFormAddress2ErrorsHu._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeHu implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Adja meg a(z) ${_root.common.postalCode} irányítószámot';
  @override
  late final _TranslationsFormPostalCodeErrorsHu errors =
      _TranslationsFormPostalCodeErrorsHu._(_root);
}

// Path: form.city
class _TranslationsFormCityHu implements TranslationsFormCityEn {
  _TranslationsFormCityHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Adja meg a(z) ${_root.common.city} város nevét.';
  @override
  late final _TranslationsFormCityErrorsHu errors =
      _TranslationsFormCityErrorsHu._(_root);
}

// Path: form.state
class _TranslationsFormStateHu implements TranslationsFormStateEn {
  _TranslationsFormStateHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Adja meg a(z) ${_root.common.state} állam nevét.';
  @override
  late final _TranslationsFormStateErrorsHu errors =
      _TranslationsFormStateErrorsHu._(_root);
}

// Path: form.country
class _TranslationsFormCountryHu implements TranslationsFormCountryEn {
  _TranslationsFormCountryHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Válassza ki a(z) ${_root.common.country} országot.';
  @override
  late final _TranslationsFormCountryErrorsHu errors =
      _TranslationsFormCountryErrorsHu._(_root);
}

// Path: form.otp
class _TranslationsFormOtpHu implements TranslationsFormOtpEn {
  _TranslationsFormOtpHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsHu errors =
      _TranslationsFormOtpErrorsHu._(_root);
}

// Path: form.title
class _TranslationsFormTitleHu implements TranslationsFormTitleEn {
  _TranslationsFormTitleHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Cím';
  @override
  String get hint => 'Adja meg a címet';
  @override
  late final _TranslationsFormTitleErrorsHu errors =
      _TranslationsFormTitleErrorsHu._(_root);
}

// Path: form.date
class _TranslationsFormDateHu implements TranslationsFormDateEn {
  _TranslationsFormDateHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Válassza ki a(z) ${_root.form.date.label(label: label)} dátumot';
  @override
  late final _TranslationsFormDateErrorsHu errors =
      _TranslationsFormDateErrorsHu._(_root);
}

// Path: form.reason
class _TranslationsFormReasonHu implements TranslationsFormReasonEn {
  _TranslationsFormReasonHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Ok';
  @override
  String get hint => 'Adja meg az okot';
  @override
  late final _TranslationsFormReasonErrorsHu errors =
      _TranslationsFormReasonErrorsHu._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodHu
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint =>
      'Válassza ki a(z) ${_root.common.withdrawMethod} kifizetési módot';
  @override
  late final _TranslationsFormWithdrawMethodErrorsHu errors =
      _TranslationsFormWithdrawMethodErrorsHu._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldHu implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Töltse fel a(z) ${label} fájlt';
  @override
  late final _TranslationsFormFileFieldErrorsHu errors =
      _TranslationsFormFileFieldErrorsHu._(_root);
}

// Path: form.note
class _TranslationsFormNoteHu implements TranslationsFormNoteEn {
  _TranslationsFormNoteHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Adja meg a(z) ${_root.form.note.label(note: note)} megjegyzést';
  @override
  late final _TranslationsFormNoteErrorsHu errors =
      _TranslationsFormNoteErrorsHu._(_root);
}

// Path: form.gender
class _TranslationsFormGenderHu implements TranslationsFormGenderEn {
  _TranslationsFormGenderHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Válassza ki a(z) ${_root.common.gender} nemet';
  @override
  late final _TranslationsFormGenderErrorsHu errors =
      _TranslationsFormGenderErrorsHu._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldHu implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Adja meg a(z) ${_root.form.anyField.label(label: label)} értéket';
  @override
  late final _TranslationsFormAnyFieldErrorsHu errors =
      _TranslationsFormAnyFieldErrorsHu._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownHu implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Válassza ki a(z) ${_root.form.anyDropdown.label(label: label)} lehetőséget';
  @override
  late final _TranslationsFormAnyDropdownErrorsHu errors =
      _TranslationsFormAnyDropdownErrorsHu._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageHu implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardHu implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataHu onboardData =
      _TranslationsPagesOnboardOnboardDataHu._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInHu implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Üdv újra';
  @override
  String get subtitle =>
      'Jelentkezzen be most, hogy elindítson egy csodálatos utazást.';
  @override
  late final _TranslationsPagesSignInExtraHu extra =
      _TranslationsPagesSignInExtraHu._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordHu
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Elfelejtett jelszó';
  @override
  String get subtitle => 'Adja meg e-mail címét a jelszó helyreállításához.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationHu
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ellenőrzés';
  @override
  String subtitle({required String email}) =>
      'Egy 4 jegyű PIN kódot küldtünk az e-mail címére. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraHu extra =
      _TranslationsPagesOtpVerificationExtraHu._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordHu
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Jelszó visszaállítása';
  @override
  String get subtitle =>
      'Állítsa vissza jelszavát a helyreállításhoz és jelentkezzen be fiókjába';
  @override
  late final _TranslationsPagesResetPasswordExtraHu extra =
      _TranslationsPagesResetPasswordExtraHu._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpHu implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Fiók létrehozása';
  @override
  String get subtitle =>
      'Regisztráljon most, hogy elindítson egy csodálatos utazást';
  @override
  late final _TranslationsPagesSignUpExtraHu extra =
      _TranslationsPagesSignUpExtraHu._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeHu implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ki vagy te?';
  @override
  String get subtitle => 'Kérjük, válassza ki az alábbi lehetőséget.';
  @override
  late final _TranslationsPagesWelcomeExtraHu extra =
      _TranslationsPagesWelcomeExtraHu._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsHu implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsHu
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListHu
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Értesítések';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsHu implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraHu extra =
      _TranslationsPagesContactUsExtraHu._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingHu
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Miért ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormHu form =
      _TranslationsPagesCancelRentingFormHu._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsHu
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentHu
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Offline fizetés';
  @override
  late final _TranslationsPagesOfflinePaymentFormHu form =
      _TranslationsPagesOfflinePaymentFormHu._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraHu extra =
      _TranslationsPagesOfflinePaymentExtraHu._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusHu
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessHu success =
      _TranslationsPagesPaymentStatusSuccessHu._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailHu fail =
      _TranslationsPagesPaymentStatusFailHu._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsHu
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraHu extra =
      _TranslationsPagesPropertyDetailsExtraHu._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchHu implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Keresés';
  @override
  late final _TranslationsPagesSearchExtraHu extra =
      _TranslationsPagesSearchExtraHu._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanHu
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Válassza ki a csomagot';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraHu extra =
      _TranslationsPagesSubscriptionPlanExtraHu._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportHu
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Összes karbantartási költség: '),
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
class _TranslationsEnumsPropertyStatusHu
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Összes ingatlan';
  @override
  String get pending => 'Függőben lévő';
  @override
  String get active => 'Aktív';
  @override
  String get inactive => 'Inaktív';
  @override
  String get rejected => 'Elutasított';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeHu
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Lakás/Társasház';
  @override
  String get house => 'Ház';
  @override
  String get commercialProperty => 'Kereskedelmi ingatlan';
  @override
  String get land => 'Telek';
  @override
  String get room => 'Szoba';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusHu
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Összes';
  @override
  String get pending => 'Függőben lévő';
  @override
  String get processing => 'Feldolgozás alatt';
  @override
  String get approved => 'Jóváhagyott';
  @override
  String get rejected => 'Elutasított';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusHu
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Függőben lévő';
  @override
  String get processing => 'Feldolgozás alatt';
  @override
  String get active => 'Aktív';
  @override
  String get expired => 'Lejárt';
  @override
  String get cancelled => 'Törölt';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusHu
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Függőben lévő';
  @override
  String get processing => 'Feldolgozás alatt';
  @override
  String get rejected => 'Elutasított';
  @override
  String get completed => 'Befejezett';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeHu
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Magánszemély';
  @override
  String get company => 'Cég';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeHu implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Új bérlő';
  @override
  String get activeTenant => 'Aktív bérlő';
  @override
  String get expiredTenant => 'Lejárt bérlő';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusHu
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Összes';
  @override
  String get pending => 'Függőben lévő';
  @override
  String get paid => 'Fizetett';
  @override
  String get unpaid => 'Nem fizetett';
  @override
  String get rejected => 'Elutasított';
  @override
  String get refund => 'Visszatérítés';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsHu
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Online fizetés';
  @override
  String get offlinePayment => 'Offline fizetés';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeHu
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Kaució';
  @override
  String get rentPayment => 'Bérleti díj fizetés';
  @override
  String get subscription => 'Előfizetés';
}

// Path: enums.gender
class _TranslationsEnumsGenderHu implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Férfi';
  @override
  String get female => 'Nő';
  @override
  String get other => 'Egyéb';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationHu implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Feleség';
  @override
  String get parent => 'Szülő';
  @override
  String get friend => 'Barát';
  @override
  String get brother => 'Testvér (férfi)';
  @override
  String get sister => 'Testvér (nő)';
  @override
  String get child => 'Gyermek';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeHu
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Autó';
  @override
  String get motorcycles => 'Motorkerékpár';
  @override
  String get lorry => 'Teherautó';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByHu implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Alacsonytól magasig';
  @override
  String get highToLow => 'Magastól alacsonyig';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeHu
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Lakás';
  @override
  String get apartment => 'Apartman';
  @override
  String get condominium => 'Társasház';
  @override
  String get serviceResidence => 'Szolgáltatott lakás';
  @override
  String get studio => 'Stúdió';
  @override
  String get duplex => 'Duplex';
  @override
  String get townhouseCondo => 'Sorház';
  @override
  String get others => 'Egyéb';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeHu implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Magas';
  @override
  String get medium => 'Közepes';
  @override
  String get low => 'Alacsony';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsHu
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Teljesen bútorozott';
  @override
  String get partiallyFurnished => 'Részben bútorozott';
  @override
  String get notFurnished => 'Nem bútorozott';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeHu
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Iroda';
  @override
  String get retailSpace => 'Kiskereskedelmi tér';
  @override
  String get shopLot => 'Üzlethelyiség';
  @override
  String get warehouseFactory => 'Raktár/Gyár';
  @override
  String get hotelResort => 'Hotel/Üdülőhely';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Egyéb';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeHu
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Lakóövezet';
  @override
  String get industrial => 'Ipari';
  @override
  String get agricultural => 'Mezőgazdasági';
  @override
  String get commercial => 'Kereskedelmi';
  @override
  String get mixedDevelopment => 'Vegyes fejlesztés';
  @override
  String get others => 'Egyéb';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeHu
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Társasház/Szolgáltatott lakás/Penthouse';
  @override
  String get apartment => 'Lakás/Földszintes ház';
  @override
  String get house => 'Házak';
  @override
  String get shoplot => 'Üzlethelyiség';
  @override
  String get sharing => 'Ház/lakás megosztása';
  @override
  String get others => 'Egyéb';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodHu
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 hónap';
  @override
  String get oneYear => '1 év';
  @override
  String get oneAndHalfYears => '1,5 év';
  @override
  String get twoYears => '2 év';
  @override
  String get twoAndHalfYears => '2,5 év';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterHu
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Napi';
  @override
  String get weekly => 'Heti';
  @override
  String get monthly => 'Havi';
  @override
  String get yearly => 'Éves';
  @override
  String get custom => 'Egyéni';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsHu
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Az Ön jelentkezése';
  @override
  String get landlord => 'A bérlő jelentkezése';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentHu
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'A jelentkezés sikeresen elküldve!';
  @override
  String get sucessDescription =>
      'Megtekintheti ezt a jelentkezést a jelentkezési listájában';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteHu
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Törli a munkást?';
  @override
  String get description => 'Biztosan törli ezt a munkást?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteHu
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Törli az ingatlant?';
  @override
  String get message => 'Biztosan törli ezt az ingatlant?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveHu
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Biztosan jóváhagyja ezt a bérletet?';
  @override
  String get description =>
      'Győződjön meg róla, hogy áttekintette a bérlő által aláírt szerződést.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptHu
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Biztosan elfogadja ezt a meghívást?';
  @override
  String get description =>
      'Győződjön meg róla, hogy letöltötte a szerződés PDF fájlját!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsHu
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Kérjük, adja meg a(z) ${_root.common.fullName} nevet';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsHu implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Kérjük, adja meg a(z) ${_root.common.email} címet';
  @override
  String get invalid => '⦸ Érvénytelen e-mail cím, kérjük, próbálja újra';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsHu
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, adja meg a(z) ${_root.common.password} jelszót';
  @override
  String minLength({required Object count}) =>
      'A jelszónak legalább ${count} karakterből kell állnia!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsHu
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, adja meg a(z) ${_root.common.password} jelszót';
  @override
  String get notMatched => 'A megerősítő jelszó nem egyezik!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsHu
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, adja meg a(z) ${_root.common.mobileNumber} telefonszámát';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsHu
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, adja meg a(z) ${_root.form.address1.label} címet';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsHu
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, adja meg a(z) ${_root.form.address2.label} címet';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsHu
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, adja meg a(z) ${_root.common.postalCode} irányítószámot';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsHu implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, adja meg a(z) ${_root.common.city} város nevét.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsHu implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, adja meg a(z) ${_root.common.state} állam nevét.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsHu
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, válassza ki a(z) ${_root.common.country} országot';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsHu implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Kérjük, adja meg az OTP-t.';
  @override
  String get invalid => 'Kérjük, adja meg a helyes OTP-t.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsHu implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Kérjük, adja meg a címet';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsHu implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Kérjük, válassza ki a(z) ${_root.form.date.label(label: label)} dátumot';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsHu
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Kérjük, adja meg az okot';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsHu
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, válassza ki a(z) ${_root.common.withdrawMethod} kifizetési módot';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsHu
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Kérjük, válassza ki a(z) ${label} fájlt';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsHu implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Kérjük, adja meg a(z) ${_root.form.note.label(note: note)} megjegyzést';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsHu
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Kérjük, válassza ki a(z) ${_root.common.gender} nemet';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsHu
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Kérjük, adja meg a(z) ${_root.form.anyField.label(label: label)} értéket';
  @override
  String get invalid =>
      'Kérjük, érvényes @form.anyField.label értéket adjon meg';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsHu
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Kérjük, válassza ki a(z) ${_root.form.anyDropdown.label(label: label)} lehetőséget';
  @override
  String get invalid =>
      'Kérjük, érvényes @form.anyDropdown.label lehetőséget válasszon';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataHu
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Hu data1 =
      _TranslationsPagesOnboardOnboardDataData1Hu._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Hu data2 =
      _TranslationsPagesOnboardOnboardDataData2Hu._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Hu data3 =
      _TranslationsPagesOnboardOnboardDataData3Hu._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraHu
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Emlékezz rám';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Nincs fiókja? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraHu
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendHu codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendHu._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraHu
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogHu dialog =
      _TranslationsPagesResetPasswordExtraDialogHu._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraHu
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Van fiókja? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraHu
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Kezelje saját ingatlanait';
  @override
  String get tenantTag => 'Jelentkezzen be bérleti fiókjába';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraHu
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Üzenet...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormHu
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonHu reason =
      _TranslationsPagesCancelRentingFormReasonHu._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormHu
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteHu paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteHu._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraHu
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Fizetendő összeg: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Számlatulajdonos neve';
  @override
  String get accountNumber => 'Számlaszám';
  @override
  String get swiftCode => 'Swift kód';
  @override
  String get branch => 'Fiók';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Csak '),
      fileType('JPG, PNG, PDF'),
      const TextSpan(text: ' vagy '),
      fileType('DOC'),
      const TextSpan(text: ' formátumú fájlokat válasszon. Fájlméret '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessHu
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Számla megtekintése';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Áttekintjük a fizetést, és 24 órán belül jóváhagyjuk.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailHu
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Újrapróbálás';
  @override
  String get title => 'Hoppá! Sikertelen fizetés';
  @override
  String get description =>
      'A tranzakció sikertelen volt valamilyen technikai hiba miatt.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraHu
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

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
      const TextSpan(text: 'Jellemzők '),
      fa('(Létesítmények és szolgáltatások)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Válassza ki a bérleti időszakot';
  @override
  String get writeAReview => '+ Írjon véleményt';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraHu
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Keressen telkeket, lakásokat, szobákat...';
  @override
  String get noRecentSearch => 'Nincsenek legutóbbi keresései.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraHu
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Az előfizetési fizetés sikeres volt.\nMostantól hozzáférhet az előfizetett funkciókhoz.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Hu
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Hu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Találja meg ingatlanát';
  @override
  String get description =>
      'Könnyedén megtalálhatja az életéhez illő helyet – legyen az szoba, lakás vagy ház.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Hu
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Hu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Lakás a városban';
  @override
  String get description =>
      'Időt takarítunk meg Önnek azáltal, hogy gyorsan megtaláljuk a tökéletes ingatlant, mielőtt az elfogyna, így élvezheti új otthonát, vagy ingyenesen listázhatja sajátját.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Hu
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Hu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Az Ön kényelmes háza';
  @override
  String get description =>
      'Ha lakóhelyet keres, tekintse meg kiadó házainkat. Országszerte számos ház közül választhat.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendHu
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'A kód elküldése ${minutes}:${seconds} múlva';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Kód újraküldése'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogHu
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sikeresen megváltoztatva!';
  @override
  String get subtitle =>
      'Jelentkezzen be új jelszavával.\nÁtirányítjuk a bejelentkezéshez...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonHu
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Írja meg az okot';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsHu errors =
      _TranslationsPagesCancelRentingFormReasonErrorsHu._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteHu
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Fizetési megjegyzés (${_root.common.optional})';
  @override
  String get hint => 'Írjon be néhány szöveget...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsHu
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsHu._(this._root);

  final TranslationsHu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Kérjük, adja meg a bérlet lemondásának okát';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsHu {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Nyelv';
      case 'common.subscriptionPlan':
        return 'Előfizetési terv';
      case 'common.contactUs':
        return 'Kapcsolatfelvétel';
      case 'common.termsAndConditions':
        return 'Általános Szerződési Feltételek';
      case 'common.aboutUs':
        return 'Rólunk';
      case 'common.logout':
        return 'Kijelentkezés';
      case 'common.editProfile':
        return 'Profil szerkesztése';
      case 'common.fullName':
        return 'Teljes név';
      case 'common.email':
        return 'E-mail';
      case 'common.mobileNumber':
        return 'Mobilszám';
      case 'common.address':
        return 'Cím';
      case 'common.postalCode':
        return 'Irányítószám';
      case 'common.city':
        return 'Város';
      case 'common.country':
        return 'Ország';
      case 'common.state':
        return 'Állam';
      case 'common.password':
        return 'Jelszó';
      case 'common.forgotPassword':
        return 'Elfelejtett jelszó';
      case 'common.tenant':
        return 'Bérlő';
      case 'common.landlord':
        return 'Bérbeadó';
      case 'common.cancelRenting':
        return 'Bérlés lemondása';
      case 'common.startDate':
        return 'Kezdő dátum';
      case 'common.endDate':
        return 'Befejező dátum';
      case 'common.fromDate':
        return 'Mettől';
      case 'common.toDate':
        return 'Meddig';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Banklista';
      case 'common.withdrawMethod':
        return 'Kifizetési mód';
      case 'common.uploadPaymentReceipt':
        return 'Fizetési bizonylat feltöltése';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Megjegyzés: '),
            note('A fizetés manuális jóváhagyást igényel a rendszergazdától'),
            const TextSpan(text: ' '),
            duraion('24-48 órán belül.'),
          ],
        );
      case 'common.reviews':
        return 'Vélemények';
      case 'common.description':
        return 'Leírás';
      case 'common.about':
        return 'Rólunk';
      case 'common.propertyTypes':
        return 'Ingatlan típusok';
      case 'common.features':
        return 'Jellemzők';
      case 'common.floorPlans':
        return 'Alaprajzok';
      case 'common.buildingDetails':
        return 'Épület részletei';
      case 'common.buildingName':
        return 'Épület neve';
      case 'common.propertyAddress':
        return 'Ingatlan címe';
      case 'common.completionYear':
        return 'Építés éve';
      case 'common.lotNumber':
        return 'Telekszám';
      case 'common.residentialType':
        return 'Lakó típus';
      case 'common.furnishings':
        return 'Berendezés';
      case 'common.floorRange':
        return 'Emelet';
      case 'common.bedrooms':
        return 'Hálószobák';
      case 'common.bathrooms':
        return 'Fürdőszobák';
      case 'common.propertySize':
        return 'Ingatlan mérete';
      case 'common.rentalPeriod':
        return 'Bérleti időszak';
      case 'common.securityDeposit':
        return 'Biztonsági letét';
      case 'common.utilityBill':
        return 'Közüzemi számla';
      case 'common.facilities':
        return 'Létesítmények';
      case 'common.amenities':
        return 'Kényelmi szolgáltatások';
      case 'common.expiringReason':
        return 'Lejárati ok';
      case 'common.tenantDetails':
        return 'Bérlő adatai';
      case 'common.typeOfTenant':
        return 'Bérlő típusa';
      case 'common.tenantName':
        return 'Bérlő neve';
      case 'common.nidPassport':
        return 'NID/Útlevél';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Bérlő azonosító';
      case 'common.dateOfBirth':
        return 'Születési dátum';
      case 'common.gender':
        return 'Nem';
      case 'common.nominee':
        return 'Jelölt';
      case 'common.name':
        return 'Név';
      case 'common.optional':
        return 'Opcionális';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mobilszám';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Sürgősségi kapcsolat';
      case 'common.relation':
        return 'Kapcsolat';
      case 'common.relationWith':
        return '${_root.common.relation} -val';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} Önnel';
      case 'common.company':
        return 'Cég';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM szám';
      case 'common.workplace':
        return 'Munkahely';
      case 'common.officePhoneNo':
        return 'Irodai telefonszám';
      case 'common.officeMobileNo':
        return 'Irodai ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Jármű';
      case 'common.vehiclesInfo.plain':
        return 'Jármű információk';
      case 'common.vehiclesInfo.optional':
        return 'Jármű információk (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Típus';
      case 'common.vehicleRegistrationNo.normal':
        return 'Jármű rendszám';
      case 'common.vehicleRegistrationNo.short':
        return 'Rendszám';
      case 'common.vehicleRegistrationNo.alt':
        return 'Rendszámtábla szám';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Márka';
      case 'common.rentProperty':
        return 'Bérlés ingatlan';
      case 'common.propertyDetails':
        return 'Ingatlan részletei';
      case 'common.propertyId':
        return 'Ingatlan azonosító';
      case 'common.propertyType':
        return 'Ingatlan típusa';
      case 'common.propertyName':
        return 'Ingatlan neve';
      case 'common.paymentDetails':
        return 'Fizetési részletek';
      case 'common.monthlyRent':
        return 'Havi bérleti díj';
      case 'common.thisMonthPayment':
        return 'Ebben a hónapban fizetett összeg';
      case 'common.totalPaidRent':
        return 'Összesen fizetett bérleti díj';
      case 'common.dueRent':
        return 'Hátralévő bérleti díj';
      case 'common.rentStartDate':
        return 'Bérleti szerződés kezdete ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Bérleti szerződés vége ${_root.common.endDate}';
      case 'common.status':
        return 'Állapot';
      case 'common.rentAgreementPdf':
        return 'Bérleti szerződés PDF';
      case 'common.noFile':
        return 'Nincs fájl';
      case 'common.tenantImageOp':
        return 'Bérlő képe ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Új jármű hozzáadása';
      case 'common.uploadNidPassport':
        return 'NID/Útlevél feltöltése';
      case 'common.nidPassportUploadNote':
        return 'Csak fájltípus kép fogadható el. Fájlméret legfeljebb 2,5 MB.';
      case 'common.search':
        return 'Keresés';
      case 'common.sortBy':
        return 'Rendezés';
      case 'common.subscription':
        return 'Előfizetés';
      case 'common.downloading':
        return 'Letöltés...';
      case 'common.downloadSuccess':
        return 'A fájl sikeresen letöltve!';
      case 'common.addPropertyBannerTitle':
        return 'Szeretné kiadni ingatlanát?';
      case 'common.application':
        return 'Jelentkezés';
      case 'common.tenantHasPaidDeposit':
        return 'A bérlő befizette a kauciót.';
      case 'common.askProcessingRentApplication':
        return 'Biztosan feldolgozza ezt a bérleti ingatlanra vonatkozó kérelmet?';
      case 'common.dateAndTime':
        return 'Dátum és idő';
      case 'common.applicationDetails':
        return 'Jelentkezés részletei';
      case 'common.depositStatus':
        return 'Kaució állapota';
      case 'common.uploadRentAgreement':
        return 'Bérleti szerződés feltöltése';
      case 'common.uploadFilePDF':
        return 'Fájl feltöltése (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Kérjük, válasszon egy szerződés dokumentumfájlt.';
      case 'common.landlordRentAgreementPDF':
        return 'Bérbeadó bérleti szerződése PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Bérlő bérleti szerződése PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Megjegyzés: '),
            note(
              'Csak akkor hagyja jóvá a kérelmet, miután a bérlő befizette a kauciót.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Az elutasítás oka';
      case 'common.youveRejectedThisApplication':
        return 'Elutasította ezt a kérelmet';
      case 'common.landlordDetails':
        return 'Bérbeadó adatai';
      case 'common.landlordName':
        return 'Bérbeadó neve';
      case 'common.downloadRentAgreement':
        return 'Bérleti szerződés letöltése';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Elfogadom a '),
            toc('Általános Szerződési Feltételeket'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Megjegyzés: '),
            note(
              'Kérjük, töltse le és olvassa el a szerződést. Kérjük, küldje el az aláírt szerződést a bérbeadónak WhatsApp-on vagy e-mailben.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Megjegyzés: '),
            note(
              'A bérbeadó akkor hagyja jóvá a kérelmet, ha a bérlő befizeti a biztonsági, közüzemi és egyhavi előlegbérleti díjat.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Bérleti szerződés (PDF) '),
            complete('Teljes szerződés'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Megjegyzés: '),
            note(
              'A bérbeadó akkor hagyja jóvá a kérelmet, ha a bérlő befizeti a biztonsági, közüzemi és egyhavi előlegbérleti díjat.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Jelentkezések listája';
      case 'common.viewDetails':
        return 'Részletek megtekintése';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Kezdőlap';
      case 'common.dashboard':
        return 'Műszerfal';
      case 'common.tenants':
        return 'Bérlők';
      case 'common.maintenance':
        return 'Karbantartás';
      case 'common.maintenanceList':
        return 'Karbantartási lista';
      case 'common.maintenanceReport':
        return 'Karbantartási jelentés';
      case 'common.labor':
        return 'Munkás';
      case 'common.applications':
        return 'Jelentkezések';
      case 'common.rentInvitation':
        return 'Bérleti meghívó';
      case 'common.payment':
        return 'Fizetés';
      case 'common.rentPayment':
        return 'Bérleti díj fizetés';
      case 'common.depositUtilityPayment':
        return 'Kaució és közüzemi díj fizetés';
      case 'common.refundRequest':
        return 'Visszatérítési kérelem';
      case 'common.withdrawRequest':
        return 'Kifizetési kérelem';
      case 'common.myProperty':
        return 'Saját ingatlan';
      case 'common.myRent':
        return 'Saját bérlet';
      case 'common.wishlist':
        return 'Kívánságlista';
      case 'common.properties':
        return 'Ingatlanok';
      case 'common.allProperties':
        return 'Összes ingatlan';
      case 'common.totalPropery':
        return 'Összes ingatlan';
      case 'common.occupied':
        return 'Foglalt';
      case 'common.vacant':
        return 'Szabad';
      case 'common.accounting':
        return 'Könyvelés';
      case 'common.totalIncome':
        return 'Összes bevétel';
      case 'common.totalExpense':
        return 'Összes kiadás';
      case 'common.currentBalance':
        return 'Aktuális egyenleg';
      case 'common.totalWithdrawal':
        return 'Összesen (Kifizetés)';
      case 'common.totalProperties':
        return 'Összes ingatlan';
      case 'common.totalTenant':
        return 'Összes bérlő';
      case 'common.totalRentPaid':
        return 'Összes befizetett bérleti díj';
      case 'common.totalRentDue':
        return 'Összes hátralévő bérleti díj';
      case 'common.totalApplication':
        return 'Összes jelentkezés';
      case 'common.pendingApplication':
        return 'Függőben lévő jelentkezés';
      case 'common.processingApplication':
        return 'Feldolgozás alatt lévő jelentkezés';
      case 'common.approveApplication':
        return 'Jelentkezés jóváhagyása';
      case 'common.rejectApplication':
        return 'Jelentkezés elutasítása';
      case 'common.maintenanceCost':
        return 'Karbantartási költség';
      case 'common.transactionSummary':
        return 'Tranzakciós összefoglalás';
      case 'common.maintenanceRequest':
        return 'Karbantartási kérelem';
      case 'common.notifications':
        return 'Értesítések';
      case 'common.myProperties':
        return 'Saját ingatlanok';
      case 'common.recommendationProperties':
        return 'Ajánlott ingatlanok';
      case 'common.laborList':
        return 'Munkáslista';
      case 'common.addLabor':
        return 'Munkás hozzáadása';
      case 'common.laborDetails':
        return 'Munkás részletei';
      case 'common.laborSalary':
        return 'Munkás fizetése';
      case 'common.editLabor':
        return 'Munkás szerkesztése';
      case 'common.addNewLabor':
        return 'Új munkás hozzáadása';
      case 'common.enterAmount':
        return 'Adja meg az összeget';
      case 'common.maintenanceDetails':
        return 'Karbantartás részletei';
      case 'common.laborName':
        return 'Munkás neve';
      case 'common.comment':
        return 'Megjegyzés';
      case 'common.image':
        return 'Kép';
      case 'common.complete':
        return 'Befejezés';
      case 'common.details':
        return 'Részletek';
      case 'common.title':
        return 'Cím';
      case 'common.date':
        return 'Dátum';
      case 'common.reason':
        return 'Ok';
      case 'common.edit':
        return 'Szerkesztés';
      case 'common.property':
        return 'Ingatlan';
      case 'common.completeYourProfile':
        return 'Töltse ki a profilját';
      case 'common.profileImage':
        return 'Profilkép';
      case 'common.imagePickHint':
        return 'Csak JPEG és PNG kép fogadható el, legfeljebb 120x120 képpont méretben.';
      case 'common.invoiceId':
        return 'Számlaazonosító';
      case 'common.depositAmount':
        return 'Kaució összege';
      case 'common.landlordPhone':
        return 'Bérbeadó telefonszáma';
      case 'common.rentalAdvance':
        return 'Bérleti díj (előleg)';
      case 'common.totalAmount':
        return 'Összes összeg';
      case 'common.rentalAmount':
        return 'Bérleti díj összege';
      case 'common.adminCharge':
        return 'Adminisztrációs díj';
      case 'common.editAccount':
        return 'Fiók szerkesztése';
      case 'common.addNewAccount':
        return 'Új fiók hozzáadása';
      case 'common.transactionId':
        return 'Tranzakciós azonosító';
      case 'common.transactionType':
        return 'Tranzakció típusa';
      case 'common.requestDate':
        return 'Kérelem dátuma';
      case 'common.amount':
        return 'Összeg';
      case 'common.fee':
        return 'Díj';
      case 'common.paymentStatus':
        return 'Fizetési állapot';
      case 'common.generatedTime':
        return 'Létrehozás ideje';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text: 'Ez egy rendszer által generált jelentés a(z) ',
            ),
            appName,
            const TextSpan(text: ' alkalmazásról'),
          ],
        );
      case 'common.withdrawHistory':
        return 'Kifizetési előzmények';
      case 'common.history':
        return 'Előzmények';
      case 'common.withdrawAmount':
        return 'Kifizetett összeg';
      case 'common.availableBalance':
        return 'Elérhető egyenleg';
      case 'common.withdrawCharge':
        return 'Kifizetési díj';
      case 'common.paymentMethod':
        return 'Fizetési mód';
      case 'common.requestSendSuccess':
        return 'A kérelem sikeresen elküldve!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'A fizetési bizonylat sikeresen elküldve.';
      case 'common.refundReason':
        return 'Visszatérítés oka';
      case 'common.note':
        return 'Megjegyzés';
      case 'common.refundReceiveSuccess':
        return 'A visszatérítés sikeresen megérkezett.';
      case 'common.downloadPaymentReceipt':
        return 'Fizetési bizonylat letöltése';
      case 'common.invoice':
        return 'Számla';
      case 'common.selectPropertyToSeeInvoice':
        return 'Válassza ki az ingatlant a számla megtekintéséhez...';
      case 'common.bankAccName':
        return 'Bankszámla neve';
      case 'common.bankName':
        return 'Bank neve';
      case 'common.bankAccNum':
        return 'Bankszámlaszám';
      case 'common.thankYou':
        return 'Köszönjük!';
      case 'common.basicInfo':
        return 'Alapvető információk';
      case 'common.descriptionPricing':
        return 'Leírás és árazás';
      case 'common.contact':
        return 'Kapcsolat';
      case 'common.photos':
        return 'Fotók';
      case 'common.successfullySubmitted':
        return 'Sikeresen elküldve!';
      case 'common.editProperty':
        return 'Ingatlan szerkesztése';
      case 'common.addNewProperty':
        return 'Új ingatlan hozzáadása';
      case 'common.propertyManageRequestSuccess':
        return 'Hirdetése elküldésre került felülvizsgálatra.';
      case 'common.postAnotherProperty':
        return 'Újabb ingatlan hirdetése';
      case 'common.browseYourProperty':
        return 'Ingatlan megtekintése';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                step,
                const TextSpan(text: '. lépés a(z) '),
                totalSteps,
                const TextSpan(text: ' lépésből'),
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Mit szeretne közzétenni?';
      case 'common.category':
        return 'Kategória';
      case 'common.invalidCategory':
        return 'Érvénytelen kategória';
      case 'common.unitNumber':
        return 'Lakásszám';
      case 'common.sqft':
        return 'nm';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Az ingatlan méretének nullánál nagyobbnak kell lennie';
      case 'common.whatAreTheFacility':
        return 'Milyen létesítmények állnak rendelkezésre?';
      case 'common.whatAreTheAmenity':
        return 'Milyen szolgáltatások állnak rendelkezésre?';
      case 'common.parkingLot':
        return 'Parkolóhely';
      case 'common.houseType':
        return 'Ház típus';
      case 'common.value':
        return 'Érték';
      case 'common.unitLotSize':
        return 'Telek/Lakás mérete';
      case 'common.landSize':
        return 'Telek mérete';
      case 'common.acres':
        return 'hektár';
      case 'common.roomSize':
        return 'Szoba mérete';
      case 'common.askTenantPreference':
        return 'Mi a bérlői preferenciája?';
      case 'common.couple':
        return 'Pár';
      case 'common.describeTheProperty':
        return ({required String propertyType}) =>
            'Írja le a(z) ${propertyType} ingatlant';
      case 'common.adTitle':
        return 'Hirdetés címe';
      case 'common.minimumRentalPeriod':
        return 'Minimum bérleti időszak';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Szám';
      case 'common.hideOrDisplayEmail':
        return 'E-mail cím elrejtése vagy megjelenítése';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Köszönjük, hogy hirdetett a(z) ${appName} oldalon!';
      case 'common.propertyList':
        return 'Ingatlanok listája';
      case 'common.newInviteRent':
        return 'Új bérleti meghívás';
      case 'common.rentAgreement':
        return 'Bérleti szerződés';
      case 'common.rentDetails':
        return 'Bérleti adatok';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Megjegyzés: '),
            note('Kérjük, várja meg, amíg a bérlő elfogadja a meghívást.'),
          ],
        );
      case 'common.rent':
        return 'Bérlet';
      case 'common.editTenant':
        return 'Bérlő szerkesztése';
      case 'common.addNewTenant':
        return 'Új bérlő hozzáadása';
      case 'common.shareInstallLink':
        return 'Telepítési link megosztása';
      case 'common.tenantList':
        return 'Bérlők listája';
      case 'common.editMaintenanceRequest':
        return 'Karbantartási kérelem szerkesztése';
      case 'common.addNewMaintenance':
        return 'Új karbantartás hozzáadása';
      case 'common.landlordId':
        return 'Bérbeadó azonosító';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Megjegyzés: '),
            note(
              'A szerződése felülvizsgálat alatt áll. Kérjük, várja meg, amíg a bérbeadó jóváhagyja a bérletet.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Értékelés szerkesztése';
      case 'common.writeAReview':
        return 'Értékelés írása';
      case 'common.selectRating':
        return 'Értékelés kiválasztása';
      case 'common.enterYourOpinion':
        return 'Írja be véleményét';
      case 'common.askToEnterReviewMsg':
        return 'Kérjük, írjon egy értékelést';
      case 'common.pressBackAgainToExit':
        return 'Nyomja meg újra a Vissza gombot a kilépéshez.';
      case 'common.selectPaymentMethod':
        return 'Válasszon fizetési módot';
      case 'common.filter':
        return 'Szűrő';
      case 'common.perMonth':
        return '/hónap';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Keressen bármit a(z) ${appName} alkalmazásban...';
      case 'exceptions.somethingWentWrong':
        return 'Valami hiba történt, kérjük, próbálja újra';
      case 'exceptions.noNidPassport':
        return 'Nincs megadva NID/Útlevél kép.';
      case 'exceptions.noRentPropertyFound':
        return 'Ehhez a bérlőhöz nem található bérelt ingatlan.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Nem található ingatlan!\nKérjük, próbálja más kulcsszavakkal';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Nem található előfizetési csomag!\nKérjük, frissítse az oldalt, és próbálja újra.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Érvénytelen ${dataType} információ! Kérjük, frissítse az oldalt, és próbálja újra.';
      case 'exceptions.invalidDownloadUrl':
        return 'Érvénytelen letöltési URL!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Nem sikerült menteni a fájlt! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Hiba a fájl megnyitásakor! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Nem adtak meg járműinformációt.';
      case 'exceptions.yourApplicationRejected':
        return 'A jelentkezését elutasították';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Nem található jelentkezés!\nA(z) ${subject} itt jelenik meg, ha elérhető lesz.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Az Ön jelentkezése';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'A bérlő jelentkezése';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Nem található ingatlan!\nKérjük, adjon hozzá egy ingatlant, hogy itt megjelenjen.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Nem található ajánlott ingatlan!\nKérjük, próbálja újra később.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Ingatlanok nem érhetők el!\nKérjük, próbálja újra később.';
      case 'exceptions.noImageProvided':
        return 'Nem adtak meg képet';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Nem található ${status} karbantartás.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Nem található karbantartás! Létrehozhat karbantartási kérelmet, hogy itt megjelenjen.';
      case 'exceptions.noDepositFound':
        return 'Nem található kaució!\nKérjük, itt láthatja a kauciókat, ha elérhetőek lesznek';
      case 'exceptions.noRentPaymentFound':
        return 'Nem található bérleti díj fizetés!\nKérjük, itt láthatja a bérleti díj fizetéseket, ha elérhetőek lesznek';
      case 'exceptions.transactionSummaryApiException':
        return 'Nem sikerült lekérni a tranzakciós összefoglalást.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Nem található kérelem!\nKérjük, hozzon létre egy kifizetési kérelmet, hogy itt megjelenjen.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Ezt a kifizetési kérelmet nem hagyták jóvá!';
      case 'exceptions.nonZeroError':
        return 'Kérjük, nullánál nagyobb érvényes összeget adjon meg.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Az összegnek legalább ${minValue} összegnek kell lennie.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Az összeg nem haladhatja meg a(z) ${maxValue} összeget.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Kérjük, először válasszon fizetési módot.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Nem található ${status} visszatérítési kérelem!\nItt láthatja a visszatérítési kérelmet, ha elérhető lesz.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Nem található visszatérítési kérelem!\nLétrehozhat visszatérítési kérelmet, hogy itt megjelenjen.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'A bérlő akkor hagyja jóvá a visszatérítést, amikor visszakapta a pénzt';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Áttekintjük a visszatérítési kérelmet, és 24 órán belül jóváhagyjuk.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Kérjük, válassza ki a(z) ${value} számát';
      case 'exceptions.invalidDateRange':
        return 'Érvénytelen dátumtartomány.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            'A(z) ${value} nagyobb kell, hogy legyen nullánál.';
      case 'exceptions.editProperty.rentalChange':
        return 'A bérleti ingatlan változik. Csak a következő havi bérleti díj fizetésére lehet érvényes (hatályos).';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Ingatlanát már bérli egy bérlő. Nem törölheti, amíg előbb el nem távolítja a bérlőt';
      case 'exceptions.editProperty.alreayRented':
        return 'Ez az ingatlan már ki van bérelve. Kérjük, próbálja újra később.\nVagy további információkért forduljon a bérbeadóhoz.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Nem található bérleti meghívó!\nKérjük, hozzon létre egy bérleti meghívót, hogy itt megjelenjen.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Nem található bérleti meghívó!\nItt láthatja a bérleti meghívót, ha elérhető lesz.';
      case 'exceptions.notenantFoundList':
        return 'Nincsenek bérlők!\nKérjük, adjon hozzá egy bérlőt, hogy itt megjelenjen.';
      case 'exceptions.noFeaturesProvided':
        return 'Nincsenek megadott funkciók.';
      case 'exceptions.noNotificationFound':
        return 'Nincs elérhető értesítés.\nItt láthatja az értesítéseit, ha elérhetőek lesznek.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Biztosan ki szeretne jelentkezni?';
      case 'prompt.application.rejectTitle':
        return 'Miért utasítja el ezt a jelentkezést?';
      case 'prompt.application.applicationSent.successfully':
        return 'A jelentkezés sikeresen elküldve!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Megtekintheti ezt a jelentkezést a jelentkezési listájában';
      case 'prompt.labor.delete.title':
        return 'Törli a munkást?';
      case 'prompt.labor.delete.description':
        return 'Biztosan törli ezt a munkást?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Miért utasítják el ezt a kérelmet?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Biztosan feldolgozza ezt a karbantartási kérelmet?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Elvégezték a munkát?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Törli a kifizetési módot?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Biztosan törli ezt a kifizetési módot?';
      case 'prompt.unsavedChanges.title':
        return 'Biztosan vissza szeretne menni?';
      case 'prompt.unsavedChanges.message':
        return 'A módosított mezők nem lesznek mentve!';
      case 'prompt.property.delete.title':
        return 'Törli az ingatlant?';
      case 'prompt.property.delete.message':
        return 'Biztosan törli ezt az ingatlant?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Biztosan jóváhagyja ezt a bérletet?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Győződjön meg róla, hogy áttekintette a bérlő által aláírt szerződést.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Biztosan elfogadja ezt a meghívást?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Győződjön meg róla, hogy letöltötte a szerződés PDF fájlját!';
      case 'prompt.sessionExpired.title':
        return 'A munkamenet lejárt';
      case 'prompt.sessionExpired.message':
        return 'A munkamenete lejárt. Kérjük, jelentkezzen be újra';
      case 'prompt.sessionExpired.action':
        return 'Bejelentkezés';
      case 'prompt.noInternet.title':
        return 'Nincs internetkapcsolat';
      case 'prompt.noInternet.message':
        return 'Kérjük, ellenőrizze a Wi-Fi vagy mobilhálózat kapcsolatát, és próbálja újra';
      case 'prompt.noInternet.action':
        return 'Újrapróbálás';
      case 'prompt.permissionHandler.title':
        return 'Engedély szükséges!';
      case 'prompt.permissionHandler.message':
        return 'Engedélyeket kell adnia az alkalmazás beállításaiban. Szeretné most megnyitni a beállításokat?';
      case 'prompt.imagePicker.title':
        return 'Válasszon lehetőséget';
      case 'prompt.imagePicker.gallery':
        return 'Galéria';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Ellenőrizze az e-mail címét';
      case 'prompt.verificationDialog.message':
        return 'Küldtünk egy ellenőrző kódot tartalmazó e-mailt';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} a(z) ${email} címre';
      case 'prompt.notification.clearTitle':
        return 'Értesítések törlése?';
      case 'prompt.notification.clearMessage':
        return 'Biztosan törli az összes értesítést?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Adja meg a(z) ${_root.common.fullName} nevet';
      case 'form.fullName.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.common.fullName} nevet';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Adja meg a(z) ${_root.common.email} címét';
      case 'form.email.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.common.email} címet';
      case 'form.email.errors.invalid':
        return '⦸ Érvénytelen e-mail cím, kérjük, próbálja újra';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.common.password} jelszót';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'A jelszónak legalább ${count} karakterből kell állnia!';
      case 'form.confirmPassword.label':
        return 'Jelszó megerősítése ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.common.password} jelszót';
      case 'form.confirmPassword.errors.notMatched':
        return 'A megerősítő jelszó nem egyezik!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.common.mobileNumber} telefonszámát';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Házszám és utcanév';
      case 'form.address1.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.form.address1.label} címet';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Lakás, lakosztály, egység stb.';
      case 'form.address2.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.form.address2.label} címet';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Adja meg a(z) ${_root.common.postalCode} irányítószámot';
      case 'form.postalCode.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.common.postalCode} irányítószámot';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Adja meg a(z) ${_root.common.city} város nevét.';
      case 'form.city.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.common.city} város nevét.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Adja meg a(z) ${_root.common.state} állam nevét.';
      case 'form.state.errors.required':
        return 'Kérjük, adja meg a(z) ${_root.common.state} állam nevét.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Válassza ki a(z) ${_root.common.country} országot.';
      case 'form.country.errors.required':
        return 'Kérjük, válassza ki a(z) ${_root.common.country} országot';
      case 'form.otp.errors.required':
        return 'Kérjük, adja meg az OTP-t.';
      case 'form.otp.errors.invalid':
        return 'Kérjük, adja meg a helyes OTP-t.';
      case 'form.title.label':
        return 'Cím';
      case 'form.title.hint':
        return 'Adja meg a címet';
      case 'form.title.errors.required':
        return 'Kérjük, adja meg a címet';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Válassza ki a(z) ${_root.form.date.label(label: label)} dátumot';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Kérjük, válassza ki a(z) ${_root.form.date.label(label: label)} dátumot';
      case 'form.reason.label':
        return 'Ok';
      case 'form.reason.hint':
        return 'Adja meg az okot';
      case 'form.reason.errors.required':
        return 'Kérjük, adja meg az okot';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Válassza ki a(z) ${_root.common.withdrawMethod} kifizetési módot';
      case 'form.withdrawMethod.errors.required':
        return 'Kérjük, válassza ki a(z) ${_root.common.withdrawMethod} kifizetési módot';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Töltse fel a(z) ${label} fájlt';
      case 'form.fileField.errors.required':
        return ({required String label}) =>
            'Kérjük, válassza ki a(z) ${label} fájlt';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Adja meg a(z) ${_root.form.note.label(note: note)} megjegyzést';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Kérjük, adja meg a(z) ${_root.form.note.label(note: note)} megjegyzést';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Válassza ki a(z) ${_root.common.gender} nemet';
      case 'form.gender.errors.required':
        return 'Kérjük, válassza ki a(z) ${_root.common.gender} nemet';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Adja meg a(z) ${_root.form.anyField.label(label: label)} értéket';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Kérjük, adja meg a(z) ${_root.form.anyField.label(label: label)} értéket';
      case 'form.anyField.errors.invalid':
        return 'Kérjük, érvényes @form.anyField.label értéket adjon meg';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Válassza ki a(z) ${_root.form.anyDropdown.label(label: label)} lehetőséget';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Kérjük, válassza ki a(z) ${_root.form.anyDropdown.label(label: label)} lehetőséget';
      case 'form.anyDropdown.errors.invalid':
        return 'Kérjük, érvényes @form.anyDropdown.label lehetőséget válasszon';
      case 'action.next':
        return 'Következő';
      case 'action.getStarted':
        return 'Kezdés';
      case 'action.skip':
        return 'Átugrás';
      case 'action.select':
        return 'Kiválasztás';
      case 'action.save':
        return 'Mentés';
      case 'action.signIn':
        return 'Bejelentkezés';
      case 'action.signUp':
        return 'Regisztráció';
      case 'action.kContinue':
        return 'Folytatás';
      case 'action.clearAll':
        return 'Összes törlése';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Küldés';
      case 'action.pay':
        return 'Fizetés';
      case 'action.remove':
        return 'Eltávolítás';
      case 'action.goBack':
        return 'Vissza';
      case 'action.buyNow':
        return 'Vásárlás most';
      case 'action.no':
        return 'Nem';
      case 'action.open':
        return 'Megnyitás';
      case 'action.addProperty':
        return 'Ingatlan hozzáadása';
      case 'action.process':
        return 'Feldolgozás';
      case 'action.approve':
        return 'Jóváhagyás';
      case 'action.reject':
        return 'Elutasítás';
      case 'action.viewRent':
        return 'Bérlet megtekintése';
      case 'action.openNavigationMenu':
        return 'Navigációs menü megnyitása';
      case 'action.seeAll':
        return 'Összes megtekintése';
      case 'action.update':
        return 'Frissítés';
      case 'action.printTransaction':
        return 'Tranzakció nyomtatása';
      case 'action.payoutRequest':
        return 'Kifizetési kérelem';
      case 'action.addNew':
        return '+ Új hozzáadása';
      case 'action.sendRequest':
        return 'Kérelem küldése';
      case 'action.print':
        return 'Nyomtatás';
      case 'action.requestForRefund':
        return 'Visszatérítés kérése';
      case 'action.previous':
        return 'Előző';
      case 'action.delete':
        return 'Törlés';
      case 'action.applyProperty':
        return 'Ingatlan megpályázása';
      case 'action.viewApplication':
        return 'Jelentkezés megtekintése';
      case 'action.inviteTenant':
        return 'Bérlő meghívása';
      case 'action.inviteRent':
        return 'Bérlet meghívása';
      case 'action.cancel':
        return 'Mégsem';
      case 'action.accept':
        return 'Elfogadás';
      case 'action.submit':
        return 'Beküldés';
      case 'action.yes':
        return 'Igen';
      case 'action.okay':
        return 'Rendben';
      case 'action.confirm':
        return 'Megerősítés';
      case 'action.apply':
        return 'Alkalmazás';
      case 'action.reset':
        return 'Visszaállítás';
      case 'action.retry':
        return 'Újrapróbálás';
      case 'action.viewAll':
        return 'Megtekintés';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Találja meg ingatlanát';
      case 'pages.onboard.onboardData.data1.description':
        return 'Könnyedén megtalálhatja az életéhez illő helyet – legyen az szoba, lakás vagy ház.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Lakás a városban';
      case 'pages.onboard.onboardData.data2.description':
        return 'Időt takarítunk meg Önnek azáltal, hogy gyorsan megtaláljuk a tökéletes ingatlant, mielőtt az elfogyna, így élvezheti új otthonát, vagy ingyenesen listázhatja sajátját.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Az Ön kényelmes háza';
      case 'pages.onboard.onboardData.data3.description':
        return 'Ha lakóhelyet keres, tekintse meg kiadó házainkat. Országszerte számos ház közül választhat.';
      case 'pages.signIn.title':
        return 'Üdv újra';
      case 'pages.signIn.subtitle':
        return 'Jelentkezzen be most, hogy elindítson egy csodálatos utazást.';
      case 'pages.signIn.extra.rememberMe':
        return 'Emlékezz rám';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Nincs fiókja? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Elfelejtett jelszó';
      case 'pages.forgotPassword.subtitle':
        return 'Adja meg e-mail címét a jelszó helyreállításához.';
      case 'pages.otpVerification.title':
        return 'Ellenőrzés';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Egy 4 jegyű PIN kódot küldtünk az e-mail címére. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'A kód elküldése ${minutes}:${seconds} múlva';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Kód újraküldése'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Jelszó visszaállítása';
      case 'pages.resetPassword.subtitle':
        return 'Állítsa vissza jelszavát a helyreállításhoz és jelentkezzen be fiókjába';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Sikeresen megváltoztatva!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Jelentkezzen be új jelszavával.\nÁtirányítjuk a bejelentkezéshez...';
      case 'pages.signUp.title':
        return 'Fiók létrehozása';
      case 'pages.signUp.subtitle':
        return 'Regisztráljon most, hogy elindítson egy csodálatos utazást';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Van fiókja? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Ki vagy te?';
      case 'pages.welcome.subtitle':
        return 'Kérjük, válassza ki az alábbi lehetőséget.';
      case 'pages.welcome.extra.landlordTag':
        return 'Kezelje saját ingatlanait';
      case 'pages.welcome.extra.tenantTag':
        return 'Jelentkezzen be bérleti fiókjába';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Értesítések';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Üzenet...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Miért ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Írja meg az okot';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Kérjük, adja meg a bérlet lemondásának okát';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Offline fizetés';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Fizetési megjegyzés (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Írjon be néhány szöveget...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Fizetendő összeg: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Számlatulajdonos neve';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Számlaszám';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift kód';
      case 'pages.offlinePayment.extra.branch':
        return 'Fiók';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Csak '),
            fileType('JPG, PNG, PDF'),
            const TextSpan(text: ' vagy '),
            fileType('DOC'),
            const TextSpan(text: ' formátumú fájlokat válasszon. Fájlméret '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Számla megtekintése';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Áttekintjük a fizetést, és 24 órán belül jóváhagyjuk.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Újrapróbálás';
      case 'pages.paymentStatus.fail.title':
        return 'Hoppá! Sikertelen fizetés';
      case 'pages.paymentStatus.fail.description':
        return 'A tranzakció sikertelen volt valamilyen technikai hiba miatt.';
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
            const TextSpan(text: 'Jellemzők '),
            fa('(Létesítmények és szolgáltatások)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Válassza ki a bérleti időszakot';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Írjon véleményt';
      case 'pages.search.appbarTitle':
        return 'Keresés';
      case 'pages.search.extra.hint':
        return 'Keressen telkeket, lakásokat, szobákat...';
      case 'pages.search.extra.noRecentSearch':
        return 'Nincsenek legutóbbi keresései.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Válassza ki a csomagot';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Az előfizetési fizetés sikeres volt.\nMostantól hozzáférhet az előfizetett funkciókhoz.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Összes karbantartási költség: '),
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
        return 'Összes ingatlan';
      case 'enums.propertyStatus.pending':
        return 'Függőben lévő';
      case 'enums.propertyStatus.active':
        return 'Aktív';
      case 'enums.propertyStatus.inactive':
        return 'Inaktív';
      case 'enums.propertyStatus.rejected':
        return 'Elutasított';
      case 'enums.propertyType.apartmentCondominium':
        return 'Lakás/Társasház';
      case 'enums.propertyType.house':
        return 'Ház';
      case 'enums.propertyType.commercialProperty':
        return 'Kereskedelmi ingatlan';
      case 'enums.propertyType.land':
        return 'Telek';
      case 'enums.propertyType.room':
        return 'Szoba';
      case 'enums.applicationStatus.all':
        return 'Összes';
      case 'enums.applicationStatus.pending':
        return 'Függőben lévő';
      case 'enums.applicationStatus.processing':
        return 'Feldolgozás alatt';
      case 'enums.applicationStatus.approved':
        return 'Jóváhagyott';
      case 'enums.applicationStatus.rejected':
        return 'Elutasított';
      case 'enums.myRentStatus.pending':
        return 'Függőben lévő';
      case 'enums.myRentStatus.processing':
        return 'Feldolgozás alatt';
      case 'enums.myRentStatus.active':
        return 'Aktív';
      case 'enums.myRentStatus.expired':
        return 'Lejárt';
      case 'enums.myRentStatus.cancelled':
        return 'Törölt';
      case 'enums.maintenanceStatus.pending':
        return 'Függőben lévő';
      case 'enums.maintenanceStatus.processing':
        return 'Feldolgozás alatt';
      case 'enums.maintenanceStatus.rejected':
        return 'Elutasított';
      case 'enums.maintenanceStatus.completed':
        return 'Befejezett';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Magánszemély';
      case 'enums.tenantProfileType.company':
        return 'Cég';
      case 'enums.tenantType.newTenant':
        return 'Új bérlő';
      case 'enums.tenantType.activeTenant':
        return 'Aktív bérlő';
      case 'enums.tenantType.expiredTenant':
        return 'Lejárt bérlő';
      case 'enums.paymentStatus.all':
        return 'Összes';
      case 'enums.paymentStatus.pending':
        return 'Függőben lévő';
      case 'enums.paymentStatus.paid':
        return 'Fizetett';
      case 'enums.paymentStatus.unpaid':
        return 'Nem fizetett';
      case 'enums.paymentStatus.rejected':
        return 'Elutasított';
      case 'enums.paymentStatus.refund':
        return 'Visszatérítés';
      case 'enums.paymentOptions.onlinePayment':
        return 'Online fizetés';
      case 'enums.paymentOptions.offlinePayment':
        return 'Offline fizetés';
      case 'enums.paymentType.securityDeposit':
        return 'Kaució';
      case 'enums.paymentType.rentPayment':
        return 'Bérleti díj fizetés';
      case 'enums.paymentType.subscription':
        return 'Előfizetés';
      case 'enums.gender.male':
        return 'Férfi';
      case 'enums.gender.female':
        return 'Nő';
      case 'enums.gender.other':
        return 'Egyéb';
      case 'enums.ecRelation.wife':
        return 'Feleség';
      case 'enums.ecRelation.parent':
        return 'Szülő';
      case 'enums.ecRelation.friend':
        return 'Barát';
      case 'enums.ecRelation.brother':
        return 'Testvér (férfi)';
      case 'enums.ecRelation.sister':
        return 'Testvér (nő)';
      case 'enums.ecRelation.child':
        return 'Gyermek';
      case 'enums.vehicleType.car':
        return 'Autó';
      case 'enums.vehicleType.motorcycles':
        return 'Motorkerékpár';
      case 'enums.vehicleType.lorry':
        return 'Teherautó';
      case 'enums.sortBy.lowToHigh':
        return 'Alacsonytól magasig';
      case 'enums.sortBy.highToLow':
        return 'Magastól alacsonyig';
      case 'enums.residentialType.flat':
        return 'Lakás';
      case 'enums.residentialType.apartment':
        return 'Apartman';
      case 'enums.residentialType.condominium':
        return 'Társasház';
      case 'enums.residentialType.serviceResidence':
        return 'Szolgáltatott lakás';
      case 'enums.residentialType.studio':
        return 'Stúdió';
      case 'enums.residentialType.duplex':
        return 'Duplex';
      case 'enums.residentialType.townhouseCondo':
        return 'Sorház';
      case 'enums.residentialType.others':
        return 'Egyéb';
      case 'enums.floorRange.high':
        return 'Magas';
      case 'enums.floorRange.medium':
        return 'Közepes';
      case 'enums.floorRange.low':
        return 'Alacsony';
      case 'enums.furnishings.fullyFurnished':
        return 'Teljesen bútorozott';
      case 'enums.furnishings.partiallyFurnished':
        return 'Részben bútorozott';
      case 'enums.furnishings.notFurnished':
        return 'Nem bútorozott';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Iroda';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Kiskereskedelmi tér';
      case 'enums.commercialPropertyType.shopLot':
        return 'Üzlethelyiség';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Raktár/Gyár';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel/Üdülőhely';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Egyéb';
      case 'enums.landPropertyType.residential':
        return 'Lakóövezet';
      case 'enums.landPropertyType.industrial':
        return 'Ipari';
      case 'enums.landPropertyType.agricultural':
        return 'Mezőgazdasági';
      case 'enums.landPropertyType.commercial':
        return 'Kereskedelmi';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Vegyes fejlesztés';
      case 'enums.landPropertyType.others':
        return 'Egyéb';
      case 'enums.residentPropertyType.condo':
        return 'Társasház/Szolgáltatott lakás/Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Lakás/Földszintes ház';
      case 'enums.residentPropertyType.house':
        return 'Házak';
      case 'enums.residentPropertyType.shoplot':
        return 'Üzlethelyiség';
      case 'enums.residentPropertyType.sharing':
        return 'Ház/lakás megosztása';
      case 'enums.residentPropertyType.others':
        return 'Egyéb';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 hónap';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 év';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 év';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 év';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 év';
      case 'enums.dropdownDateFilter.daily':
        return 'Napi';
      case 'enums.dropdownDateFilter.weekly':
        return 'Heti';
      case 'enums.dropdownDateFilter.monthly':
        return 'Havi';
      case 'enums.dropdownDateFilter.yearly':
        return 'Éves';
      case 'enums.dropdownDateFilter.custom':
        return 'Egyéni';
      default:
        return null;
    }
  }
}
