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
class TranslationsSl implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsSl({
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
             locale: AppLocale.sl,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <sl>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsSl _root = this; // ignore: unused_field

  @override
  TranslationsSl $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsSl(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonSl common = _TranslationsCommonSl._(_root);
  @override
  late final _TranslationsExceptionsSl exceptions = _TranslationsExceptionsSl._(
    _root,
  );
  @override
  late final _TranslationsPromptSl prompt = _TranslationsPromptSl._(_root);
  @override
  late final _TranslationsFormSl form = _TranslationsFormSl._(_root);
  @override
  late final _TranslationsActionSl action = _TranslationsActionSl._(_root);
  @override
  late final _TranslationsPagesSl pages = _TranslationsPagesSl._(_root);
  @override
  late final _TranslationsEnumsSl enums = _TranslationsEnumsSl._(_root);
}

// Path: common
class _TranslationsCommonSl implements TranslationsCommonEn {
  _TranslationsCommonSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Jezik';
  @override
  String get subscriptionPlan => 'Naročniški paket';
  @override
  String get contactUs => 'Kontaktirajte nas';
  @override
  String get termsAndConditions => 'Pogoji & Določila';
  @override
  String get aboutUs => 'O nas';
  @override
  String get logout => 'Odjava';
  @override
  String get editProfile => 'Uredi profil';
  @override
  String get fullName => 'Polno ime';
  @override
  String get email => 'E-pošta';
  @override
  String get mobileNumber => 'Mobilna številka';
  @override
  String get address => 'Naslov';
  @override
  String get postalCode => 'Poštna številka';
  @override
  String get city => 'Mesto';
  @override
  String get country => 'Država';
  @override
  String get state => 'Država';
  @override
  String get password => 'Geslo';
  @override
  String get forgotPassword => 'Pozabljeno geslo';
  @override
  String get tenant => 'Najemnik';
  @override
  String get landlord => 'Najemodajalec';
  @override
  String get cancelRenting => 'Preklic najema';
  @override
  String get startDate => 'Datum začetka';
  @override
  String get endDate => 'Datum konca';
  @override
  String get fromDate => 'Od datuma';
  @override
  String get toDate => 'Do datuma';
  @override
  String get online => 'Spletno';
  @override
  String get bankList => 'Seznam bank';
  @override
  String get withdrawMethod => 'Način izplačila';
  @override
  String get uploadPaymentReceipt => 'Naloži potrdilo o plačilu';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opomba: '),
      note('Plačilo zahteva ročno odobritev s strani skrbnika v roku'),
      const TextSpan(text: ' '),
      duraion('24~48 ur.'),
    ],
  );
  @override
  String get reviews => 'Mnenja';
  @override
  String get description => 'Opis';
  @override
  String get about => 'O';
  @override
  String get propertyTypes => 'Vrste nepremičnin';
  @override
  String get features => 'Lastnosti';
  @override
  String get floorPlans => 'Tlorisi';
  @override
  String get buildingDetails => 'Podrobnosti o zgradbi';
  @override
  String get buildingName => 'Ime zgradbe';
  @override
  String get propertyAddress => 'Naslov nepremičnine';
  @override
  String get completionYear => 'Leto dokončanja';
  @override
  String get lotNumber => 'Številka parcele';
  @override
  String get residentialType => 'Vrsta stanovanja';
  @override
  String get furnishings => 'Oprema';
  @override
  String get floorRange => 'Razpon nadstropij';
  @override
  String get bedrooms => 'Spalnice';
  @override
  String get bathrooms => 'Kopalnice';
  @override
  String get propertySize => 'Velikost nepremičnine';
  @override
  String get rentalPeriod => 'Obdobje najema';
  @override
  String get securityDeposit => 'Varnostni depozit';
  @override
  String get utilityBill => 'Strošek komunalnih storitev';
  @override
  String get facilities => 'Objekti';
  @override
  String get amenities => 'Ugodnosti';
  @override
  String get expiringReason => 'Razlog za prenehanje veljavnosti';
  @override
  String get tenantDetails => 'Podrobnosti o najemniku';
  @override
  String get typeOfTenant => 'Vrsta najemnika';
  @override
  String get tenantName => 'Ime najemnika';
  @override
  String get nidPassport => 'NID/Potni list';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID najemnika';
  @override
  String get dateOfBirth => 'Datum rojstva';
  @override
  String get gender => 'Spol';
  @override
  String get nominee => 'Nominiranec';
  @override
  String get name => 'Ime';
  @override
  String get optional => 'Izbirno';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileSl nomineeMobile =
      _TranslationsCommonNomineeMobileSl._(_root);
  @override
  String get emergencyContact => 'Kontakt za nujne primere';
  @override
  String get relation => 'Razmerje';
  @override
  String get relationWith => '${_root.common.relation} Z';
  @override
  String get relationWithYou => '${_root.common.relationWith} Vi';
  @override
  String get company => 'Podjetje';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM Št.';
  @override
  String get workplace => 'Delovno mesto';
  @override
  String get officePhoneNo => 'Telefonska številka pisarne';
  @override
  String get officeMobileNo => 'Pisarna ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Vozilo';
  @override
  late final _TranslationsCommonVehiclesInfoSl vehiclesInfo =
      _TranslationsCommonVehiclesInfoSl._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Vrsta';
  @override
  late final _TranslationsCommonVehicleRegistrationNoSl vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoSl._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Znamka';
  @override
  String get rentProperty => 'Najem nepremičnine';
  @override
  String get propertyDetails => 'Podrobnosti o nepremičnini';
  @override
  String get propertyId => 'ID nepremičnine';
  @override
  String get propertyType => 'Vrsta nepremičnine';
  @override
  String get propertyName => 'Ime nepremičnine';
  @override
  String get paymentDetails => 'Podrobnosti o plačilu';
  @override
  String get monthlyRent => 'Mesečna najemnina';
  @override
  String get thisMonthPayment => 'Plačilo za ta mesec';
  @override
  String get totalPaidRent => 'Skupna plačana najemnina';
  @override
  String get dueRent => 'Neplačana najemnina';
  @override
  String get rentStartDate => 'Najem ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Najem ${_root.common.endDate}';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'PDF pogodbe o najemu';
  @override
  String get noFile => 'Datoteka ni na voljo';
  @override
  String get tenantImageOp => 'Slika najemnika ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Dodaj novo vozilo';
  @override
  String get uploadNidPassport => 'Naloži NID/Potni list';
  @override
  String get nidPassportUploadNote =>
      'Sprejete bodo samo slike tipa datoteke. Omejitev datoteke do 2,5 MB.';
  @override
  String get search => 'Iskanje';
  @override
  String get sortBy => 'Razvrsti po';
  @override
  String get subscription => 'Naročnina';
  @override
  String get downloading => 'Prenos ...';
  @override
  String get downloadSuccess => 'Datoteka je bila uspešno prenesena!';
  @override
  String get addPropertyBannerTitle => 'Želite oddati svojo nepremičnino?';
  @override
  String get application => 'Prijava';
  @override
  String get tenantHasPaidDeposit => 'Najemnik je plačal depozit.';
  @override
  String get askProcessingRentApplication =>
      'Ali ste prepričani, da želite obdelati to zahtevo za najem nepremičnine?';
  @override
  String get dateAndTime => 'Datum in čas';
  @override
  String get applicationDetails => 'Podrobnosti o prijavi';
  @override
  String get depositStatus => 'Status depozita';
  @override
  String get uploadRentAgreement => 'Naloži pogodbo o najemu';
  @override
  String get uploadFilePDF => 'Naloži datoteko (PDF)';
  @override
  String get askSelectRentAgreement => 'Prosimo, izberite datoteko pogodbe.';
  @override
  String get landlordRentAgreementPDF => 'PDF pogodbe o najemu (najemodajalec)';
  @override
  String get tenantRentAgreementPDF => 'PDF pogodbe o najemu (najemnik)';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Opomba: '),
          note('Zahtevo odobrite šele, ko najemnik izvede plačilo depozita.'),
        ],
      );
  @override
  String get reasonOfRejection => 'Razlog za zavrnitev';
  @override
  String get youveRejectedThisApplication => 'Zavrnili ste to prijavo';
  @override
  String get landlordDetails => 'Podrobnosti o najemodajalcu';
  @override
  String get landlordName => 'Ime najemodajalca';
  @override
  String get downloadRentAgreement => 'Prenesi pogodbo o najemu';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Sprejmi '),
      toc('Pogoje in določila'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opomba: '),
      note(
        'Prosimo, prenesite in preberite pogodbo. Podpisano pogodbo pošljite najemodajalcu prek WhatsAppa ali e-pošte.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opomba: '),
      note(
        'Najemodajalec odobri prijavo, ko najemnik plača varnostni depozit, stroške komunalnih storitev in enomesečno predplačilo najemnine.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Pogodba o najemu (PDF) '),
          complete('Celotna pogodba'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opomba: '),
      note(
        'Najemodajalec odobri prijavo, ko najemnik plača varnostni depozit, stroške komunalnih storitev in enomesečno predplačilo najemnine.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Seznam prijav';
  @override
  String get viewDetails => 'Ogled podrobnosti';
  @override
  String get searchHint => '${_root.common.search} ...';
  @override
  String get home => 'Domov';
  @override
  String get dashboard => 'Nadzorna plošča';
  @override
  String get tenants => 'Najemniki';
  @override
  String get maintenance => 'Vzdrževanje';
  @override
  String get maintenanceList => 'Seznam vzdrževanja';
  @override
  String get maintenanceReport => 'Poročilo o vzdrževanju';
  @override
  String get labor => 'Delo';
  @override
  String get applications => 'Prijave';
  @override
  String get rentInvitation => 'Povabilo k najemu';
  @override
  String get payment => 'Plačilo';
  @override
  String get rentPayment => 'Plačilo najemnine';
  @override
  String get depositUtilityPayment => 'Plačilo depozita in komunalnih storitev';
  @override
  String get refundRequest => 'Zahteva za povračilo';
  @override
  String get withdrawRequest => 'Zahteva za izplačilo';
  @override
  String get myProperty => 'Moja nepremičnina';
  @override
  String get myRent => 'Moj najem';
  @override
  String get wishlist => 'Seznam želja';
  @override
  String get properties => 'Nepremičnine';
  @override
  String get allProperties => 'Vse nepremičnine';
  @override
  String get totalPropery => 'Skupno število nepremičnin';
  @override
  String get occupied => 'Zasedeno';
  @override
  String get vacant => 'Prosto';
  @override
  String get accounting => 'Računovodstvo';
  @override
  String get totalIncome => 'Skupni prihodki';
  @override
  String get totalExpense => 'Skupni stroški';
  @override
  String get currentBalance => 'Trenutno stanje';
  @override
  String get totalWithdrawal => 'Skupni znesek (dvig)';
  @override
  String get totalProperties => 'Skupno število nepremičnin';
  @override
  String get totalTenant => 'Skupno število najemnikov';
  @override
  String get totalRentPaid => 'Skupno plačilo najemnine';
  @override
  String get totalRentDue => 'Skupni neplačani znesek najemnine';
  @override
  String get totalApplication => 'Skupno število prijav';
  @override
  String get pendingApplication => 'Pričakujoče prijave';
  @override
  String get processingApplication => 'Prijave v obdelavi';
  @override
  String get approveApplication => 'Odobrene prijave';
  @override
  String get rejectApplication => 'Zavrnjene prijave';
  @override
  String get maintenanceCost => 'Stroški vzdrževanja';
  @override
  String get transactionSummary => 'Povzetek transakcij';
  @override
  String get maintenanceRequest => 'Zahteva za vzdrževanje';
  @override
  String get notifications => 'Obvestila';
  @override
  String get myProperties => 'Moje nepremičnine';
  @override
  String get recommendationProperties => 'Priporočene nepremičnine';
  @override
  String get laborList => 'Seznam delavcev';
  @override
  String get addLabor => 'Dodaj delavca';
  @override
  String get laborDetails => 'Podrobnosti o delavcu';
  @override
  String get laborSalary => 'Plača delavca';
  @override
  String get editLabor => 'Uredi delavca';
  @override
  String get addNewLabor => 'Dodaj novega delavca';
  @override
  String get enterAmount => 'Vnesite znesek';
  @override
  String get maintenanceDetails => 'Podrobnosti o vzdrževanju';
  @override
  String get laborName => 'Ime delavca';
  @override
  String get comment => 'Komentar';
  @override
  String get image => 'Slika';
  @override
  String get complete => 'Dokončano';
  @override
  String get details => 'Podrobnosti';
  @override
  String get title => 'Naslov';
  @override
  String get date => 'Datum';
  @override
  String get reason => 'Razlog';
  @override
  String get edit => 'Uredi';
  @override
  String get property => 'Nepremičnina';
  @override
  String get completeYourProfile => 'Izpolnite svoj profil';
  @override
  String get profileImage => 'Profilna slika';
  @override
  String get imagePickHint =>
      'Samo slika JPEG in PNG z največjo velikostjo 120x120 slikovnih pik.';
  @override
  String get invoiceId => 'ID računa';
  @override
  String get depositAmount => 'Znesek depozita';
  @override
  String get landlordPhone => 'Telefonska številka najemodajalca';
  @override
  String get rentalAdvance => 'Najemnina (vnaprej)';
  @override
  String get totalAmount => 'Skupni znesek';
  @override
  String get rentalAmount => 'Znesek najemnine';
  @override
  String get adminCharge => 'Administrativni stroški';
  @override
  String get editAccount => 'Uredi račun';
  @override
  String get addNewAccount => 'Dodaj nov račun';
  @override
  String get transactionId => 'ID transakcije';
  @override
  String get transactionType => 'Vrsta transakcije';
  @override
  String get requestDate => 'Datum zahteve';
  @override
  String get amount => 'Znesek';
  @override
  String get fee => 'Provizija';
  @override
  String get paymentStatus => 'Status plačila';
  @override
  String get generatedTime => 'Čas ustvarjanja';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'To je sistemsko ustvarjeno poročilo o '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Zgodovina dvigov';
  @override
  String get history => 'Zgodovina';
  @override
  String get withdrawAmount => 'Znesek dviga';
  @override
  String get availableBalance => 'Razpoložljivo stanje';
  @override
  String get withdrawCharge => 'Stroški dviga';
  @override
  String get paymentMethod => 'Način plačila';
  @override
  String get requestSendSuccess => 'Zahteva je bila uspešno poslana!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Potrdilo o plačilu je bilo uspešno oddano.';
  @override
  String get refundReason => 'Razlog za vračilo';
  @override
  String get note => 'Opomba';
  @override
  String get refundReceiveSuccess => 'Vračilo je bilo uspešno prejeto.';
  @override
  String get downloadPaymentReceipt => 'Prenesi potrdilo o plačilu';
  @override
  String get invoice => 'Račun';
  @override
  String get selectPropertyToSeeInvoice =>
      'Izberite nepremičnino, da si ogledate številko računa ...';
  @override
  String get bankAccName => 'Ime bančnega računa';
  @override
  String get bankName => 'Ime banke';
  @override
  String get bankAccNum => 'Številka bančnega računa';
  @override
  String get thankYou => 'Hvala vam!';
  @override
  String get basicInfo => 'Osnovne informacije';
  @override
  String get descriptionPricing => 'Opis in cene';
  @override
  String get contact => 'Kontakt';
  @override
  String get photos => 'Fotografije';
  @override
  String get successfullySubmitted => 'Uspešno oddano!';
  @override
  String get editProperty => 'Uredi nepremičnino';
  @override
  String get addNewProperty => 'Dodaj novo nepremičnino';
  @override
  String get propertyManageRequestSuccess =>
      'Vaš oglas je bil poslan v pregled.';
  @override
  String get postAnotherProperty => 'Objavi drugo nepremičnino';
  @override
  String get browseYourProperty => 'Prebrskajte svojo nepremičnino';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Korak '),
      step,
      const TextSpan(text: ' od '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Kaj bi radi objavili?';
  @override
  String get category => 'Kategorija';
  @override
  String get invalidCategory => 'Neveljavna kategorija';
  @override
  String get unitNumber => 'Številka enote';
  @override
  String get sqft => 'kv. ft.';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Velikost nepremičnine mora biti večja od nič';
  @override
  String get whatAreTheFacility => 'Katere so zmogljivosti?';
  @override
  String get whatAreTheAmenity => 'Katere so ugodnosti?';
  @override
  String get parkingLot => 'Parkirišče';
  @override
  String get houseType => 'Vrsta hiše';
  @override
  String get value => 'Vrednost';
  @override
  String get unitLotSize => 'Velikost enote / parcele';
  @override
  String get landSize => 'Velikost zemljišča';
  @override
  String get acres => 'akrov';
  @override
  String get roomSize => 'Velikost sobe';
  @override
  String get askTenantPreference => 'Kakšne so vaše želje glede najemnika';
  @override
  String get couple => 'Par';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Opišite ${propertyType}';
  @override
  String get adTitle => 'Naslov oglasa';
  @override
  String get minimumRentalPeriod => 'Minimalno obdobje najema';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Številka';
  @override
  String get hideOrDisplayEmail => 'Skrij ali prikaži e-poštni naslov';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Hvala, ker ste objavili na ${appName}!';
  @override
  String get propertyList => 'Seznam nepremičnin';
  @override
  String get newInviteRent => 'Novo povabilo k najemu';
  @override
  String get rentAgreement => 'Pogodba o najemu';
  @override
  String get rentDetails => 'Podrobnosti o najemu';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opomba: '),
      note('Prosimo, počakajte, da najemnik sprejme povabilo.'),
    ],
  );
  @override
  String get rent => 'Najem';
  @override
  String get editTenant => 'Uredi najemnika';
  @override
  String get addNewTenant => 'Dodaj novega najemnika';
  @override
  String get shareInstallLink => 'Delite povezavo za namestitev';
  @override
  String get tenantList => 'Seznam najemnikov';
  @override
  String get editMaintenanceRequest => 'Uredi zahtevo za vzdrževanje';
  @override
  String get addNewMaintenance => 'Dodaj novo vzdrževanje';
  @override
  String get landlordId => 'ID najemodajalca';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Opomba: '),
      note(
        'Vaša pogodba je v pregledu. Prosimo, počakajte, da najemodajalec odobri vaš najem.',
      ),
    ],
  );
  @override
  String get editReview => 'Uredi mnenje';
  @override
  String get writeAReview => 'Napišite mnenje';
  @override
  String get selectRating => 'Izberite oceno';
  @override
  String get enterYourOpinion => 'Vnesite svoje mnenje';
  @override
  String get askToEnterReviewMsg => 'Prosimo, vnesite sporočilo z mnenjem';
  @override
  String get pressBackAgainToExit =>
      'Pritisnite nazaj še enkrat, da izstopite.';
  @override
  String get selectPaymentMethod => 'Izberite način plačila';
  @override
  String get filter => 'Filter';
  @override
  String get perMonth => '/1 mesec';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Iščite karkoli v ${appName} ...';
}

// Path: exceptions
class _TranslationsExceptionsSl implements TranslationsExceptionsEn {
  _TranslationsExceptionsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Nekaj je šlo narobe, poskusite znova';
  @override
  String get noNidPassport => 'Slika NID/Potnega lista ni bila priložena.';
  @override
  String get noRentPropertyFound =>
      'Za tega najemnika ni bila najdena nobena nepremičnina za najem.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Nepremičnina ni bila najdena!\nPoskusite z drugimi ključnimi besedami';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Ni naročniškega paketa!\nOsvežite stran in poskusite znova.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Neveljavne informacije o ${dataType}! Osvežite stran in poskusite znova.';
  @override
  String get invalidDownloadUrl => 'Neveljaven URL za prenos!';
  @override
  String failedToSaveFile({required String error}) =>
      'Datoteke ni bilo mogoče shraniti! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Napaka pri odpiranju datoteke! ${error}';
  @override
  String get noVehicleInfoProvided =>
      'Informacije o vozilu niso bile priložene.';
  @override
  String get yourApplicationRejected => 'Vaša prijava je bila zavrnjena';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSl
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintSl._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintSl noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintSl._(_root);
  @override
  String get noImageProvided => 'Slika ni bila priložena';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundSl
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundSl._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Varnostni depozit ni bil najden!\nOgled varnostnih depozitov bo možen, ko bodo na voljo';
  @override
  String get noRentPaymentFound =>
      'Plačilo najemnine ni bilo najdeno!\nOgled plačil najemnine bo možen, ko bodo na voljo';
  @override
  String get transactionSummaryApiException =>
      'Pridobivanje povzetka transakcij ni uspelo.';
  @override
  String get noWithdrawRequestFound =>
      'Zahteva ni bila najdena!\nProsimo, ustvarite zahtevo za izplačilo, da jo vidite tukaj.';
  @override
  String get withdrawRequestNotApproved =>
      'Ta zahteva za izplačilo ni bila odobrena!.';
  @override
  String get nonZeroError => 'Vnesite veljaven znesek, večji od nič.';
  @override
  String minAmountError({required String minValue}) =>
      'Znesek mora biti najmanj ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Znesek ne sme preseči ${maxValue}.';
  @override
  String get selectPaymentMethodHint => 'Najprej izberite način plačila.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundSl
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundSl._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintSl refundRequestHint =
      _TranslationsExceptionsRefundRequestHintSl._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Izberite število ${value}';
  @override
  String get invalidDateRange => 'Neveljaven datumski razpon.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} mora biti večje od nič.';
  @override
  late final _TranslationsExceptionsEditPropertySl editProperty =
      _TranslationsExceptionsEditPropertySl._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationSl rentInvitation =
      _TranslationsExceptionsRentInvitationSl._(_root);
  @override
  String get notenantFoundList =>
      'Ni najemnikov!\nProsimo, dodajte najemnika, da ga vidite tukaj.';
  @override
  String get noFeaturesProvided => 'Funkcije niso bile priložene.';
  @override
  String get noNotificationFound =>
      'Obvestila niso na voljo.\nObvestila si lahko ogledate tukaj, ko bodo na voljo.';
}

// Path: prompt
class _TranslationsPromptSl implements TranslationsPromptEn {
  _TranslationsPromptSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutSl logout = _TranslationsPromptLogoutSl._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationSl application =
      _TranslationsPromptApplicationSl._(_root);
  @override
  late final _TranslationsPromptLaborSl labor = _TranslationsPromptLaborSl._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestSl maintenanceRequest =
      _TranslationsPromptMaintenanceRequestSl._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodSl withdrawMethod =
      _TranslationsPromptWithdrawMethodSl._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesSl unsavedChanges =
      _TranslationsPromptUnsavedChangesSl._(_root);
  @override
  late final _TranslationsPromptPropertySl property =
      _TranslationsPromptPropertySl._(_root);
  @override
  late final _TranslationsPromptRentInvitationSl rentInvitation =
      _TranslationsPromptRentInvitationSl._(_root);
  @override
  late final _TranslationsPromptSessionExpiredSl sessionExpired =
      _TranslationsPromptSessionExpiredSl._(_root);
  @override
  late final _TranslationsPromptNoInternetSl noInternet =
      _TranslationsPromptNoInternetSl._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerSl permissionHandler =
      _TranslationsPromptPermissionHandlerSl._(_root);
  @override
  late final _TranslationsPromptImagePickerSl imagePicker =
      _TranslationsPromptImagePickerSl._(_root);
  @override
  late final _TranslationsPromptVerificationDialogSl verificationDialog =
      _TranslationsPromptVerificationDialogSl._(_root);
  @override
  late final _TranslationsPromptNotificationSl notification =
      _TranslationsPromptNotificationSl._(_root);
}

// Path: form
class _TranslationsFormSl implements TranslationsFormEn {
  _TranslationsFormSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameSl fullName =
      _TranslationsFormFullNameSl._(_root);
  @override
  late final _TranslationsFormEmailSl email = _TranslationsFormEmailSl._(_root);
  @override
  late final _TranslationsFormPasswordSl password =
      _TranslationsFormPasswordSl._(_root);
  @override
  late final _TranslationsFormConfirmPasswordSl confirmPassword =
      _TranslationsFormConfirmPasswordSl._(_root);
  @override
  late final _TranslationsFormMobileNumberSl mobileNumber =
      _TranslationsFormMobileNumberSl._(_root);
  @override
  late final _TranslationsFormAddress1Sl address1 =
      _TranslationsFormAddress1Sl._(_root);
  @override
  late final _TranslationsFormAddress2Sl address2 =
      _TranslationsFormAddress2Sl._(_root);
  @override
  late final _TranslationsFormPostalCodeSl postalCode =
      _TranslationsFormPostalCodeSl._(_root);
  @override
  late final _TranslationsFormCitySl city = _TranslationsFormCitySl._(_root);
  @override
  late final _TranslationsFormStateSl state = _TranslationsFormStateSl._(_root);
  @override
  late final _TranslationsFormCountrySl country = _TranslationsFormCountrySl._(
    _root,
  );
  @override
  late final _TranslationsFormOtpSl otp = _TranslationsFormOtpSl._(_root);
  @override
  late final _TranslationsFormTitleSl title = _TranslationsFormTitleSl._(_root);
  @override
  late final _TranslationsFormDateSl date = _TranslationsFormDateSl._(_root);
  @override
  late final _TranslationsFormReasonSl reason = _TranslationsFormReasonSl._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodSl withdrawMethod =
      _TranslationsFormWithdrawMethodSl._(_root);
  @override
  late final _TranslationsFormFileFieldSl fileField =
      _TranslationsFormFileFieldSl._(_root);
  @override
  late final _TranslationsFormNoteSl note = _TranslationsFormNoteSl._(_root);
  @override
  late final _TranslationsFormGenderSl gender = _TranslationsFormGenderSl._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldSl anyField =
      _TranslationsFormAnyFieldSl._(_root);
  @override
  late final _TranslationsFormAnyDropdownSl anyDropdown =
      _TranslationsFormAnyDropdownSl._(_root);
}

// Path: action
class _TranslationsActionSl implements TranslationsActionEn {
  _TranslationsActionSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Naprej';
  @override
  String get getStarted => 'Začni';
  @override
  String get skip => 'Preskoči';
  @override
  String get select => 'Izberi';
  @override
  String get save => 'Shrani';
  @override
  String get signIn => 'Prijava';
  @override
  String get signUp => 'Registracija';
  @override
  String get kContinue => 'Nadaljuj';
  @override
  String get clearAll => 'Počisti vse';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Pošlji';
  @override
  String get pay => 'Plačaj';
  @override
  String get remove => 'Odstrani';
  @override
  String get goBack => 'Pojdi nazaj';
  @override
  String get buyNow => 'Kupi zdaj';
  @override
  String get no => 'Ne';
  @override
  String get open => 'Odpri';
  @override
  String get addProperty => 'Dodaj nepremičnino';
  @override
  String get process => 'Obdelaj';
  @override
  String get approve => 'Odobri';
  @override
  String get reject => 'Zavrni';
  @override
  String get viewRent => 'Ogled najemnine';
  @override
  String get openNavigationMenu => 'Odpri navigacijski meni';
  @override
  String get seeAll => 'Prikaži vse';
  @override
  String get update => 'Posodobi';
  @override
  String get printTransaction => 'Natisni transakcijo';
  @override
  String get payoutRequest => 'Zahteva za izplačilo';
  @override
  String get addNew => '+ Dodaj novo';
  @override
  String get sendRequest => 'Pošlji zahtevo';
  @override
  String get print => 'Natisni';
  @override
  String get requestForRefund => 'Zahteva za vračilo';
  @override
  String get previous => 'Prejšnji';
  @override
  String get delete => 'Izbriši';
  @override
  String get applyProperty => 'Prijavi se za nepremičnino';
  @override
  String get viewApplication => 'Ogled prijave';
  @override
  String get inviteTenant => 'Povabi najemnika';
  @override
  String get inviteRent => 'Povabi k najemu';
  @override
  String get cancel => 'Prekliči';
  @override
  String get accept => 'Sprejmi';
  @override
  String get submit => 'Oddaj';
  @override
  String get yes => 'Da';
  @override
  String get okay => 'V redu';
  @override
  String get confirm => 'Potrdi';
  @override
  String get apply => 'Uporabi';
  @override
  String get reset => 'Ponastavi';
  @override
  String get retry => 'Ponovi';
  @override
  String get viewAll => 'Prikaži vse';
}

// Path: pages
class _TranslationsPagesSl implements TranslationsPagesEn {
  _TranslationsPagesSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageSl language =
      _TranslationsPagesLanguageSl._(_root);
  @override
  late final _TranslationsPagesOnboardSl onboard =
      _TranslationsPagesOnboardSl._(_root);
  @override
  late final _TranslationsPagesSignInSl signIn = _TranslationsPagesSignInSl._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordSl forgotPassword =
      _TranslationsPagesForgotPasswordSl._(_root);
  @override
  late final _TranslationsPagesOtpVerificationSl otpVerification =
      _TranslationsPagesOtpVerificationSl._(_root);
  @override
  late final _TranslationsPagesResetPasswordSl resetPassword =
      _TranslationsPagesResetPasswordSl._(_root);
  @override
  late final _TranslationsPagesSignUpSl signUp = _TranslationsPagesSignUpSl._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeSl welcome =
      _TranslationsPagesWelcomeSl._(_root);
  @override
  late final _TranslationsPagesAboutUsSl aboutUs =
      _TranslationsPagesAboutUsSl._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsSl termsAndConditions =
      _TranslationsPagesTermsAndConditionsSl._(_root);
  @override
  late final _TranslationsPagesNotificationListSl notificationList =
      _TranslationsPagesNotificationListSl._(_root);
  @override
  late final _TranslationsPagesContactUsSl contactUs =
      _TranslationsPagesContactUsSl._(_root);
  @override
  late final _TranslationsPagesCancelRentingSl cancelRenting =
      _TranslationsPagesCancelRentingSl._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsSl invoiceDetails =
      _TranslationsPagesInvoiceDetailsSl._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentSl offlinePayment =
      _TranslationsPagesOfflinePaymentSl._(_root);
  @override
  late final _TranslationsPagesPaymentStatusSl paymentStatus =
      _TranslationsPagesPaymentStatusSl._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsSl propertyDetails =
      _TranslationsPagesPropertyDetailsSl._(_root);
  @override
  late final _TranslationsPagesSearchSl search = _TranslationsPagesSearchSl._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanSl subscriptionPlan =
      _TranslationsPagesSubscriptionPlanSl._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportSl
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportSl._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsSl implements TranslationsEnumsEn {
  _TranslationsEnumsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusSl propertyStatus =
      _TranslationsEnumsPropertyStatusSl._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeSl propertyType =
      _TranslationsEnumsPropertyTypeSl._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusSl applicationStatus =
      _TranslationsEnumsApplicationStatusSl._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusSl myRentStatus =
      _TranslationsEnumsMyRentStatusSl._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusSl maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusSl._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeSl tenantProfileType =
      _TranslationsEnumsTenantProfileTypeSl._(_root);
  @override
  late final _TranslationsEnumsTenantTypeSl tenantType =
      _TranslationsEnumsTenantTypeSl._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusSl paymentStatus =
      _TranslationsEnumsPaymentStatusSl._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsSl paymentOptions =
      _TranslationsEnumsPaymentOptionsSl._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeSl paymentType =
      _TranslationsEnumsPaymentTypeSl._(_root);
  @override
  late final _TranslationsEnumsGenderSl gender = _TranslationsEnumsGenderSl._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationSl ecRelation =
      _TranslationsEnumsEcRelationSl._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeSl vehicleType =
      _TranslationsEnumsVehicleTypeSl._(_root);
  @override
  late final _TranslationsEnumsSortBySl sortBy = _TranslationsEnumsSortBySl._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeSl residentialType =
      _TranslationsEnumsResidentialTypeSl._(_root);
  @override
  late final _TranslationsEnumsFloorRangeSl floorRange =
      _TranslationsEnumsFloorRangeSl._(_root);
  @override
  late final _TranslationsEnumsFurnishingsSl furnishings =
      _TranslationsEnumsFurnishingsSl._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeSl commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeSl._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeSl landPropertyType =
      _TranslationsEnumsLandPropertyTypeSl._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeSl residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeSl._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodSl minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodSl._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterSl dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterSl._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileSl
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Št. mob.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoSl
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informacije o vozilih';
  @override
  String get optional => 'Informacije o vozilih (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoSl
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Registrska številka vozila';
  @override
  String get short => 'Registrska št.';
  @override
  String get alt => 'Številka tablice';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintSl
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Prijava ni bila najdena!\n${subject} bo prikazan tukaj, ko bo na voljo.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsSl subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsSl._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintSl
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Nepremičnina ni bila najdena!\nProsimo, dodajte nepremičnino, da jo vidite tukaj.';
  @override
  String get tenantRecommended =>
      'Priporočene nepremičnine niso bile najdene\nPoskusite znova pozneje.';
  @override
  String get tenantAllProperty =>
      'Nepremičnine niso na voljo\nPoskusite znova pozneje.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundSl
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Vzdrževanje s statusom ${status} ni bilo najdeno.';
  @override
  String get tenant =>
      'Vzdrževanje ni bilo najdeno! Zahtevo za vzdrževanje lahko ustvarite tukaj.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundSl
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Zahteva za vračilo s statusom ${status} ni bila najdena!\nZahtevo za vračilo si lahko ogledate tukaj, ko bo na voljo.';
  @override
  String get tenant =>
      'Zahteva za vračilo ni bila najdena!\nZahtevo za vračilo lahko ustvarite tukaj.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintSl
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Najemnik bo odobril vračilo, ko bo prejel denar nazaj';
  @override
  String get tenantReqSuccess =>
      'Pregledali bomo zahtevo za vračilo in jo odobrili v 24 urah.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertySl
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertySl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Najemna nepremičnina se spreminja. Veljavna mora biti le za plačilo najemnine za naslednji mesec.';
  @override
  String get deleteOnRent =>
      'Vašo nepremičnino že najema najemnik. Ne morete je izbrisati, dokler najemnika ne odstranite.';
  @override
  String get alreayRented =>
      'Ta nepremičnina je že oddana. Poskusite znova pozneje.\nLahko pa se obrnete na najemodajalca za več informacij.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationSl
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Povabilo k najemu ni bilo najdeno!\nProsimo, ustvarite povabilo k najemu, da ga vidite tukaj.';
  @override
  String get tenantNoRentInvitation =>
      'Povabilo k najemu ni bilo najdeno!\nPovabilo k najemu si lahko ogledate tukaj, ko bo na voljo.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutSl implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Ali ste prepričani, da se želite odjaviti?';
}

// Path: prompt.application
class _TranslationsPromptApplicationSl
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Zakaj zavračate to prijavo?';
  @override
  late final _TranslationsPromptApplicationApplicationSentSl applicationSent =
      _TranslationsPromptApplicationApplicationSentSl._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborSl implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteSl delete =
      _TranslationsPromptLaborDeleteSl._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestSl
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Zakaj je ta zahteva zavrnjena?';
  @override
  String get processTitle =>
      'Ali ste prepričani, da želite obdelati to zahtevo za vzdrževanje?';
  @override
  String get completeTitle => 'Ali je delo končano?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodSl
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Izbriši način izplačila?';
  @override
  String get deleteDescription =>
      'Ali ste prepričani, da želite izbrisati ta način izplačila?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesSl
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ali ste prepričani, da se želite vrniti nazaj?';
  @override
  String get message => 'Spremenjena polja ne bodo shranjena!';
}

// Path: prompt.property
class _TranslationsPromptPropertySl implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertySl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteSl delete =
      _TranslationsPromptPropertyDeleteSl._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationSl
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveSl
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveSl._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptSl tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptSl._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredSl
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Seja je potekla';
  @override
  String get message => 'Vaša seja je potekla. Prosimo, prijavite se znova';
  @override
  String get action => 'Prijava';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetSl
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ni internetne povezave';
  @override
  String get message =>
      'Preverite povezavo Wi-Fi ali mobilno omrežje in poskusite znova';
  @override
  String get action => 'Poskusite znova';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerSl
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Potrebno je dovoljenje!';
  @override
  String get message =>
      'Dovoljenja morate odobriti v nastavitvah aplikacije. Ali želite zdaj odpreti nastavitve?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerSl
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Izberite možnost';
  @override
  String get gallery => 'Galerija';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogSl
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Preverite svoj e-poštni naslov';
  @override
  String get message => 'Na e-poštni naslov smo poslali overitveno kodo';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} na ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationSl
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Počisti obvestila?';
  @override
  String get clearMessage =>
      'Ali ste prepričani, da želite počistiti vsa obvestila?';
}

// Path: form.fullName
class _TranslationsFormFullNameSl implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Vnesite ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsSl errors =
      _TranslationsFormFullNameErrorsSl._(_root);
}

// Path: form.email
class _TranslationsFormEmailSl implements TranslationsFormEmailEn {
  _TranslationsFormEmailSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Vnesite vaš ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsSl errors =
      _TranslationsFormEmailErrorsSl._(_root);
}

// Path: form.password
class _TranslationsFormPasswordSl implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsSl errors =
      _TranslationsFormPasswordErrorsSl._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordSl
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Potrdite ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsSl errors =
      _TranslationsFormConfirmPasswordErrorsSl._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberSl
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsSl errors =
      _TranslationsFormMobileNumberErrorsSl._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Sl implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Sl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Hišna številka in ime ulice';
  @override
  late final _TranslationsFormAddress1ErrorsSl errors =
      _TranslationsFormAddress1ErrorsSl._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Sl implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Sl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Stanovanje, apartma, enota itd.';
  @override
  late final _TranslationsFormAddress2ErrorsSl errors =
      _TranslationsFormAddress2ErrorsSl._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeSl implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Vnesite ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsSl errors =
      _TranslationsFormPostalCodeErrorsSl._(_root);
}

// Path: form.city
class _TranslationsFormCitySl implements TranslationsFormCityEn {
  _TranslationsFormCitySl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Vnesite ime ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsSl errors =
      _TranslationsFormCityErrorsSl._(_root);
}

// Path: form.state
class _TranslationsFormStateSl implements TranslationsFormStateEn {
  _TranslationsFormStateSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Vnesite ime ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsSl errors =
      _TranslationsFormStateErrorsSl._(_root);
}

// Path: form.country
class _TranslationsFormCountrySl implements TranslationsFormCountryEn {
  _TranslationsFormCountrySl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Izberite ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsSl errors =
      _TranslationsFormCountryErrorsSl._(_root);
}

// Path: form.otp
class _TranslationsFormOtpSl implements TranslationsFormOtpEn {
  _TranslationsFormOtpSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsSl errors =
      _TranslationsFormOtpErrorsSl._(_root);
}

// Path: form.title
class _TranslationsFormTitleSl implements TranslationsFormTitleEn {
  _TranslationsFormTitleSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Naslov';
  @override
  String get hint => 'Vnesite naslov';
  @override
  late final _TranslationsFormTitleErrorsSl errors =
      _TranslationsFormTitleErrorsSl._(_root);
}

// Path: form.date
class _TranslationsFormDateSl implements TranslationsFormDateEn {
  _TranslationsFormDateSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Izberite ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsSl errors =
      _TranslationsFormDateErrorsSl._(_root);
}

// Path: form.reason
class _TranslationsFormReasonSl implements TranslationsFormReasonEn {
  _TranslationsFormReasonSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Razlog';
  @override
  String get hint => 'Vnesite razlog';
  @override
  late final _TranslationsFormReasonErrorsSl errors =
      _TranslationsFormReasonErrorsSl._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodSl
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Izberite ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsSl errors =
      _TranslationsFormWithdrawMethodErrorsSl._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldSl implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Naložite ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsSl errors =
      _TranslationsFormFileFieldErrorsSl._(_root);
}

// Path: form.note
class _TranslationsFormNoteSl implements TranslationsFormNoteEn {
  _TranslationsFormNoteSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Vnesite ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsSl errors =
      _TranslationsFormNoteErrorsSl._(_root);
}

// Path: form.gender
class _TranslationsFormGenderSl implements TranslationsFormGenderEn {
  _TranslationsFormGenderSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Izberite ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsSl errors =
      _TranslationsFormGenderErrorsSl._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldSl implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Vnesite ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsSl errors =
      _TranslationsFormAnyFieldErrorsSl._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownSl implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Izberite ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsSl errors =
      _TranslationsFormAnyDropdownErrorsSl._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageSl implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardSl implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataSl onboardData =
      _TranslationsPagesOnboardOnboardDataSl._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInSl implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Dobrodošli nazaj';
  @override
  String get subtitle => 'Prijavite se zdaj in začnite neverjetno potovanje.';
  @override
  late final _TranslationsPagesSignInExtraSl extra =
      _TranslationsPagesSignInExtraSl._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordSl
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pozabljeno geslo';
  @override
  String get subtitle => 'Vnesite svoj e-poštni naslov, da si opomorete geslo.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationSl
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Preverjanje';
  @override
  String subtitle({required String email}) =>
      '4-mestna koda je bila poslana na vaš e-poštni naslov. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraSl extra =
      _TranslationsPagesOtpVerificationExtraSl._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordSl
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ponastavitev gesla';
  @override
  String get subtitle =>
      'Ponastavite geslo za obnovitev in se prijavite v svoj račun.';
  @override
  late final _TranslationsPagesResetPasswordExtraSl extra =
      _TranslationsPagesResetPasswordExtraSl._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpSl implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ustvari račun';
  @override
  String get subtitle => 'Prijavite se zdaj in začnite neverjetno potovanje.';
  @override
  late final _TranslationsPagesSignUpExtraSl extra =
      _TranslationsPagesSignUpExtraSl._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeSl implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kdo ste?';
  @override
  String get subtitle => 'Izberite spodnjo možnost.';
  @override
  late final _TranslationsPagesWelcomeExtraSl extra =
      _TranslationsPagesWelcomeExtraSl._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsSl implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsSl
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListSl
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Obvestila';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsSl implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraSl extra =
      _TranslationsPagesContactUsExtraSl._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingSl
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Zakaj ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormSl form =
      _TranslationsPagesCancelRentingFormSl._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsSl
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentSl
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Offline plačilo';
  @override
  late final _TranslationsPagesOfflinePaymentFormSl form =
      _TranslationsPagesOfflinePaymentFormSl._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraSl extra =
      _TranslationsPagesOfflinePaymentExtraSl._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusSl
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessSl success =
      _TranslationsPagesPaymentStatusSuccessSl._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailSl fail =
      _TranslationsPagesPaymentStatusFailSl._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsSl
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraSl extra =
      _TranslationsPagesPropertyDetailsExtraSl._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchSl implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Iskanje';
  @override
  late final _TranslationsPagesSearchExtraSl extra =
      _TranslationsPagesSearchExtraSl._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanSl
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Izberite svoj načrt';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraSl extra =
      _TranslationsPagesSubscriptionPlanExtraSl._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportSl
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Skupni stroški vzdrževanja: '),
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
class _TranslationsEnumsPropertyStatusSl
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Vse nepremičnine';
  @override
  String get pending => 'Neodločeno';
  @override
  String get active => 'Aktivno';
  @override
  String get inactive => 'Neaktivno';
  @override
  String get rejected => 'Zavrnjeno';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeSl
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Stanovanje/Kondominij';
  @override
  String get house => 'Hiša';
  @override
  String get commercialProperty => 'Poslovni prostor';
  @override
  String get land => 'Zemljišče';
  @override
  String get room => 'Soba';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusSl
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Vse';
  @override
  String get pending => 'Neodločeno';
  @override
  String get processing => 'V obdelavi';
  @override
  String get approved => 'Odobreno';
  @override
  String get rejected => 'Zavrnjeno';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusSl
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Neodločeno';
  @override
  String get processing => 'V obdelavi';
  @override
  String get active => 'Aktivno';
  @override
  String get expired => 'Poteklo';
  @override
  String get cancelled => 'Preklicano';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusSl
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Neodločeno';
  @override
  String get processing => 'V obdelavi';
  @override
  String get rejected => 'Zavrnjeno';
  @override
  String get completed => 'Dokončano';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeSl
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Zasebno (posameznik)';
  @override
  String get company => 'Podjetje';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeSl implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Novi najemnik';
  @override
  String get activeTenant => 'Aktivni najemnik';
  @override
  String get expiredTenant => 'Potekli najemnik';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusSl
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Vse';
  @override
  String get pending => 'Neodločeno';
  @override
  String get paid => 'Plačano';
  @override
  String get unpaid => 'Neplačano';
  @override
  String get rejected => 'Zavrnjeno';
  @override
  String get refund => 'Vračilo';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsSl
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Spletno plačilo';
  @override
  String get offlinePayment => 'Offline plačilo';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeSl
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Varnostni depozit';
  @override
  String get rentPayment => 'Plačilo najemnine';
  @override
  String get subscription => 'Naročnina';
}

// Path: enums.gender
class _TranslationsEnumsGenderSl implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Moški';
  @override
  String get female => 'Ženska';
  @override
  String get other => 'Drugo';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationSl implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Žena';
  @override
  String get parent => 'Starš';
  @override
  String get friend => 'Prijatelj';
  @override
  String get brother => 'Brat';
  @override
  String get sister => 'Sestra';
  @override
  String get child => 'Otrok';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeSl
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Avto';
  @override
  String get motorcycles => 'Motorji';
  @override
  String get lorry => 'Tovornjak';
}

// Path: enums.sortBy
class _TranslationsEnumsSortBySl implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortBySl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Od nizke do visoke';
  @override
  String get highToLow => 'Od visoke do nizke';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeSl
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Stanovanje';
  @override
  String get apartment => 'Apartma';
  @override
  String get condominium => 'Kondominij';
  @override
  String get serviceResidence => 'Rezidenca s storitvami';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Dupleks';
  @override
  String get townhouseCondo => 'Mestna hiša/Kondominij';
  @override
  String get others => 'Drugo';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeSl implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Visoko';
  @override
  String get medium => 'Srednje';
  @override
  String get low => 'Nizko';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsSl
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Popolnoma opremljeno';
  @override
  String get partiallyFurnished => 'Delno opremljeno';
  @override
  String get notFurnished => 'Neopremljeno';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeSl
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Pisarniški prostor';
  @override
  String get retailSpace => 'Maloprodajni prostor';
  @override
  String get shopLot => 'Trgovina';
  @override
  String get warehouseFactory => 'Skladišče / Tovarna';
  @override
  String get hotelResort => 'Hotel / Letovišče';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Drugo';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeSl
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Stanovanjsko';
  @override
  String get industrial => 'Industrijsko';
  @override
  String get agricultural => 'Kmetijsko';
  @override
  String get commercial => 'Poslovno';
  @override
  String get mixedDevelopment => 'Mešani razvoj';
  @override
  String get others => 'Drugo';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeSl
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Kondominij / Rezidenca s storitvami / Penthouse';
  @override
  String get apartment => 'Apartma / Stanovanje';
  @override
  String get house => 'Hiše';
  @override
  String get shoplot => 'Trgovina';
  @override
  String get sharing => 'Delitev hiše / stanovanja';
  @override
  String get others => 'Drugo';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodSl
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 mesecev';
  @override
  String get oneYear => '1 leto';
  @override
  String get oneAndHalfYears => '1,5 leta';
  @override
  String get twoYears => '2 leti';
  @override
  String get twoAndHalfYears => '2,5 leta';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterSl
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Dnevno';
  @override
  String get weekly => 'Tedensko';
  @override
  String get monthly => 'Mesečno';
  @override
  String get yearly => 'Letno';
  @override
  String get custom => 'Po meri';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsSl
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Vaša prijava';
  @override
  String get landlord => 'Najemnikova prijava';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentSl
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Prijava je bila uspešno poslana!';
  @override
  String get sucessDescription =>
      'To prijavo si lahko ogledate na seznamu prijav';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteSl
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Izbriši delavca?';
  @override
  String get description =>
      'Ali ste prepričani, da želite izbrisati tega delavca?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteSl
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Izbriši nepremičnino?';
  @override
  String get message =>
      'Ali ste prepričani, da želite izbrisati to nepremičnino?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveSl
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ali ste prepričani, da želite odobriti ta najem?';
  @override
  String get description =>
      'Prepričajte se, da ste pregledali pogodbo, ki jo je podpisal najemnik.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptSl
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ali ste prepričani, da želite sprejeti to povabilo?';
  @override
  String get description =>
      'Prepričajte se, da ste prenesli datoteko PDF s pogodbo!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsSl
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite vaše ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsSl implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Prosimo, vnesite vaš e-poštni naslov ${_root.common.email}';
  @override
  String get invalid => '⦸ Neveljaven e-poštni naslov, poskusite znova';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsSl
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite vaše ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Geslo mora vsebovati vsaj ${count} znakov!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsSl
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite vaše ${_root.common.password}';
  @override
  String get notMatched => 'Potrditveno geslo se ne ujema!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsSl
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite vašo ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsSl
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite vaš ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsSl
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite vaš ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsSl
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite vaš ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsSl implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite ime ${_root.common.city}.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsSl implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite ime ${_root.common.state}.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsSl
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, izberite vaš ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsSl implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite OTP.';
  @override
  String get invalid => 'Prosimo, vnesite pravilen OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsSl implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite naslov';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsSl implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Prosimo, izberite ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsSl
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite razlog';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsSl
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, izberite ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsSl
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Prosimo, izberite ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsSl implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Prosimo, vnesite ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsSl
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, izberite ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsSl
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Prosimo, vnesite ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Prosimo, vnesite veljaven @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsSl
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Prosimo, izberite ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Prosimo, izberite veljaven @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataSl
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Sl data1 =
      _TranslationsPagesOnboardOnboardDataData1Sl._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Sl data2 =
      _TranslationsPagesOnboardOnboardDataData2Sl._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Sl data3 =
      _TranslationsPagesOnboardOnboardDataData3Sl._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraSl
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Zapomni si me';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Nimate računa? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraSl
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendSl codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendSl._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraSl
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogSl dialog =
      _TranslationsPagesResetPasswordExtraDialogSl._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraSl
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Imate račun? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraSl
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Upravljajte svoje nepremičnine';
  @override
  String get tenantTag => 'Prijavite se v svoj najemniški račun';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraSl
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Sporočilo ...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormSl
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonSl reason =
      _TranslationsPagesCancelRentingFormReasonSl._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormSl
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteSl paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteSl._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraSl
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Znesek plačila: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Ime imetnika računa';
  @override
  String get accountNumber => 'Številka računa';
  @override
  String get swiftCode => 'Swift koda';
  @override
  String get branch => 'Podružnica';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Izberite samo datoteke formata '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' ali '),
      fileType('DOC'),
      const TextSpan(text: '. Velikost datoteke '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessSl
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Ogled računa';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description => 'Pregledali bomo plačilo in ga odobrili v 24 urah.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailSl
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Poskusite znova';
  @override
  String get title => 'Ups! Plačilo ni uspelo';
  @override
  String get description =>
      'Vaša transakcija ni uspela zaradi nekaterih tehničnih napak.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraSl
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

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
      const TextSpan(text: 'Lastnosti '),
      fa('(Objekti in ugodnosti)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Izberite obdobje najema';
  @override
  String get writeAReview => '+ Napišite mnenje';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraSl
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Iščite parcele, stanovanja, sobe ...';
  @override
  String get noRecentSearch => 'Nimate nedavnih iskanj.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraSl
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Plačilo naročnine uspešno.\nZdaj lahko dostopate do naročenih funkcij.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Sl
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Sl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Poiščite svojo nepremičnino';
  @override
  String get description =>
      'Iskanje prostora, ki ustreza vašemu življenju – ne glede na to, ali gre za sobo, stanovanje ali hišo – smo vam olajšali.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Sl
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Sl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Stanovanje v mestu';
  @override
  String get description =>
      'Prihranimo vam čas tako, da vas hitro povežemo z idealno nepremičnino, preden ta izgine, da boste lahko uživali v svojem novem domu, ali pa brezplačno objavite svojega.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Sl
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Sl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vaša udobna hiša';
  @override
  String get description =>
      'Če iščete kraj bivanja, si oglejte naše hiše za najem. Imamo široko ponudbo hiš, med katerimi lahko izbirate po vsej državi.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendSl
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Koda bo poslana čez ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Ponovno pošlji kodo'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogSl
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Uspešno spremenjeno!';
  @override
  String get subtitle =>
      'Prijavite se z novim geslom.\nPreusmerjam vas na prijavo ...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonSl
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Napišite razlog';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsSl errors =
      _TranslationsPagesCancelRentingFormReasonErrorsSl._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteSl
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Opomba o plačilu (${_root.common.optional})';
  @override
  String get hint => 'Vnesite nekaj besedila ...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsSl
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsSl._(this._root);

  final TranslationsSl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Prosimo, vnesite razlog za odpoved najema';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsSl {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Jezik';
      case 'common.subscriptionPlan':
        return 'Naročniški paket';
      case 'common.contactUs':
        return 'Kontaktirajte nas';
      case 'common.termsAndConditions':
        return 'Pogoji & Določila';
      case 'common.aboutUs':
        return 'O nas';
      case 'common.logout':
        return 'Odjava';
      case 'common.editProfile':
        return 'Uredi profil';
      case 'common.fullName':
        return 'Polno ime';
      case 'common.email':
        return 'E-pošta';
      case 'common.mobileNumber':
        return 'Mobilna številka';
      case 'common.address':
        return 'Naslov';
      case 'common.postalCode':
        return 'Poštna številka';
      case 'common.city':
        return 'Mesto';
      case 'common.country':
        return 'Država';
      case 'common.state':
        return 'Država';
      case 'common.password':
        return 'Geslo';
      case 'common.forgotPassword':
        return 'Pozabljeno geslo';
      case 'common.tenant':
        return 'Najemnik';
      case 'common.landlord':
        return 'Najemodajalec';
      case 'common.cancelRenting':
        return 'Preklic najema';
      case 'common.startDate':
        return 'Datum začetka';
      case 'common.endDate':
        return 'Datum konca';
      case 'common.fromDate':
        return 'Od datuma';
      case 'common.toDate':
        return 'Do datuma';
      case 'common.online':
        return 'Spletno';
      case 'common.bankList':
        return 'Seznam bank';
      case 'common.withdrawMethod':
        return 'Način izplačila';
      case 'common.uploadPaymentReceipt':
        return 'Naloži potrdilo o plačilu';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Opomba: '),
            note('Plačilo zahteva ročno odobritev s strani skrbnika v roku'),
            const TextSpan(text: ' '),
            duraion('24~48 ur.'),
          ],
        );
      case 'common.reviews':
        return 'Mnenja';
      case 'common.description':
        return 'Opis';
      case 'common.about':
        return 'O';
      case 'common.propertyTypes':
        return 'Vrste nepremičnin';
      case 'common.features':
        return 'Lastnosti';
      case 'common.floorPlans':
        return 'Tlorisi';
      case 'common.buildingDetails':
        return 'Podrobnosti o zgradbi';
      case 'common.buildingName':
        return 'Ime zgradbe';
      case 'common.propertyAddress':
        return 'Naslov nepremičnine';
      case 'common.completionYear':
        return 'Leto dokončanja';
      case 'common.lotNumber':
        return 'Številka parcele';
      case 'common.residentialType':
        return 'Vrsta stanovanja';
      case 'common.furnishings':
        return 'Oprema';
      case 'common.floorRange':
        return 'Razpon nadstropij';
      case 'common.bedrooms':
        return 'Spalnice';
      case 'common.bathrooms':
        return 'Kopalnice';
      case 'common.propertySize':
        return 'Velikost nepremičnine';
      case 'common.rentalPeriod':
        return 'Obdobje najema';
      case 'common.securityDeposit':
        return 'Varnostni depozit';
      case 'common.utilityBill':
        return 'Strošek komunalnih storitev';
      case 'common.facilities':
        return 'Objekti';
      case 'common.amenities':
        return 'Ugodnosti';
      case 'common.expiringReason':
        return 'Razlog za prenehanje veljavnosti';
      case 'common.tenantDetails':
        return 'Podrobnosti o najemniku';
      case 'common.typeOfTenant':
        return 'Vrsta najemnika';
      case 'common.tenantName':
        return 'Ime najemnika';
      case 'common.nidPassport':
        return 'NID/Potni list';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID najemnika';
      case 'common.dateOfBirth':
        return 'Datum rojstva';
      case 'common.gender':
        return 'Spol';
      case 'common.nominee':
        return 'Nominiranec';
      case 'common.name':
        return 'Ime';
      case 'common.optional':
        return 'Izbirno';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Št. mob.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Kontakt za nujne primere';
      case 'common.relation':
        return 'Razmerje';
      case 'common.relationWith':
        return '${_root.common.relation} Z';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} Vi';
      case 'common.company':
        return 'Podjetje';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM Št.';
      case 'common.workplace':
        return 'Delovno mesto';
      case 'common.officePhoneNo':
        return 'Telefonska številka pisarne';
      case 'common.officeMobileNo':
        return 'Pisarna ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Vozilo';
      case 'common.vehiclesInfo.plain':
        return 'Informacije o vozilih';
      case 'common.vehiclesInfo.optional':
        return 'Informacije o vozilih (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Vrsta';
      case 'common.vehicleRegistrationNo.normal':
        return 'Registrska številka vozila';
      case 'common.vehicleRegistrationNo.short':
        return 'Registrska št.';
      case 'common.vehicleRegistrationNo.alt':
        return 'Številka tablice';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Znamka';
      case 'common.rentProperty':
        return 'Najem nepremičnine';
      case 'common.propertyDetails':
        return 'Podrobnosti o nepremičnini';
      case 'common.propertyId':
        return 'ID nepremičnine';
      case 'common.propertyType':
        return 'Vrsta nepremičnine';
      case 'common.propertyName':
        return 'Ime nepremičnine';
      case 'common.paymentDetails':
        return 'Podrobnosti o plačilu';
      case 'common.monthlyRent':
        return 'Mesečna najemnina';
      case 'common.thisMonthPayment':
        return 'Plačilo za ta mesec';
      case 'common.totalPaidRent':
        return 'Skupna plačana najemnina';
      case 'common.dueRent':
        return 'Neplačana najemnina';
      case 'common.rentStartDate':
        return 'Najem ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Najem ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'PDF pogodbe o najemu';
      case 'common.noFile':
        return 'Datoteka ni na voljo';
      case 'common.tenantImageOp':
        return 'Slika najemnika ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Dodaj novo vozilo';
      case 'common.uploadNidPassport':
        return 'Naloži NID/Potni list';
      case 'common.nidPassportUploadNote':
        return 'Sprejete bodo samo slike tipa datoteke. Omejitev datoteke do 2,5 MB.';
      case 'common.search':
        return 'Iskanje';
      case 'common.sortBy':
        return 'Razvrsti po';
      case 'common.subscription':
        return 'Naročnina';
      case 'common.downloading':
        return 'Prenos ...';
      case 'common.downloadSuccess':
        return 'Datoteka je bila uspešno prenesena!';
      case 'common.addPropertyBannerTitle':
        return 'Želite oddati svojo nepremičnino?';
      case 'common.application':
        return 'Prijava';
      case 'common.tenantHasPaidDeposit':
        return 'Najemnik je plačal depozit.';
      case 'common.askProcessingRentApplication':
        return 'Ali ste prepričani, da želite obdelati to zahtevo za najem nepremičnine?';
      case 'common.dateAndTime':
        return 'Datum in čas';
      case 'common.applicationDetails':
        return 'Podrobnosti o prijavi';
      case 'common.depositStatus':
        return 'Status depozita';
      case 'common.uploadRentAgreement':
        return 'Naloži pogodbo o najemu';
      case 'common.uploadFilePDF':
        return 'Naloži datoteko (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Prosimo, izberite datoteko pogodbe.';
      case 'common.landlordRentAgreementPDF':
        return 'PDF pogodbe o najemu (najemodajalec)';
      case 'common.tenantRentAgreementPDF':
        return 'PDF pogodbe o najemu (najemnik)';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opomba: '),
            note('Zahtevo odobrite šele, ko najemnik izvede plačilo depozita.'),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Razlog za zavrnitev';
      case 'common.youveRejectedThisApplication':
        return 'Zavrnili ste to prijavo';
      case 'common.landlordDetails':
        return 'Podrobnosti o najemodajalcu';
      case 'common.landlordName':
        return 'Ime najemodajalca';
      case 'common.downloadRentAgreement':
        return 'Prenesi pogodbo o najemu';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Sprejmi '),
            toc('Pogoje in določila'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opomba: '),
            note(
              'Prosimo, prenesite in preberite pogodbo. Podpisano pogodbo pošljite najemodajalcu prek WhatsAppa ali e-pošte.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opomba: '),
            note(
              'Najemodajalec odobri prijavo, ko najemnik plača varnostni depozit, stroške komunalnih storitev in enomesečno predplačilo najemnine.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Pogodba o najemu (PDF) '),
            complete('Celotna pogodba'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opomba: '),
            note(
              'Najemodajalec odobri prijavo, ko najemnik plača varnostni depozit, stroške komunalnih storitev in enomesečno predplačilo najemnine.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Seznam prijav';
      case 'common.viewDetails':
        return 'Ogled podrobnosti';
      case 'common.searchHint':
        return '${_root.common.search} ...';
      case 'common.home':
        return 'Domov';
      case 'common.dashboard':
        return 'Nadzorna plošča';
      case 'common.tenants':
        return 'Najemniki';
      case 'common.maintenance':
        return 'Vzdrževanje';
      case 'common.maintenanceList':
        return 'Seznam vzdrževanja';
      case 'common.maintenanceReport':
        return 'Poročilo o vzdrževanju';
      case 'common.labor':
        return 'Delo';
      case 'common.applications':
        return 'Prijave';
      case 'common.rentInvitation':
        return 'Povabilo k najemu';
      case 'common.payment':
        return 'Plačilo';
      case 'common.rentPayment':
        return 'Plačilo najemnine';
      case 'common.depositUtilityPayment':
        return 'Plačilo depozita in komunalnih storitev';
      case 'common.refundRequest':
        return 'Zahteva za povračilo';
      case 'common.withdrawRequest':
        return 'Zahteva za izplačilo';
      case 'common.myProperty':
        return 'Moja nepremičnina';
      case 'common.myRent':
        return 'Moj najem';
      case 'common.wishlist':
        return 'Seznam želja';
      case 'common.properties':
        return 'Nepremičnine';
      case 'common.allProperties':
        return 'Vse nepremičnine';
      case 'common.totalPropery':
        return 'Skupno število nepremičnin';
      case 'common.occupied':
        return 'Zasedeno';
      case 'common.vacant':
        return 'Prosto';
      case 'common.accounting':
        return 'Računovodstvo';
      case 'common.totalIncome':
        return 'Skupni prihodki';
      case 'common.totalExpense':
        return 'Skupni stroški';
      case 'common.currentBalance':
        return 'Trenutno stanje';
      case 'common.totalWithdrawal':
        return 'Skupni znesek (dvig)';
      case 'common.totalProperties':
        return 'Skupno število nepremičnin';
      case 'common.totalTenant':
        return 'Skupno število najemnikov';
      case 'common.totalRentPaid':
        return 'Skupno plačilo najemnine';
      case 'common.totalRentDue':
        return 'Skupni neplačani znesek najemnine';
      case 'common.totalApplication':
        return 'Skupno število prijav';
      case 'common.pendingApplication':
        return 'Pričakujoče prijave';
      case 'common.processingApplication':
        return 'Prijave v obdelavi';
      case 'common.approveApplication':
        return 'Odobrene prijave';
      case 'common.rejectApplication':
        return 'Zavrnjene prijave';
      case 'common.maintenanceCost':
        return 'Stroški vzdrževanja';
      case 'common.transactionSummary':
        return 'Povzetek transakcij';
      case 'common.maintenanceRequest':
        return 'Zahteva za vzdrževanje';
      case 'common.notifications':
        return 'Obvestila';
      case 'common.myProperties':
        return 'Moje nepremičnine';
      case 'common.recommendationProperties':
        return 'Priporočene nepremičnine';
      case 'common.laborList':
        return 'Seznam delavcev';
      case 'common.addLabor':
        return 'Dodaj delavca';
      case 'common.laborDetails':
        return 'Podrobnosti o delavcu';
      case 'common.laborSalary':
        return 'Plača delavca';
      case 'common.editLabor':
        return 'Uredi delavca';
      case 'common.addNewLabor':
        return 'Dodaj novega delavca';
      case 'common.enterAmount':
        return 'Vnesite znesek';
      case 'common.maintenanceDetails':
        return 'Podrobnosti o vzdrževanju';
      case 'common.laborName':
        return 'Ime delavca';
      case 'common.comment':
        return 'Komentar';
      case 'common.image':
        return 'Slika';
      case 'common.complete':
        return 'Dokončano';
      case 'common.details':
        return 'Podrobnosti';
      case 'common.title':
        return 'Naslov';
      case 'common.date':
        return 'Datum';
      case 'common.reason':
        return 'Razlog';
      case 'common.edit':
        return 'Uredi';
      case 'common.property':
        return 'Nepremičnina';
      case 'common.completeYourProfile':
        return 'Izpolnite svoj profil';
      case 'common.profileImage':
        return 'Profilna slika';
      case 'common.imagePickHint':
        return 'Samo slika JPEG in PNG z največjo velikostjo 120x120 slikovnih pik.';
      case 'common.invoiceId':
        return 'ID računa';
      case 'common.depositAmount':
        return 'Znesek depozita';
      case 'common.landlordPhone':
        return 'Telefonska številka najemodajalca';
      case 'common.rentalAdvance':
        return 'Najemnina (vnaprej)';
      case 'common.totalAmount':
        return 'Skupni znesek';
      case 'common.rentalAmount':
        return 'Znesek najemnine';
      case 'common.adminCharge':
        return 'Administrativni stroški';
      case 'common.editAccount':
        return 'Uredi račun';
      case 'common.addNewAccount':
        return 'Dodaj nov račun';
      case 'common.transactionId':
        return 'ID transakcije';
      case 'common.transactionType':
        return 'Vrsta transakcije';
      case 'common.requestDate':
        return 'Datum zahteve';
      case 'common.amount':
        return 'Znesek';
      case 'common.fee':
        return 'Provizija';
      case 'common.paymentStatus':
        return 'Status plačila';
      case 'common.generatedTime':
        return 'Čas ustvarjanja';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'To je sistemsko ustvarjeno poročilo o '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Zgodovina dvigov';
      case 'common.history':
        return 'Zgodovina';
      case 'common.withdrawAmount':
        return 'Znesek dviga';
      case 'common.availableBalance':
        return 'Razpoložljivo stanje';
      case 'common.withdrawCharge':
        return 'Stroški dviga';
      case 'common.paymentMethod':
        return 'Način plačila';
      case 'common.requestSendSuccess':
        return 'Zahteva je bila uspešno poslana!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Potrdilo o plačilu je bilo uspešno oddano.';
      case 'common.refundReason':
        return 'Razlog za vračilo';
      case 'common.note':
        return 'Opomba';
      case 'common.refundReceiveSuccess':
        return 'Vračilo je bilo uspešno prejeto.';
      case 'common.downloadPaymentReceipt':
        return 'Prenesi potrdilo o plačilu';
      case 'common.invoice':
        return 'Račun';
      case 'common.selectPropertyToSeeInvoice':
        return 'Izberite nepremičnino, da si ogledate številko računa ...';
      case 'common.bankAccName':
        return 'Ime bančnega računa';
      case 'common.bankName':
        return 'Ime banke';
      case 'common.bankAccNum':
        return 'Številka bančnega računa';
      case 'common.thankYou':
        return 'Hvala vam!';
      case 'common.basicInfo':
        return 'Osnovne informacije';
      case 'common.descriptionPricing':
        return 'Opis in cene';
      case 'common.contact':
        return 'Kontakt';
      case 'common.photos':
        return 'Fotografije';
      case 'common.successfullySubmitted':
        return 'Uspešno oddano!';
      case 'common.editProperty':
        return 'Uredi nepremičnino';
      case 'common.addNewProperty':
        return 'Dodaj novo nepremičnino';
      case 'common.propertyManageRequestSuccess':
        return 'Vaš oglas je bil poslan v pregled.';
      case 'common.postAnotherProperty':
        return 'Objavi drugo nepremičnino';
      case 'common.browseYourProperty':
        return 'Prebrskajte svojo nepremičnino';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Korak '),
                step,
                const TextSpan(text: ' od '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Kaj bi radi objavili?';
      case 'common.category':
        return 'Kategorija';
      case 'common.invalidCategory':
        return 'Neveljavna kategorija';
      case 'common.unitNumber':
        return 'Številka enote';
      case 'common.sqft':
        return 'kv. ft.';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Velikost nepremičnine mora biti večja od nič';
      case 'common.whatAreTheFacility':
        return 'Katere so zmogljivosti?';
      case 'common.whatAreTheAmenity':
        return 'Katere so ugodnosti?';
      case 'common.parkingLot':
        return 'Parkirišče';
      case 'common.houseType':
        return 'Vrsta hiše';
      case 'common.value':
        return 'Vrednost';
      case 'common.unitLotSize':
        return 'Velikost enote / parcele';
      case 'common.landSize':
        return 'Velikost zemljišča';
      case 'common.acres':
        return 'akrov';
      case 'common.roomSize':
        return 'Velikost sobe';
      case 'common.askTenantPreference':
        return 'Kakšne so vaše želje glede najemnika';
      case 'common.couple':
        return 'Par';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Opišite ${propertyType}';
      case 'common.adTitle':
        return 'Naslov oglasa';
      case 'common.minimumRentalPeriod':
        return 'Minimalno obdobje najema';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Številka';
      case 'common.hideOrDisplayEmail':
        return 'Skrij ali prikaži e-poštni naslov';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Hvala, ker ste objavili na ${appName}!';
      case 'common.propertyList':
        return 'Seznam nepremičnin';
      case 'common.newInviteRent':
        return 'Novo povabilo k najemu';
      case 'common.rentAgreement':
        return 'Pogodba o najemu';
      case 'common.rentDetails':
        return 'Podrobnosti o najemu';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opomba: '),
            note('Prosimo, počakajte, da najemnik sprejme povabilo.'),
          ],
        );
      case 'common.rent':
        return 'Najem';
      case 'common.editTenant':
        return 'Uredi najemnika';
      case 'common.addNewTenant':
        return 'Dodaj novega najemnika';
      case 'common.shareInstallLink':
        return 'Delite povezavo za namestitev';
      case 'common.tenantList':
        return 'Seznam najemnikov';
      case 'common.editMaintenanceRequest':
        return 'Uredi zahtevo za vzdrževanje';
      case 'common.addNewMaintenance':
        return 'Dodaj novo vzdrževanje';
      case 'common.landlordId':
        return 'ID najemodajalca';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Opomba: '),
            note(
              'Vaša pogodba je v pregledu. Prosimo, počakajte, da najemodajalec odobri vaš najem.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Uredi mnenje';
      case 'common.writeAReview':
        return 'Napišite mnenje';
      case 'common.selectRating':
        return 'Izberite oceno';
      case 'common.enterYourOpinion':
        return 'Vnesite svoje mnenje';
      case 'common.askToEnterReviewMsg':
        return 'Prosimo, vnesite sporočilo z mnenjem';
      case 'common.pressBackAgainToExit':
        return 'Pritisnite nazaj še enkrat, da izstopite.';
      case 'common.selectPaymentMethod':
        return 'Izberite način plačila';
      case 'common.filter':
        return 'Filter';
      case 'common.perMonth':
        return '/1 mesec';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => 'Iščite karkoli v ${appName} ...';
      case 'exceptions.somethingWentWrong':
        return 'Nekaj je šlo narobe, poskusite znova';
      case 'exceptions.noNidPassport':
        return 'Slika NID/Potnega lista ni bila priložena.';
      case 'exceptions.noRentPropertyFound':
        return 'Za tega najemnika ni bila najdena nobena nepremičnina za najem.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Nepremičnina ni bila najdena!\nPoskusite z drugimi ključnimi besedami';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Ni naročniškega paketa!\nOsvežite stran in poskusite znova.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Neveljavne informacije o ${dataType}! Osvežite stran in poskusite znova.';
      case 'exceptions.invalidDownloadUrl':
        return 'Neveljaven URL za prenos!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Datoteke ni bilo mogoče shraniti! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Napaka pri odpiranju datoteke! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Informacije o vozilu niso bile priložene.';
      case 'exceptions.yourApplicationRejected':
        return 'Vaša prijava je bila zavrnjena';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Prijava ni bila najdena!\n${subject} bo prikazan tukaj, ko bo na voljo.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Vaša prijava';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Najemnikova prijava';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Nepremičnina ni bila najdena!\nProsimo, dodajte nepremičnino, da jo vidite tukaj.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Priporočene nepremičnine niso bile najdene\nPoskusite znova pozneje.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Nepremičnine niso na voljo\nPoskusite znova pozneje.';
      case 'exceptions.noImageProvided':
        return 'Slika ni bila priložena';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Vzdrževanje s statusom ${status} ni bilo najdeno.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Vzdrževanje ni bilo najdeno! Zahtevo za vzdrževanje lahko ustvarite tukaj.';
      case 'exceptions.noDepositFound':
        return 'Varnostni depozit ni bil najden!\nOgled varnostnih depozitov bo možen, ko bodo na voljo';
      case 'exceptions.noRentPaymentFound':
        return 'Plačilo najemnine ni bilo najdeno!\nOgled plačil najemnine bo možen, ko bodo na voljo';
      case 'exceptions.transactionSummaryApiException':
        return 'Pridobivanje povzetka transakcij ni uspelo.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Zahteva ni bila najdena!\nProsimo, ustvarite zahtevo za izplačilo, da jo vidite tukaj.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Ta zahteva za izplačilo ni bila odobrena!.';
      case 'exceptions.nonZeroError':
        return 'Vnesite veljaven znesek, večji od nič.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Znesek mora biti najmanj ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Znesek ne sme preseči ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Najprej izberite način plačila.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Zahteva za vračilo s statusom ${status} ni bila najdena!\nZahtevo za vračilo si lahko ogledate tukaj, ko bo na voljo.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Zahteva za vračilo ni bila najdena!\nZahtevo za vračilo lahko ustvarite tukaj.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Najemnik bo odobril vračilo, ko bo prejel denar nazaj';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Pregledali bomo zahtevo za vračilo in jo odobrili v 24 urah.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Izberite število ${value}';
      case 'exceptions.invalidDateRange':
        return 'Neveljaven datumski razpon.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) => '${value} mora biti večje od nič.';
      case 'exceptions.editProperty.rentalChange':
        return 'Najemna nepremičnina se spreminja. Veljavna mora biti le za plačilo najemnine za naslednji mesec.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Vašo nepremičnino že najema najemnik. Ne morete je izbrisati, dokler najemnika ne odstranite.';
      case 'exceptions.editProperty.alreayRented':
        return 'Ta nepremičnina je že oddana. Poskusite znova pozneje.\nLahko pa se obrnete na najemodajalca za več informacij.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Povabilo k najemu ni bilo najdeno!\nProsimo, ustvarite povabilo k najemu, da ga vidite tukaj.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Povabilo k najemu ni bilo najdeno!\nPovabilo k najemu si lahko ogledate tukaj, ko bo na voljo.';
      case 'exceptions.notenantFoundList':
        return 'Ni najemnikov!\nProsimo, dodajte najemnika, da ga vidite tukaj.';
      case 'exceptions.noFeaturesProvided':
        return 'Funkcije niso bile priložene.';
      case 'exceptions.noNotificationFound':
        return 'Obvestila niso na voljo.\nObvestila si lahko ogledate tukaj, ko bodo na voljo.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Ali ste prepričani, da se želite odjaviti?';
      case 'prompt.application.rejectTitle':
        return 'Zakaj zavračate to prijavo?';
      case 'prompt.application.applicationSent.successfully':
        return 'Prijava je bila uspešno poslana!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'To prijavo si lahko ogledate na seznamu prijav';
      case 'prompt.labor.delete.title':
        return 'Izbriši delavca?';
      case 'prompt.labor.delete.description':
        return 'Ali ste prepričani, da želite izbrisati tega delavca?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Zakaj je ta zahteva zavrnjena?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Ali ste prepričani, da želite obdelati to zahtevo za vzdrževanje?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Ali je delo končano?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Izbriši način izplačila?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Ali ste prepričani, da želite izbrisati ta način izplačila?';
      case 'prompt.unsavedChanges.title':
        return 'Ali ste prepričani, da se želite vrniti nazaj?';
      case 'prompt.unsavedChanges.message':
        return 'Spremenjena polja ne bodo shranjena!';
      case 'prompt.property.delete.title':
        return 'Izbriši nepremičnino?';
      case 'prompt.property.delete.message':
        return 'Ali ste prepričani, da želite izbrisati to nepremičnino?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Ali ste prepričani, da želite odobriti ta najem?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Prepričajte se, da ste pregledali pogodbo, ki jo je podpisal najemnik.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Ali ste prepričani, da želite sprejeti to povabilo?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Prepričajte se, da ste prenesli datoteko PDF s pogodbo!';
      case 'prompt.sessionExpired.title':
        return 'Seja je potekla';
      case 'prompt.sessionExpired.message':
        return 'Vaša seja je potekla. Prosimo, prijavite se znova';
      case 'prompt.sessionExpired.action':
        return 'Prijava';
      case 'prompt.noInternet.title':
        return 'Ni internetne povezave';
      case 'prompt.noInternet.message':
        return 'Preverite povezavo Wi-Fi ali mobilno omrežje in poskusite znova';
      case 'prompt.noInternet.action':
        return 'Poskusite znova';
      case 'prompt.permissionHandler.title':
        return 'Potrebno je dovoljenje!';
      case 'prompt.permissionHandler.message':
        return 'Dovoljenja morate odobriti v nastavitvah aplikacije. Ali želite zdaj odpreti nastavitve?';
      case 'prompt.imagePicker.title':
        return 'Izberite možnost';
      case 'prompt.imagePicker.gallery':
        return 'Galerija';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Preverite svoj e-poštni naslov';
      case 'prompt.verificationDialog.message':
        return 'Na e-poštni naslov smo poslali overitveno kodo';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} na ${email}';
      case 'prompt.notification.clearTitle':
        return 'Počisti obvestila?';
      case 'prompt.notification.clearMessage':
        return 'Ali ste prepričani, da želite počistiti vsa obvestila?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Vnesite ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Prosimo, vnesite vaše ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Vnesite vaš ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Prosimo, vnesite vaš e-poštni naslov ${_root.common.email}';
      case 'form.email.errors.invalid':
        return '⦸ Neveljaven e-poštni naslov, poskusite znova';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Prosimo, vnesite vaše ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Geslo mora vsebovati vsaj ${count} znakov!';
      case 'form.confirmPassword.label':
        return 'Potrdite ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Prosimo, vnesite vaše ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Potrditveno geslo se ne ujema!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Prosimo, vnesite vašo ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Hišna številka in ime ulice';
      case 'form.address1.errors.required':
        return 'Prosimo, vnesite vaš ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Stanovanje, apartma, enota itd.';
      case 'form.address2.errors.required':
        return 'Prosimo, vnesite vaš ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Vnesite ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Prosimo, vnesite vaš ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Vnesite ime ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Prosimo, vnesite ime ${_root.common.city}.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Vnesite ime ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Prosimo, vnesite ime ${_root.common.state}.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Izberite ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Prosimo, izberite vaš ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Prosimo, vnesite OTP.';
      case 'form.otp.errors.invalid':
        return 'Prosimo, vnesite pravilen OTP.';
      case 'form.title.label':
        return 'Naslov';
      case 'form.title.hint':
        return 'Vnesite naslov';
      case 'form.title.errors.required':
        return 'Prosimo, vnesite naslov';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Izberite ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Prosimo, izberite ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Razlog';
      case 'form.reason.hint':
        return 'Vnesite razlog';
      case 'form.reason.errors.required':
        return 'Prosimo, vnesite razlog';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Izberite ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Prosimo, izberite ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Naložite ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Prosimo, izberite ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Vnesite ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Prosimo, vnesite ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Izberite ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Prosimo, izberite ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Vnesite ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Prosimo, vnesite ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Prosimo, vnesite veljaven @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Izberite ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Prosimo, izberite ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Prosimo, izberite veljaven @form.anyDropdown.label';
      case 'action.next':
        return 'Naprej';
      case 'action.getStarted':
        return 'Začni';
      case 'action.skip':
        return 'Preskoči';
      case 'action.select':
        return 'Izberi';
      case 'action.save':
        return 'Shrani';
      case 'action.signIn':
        return 'Prijava';
      case 'action.signUp':
        return 'Registracija';
      case 'action.kContinue':
        return 'Nadaljuj';
      case 'action.clearAll':
        return 'Počisti vse';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Pošlji';
      case 'action.pay':
        return 'Plačaj';
      case 'action.remove':
        return 'Odstrani';
      case 'action.goBack':
        return 'Pojdi nazaj';
      case 'action.buyNow':
        return 'Kupi zdaj';
      case 'action.no':
        return 'Ne';
      case 'action.open':
        return 'Odpri';
      case 'action.addProperty':
        return 'Dodaj nepremičnino';
      case 'action.process':
        return 'Obdelaj';
      case 'action.approve':
        return 'Odobri';
      case 'action.reject':
        return 'Zavrni';
      case 'action.viewRent':
        return 'Ogled najemnine';
      case 'action.openNavigationMenu':
        return 'Odpri navigacijski meni';
      case 'action.seeAll':
        return 'Prikaži vse';
      case 'action.update':
        return 'Posodobi';
      case 'action.printTransaction':
        return 'Natisni transakcijo';
      case 'action.payoutRequest':
        return 'Zahteva za izplačilo';
      case 'action.addNew':
        return '+ Dodaj novo';
      case 'action.sendRequest':
        return 'Pošlji zahtevo';
      case 'action.print':
        return 'Natisni';
      case 'action.requestForRefund':
        return 'Zahteva za vračilo';
      case 'action.previous':
        return 'Prejšnji';
      case 'action.delete':
        return 'Izbriši';
      case 'action.applyProperty':
        return 'Prijavi se za nepremičnino';
      case 'action.viewApplication':
        return 'Ogled prijave';
      case 'action.inviteTenant':
        return 'Povabi najemnika';
      case 'action.inviteRent':
        return 'Povabi k najemu';
      case 'action.cancel':
        return 'Prekliči';
      case 'action.accept':
        return 'Sprejmi';
      case 'action.submit':
        return 'Oddaj';
      case 'action.yes':
        return 'Da';
      case 'action.okay':
        return 'V redu';
      case 'action.confirm':
        return 'Potrdi';
      case 'action.apply':
        return 'Uporabi';
      case 'action.reset':
        return 'Ponastavi';
      case 'action.retry':
        return 'Ponovi';
      case 'action.viewAll':
        return 'Prikaži vse';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Poiščite svojo nepremičnino';
      case 'pages.onboard.onboardData.data1.description':
        return 'Iskanje prostora, ki ustreza vašemu življenju – ne glede na to, ali gre za sobo, stanovanje ali hišo – smo vam olajšali.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Stanovanje v mestu';
      case 'pages.onboard.onboardData.data2.description':
        return 'Prihranimo vam čas tako, da vas hitro povežemo z idealno nepremičnino, preden ta izgine, da boste lahko uživali v svojem novem domu, ali pa brezplačno objavite svojega.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Vaša udobna hiša';
      case 'pages.onboard.onboardData.data3.description':
        return 'Če iščete kraj bivanja, si oglejte naše hiše za najem. Imamo široko ponudbo hiš, med katerimi lahko izbirate po vsej državi.';
      case 'pages.signIn.title':
        return 'Dobrodošli nazaj';
      case 'pages.signIn.subtitle':
        return 'Prijavite se zdaj in začnite neverjetno potovanje.';
      case 'pages.signIn.extra.rememberMe':
        return 'Zapomni si me';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Nimate računa? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Pozabljeno geslo';
      case 'pages.forgotPassword.subtitle':
        return 'Vnesite svoj e-poštni naslov, da si opomorete geslo.';
      case 'pages.otpVerification.title':
        return 'Preverjanje';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-mestna koda je bila poslana na vaš e-poštni naslov. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Koda bo poslana čez ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Ponovno pošlji kodo'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Ponastavitev gesla';
      case 'pages.resetPassword.subtitle':
        return 'Ponastavite geslo za obnovitev in se prijavite v svoj račun.';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Uspešno spremenjeno!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Prijavite se z novim geslom.\nPreusmerjam vas na prijavo ...';
      case 'pages.signUp.title':
        return 'Ustvari račun';
      case 'pages.signUp.subtitle':
        return 'Prijavite se zdaj in začnite neverjetno potovanje.';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Imate račun? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Kdo ste?';
      case 'pages.welcome.subtitle':
        return 'Izberite spodnjo možnost.';
      case 'pages.welcome.extra.landlordTag':
        return 'Upravljajte svoje nepremičnine';
      case 'pages.welcome.extra.tenantTag':
        return 'Prijavite se v svoj najemniški račun';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Obvestila';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Sporočilo ...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Zakaj ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Napišite razlog';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Prosimo, vnesite razlog za odpoved najema';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Offline plačilo';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Opomba o plačilu (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Vnesite nekaj besedila ...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Znesek plačila: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Ime imetnika računa';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Številka računa';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift koda';
      case 'pages.offlinePayment.extra.branch':
        return 'Podružnica';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Izberite samo datoteke formata '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' ali '),
            fileType('DOC'),
            const TextSpan(text: '. Velikost datoteke '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Ogled računa';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Pregledali bomo plačilo in ga odobrili v 24 urah.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Poskusite znova';
      case 'pages.paymentStatus.fail.title':
        return 'Ups! Plačilo ni uspelo';
      case 'pages.paymentStatus.fail.description':
        return 'Vaša transakcija ni uspela zaradi nekaterih tehničnih napak.';
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
            const TextSpan(text: 'Lastnosti '),
            fa('(Objekti in ugodnosti)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Izberite obdobje najema';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Napišite mnenje';
      case 'pages.search.appbarTitle':
        return 'Iskanje';
      case 'pages.search.extra.hint':
        return 'Iščite parcele, stanovanja, sobe ...';
      case 'pages.search.extra.noRecentSearch':
        return 'Nimate nedavnih iskanj.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Izberite svoj načrt';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Plačilo naročnine uspešno.\nZdaj lahko dostopate do naročenih funkcij.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Skupni stroški vzdrževanja: '),
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
        return 'Vse nepremičnine';
      case 'enums.propertyStatus.pending':
        return 'Neodločeno';
      case 'enums.propertyStatus.active':
        return 'Aktivno';
      case 'enums.propertyStatus.inactive':
        return 'Neaktivno';
      case 'enums.propertyStatus.rejected':
        return 'Zavrnjeno';
      case 'enums.propertyType.apartmentCondominium':
        return 'Stanovanje/Kondominij';
      case 'enums.propertyType.house':
        return 'Hiša';
      case 'enums.propertyType.commercialProperty':
        return 'Poslovni prostor';
      case 'enums.propertyType.land':
        return 'Zemljišče';
      case 'enums.propertyType.room':
        return 'Soba';
      case 'enums.applicationStatus.all':
        return 'Vse';
      case 'enums.applicationStatus.pending':
        return 'Neodločeno';
      case 'enums.applicationStatus.processing':
        return 'V obdelavi';
      case 'enums.applicationStatus.approved':
        return 'Odobreno';
      case 'enums.applicationStatus.rejected':
        return 'Zavrnjeno';
      case 'enums.myRentStatus.pending':
        return 'Neodločeno';
      case 'enums.myRentStatus.processing':
        return 'V obdelavi';
      case 'enums.myRentStatus.active':
        return 'Aktivno';
      case 'enums.myRentStatus.expired':
        return 'Poteklo';
      case 'enums.myRentStatus.cancelled':
        return 'Preklicano';
      case 'enums.maintenanceStatus.pending':
        return 'Neodločeno';
      case 'enums.maintenanceStatus.processing':
        return 'V obdelavi';
      case 'enums.maintenanceStatus.rejected':
        return 'Zavrnjeno';
      case 'enums.maintenanceStatus.completed':
        return 'Dokončano';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Zasebno (posameznik)';
      case 'enums.tenantProfileType.company':
        return 'Podjetje';
      case 'enums.tenantType.newTenant':
        return 'Novi najemnik';
      case 'enums.tenantType.activeTenant':
        return 'Aktivni najemnik';
      case 'enums.tenantType.expiredTenant':
        return 'Potekli najemnik';
      case 'enums.paymentStatus.all':
        return 'Vse';
      case 'enums.paymentStatus.pending':
        return 'Neodločeno';
      case 'enums.paymentStatus.paid':
        return 'Plačano';
      case 'enums.paymentStatus.unpaid':
        return 'Neplačano';
      case 'enums.paymentStatus.rejected':
        return 'Zavrnjeno';
      case 'enums.paymentStatus.refund':
        return 'Vračilo';
      case 'enums.paymentOptions.onlinePayment':
        return 'Spletno plačilo';
      case 'enums.paymentOptions.offlinePayment':
        return 'Offline plačilo';
      case 'enums.paymentType.securityDeposit':
        return 'Varnostni depozit';
      case 'enums.paymentType.rentPayment':
        return 'Plačilo najemnine';
      case 'enums.paymentType.subscription':
        return 'Naročnina';
      case 'enums.gender.male':
        return 'Moški';
      case 'enums.gender.female':
        return 'Ženska';
      case 'enums.gender.other':
        return 'Drugo';
      case 'enums.ecRelation.wife':
        return 'Žena';
      case 'enums.ecRelation.parent':
        return 'Starš';
      case 'enums.ecRelation.friend':
        return 'Prijatelj';
      case 'enums.ecRelation.brother':
        return 'Brat';
      case 'enums.ecRelation.sister':
        return 'Sestra';
      case 'enums.ecRelation.child':
        return 'Otrok';
      case 'enums.vehicleType.car':
        return 'Avto';
      case 'enums.vehicleType.motorcycles':
        return 'Motorji';
      case 'enums.vehicleType.lorry':
        return 'Tovornjak';
      case 'enums.sortBy.lowToHigh':
        return 'Od nizke do visoke';
      case 'enums.sortBy.highToLow':
        return 'Od visoke do nizke';
      case 'enums.residentialType.flat':
        return 'Stanovanje';
      case 'enums.residentialType.apartment':
        return 'Apartma';
      case 'enums.residentialType.condominium':
        return 'Kondominij';
      case 'enums.residentialType.serviceResidence':
        return 'Rezidenca s storitvami';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Dupleks';
      case 'enums.residentialType.townhouseCondo':
        return 'Mestna hiša/Kondominij';
      case 'enums.residentialType.others':
        return 'Drugo';
      case 'enums.floorRange.high':
        return 'Visoko';
      case 'enums.floorRange.medium':
        return 'Srednje';
      case 'enums.floorRange.low':
        return 'Nizko';
      case 'enums.furnishings.fullyFurnished':
        return 'Popolnoma opremljeno';
      case 'enums.furnishings.partiallyFurnished':
        return 'Delno opremljeno';
      case 'enums.furnishings.notFurnished':
        return 'Neopremljeno';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Pisarniški prostor';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Maloprodajni prostor';
      case 'enums.commercialPropertyType.shopLot':
        return 'Trgovina';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Skladišče / Tovarna';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Letovišče';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Drugo';
      case 'enums.landPropertyType.residential':
        return 'Stanovanjsko';
      case 'enums.landPropertyType.industrial':
        return 'Industrijsko';
      case 'enums.landPropertyType.agricultural':
        return 'Kmetijsko';
      case 'enums.landPropertyType.commercial':
        return 'Poslovno';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Mešani razvoj';
      case 'enums.landPropertyType.others':
        return 'Drugo';
      case 'enums.residentPropertyType.condo':
        return 'Kondominij / Rezidenca s storitvami / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Apartma / Stanovanje';
      case 'enums.residentPropertyType.house':
        return 'Hiše';
      case 'enums.residentPropertyType.shoplot':
        return 'Trgovina';
      case 'enums.residentPropertyType.sharing':
        return 'Delitev hiše / stanovanja';
      case 'enums.residentPropertyType.others':
        return 'Drugo';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 mesecev';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 leto';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 leta';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 leti';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 leta';
      case 'enums.dropdownDateFilter.daily':
        return 'Dnevno';
      case 'enums.dropdownDateFilter.weekly':
        return 'Tedensko';
      case 'enums.dropdownDateFilter.monthly':
        return 'Mesečno';
      case 'enums.dropdownDateFilter.yearly':
        return 'Letno';
      case 'enums.dropdownDateFilter.custom':
        return 'Po meri';
      default:
        return null;
    }
  }
}
