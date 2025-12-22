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
class TranslationsHr implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsHr({
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
             locale: AppLocale.hr,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <hr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsHr _root = this; // ignore: unused_field

  @override
  TranslationsHr $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsHr(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonHr common = _TranslationsCommonHr._(_root);
  @override
  late final _TranslationsExceptionsHr exceptions = _TranslationsExceptionsHr._(
    _root,
  );
  @override
  late final _TranslationsPromptHr prompt = _TranslationsPromptHr._(_root);
  @override
  late final _TranslationsFormHr form = _TranslationsFormHr._(_root);
  @override
  late final _TranslationsActionHr action = _TranslationsActionHr._(_root);
  @override
  late final _TranslationsPagesHr pages = _TranslationsPagesHr._(_root);
  @override
  late final _TranslationsEnumsHr enums = _TranslationsEnumsHr._(_root);
}

// Path: common
class _TranslationsCommonHr implements TranslationsCommonEn {
  _TranslationsCommonHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Jezik';
  @override
  String get subscriptionPlan => 'Plan pretplate';
  @override
  String get contactUs => 'Kontaktirajte nas';
  @override
  String get termsAndConditions => 'Uvjeti i odredbe';
  @override
  String get aboutUs => 'O nama';
  @override
  String get logout => 'Odjava';
  @override
  String get editProfile => 'Uredi profil';
  @override
  String get fullName => 'Puno ime';
  @override
  String get email => 'E-pošta';
  @override
  String get mobileNumber => 'Broj mobitela';
  @override
  String get address => 'Adresa';
  @override
  String get postalCode => 'Poštanski broj';
  @override
  String get city => 'Grad';
  @override
  String get country => 'Država';
  @override
  String get state => 'Država';
  @override
  String get password => 'Lozinka';
  @override
  String get forgotPassword => 'Zaboravili ste lozinku';
  @override
  String get tenant => 'Najmoprimac';
  @override
  String get landlord => 'Najmodavac';
  @override
  String get cancelRenting => 'Otkaži najam';
  @override
  String get startDate => 'Datum početka';
  @override
  String get endDate => 'Datum završetka';
  @override
  String get fromDate => 'Od datuma';
  @override
  String get toDate => 'Do datuma';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Popis banaka';
  @override
  String get withdrawMethod => 'Način isplate';
  @override
  String get uploadPaymentReceipt => 'Prenesi potvrdu o uplati';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Napomena: '),
      note(
        'Zahtjev za uplatu zahtijeva ručno odobrenje administratora u roku od',
      ),
      const TextSpan(text: ' '),
      duraion('24-48 sati'),
      const TextSpan(text: '.'),
    ],
  );
  @override
  String get reviews => 'Recenzije';
  @override
  String get description => 'Opis';
  @override
  String get about => 'O';
  @override
  String get propertyTypes => 'Vrste nekretnina';
  @override
  String get features => 'Značajke';
  @override
  String get floorPlans => 'Tlocrti';
  @override
  String get buildingDetails => 'Detalji zgrade';
  @override
  String get buildingName => 'Ime zgrade';
  @override
  String get propertyAddress => 'Adresa nekretnine';
  @override
  String get completionYear => 'Godina završetka';
  @override
  String get lotNumber => 'Broj parcele';
  @override
  String get residentialType => 'Vrsta stanovanja';
  @override
  String get furnishings => 'Namještaj';
  @override
  String get floorRange => 'Raspon katova';
  @override
  String get bedrooms => 'Spavaće sobe';
  @override
  String get bathrooms => 'Kupaonice';
  @override
  String get propertySize => 'Veličina nekretnine';
  @override
  String get rentalPeriod => 'Razdoblje najma';
  @override
  String get securityDeposit => 'Sigurnosni polog';
  @override
  String get utilityBill => 'Račun za režije';
  @override
  String get facilities => 'Sadržaji';
  @override
  String get amenities => 'Pogodnosti';
  @override
  String get expiringReason => 'Razlog isteka';
  @override
  String get tenantDetails => 'Detalji o najmoprimcu';
  @override
  String get typeOfTenant => 'Vrsta najmoprimca';
  @override
  String get tenantName => 'Ime najmoprimca';
  @override
  String get nidPassport => 'NID/Putovnica';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID najmoprimca';
  @override
  String get dateOfBirth => 'Datum rođenja';
  @override
  String get gender => 'Spol';
  @override
  String get nominee => 'Nominirani';
  @override
  String get name => 'Ime';
  @override
  String get optional => 'Neobavezno';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileHr nomineeMobile =
      _TranslationsCommonNomineeMobileHr._(_root);
  @override
  String get emergencyContact => 'Kontakt za hitne slučajeve';
  @override
  String get relation => 'Odnos';
  @override
  String get relationWith => '${_root.common.relation} S';
  @override
  String get relationWithYou => '${_root.common.relation} S tobom';
  @override
  String get company => 'Tvrtka';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM br.';
  @override
  String get workplace => 'Radno mjesto';
  @override
  String get officePhoneNo => 'Broj telefona ureda';
  @override
  String get officeMobileNo => 'Uredski ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Vozilo';
  @override
  late final _TranslationsCommonVehiclesInfoHr vehiclesInfo =
      _TranslationsCommonVehiclesInfoHr._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Vrsta';
  @override
  late final _TranslationsCommonVehicleRegistrationNoHr vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoHr._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Marka';
  @override
  String get rentProperty => 'Iznajmi nekretninu';
  @override
  String get propertyDetails => 'Detalji o nekretnini';
  @override
  String get propertyId => 'ID nekretnine';
  @override
  String get propertyType => 'Vrsta nekretnine';
  @override
  String get propertyName => 'Naziv nekretnine';
  @override
  String get paymentDetails => 'Detalji plaćanja';
  @override
  String get monthlyRent => 'Mjesečna najamnina';
  @override
  String get thisMonthPayment => 'Uplata za ovaj mjesec';
  @override
  String get totalPaidRent => 'Ukupno plaćena najamnina';
  @override
  String get dueRent => 'Dospjela najamnina';
  @override
  String get rentStartDate => 'Najam ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Najam ${_root.common.endDate}';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'PDF ugovora o najmu';
  @override
  String get noFile => 'Nema datoteke';
  @override
  String get tenantImageOp => 'Slika najmoprimca ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Dodaj novo vozilo';
  @override
  String get uploadNidPassport => 'Učitaj NID/Putovnicu';
  @override
  String get nidPassportUploadNote =>
      'Bit će prihvaćene samo slike tipa datoteke. Ograničenje veličine datoteke do 2,5 MB.';
  @override
  String get search => 'Pretraži';
  @override
  String get sortBy => 'Sortiraj po';
  @override
  String get subscription => 'Pretplata';
  @override
  String get downloading => 'Preuzimanje...';
  @override
  String get downloadSuccess => 'Datoteka je uspješno preuzeta!';
  @override
  String get addPropertyBannerTitle => 'Želite iznajmiti svoju nekretninu?';
  @override
  String get application => 'Prijava';
  @override
  String get tenantHasPaidDeposit => 'Najmoprimac je uplatio polog.';
  @override
  String get askProcessingRentApplication =>
      'Jeste li sigurni da želite obraditi ovaj zahtjev za najam nekretnine?';
  @override
  String get dateAndTime => 'Datum i vrijeme';
  @override
  String get applicationDetails => 'Detalji prijave';
  @override
  String get depositStatus => 'Status pologa';
  @override
  String get uploadRentAgreement => 'Prenesi ugovor o najmu';
  @override
  String get uploadFilePDF => 'Prenesi datoteku (PDF)';
  @override
  String get askSelectRentAgreement => 'Molimo odaberite datoteku ugovora.';
  @override
  String get landlordRentAgreementPDF => 'PDF ugovora o najmu (najmodavac)';
  @override
  String get tenantRentAgreementPDF => 'PDF ugovora o najmu (najmoprimac)';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Napomena: '),
          note('Odobrite prijavu tek nakon što najmoprimac uplati polog.'),
        ],
      );
  @override
  String get reasonOfRejection => 'Razlog odbijanja';
  @override
  String get youveRejectedThisApplication => 'Odbili ste ovu prijavu';
  @override
  String get landlordDetails => 'Detalji o najmodavcu';
  @override
  String get landlordName => 'Ime najmodavca';
  @override
  String get downloadRentAgreement => 'Preuzmi ugovor o najmu';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Prihvaćam '),
      toc('Uvjete i odredbe'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Napomena: '),
      note(
        'Preuzmite i pročitajte ugovor. Potpisani ugovor pošaljite najmodavcu putem WhatsAppa ili e-pošte.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Napomena: '),
      note(
        'Najmodavac odobrava prijavu kada najmoprimac uplati polog, režije i jednomjesečnu predujam najamnine.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Ugovor o najmu (PDF) '),
          complete('Cijeli ugovor'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Napomena: '),
      note(
        'Najmodavac odobrava prijavu kada najmoprimac uplati polog, režije i jednomjesečnu predujam najamnine.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Popis prijava';
  @override
  String get viewDetails => 'Pogledaj detalje';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Početna';
  @override
  String get dashboard => 'Nadzorna ploča';
  @override
  String get tenants => 'Najmoprimci';
  @override
  String get maintenance => 'Održavanje';
  @override
  String get maintenanceList => 'Popis održavanja';
  @override
  String get maintenanceReport => 'Izvješće o održavanju';
  @override
  String get labor => 'Radna snaga';
  @override
  String get applications => 'Prijave';
  @override
  String get rentInvitation => 'Poziv za najam';
  @override
  String get payment => 'Plaćanje';
  @override
  String get rentPayment => 'Uplata najamnine';
  @override
  String get depositUtilityPayment => 'Uplata pologa i režija';
  @override
  String get refundRequest => 'Zahtjev za povrat novca';
  @override
  String get withdrawRequest => 'Zahtjev za isplatu';
  @override
  String get myProperty => 'Moja nekretnina';
  @override
  String get myRent => 'Moj najam';
  @override
  String get wishlist => 'Lista želja';
  @override
  String get properties => 'Nekretnine';
  @override
  String get allProperties => 'Sve nekretnine';
  @override
  String get totalPropery => 'Ukupno nekretnina';
  @override
  String get occupied => 'Zauzet';
  @override
  String get vacant => 'Slobodan';
  @override
  String get accounting => 'Računovodstvo';
  @override
  String get totalIncome => 'Ukupni prihodi';
  @override
  String get totalExpense => 'Ukupni troškovi';
  @override
  String get currentBalance => 'Trenutno stanje';
  @override
  String get totalWithdrawal => 'Ukupno (isplata)';
  @override
  String get totalProperties => 'Ukupno nekretnina';
  @override
  String get totalTenant => 'Ukupno najmoprimaca';
  @override
  String get totalRentPaid => 'Ukupno plaćeno najamnine';
  @override
  String get totalRentDue => 'Ukupno dospjelo najamnine';
  @override
  String get totalApplication => 'Ukupno prijava';
  @override
  String get pendingApplication => 'Prijave na čekanju';
  @override
  String get processingApplication => 'Prijave u obradi';
  @override
  String get approveApplication => 'Odobri prijavu';
  @override
  String get rejectApplication => 'Odbij prijavu';
  @override
  String get maintenanceCost => 'Troškovi održavanja';
  @override
  String get transactionSummary => 'Sažetak transakcija';
  @override
  String get maintenanceRequest => 'Zahtjev za održavanje';
  @override
  String get notifications => 'Obavijesti';
  @override
  String get myProperties => 'Moje nekretnine';
  @override
  String get recommendationProperties => 'Preporučene nekretnine';
  @override
  String get laborList => 'Popis radne snage';
  @override
  String get addLabor => 'Dodaj radnu snagu';
  @override
  String get laborDetails => 'Detalji o radnoj snazi';
  @override
  String get laborSalary => 'Plaća radne snage';
  @override
  String get editLabor => 'Uredi radnu snagu';
  @override
  String get addNewLabor => 'Dodaj novu radnu snagu';
  @override
  String get enterAmount => 'Unesi iznos';
  @override
  String get maintenanceDetails => 'Detalji o održavanju';
  @override
  String get laborName => 'Ime radnika';
  @override
  String get comment => 'Komentar';
  @override
  String get image => 'Slika';
  @override
  String get complete => 'Dovršeno';
  @override
  String get details => 'Detalji';
  @override
  String get title => 'Naslov';
  @override
  String get date => 'Datum';
  @override
  String get reason => 'Razlog';
  @override
  String get edit => 'Uredi';
  @override
  String get property => 'Nekretnina';
  @override
  String get completeYourProfile => 'Dovršite svoj profil';
  @override
  String get profileImage => 'Slika profila';
  @override
  String get imagePickHint =>
      'Samo JPEG i PNG slike, maksimalne veličine 120x120 piksela.';
  @override
  String get invoiceId => 'ID računa';
  @override
  String get depositAmount => 'Iznos pologa';
  @override
  String get landlordPhone => 'Telefon najmodavca';
  @override
  String get rentalAdvance => 'Najamnina (predujam)';
  @override
  String get totalAmount => 'Ukupni iznos';
  @override
  String get rentalAmount => 'Iznos najamnine';
  @override
  String get adminCharge => 'Administrativna naknada';
  @override
  String get editAccount => 'Uredi račun';
  @override
  String get addNewAccount => 'Dodaj novi račun';
  @override
  String get transactionId => 'ID transakcije';
  @override
  String get transactionType => 'Vrsta transakcije';
  @override
  String get requestDate => 'Datum zahtjeva';
  @override
  String get amount => 'Iznos';
  @override
  String get fee => 'Naknada';
  @override
  String get paymentStatus => 'Status plaćanja';
  @override
  String get generatedTime => 'Vrijeme generiranja';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Ovo je sistemski generirano izvješće o '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Povijest isplata';
  @override
  String get history => 'Povijest';
  @override
  String get withdrawAmount => 'Iznos isplate';
  @override
  String get availableBalance => 'Dostupno stanje';
  @override
  String get withdrawCharge => 'Naknada za isplatu';
  @override
  String get paymentMethod => 'Način plaćanja';
  @override
  String get requestSendSuccess => 'Zahtjev je uspješno poslan!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Potvrda o uplati je uspješno poslana.';
  @override
  String get refundReason => 'Razlog povrata novca';
  @override
  String get note => 'Napomena';
  @override
  String get refundReceiveSuccess => 'Povrat novca je uspješno primljen.';
  @override
  String get downloadPaymentReceipt => 'Preuzmi potvrdu o uplati';
  @override
  String get invoice => 'Račun';
  @override
  String get selectPropertyToSeeInvoice =>
      'Odaberite nekretninu da biste vidjeli broj računa...';
  @override
  String get bankAccName => 'Ime vlasnika bankovnog računa';
  @override
  String get bankName => 'Ime banke';
  @override
  String get bankAccNum => 'Broj bankovnog računa';
  @override
  String get thankYou => 'Hvala vam!';
  @override
  String get basicInfo => 'Osnovne informacije';
  @override
  String get descriptionPricing => 'Opis i cijene';
  @override
  String get contact => 'Kontakt';
  @override
  String get photos => 'Fotografije';
  @override
  String get successfullySubmitted => 'Uspješno poslano!';
  @override
  String get editProperty => 'Uredi nekretninu';
  @override
  String get addNewProperty => 'Dodaj novu nekretninu';
  @override
  String get propertyManageRequestSuccess => 'Vaš oglas je poslan na pregled.';
  @override
  String get postAnotherProperty => 'Objavi drugu nekretninu';
  @override
  String get browseYourProperty => 'Pretraži svoju nekretninu';
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
  String get whatWouldYouLikeToPost => 'Što biste željeli objaviti?';
  @override
  String get category => 'Kategorija';
  @override
  String get invalidCategory => 'Neispravna kategorija';
  @override
  String get unitNumber => 'Broj jedinice';
  @override
  String get sqft => 'kv. ft.';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Veličina nekretnine mora biti veća od nule';
  @override
  String get whatAreTheFacility => 'Koji su sadržaji?';
  @override
  String get whatAreTheAmenity => 'Koje su pogodnosti?';
  @override
  String get parkingLot => 'Parkiralište';
  @override
  String get houseType => 'Vrsta kuće';
  @override
  String get value => 'Vrijednost';
  @override
  String get unitLotSize => 'Veličina jedinice / parcele';
  @override
  String get landSize => 'Veličina zemljišta';
  @override
  String get acres => 'akri';
  @override
  String get roomSize => 'Veličina sobe';
  @override
  String get askTenantPreference => 'Koje su vaše preferencije za najmoprimca?';
  @override
  String get couple => 'Par';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Opišite ${propertyType}';
  @override
  String get adTitle => 'Naslov oglasa';
  @override
  String get minimumRentalPeriod => 'Minimalno razdoblje najma';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Broj';
  @override
  String get hideOrDisplayEmail => 'Sakrij ili prikaži adresu e-pošte';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Hvala vam što ste objavili na ${appName}!';
  @override
  String get propertyList => 'Popis nekretnina';
  @override
  String get newInviteRent => 'Novi poziv za najam';
  @override
  String get rentAgreement => 'Ugovor o najmu';
  @override
  String get rentDetails => 'Detalji najma';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Napomena: '),
      note('Pričekajte da najmoprimac prihvati poziv.'),
    ],
  );
  @override
  String get rent => 'Najam';
  @override
  String get editTenant => 'Uredi najmoprimca';
  @override
  String get addNewTenant => 'Dodaj novog najmoprimca';
  @override
  String get shareInstallLink => 'Podijeli vezu za instalaciju';
  @override
  String get tenantList => 'Popis najmoprimaca';
  @override
  String get editMaintenanceRequest => 'Uredi zahtjev za održavanje';
  @override
  String get addNewMaintenance => 'Dodaj novo održavanje';
  @override
  String get landlordId => 'ID najmodavca';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Napomena: '),
      note(
        'Vaš ugovor je na pregledu. Pričekajte dok najmodavac ne odobri vaš najam.',
      ),
    ],
  );
  @override
  String get editReview => 'Uredi recenziju';
  @override
  String get writeAReview => 'Napiši recenziju';
  @override
  String get selectRating => 'Odaberite ocjenu';
  @override
  String get enterYourOpinion => 'Unesite svoje mišljenje';
  @override
  String get askToEnterReviewMsg => 'Molimo unesite poruku recenzije';
  @override
  String get pressBackAgainToExit =>
      'Pritisnite ponovno tipku Natrag za izlaz.';
  @override
  String get selectPaymentMethod => 'Odaberite način plaćanja';
  @override
  String get filter => 'Filtriraj';
  @override
  String get perMonth => '/mjesečno';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Pretražite bilo što u ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsHr implements TranslationsExceptionsEn {
  _TranslationsExceptionsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong =>
      'Nešto je pošlo po zlu, molimo pokušajte ponovno';
  @override
  String get noNidPassport => 'Nije dostavljena slika NID/Putovnice.';
  @override
  String get noRentPropertyFound =>
      'Za ovog najmoprimca nije pronađena nekretnina za iznajmljivanje.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Nije pronađena nekretnina!\nMolimo pokušajte s drugim ključnim riječima';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Nije pronađen plan pretplate!\nMolimo osvježite stranicu i pokušajte ponovno.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Neispravni podaci ${dataType}! Molimo osvježite stranicu i pokušajte ponovno.';
  @override
  String get invalidDownloadUrl => 'Neispravan URL za preuzimanje!';
  @override
  String failedToSaveFile({required String error}) =>
      'Spremanje datoteke nije uspjelo! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Pogreška pri otvaranju datoteke! ${error}';
  @override
  String get noVehicleInfoProvided => 'Nisu navedene informacije o vozilu.';
  @override
  String get yourApplicationRejected => 'Vaša prijava je odbijena';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintHr
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintHr._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintHr noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintHr._(_root);
  @override
  String get noImageProvided => 'Slika nije priložena';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundHr
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundHr._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Nije pronađen sigurnosni polog!\nMolimo, sigurnosne pologe možete vidjeti kada budu dostupni';
  @override
  String get noRentPaymentFound =>
      'Nije pronađena uplata najamnine!\nMolimo, uplate najamnine možete vidjeti kada budu dostupne';
  @override
  String get transactionSummaryApiException =>
      'Nije uspjelo dohvaćanje sažetka transakcija.';
  @override
  String get noWithdrawRequestFound =>
      'Nije pronađen zahtjev!\nMolimo pokušajte stvoriti zahtjev za isplatu da biste ga vidjeli ovdje.';
  @override
  String get withdrawRequestNotApproved =>
      'Ovaj zahtjev za isplatu nije odobren!.';
  @override
  String get nonZeroError => 'Molimo unesite valjani iznos veći od nule.';
  @override
  String minAmountError({required String minValue}) =>
      'Iznos mora biti najmanje ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Iznos ne smije premašiti ${maxValue}.';
  @override
  String get selectPaymentMethodHint => 'Prvo odaberite način plaćanja.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundHr
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundHr._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintHr refundRequestHint =
      _TranslationsExceptionsRefundRequestHintHr._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Molimo odaberite broj ${value}';
  @override
  String get invalidDateRange => 'Neispravan raspon datuma.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} mora biti veće od nule.';
  @override
  late final _TranslationsExceptionsEditPropertyHr editProperty =
      _TranslationsExceptionsEditPropertyHr._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationHr rentInvitation =
      _TranslationsExceptionsRentInvitationHr._(_root);
  @override
  String get notenantFoundList =>
      'Nema najmoprimaca!\nMolimo pokušajte dodati najmoprimca da biste ga vidjeli ovdje.';
  @override
  String get noFeaturesProvided => 'Nisu navedene značajke.';
  @override
  String get noNotificationFound =>
      'Nema dostupnih obavijesti.\nOvdje možete vidjeti svoje obavijesti kada budu dostupne.';
}

// Path: prompt
class _TranslationsPromptHr implements TranslationsPromptEn {
  _TranslationsPromptHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutHr logout = _TranslationsPromptLogoutHr._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationHr application =
      _TranslationsPromptApplicationHr._(_root);
  @override
  late final _TranslationsPromptLaborHr labor = _TranslationsPromptLaborHr._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestHr maintenanceRequest =
      _TranslationsPromptMaintenanceRequestHr._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodHr withdrawMethod =
      _TranslationsPromptWithdrawMethodHr._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesHr unsavedChanges =
      _TranslationsPromptUnsavedChangesHr._(_root);
  @override
  late final _TranslationsPromptPropertyHr property =
      _TranslationsPromptPropertyHr._(_root);
  @override
  late final _TranslationsPromptRentInvitationHr rentInvitation =
      _TranslationsPromptRentInvitationHr._(_root);
  @override
  late final _TranslationsPromptSessionExpiredHr sessionExpired =
      _TranslationsPromptSessionExpiredHr._(_root);
  @override
  late final _TranslationsPromptNoInternetHr noInternet =
      _TranslationsPromptNoInternetHr._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerHr permissionHandler =
      _TranslationsPromptPermissionHandlerHr._(_root);
  @override
  late final _TranslationsPromptImagePickerHr imagePicker =
      _TranslationsPromptImagePickerHr._(_root);
  @override
  late final _TranslationsPromptVerificationDialogHr verificationDialog =
      _TranslationsPromptVerificationDialogHr._(_root);
  @override
  late final _TranslationsPromptNotificationHr notification =
      _TranslationsPromptNotificationHr._(_root);
}

// Path: form
class _TranslationsFormHr implements TranslationsFormEn {
  _TranslationsFormHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameHr fullName =
      _TranslationsFormFullNameHr._(_root);
  @override
  late final _TranslationsFormEmailHr email = _TranslationsFormEmailHr._(_root);
  @override
  late final _TranslationsFormPasswordHr password =
      _TranslationsFormPasswordHr._(_root);
  @override
  late final _TranslationsFormConfirmPasswordHr confirmPassword =
      _TranslationsFormConfirmPasswordHr._(_root);
  @override
  late final _TranslationsFormMobileNumberHr mobileNumber =
      _TranslationsFormMobileNumberHr._(_root);
  @override
  late final _TranslationsFormAddress1Hr address1 =
      _TranslationsFormAddress1Hr._(_root);
  @override
  late final _TranslationsFormAddress2Hr address2 =
      _TranslationsFormAddress2Hr._(_root);
  @override
  late final _TranslationsFormPostalCodeHr postalCode =
      _TranslationsFormPostalCodeHr._(_root);
  @override
  late final _TranslationsFormCityHr city = _TranslationsFormCityHr._(_root);
  @override
  late final _TranslationsFormStateHr state = _TranslationsFormStateHr._(_root);
  @override
  late final _TranslationsFormCountryHr country = _TranslationsFormCountryHr._(
    _root,
  );
  @override
  late final _TranslationsFormOtpHr otp = _TranslationsFormOtpHr._(_root);
  @override
  late final _TranslationsFormTitleHr title = _TranslationsFormTitleHr._(_root);
  @override
  late final _TranslationsFormDateHr date = _TranslationsFormDateHr._(_root);
  @override
  late final _TranslationsFormReasonHr reason = _TranslationsFormReasonHr._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodHr withdrawMethod =
      _TranslationsFormWithdrawMethodHr._(_root);
  @override
  late final _TranslationsFormFileFieldHr fileField =
      _TranslationsFormFileFieldHr._(_root);
  @override
  late final _TranslationsFormNoteHr note = _TranslationsFormNoteHr._(_root);
  @override
  late final _TranslationsFormGenderHr gender = _TranslationsFormGenderHr._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldHr anyField =
      _TranslationsFormAnyFieldHr._(_root);
  @override
  late final _TranslationsFormAnyDropdownHr anyDropdown =
      _TranslationsFormAnyDropdownHr._(_root);
}

// Path: action
class _TranslationsActionHr implements TranslationsActionEn {
  _TranslationsActionHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Dalje';
  @override
  String get getStarted => 'Počni';
  @override
  String get skip => 'Preskoči';
  @override
  String get select => 'Odaberi';
  @override
  String get save => 'Spremi';
  @override
  String get signIn => 'Prijava';
  @override
  String get signUp => 'Registracija';
  @override
  String get kContinue => 'Nastavi';
  @override
  String get clearAll => 'Očisti sve';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Pošalji';
  @override
  String get pay => 'Plati';
  @override
  String get remove => 'Ukloni';
  @override
  String get goBack => 'Natrag';
  @override
  String get buyNow => 'Kupi sada';
  @override
  String get no => 'Ne';
  @override
  String get open => 'Otvori';
  @override
  String get addProperty => 'Dodaj nekretninu';
  @override
  String get process => 'Obradi';
  @override
  String get approve => 'Odobri';
  @override
  String get reject => 'Odbij';
  @override
  String get viewRent => 'Pogledaj najam';
  @override
  String get openNavigationMenu => 'Otvori navigacijski izbornik';
  @override
  String get seeAll => 'Vidi sve';
  @override
  String get update => 'Ažuriraj';
  @override
  String get printTransaction => 'Ispiši transakciju';
  @override
  String get payoutRequest => 'Zahtjev za isplatu';
  @override
  String get addNew => '+ Dodaj novo';
  @override
  String get sendRequest => 'Pošalji zahtjev';
  @override
  String get print => 'Ispiši';
  @override
  String get requestForRefund => 'Zahtjev za povrat novca';
  @override
  String get previous => 'Prethodno';
  @override
  String get delete => 'Izbriši';
  @override
  String get applyProperty => 'Prijavi se za nekretninu';
  @override
  String get viewApplication => 'Pogledaj prijavu';
  @override
  String get inviteTenant => 'Pozovi najmoprimca';
  @override
  String get inviteRent => 'Pozovi za najam';
  @override
  String get cancel => 'Otkaži';
  @override
  String get accept => 'Prihvati';
  @override
  String get submit => 'Podnesi';
  @override
  String get yes => 'Da';
  @override
  String get okay => 'U redu';
  @override
  String get confirm => 'Potvrdi';
  @override
  String get apply => 'Primijeni';
  @override
  String get reset => 'Resetiraj';
  @override
  String get retry => 'Pokušaj ponovno';
  @override
  String get viewAll => 'Pogledaj sve';
}

// Path: pages
class _TranslationsPagesHr implements TranslationsPagesEn {
  _TranslationsPagesHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageHr language =
      _TranslationsPagesLanguageHr._(_root);
  @override
  late final _TranslationsPagesOnboardHr onboard =
      _TranslationsPagesOnboardHr._(_root);
  @override
  late final _TranslationsPagesSignInHr signIn = _TranslationsPagesSignInHr._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordHr forgotPassword =
      _TranslationsPagesForgotPasswordHr._(_root);
  @override
  late final _TranslationsPagesOtpVerificationHr otpVerification =
      _TranslationsPagesOtpVerificationHr._(_root);
  @override
  late final _TranslationsPagesResetPasswordHr resetPassword =
      _TranslationsPagesResetPasswordHr._(_root);
  @override
  late final _TranslationsPagesSignUpHr signUp = _TranslationsPagesSignUpHr._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeHr welcome =
      _TranslationsPagesWelcomeHr._(_root);
  @override
  late final _TranslationsPagesAboutUsHr aboutUs =
      _TranslationsPagesAboutUsHr._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsHr termsAndConditions =
      _TranslationsPagesTermsAndConditionsHr._(_root);
  @override
  late final _TranslationsPagesNotificationListHr notificationList =
      _TranslationsPagesNotificationListHr._(_root);
  @override
  late final _TranslationsPagesContactUsHr contactUs =
      _TranslationsPagesContactUsHr._(_root);
  @override
  late final _TranslationsPagesCancelRentingHr cancelRenting =
      _TranslationsPagesCancelRentingHr._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsHr invoiceDetails =
      _TranslationsPagesInvoiceDetailsHr._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentHr offlinePayment =
      _TranslationsPagesOfflinePaymentHr._(_root);
  @override
  late final _TranslationsPagesPaymentStatusHr paymentStatus =
      _TranslationsPagesPaymentStatusHr._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsHr propertyDetails =
      _TranslationsPagesPropertyDetailsHr._(_root);
  @override
  late final _TranslationsPagesSearchHr search = _TranslationsPagesSearchHr._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanHr subscriptionPlan =
      _TranslationsPagesSubscriptionPlanHr._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportHr
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportHr._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsHr implements TranslationsEnumsEn {
  _TranslationsEnumsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusHr propertyStatus =
      _TranslationsEnumsPropertyStatusHr._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeHr propertyType =
      _TranslationsEnumsPropertyTypeHr._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusHr applicationStatus =
      _TranslationsEnumsApplicationStatusHr._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusHr myRentStatus =
      _TranslationsEnumsMyRentStatusHr._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusHr maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusHr._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeHr tenantProfileType =
      _TranslationsEnumsTenantProfileTypeHr._(_root);
  @override
  late final _TranslationsEnumsTenantTypeHr tenantType =
      _TranslationsEnumsTenantTypeHr._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusHr paymentStatus =
      _TranslationsEnumsPaymentStatusHr._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsHr paymentOptions =
      _TranslationsEnumsPaymentOptionsHr._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeHr paymentType =
      _TranslationsEnumsPaymentTypeHr._(_root);
  @override
  late final _TranslationsEnumsGenderHr gender = _TranslationsEnumsGenderHr._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationHr ecRelation =
      _TranslationsEnumsEcRelationHr._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeHr vehicleType =
      _TranslationsEnumsVehicleTypeHr._(_root);
  @override
  late final _TranslationsEnumsSortByHr sortBy = _TranslationsEnumsSortByHr._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeHr residentialType =
      _TranslationsEnumsResidentialTypeHr._(_root);
  @override
  late final _TranslationsEnumsFloorRangeHr floorRange =
      _TranslationsEnumsFloorRangeHr._(_root);
  @override
  late final _TranslationsEnumsFurnishingsHr furnishings =
      _TranslationsEnumsFurnishingsHr._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeHr commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeHr._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeHr landPropertyType =
      _TranslationsEnumsLandPropertyTypeHr._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeHr residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeHr._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodHr minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodHr._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterHr dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterHr._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileHr
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Br. mob.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoHr
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informacije o vozilima';
  @override
  String get optional => 'Informacije o vozilima (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoHr
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Registarski broj vozila';
  @override
  String get short => 'Registarski broj';
  @override
  String get alt => 'Broj tablice';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintHr
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Nije pronađena prijava!\n${subject} bit će prikazano ovdje kada bude dostupno.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsHr subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsHr._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintHr
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Nije pronađena nekretnina!\nMolimo pokušajte dodati nekretninu da biste je vidjeli ovdje.';
  @override
  String get tenantRecommended =>
      'Nisu pronađene preporučene nekretnine\nMolimo pokušajte ponovno kasnije.';
  @override
  String get tenantAllProperty =>
      'Nekretnine nisu dostupne\nMolimo pokušajte ponovno kasnije.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundHr
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nije pronađeno ${status} održavanje.';
  @override
  String get tenant =>
      'Održavanje nije pronađeno! Možete stvoriti zahtjev za održavanje da biste ga vidjeli ovdje.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundHr
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nije pronađen ${status} zahtjev za povrat novca!\nZahtjev za povrat novca možete vidjeti ovdje kada bude dostupan.';
  @override
  String get tenant =>
      'Nije pronađen zahtjev za povrat novca!\nMožete stvoriti zahtjev za povrat novca da biste ga vidjeli ovdje.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintHr
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Najmoprimac će odobriti povrat novca kada dobije novac natrag';
  @override
  String get tenantReqSuccess =>
      'Pregledat ćemo zahtjev za povrat novca i odobriti ga u roku od 24 sata.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyHr
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Najamnina nekretnine se mijenja. Mora biti valjana (na snazi) samo za sljedeći mjesec uplate najamnine.';
  @override
  String get deleteOnRent =>
      'Vašu nekretninu već iznajmljuje najmoprimac. Ne možete je izbrisati dok prvo ne uklonite najmoprimca';
  @override
  String get alreayRented =>
      'Ova nekretnina je već iznajmljena. Molimo pokušajte ponovno kasnije.\nIli se možete obratiti najmodavcu za više informacija.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationHr
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Nije pronađen poziv za najam!\nMolimo pokušajte stvoriti poziv za najam da biste ga vidjeli ovdje.';
  @override
  String get tenantNoRentInvitation =>
      'Nije pronađen poziv za najam!\nOvdje možete vidjeti poziv za najam kada bude dostupan.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutHr implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Jeste li sigurni da se želite odjaviti?';
}

// Path: prompt.application
class _TranslationsPromptApplicationHr
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Zašto odbijate ovu prijavu?';
  @override
  late final _TranslationsPromptApplicationApplicationSentHr applicationSent =
      _TranslationsPromptApplicationApplicationSentHr._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborHr implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteHr delete =
      _TranslationsPromptLaborDeleteHr._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestHr
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Zašto se ovaj zahtjev odbija?';
  @override
  String get processTitle =>
      'Jeste li sigurni da obrađujete ovaj zahtjev za održavanje?';
  @override
  String get completeTitle => 'Je li posao završen?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodHr
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Izbrisati način isplate?';
  @override
  String get deleteDescription =>
      'Jeste li sigurni da želite izbrisati ovaj način isplate?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesHr
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Jeste li sigurni da se želite vratiti?';
  @override
  String get message => 'Promijenjena polja neće biti spremljena!';
}

// Path: prompt.property
class _TranslationsPromptPropertyHr implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteHr delete =
      _TranslationsPromptPropertyDeleteHr._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationHr
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveHr
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveHr._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptHr tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptHr._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredHr
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sesija istekla';
  @override
  String get message => 'Vaša je sesija istekla. Molimo prijavite se ponovno';
  @override
  String get action => 'Prijava';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetHr
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nema internetske veze';
  @override
  String get message =>
      'Molimo provjerite svoju Wi-Fi vezu ili mobilnu mrežu i pokušajte ponovno';
  @override
  String get action => 'Pokušajte ponovno';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerHr
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Potrebna dozvola!';
  @override
  String get message =>
      'Morate dodijeliti dopuštenja u postavkama aplikacije. Želite li sada otvoriti postavke?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerHr
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Odaberite opciju';
  @override
  String get gallery => 'Galerija';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogHr
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Potvrdite svoju e-poštu';
  @override
  String get message => 'Poslali smo e-mail s kodom za potvrdu';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} na ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationHr
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Očistiti obavijesti?';
  @override
  String get clearMessage =>
      'Jeste li sigurni da želite očistiti sve obavijesti?';
}

// Path: form.fullName
class _TranslationsFormFullNameHr implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Unesite ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsHr errors =
      _TranslationsFormFullNameErrorsHr._(_root);
}

// Path: form.email
class _TranslationsFormEmailHr implements TranslationsFormEmailEn {
  _TranslationsFormEmailHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Unesite svoj ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsHr errors =
      _TranslationsFormEmailErrorsHr._(_root);
}

// Path: form.password
class _TranslationsFormPasswordHr implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsHr errors =
      _TranslationsFormPasswordErrorsHr._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordHr
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Potvrdite ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsHr errors =
      _TranslationsFormConfirmPasswordErrorsHr._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberHr
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsHr errors =
      _TranslationsFormMobileNumberErrorsHr._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Hr implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Hr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Broj kuće i naziv ulice';
  @override
  late final _TranslationsFormAddress1ErrorsHr errors =
      _TranslationsFormAddress1ErrorsHr._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Hr implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Hr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Stan, apartman, jedinica, itd.';
  @override
  late final _TranslationsFormAddress2ErrorsHr errors =
      _TranslationsFormAddress2ErrorsHr._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeHr implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Unesite ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsHr errors =
      _TranslationsFormPostalCodeErrorsHr._(_root);
}

// Path: form.city
class _TranslationsFormCityHr implements TranslationsFormCityEn {
  _TranslationsFormCityHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Unesite naziv ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsHr errors =
      _TranslationsFormCityErrorsHr._(_root);
}

// Path: form.state
class _TranslationsFormStateHr implements TranslationsFormStateEn {
  _TranslationsFormStateHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Unesite naziv ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsHr errors =
      _TranslationsFormStateErrorsHr._(_root);
}

// Path: form.country
class _TranslationsFormCountryHr implements TranslationsFormCountryEn {
  _TranslationsFormCountryHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Odaberite ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsHr errors =
      _TranslationsFormCountryErrorsHr._(_root);
}

// Path: form.otp
class _TranslationsFormOtpHr implements TranslationsFormOtpEn {
  _TranslationsFormOtpHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsHr errors =
      _TranslationsFormOtpErrorsHr._(_root);
}

// Path: form.title
class _TranslationsFormTitleHr implements TranslationsFormTitleEn {
  _TranslationsFormTitleHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Naslov';
  @override
  String get hint => 'Unesite naslov';
  @override
  late final _TranslationsFormTitleErrorsHr errors =
      _TranslationsFormTitleErrorsHr._(_root);
}

// Path: form.date
class _TranslationsFormDateHr implements TranslationsFormDateEn {
  _TranslationsFormDateHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Odaberite ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsHr errors =
      _TranslationsFormDateErrorsHr._(_root);
}

// Path: form.reason
class _TranslationsFormReasonHr implements TranslationsFormReasonEn {
  _TranslationsFormReasonHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Razlog';
  @override
  String get hint => 'Unesite razlog';
  @override
  late final _TranslationsFormReasonErrorsHr errors =
      _TranslationsFormReasonErrorsHr._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodHr
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Odaberite ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsHr errors =
      _TranslationsFormWithdrawMethodErrorsHr._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldHr implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Prenesite ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsHr errors =
      _TranslationsFormFileFieldErrorsHr._(_root);
}

// Path: form.note
class _TranslationsFormNoteHr implements TranslationsFormNoteEn {
  _TranslationsFormNoteHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Unesite ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsHr errors =
      _TranslationsFormNoteErrorsHr._(_root);
}

// Path: form.gender
class _TranslationsFormGenderHr implements TranslationsFormGenderEn {
  _TranslationsFormGenderHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Odaberite ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsHr errors =
      _TranslationsFormGenderErrorsHr._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldHr implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Unesite ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsHr errors =
      _TranslationsFormAnyFieldErrorsHr._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownHr implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Odaberite ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsHr errors =
      _TranslationsFormAnyDropdownErrorsHr._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageHr implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardHr implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataHr onboardData =
      _TranslationsPagesOnboardOnboardDataHr._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInHr implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Dobrodošli natrag';
  @override
  String get subtitle =>
      'Prijavite se sada i započnite nevjerojatno putovanje.';
  @override
  late final _TranslationsPagesSignInExtraHr extra =
      _TranslationsPagesSignInExtraHr._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordHr
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Zaboravili ste lozinku';
  @override
  String get subtitle => 'Unesite svoju e-mail adresu za oporavak lozinke.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationHr
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifikacija';
  @override
  String subtitle({required String email}) =>
      'Četveroznamenkasti pin je poslan na vašu e-mail adresu. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraHr extra =
      _TranslationsPagesOtpVerificationExtraHr._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordHr
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Resetiranje lozinke';
  @override
  String get subtitle =>
      'Resetirajte lozinku za oporavak i prijavu na svoj račun';
  @override
  late final _TranslationsPagesResetPasswordExtraHr extra =
      _TranslationsPagesResetPasswordExtraHr._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpHr implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Stvorite račun';
  @override
  String get subtitle => 'Prijavite se sada i započnite nevjerojatno putovanje';
  @override
  late final _TranslationsPagesSignUpExtraHr extra =
      _TranslationsPagesSignUpExtraHr._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeHr implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tko ste vi?';
  @override
  String get subtitle => 'Odaberite opciju u nastavku.';
  @override
  late final _TranslationsPagesWelcomeExtraHr extra =
      _TranslationsPagesWelcomeExtraHr._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsHr implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsHr
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListHr
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Obavijesti';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsHr implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraHr extra =
      _TranslationsPagesContactUsExtraHr._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingHr
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Zašto ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormHr form =
      _TranslationsPagesCancelRentingFormHr._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsHr
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentHr
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Izvanmrežno plaćanje';
  @override
  late final _TranslationsPagesOfflinePaymentFormHr form =
      _TranslationsPagesOfflinePaymentFormHr._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraHr extra =
      _TranslationsPagesOfflinePaymentExtraHr._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusHr
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessHr success =
      _TranslationsPagesPaymentStatusSuccessHr._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailHr fail =
      _TranslationsPagesPaymentStatusFailHr._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsHr
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraHr extra =
      _TranslationsPagesPropertyDetailsExtraHr._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchHr implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pretraživanje';
  @override
  late final _TranslationsPagesSearchExtraHr extra =
      _TranslationsPagesSearchExtraHr._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanHr
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Odaberite svoj plan';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraHr extra =
      _TranslationsPagesSubscriptionPlanExtraHr._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportHr
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Ukupni troškovi održavanja: '),
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
class _TranslationsEnumsPropertyStatusHr
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Sve nekretnine';
  @override
  String get pending => 'Na čekanju';
  @override
  String get active => 'Aktivno';
  @override
  String get inactive => 'Neaktivno';
  @override
  String get rejected => 'Odbijeno';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeHr
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Stan/Apartman';
  @override
  String get house => 'Kuća';
  @override
  String get commercialProperty => 'Poslovni prostor';
  @override
  String get land => 'Zemljište';
  @override
  String get room => 'Soba';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusHr
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Sve';
  @override
  String get pending => 'Na čekanju';
  @override
  String get processing => 'U obradi';
  @override
  String get approved => 'Odobreno';
  @override
  String get rejected => 'Odbijeno';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusHr
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Na čekanju';
  @override
  String get processing => 'U obradi';
  @override
  String get active => 'Aktivno';
  @override
  String get expired => 'Isteklo';
  @override
  String get cancelled => 'Otkazano';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusHr
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Na čekanju';
  @override
  String get processing => 'U obradi';
  @override
  String get rejected => 'Odbijeno';
  @override
  String get completed => 'Dovršeno';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeHr
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Privatna osoba';
  @override
  String get company => 'Tvrtka';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeHr implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Novi najmoprimac';
  @override
  String get activeTenant => 'Aktivni najmoprimac';
  @override
  String get expiredTenant => 'Istekli najmoprimac';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusHr
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Sve';
  @override
  String get pending => 'Na čekanju';
  @override
  String get paid => 'Plaćeno';
  @override
  String get unpaid => 'Neplaćeno';
  @override
  String get rejected => 'Odbijeno';
  @override
  String get refund => 'Povrat novca';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsHr
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Online plaćanje';
  @override
  String get offlinePayment => 'Izvanmrežno plaćanje';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeHr
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Sigurnosni polog';
  @override
  String get rentPayment => 'Uplata najamnine';
  @override
  String get subscription => 'Pretplata';
}

// Path: enums.gender
class _TranslationsEnumsGenderHr implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Muško';
  @override
  String get female => 'Žensko';
  @override
  String get other => 'Ostalo';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationHr implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Supruga';
  @override
  String get parent => 'Roditelj';
  @override
  String get friend => 'Prijatelj';
  @override
  String get brother => 'Brat';
  @override
  String get sister => 'Sestra';
  @override
  String get child => 'Dijete';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeHr
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Automobil';
  @override
  String get motorcycles => 'Motocikli';
  @override
  String get lorry => 'Kamion';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByHr implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Od najnižeg do najvišeg';
  @override
  String get highToLow => 'Od najvišeg do najnižeg';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeHr
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Stan';
  @override
  String get apartment => 'Apartman';
  @override
  String get condominium => 'Condominium';
  @override
  String get serviceResidence => 'Servisni apartman';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Duplex';
  @override
  String get townhouseCondo => 'Kuća u nizu';
  @override
  String get others => 'Ostalo';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeHr implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Visoko';
  @override
  String get medium => 'Srednje';
  @override
  String get low => 'Nisko';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsHr
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Potpuno namješteno';
  @override
  String get partiallyFurnished => 'Djelomično namješteno';
  @override
  String get notFurnished => 'Nije namješteno';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeHr
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Uredski prostor';
  @override
  String get retailSpace => 'Maloprodajni prostor';
  @override
  String get shopLot => 'Poslovni prostor';
  @override
  String get warehouseFactory => 'Skladište / Tvornica';
  @override
  String get hotelResort => 'Hotel / Odmaralište';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Ostalo';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeHr
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Stambeno';
  @override
  String get industrial => 'Industrijsko';
  @override
  String get agricultural => 'Poljoprivredno';
  @override
  String get commercial => 'Komercijalno';
  @override
  String get mixedDevelopment => 'Mješoviti razvoj';
  @override
  String get others => 'Ostalo';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeHr
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Condo / Servisni apartman / Penthouse';
  @override
  String get apartment => 'Apartman / Stan';
  @override
  String get house => 'Kuće';
  @override
  String get shoplot => 'Poslovni prostor';
  @override
  String get sharing => 'Dijeljenje kuće / stana';
  @override
  String get others => 'Ostalo';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodHr
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 mjeseci';
  @override
  String get oneYear => '1 godina';
  @override
  String get oneAndHalfYears => '1,5 godina';
  @override
  String get twoYears => '2 godine';
  @override
  String get twoAndHalfYears => '2,5 godine';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterHr
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Dnevno';
  @override
  String get weekly => 'Tjedno';
  @override
  String get monthly => 'Mjesečno';
  @override
  String get yearly => 'Godišnje';
  @override
  String get custom => 'Prilagođeno';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsHr
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Vaša prijava';
  @override
  String get landlord => 'Prijava najmoprimca';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentHr
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Prijava je uspješno poslana!';
  @override
  String get sucessDescription =>
      'Ovu prijavu možete vidjeti na popisu svojih prijava';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteHr
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Izbrisati radnika?';
  @override
  String get description =>
      'Jeste li sigurni da želite izbrisati ovog radnika?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteHr
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Izbrisati nekretninu?';
  @override
  String get message => 'Jeste li sigurni da želite izbrisati ovu nekretninu?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveHr
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Jeste li sigurni da želite odobriti ovaj najam?';
  @override
  String get description =>
      'Provjerite jeste li pregledali ugovor koji je potpisao najmoprimac.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptHr
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Jeste li sigurni da prihvaćate ovaj poziv?';
  @override
  String get description =>
      'Provjerite jeste li preuzeli pdf datoteku ugovora!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsHr
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite svoje ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsHr implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite svoju ${_root.common.email} adresu';
  @override
  String get invalid => '⦸ Neispravna e-pošta, molimo pokušajte ponovno';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsHr
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite svoju ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Lozinka mora imati najmanje ${count} znakova!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsHr
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite svoju ${_root.common.password}';
  @override
  String get notMatched => 'Potvrda lozinke se ne podudara!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsHr
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite svoj ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsHr
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite svoju ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsHr
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite svoju ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsHr
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite svoj ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsHr implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite naziv svog ${_root.common.city}.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsHr implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite naziv svog ${_root.common.state}.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsHr
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo odaberite svoju ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsHr implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite OTP.';
  @override
  String get invalid => 'Molimo unesite ispravan OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsHr implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite naslov';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsHr implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Molimo odaberite ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsHr
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite razlog';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsHr
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo odaberite ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsHr
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Molimo odaberite ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsHr implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Molimo unesite ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsHr
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo odaberite ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsHr
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Molimo unesite ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Molimo unesite valjani @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsHr
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Molimo odaberite ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Molimo odaberite valjani @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataHr
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Hr data1 =
      _TranslationsPagesOnboardOnboardDataData1Hr._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Hr data2 =
      _TranslationsPagesOnboardOnboardDataData2Hr._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Hr data3 =
      _TranslationsPagesOnboardOnboardDataData3Hr._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraHr
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Zapamti me';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Nemate račun? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraHr
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendHr codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendHr._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraHr
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogHr dialog =
      _TranslationsPagesResetPasswordExtraDialogHr._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraHr
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

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
class _TranslationsPagesWelcomeExtraHr
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Upravljajte svojim nekretninama';
  @override
  String get tenantTag => 'Prijavite se na svoj račun za iznajmljivanje';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraHr
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Poruka...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormHr
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonHr reason =
      _TranslationsPagesCancelRentingFormReasonHr._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormHr
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteHr paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteHr._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraHr
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Iznos uplate: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Ime vlasnika računa';
  @override
  String get accountNumber => 'Broj računa';
  @override
  String get swiftCode => 'SWIFT kod';
  @override
  String get branch => 'Podružnica';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Odaberite datoteke formata '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' ili '),
      fileType('DOC'),
      const TextSpan(text: '. Veličina datoteke '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessHr
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Pogledaj račun';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Pregledat ćemo uplatu i odobriti je u roku od 24 sata.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailHr
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Pokušajte ponovno';
  @override
  String get title => 'Ups! Plaćanje nije uspjelo';
  @override
  String get description =>
      'Vaša transakcija nije uspjela zbog nekih tehničkih pogrešaka.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraHr
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

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
      const TextSpan(text: 'Značajke '),
      fa('(Sadržaji i pogodnosti)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Odaberite razdoblje najma';
  @override
  String get writeAReview => '+ Napišite recenziju';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraHr
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Pretražite parcele, stanove, sobe...';
  @override
  String get noRecentSearch => 'Nemate nedavnih pretraživanja.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraHr
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Uplata pretplate uspješna.\nSada možete pristupiti pretplaćenim značajkama.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Hr
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Hr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pronađite svoju nekretninu';
  @override
  String get description =>
      'Olakšali smo pronalazak mjesta koje odgovara vašem životnom stilu - bilo da se radi o sobi, stanu ili kući.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Hr
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Hr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Stan u gradu';
  @override
  String get description =>
      'Štedimo vam vrijeme tako što vas brzo spajamo sa savršenom nekretninom prije nego što nestane, tako da možete uživati u svom novom domu ili besplatno oglasiti svoj vlastiti.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Hr
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Hr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vaša udobna kuća';
  @override
  String get description =>
      'Ako tražite mjesto za život, pogledajte naše kuće za iznajmljivanje. Imamo širok raspon kuća koje možete izabrati diljem zemlje.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendHr
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Kod će biti poslan za ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Ponovno pošalji kod'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogHr
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Uspješno promijenjeno!';
  @override
  String get subtitle =>
      'Prijavite se svojom novom lozinkom.\nPreusmjeravam vas na prijavu...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonHr
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Napišite razlog';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsHr errors =
      _TranslationsPagesCancelRentingFormReasonErrorsHr._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteHr
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Napomena o plaćanju (${_root.common.optional})';
  @override
  String get hint => 'Unesite neki tekst...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsHr
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsHr._(this._root);

  final TranslationsHr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Molimo unesite razlog otkazivanja najma';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsHr {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Jezik';
      case 'common.subscriptionPlan':
        return 'Plan pretplate';
      case 'common.contactUs':
        return 'Kontaktirajte nas';
      case 'common.termsAndConditions':
        return 'Uvjeti i odredbe';
      case 'common.aboutUs':
        return 'O nama';
      case 'common.logout':
        return 'Odjava';
      case 'common.editProfile':
        return 'Uredi profil';
      case 'common.fullName':
        return 'Puno ime';
      case 'common.email':
        return 'E-pošta';
      case 'common.mobileNumber':
        return 'Broj mobitela';
      case 'common.address':
        return 'Adresa';
      case 'common.postalCode':
        return 'Poštanski broj';
      case 'common.city':
        return 'Grad';
      case 'common.country':
        return 'Država';
      case 'common.state':
        return 'Država';
      case 'common.password':
        return 'Lozinka';
      case 'common.forgotPassword':
        return 'Zaboravili ste lozinku';
      case 'common.tenant':
        return 'Najmoprimac';
      case 'common.landlord':
        return 'Najmodavac';
      case 'common.cancelRenting':
        return 'Otkaži najam';
      case 'common.startDate':
        return 'Datum početka';
      case 'common.endDate':
        return 'Datum završetka';
      case 'common.fromDate':
        return 'Od datuma';
      case 'common.toDate':
        return 'Do datuma';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Popis banaka';
      case 'common.withdrawMethod':
        return 'Način isplate';
      case 'common.uploadPaymentReceipt':
        return 'Prenesi potvrdu o uplati';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Napomena: '),
            note(
              'Zahtjev za uplatu zahtijeva ručno odobrenje administratora u roku od',
            ),
            const TextSpan(text: ' '),
            duraion('24-48 sati'),
            const TextSpan(text: '.'),
          ],
        );
      case 'common.reviews':
        return 'Recenzije';
      case 'common.description':
        return 'Opis';
      case 'common.about':
        return 'O';
      case 'common.propertyTypes':
        return 'Vrste nekretnina';
      case 'common.features':
        return 'Značajke';
      case 'common.floorPlans':
        return 'Tlocrti';
      case 'common.buildingDetails':
        return 'Detalji zgrade';
      case 'common.buildingName':
        return 'Ime zgrade';
      case 'common.propertyAddress':
        return 'Adresa nekretnine';
      case 'common.completionYear':
        return 'Godina završetka';
      case 'common.lotNumber':
        return 'Broj parcele';
      case 'common.residentialType':
        return 'Vrsta stanovanja';
      case 'common.furnishings':
        return 'Namještaj';
      case 'common.floorRange':
        return 'Raspon katova';
      case 'common.bedrooms':
        return 'Spavaće sobe';
      case 'common.bathrooms':
        return 'Kupaonice';
      case 'common.propertySize':
        return 'Veličina nekretnine';
      case 'common.rentalPeriod':
        return 'Razdoblje najma';
      case 'common.securityDeposit':
        return 'Sigurnosni polog';
      case 'common.utilityBill':
        return 'Račun za režije';
      case 'common.facilities':
        return 'Sadržaji';
      case 'common.amenities':
        return 'Pogodnosti';
      case 'common.expiringReason':
        return 'Razlog isteka';
      case 'common.tenantDetails':
        return 'Detalji o najmoprimcu';
      case 'common.typeOfTenant':
        return 'Vrsta najmoprimca';
      case 'common.tenantName':
        return 'Ime najmoprimca';
      case 'common.nidPassport':
        return 'NID/Putovnica';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID najmoprimca';
      case 'common.dateOfBirth':
        return 'Datum rođenja';
      case 'common.gender':
        return 'Spol';
      case 'common.nominee':
        return 'Nominirani';
      case 'common.name':
        return 'Ime';
      case 'common.optional':
        return 'Neobavezno';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Br. mob.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Kontakt za hitne slučajeve';
      case 'common.relation':
        return 'Odnos';
      case 'common.relationWith':
        return '${_root.common.relation} S';
      case 'common.relationWithYou':
        return '${_root.common.relation} S tobom';
      case 'common.company':
        return 'Tvrtka';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM br.';
      case 'common.workplace':
        return 'Radno mjesto';
      case 'common.officePhoneNo':
        return 'Broj telefona ureda';
      case 'common.officeMobileNo':
        return 'Uredski ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Vozilo';
      case 'common.vehiclesInfo.plain':
        return 'Informacije o vozilima';
      case 'common.vehiclesInfo.optional':
        return 'Informacije o vozilima (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Vrsta';
      case 'common.vehicleRegistrationNo.normal':
        return 'Registarski broj vozila';
      case 'common.vehicleRegistrationNo.short':
        return 'Registarski broj';
      case 'common.vehicleRegistrationNo.alt':
        return 'Broj tablice';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Marka';
      case 'common.rentProperty':
        return 'Iznajmi nekretninu';
      case 'common.propertyDetails':
        return 'Detalji o nekretnini';
      case 'common.propertyId':
        return 'ID nekretnine';
      case 'common.propertyType':
        return 'Vrsta nekretnine';
      case 'common.propertyName':
        return 'Naziv nekretnine';
      case 'common.paymentDetails':
        return 'Detalji plaćanja';
      case 'common.monthlyRent':
        return 'Mjesečna najamnina';
      case 'common.thisMonthPayment':
        return 'Uplata za ovaj mjesec';
      case 'common.totalPaidRent':
        return 'Ukupno plaćena najamnina';
      case 'common.dueRent':
        return 'Dospjela najamnina';
      case 'common.rentStartDate':
        return 'Najam ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Najam ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'PDF ugovora o najmu';
      case 'common.noFile':
        return 'Nema datoteke';
      case 'common.tenantImageOp':
        return 'Slika najmoprimca ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Dodaj novo vozilo';
      case 'common.uploadNidPassport':
        return 'Učitaj NID/Putovnicu';
      case 'common.nidPassportUploadNote':
        return 'Bit će prihvaćene samo slike tipa datoteke. Ograničenje veličine datoteke do 2,5 MB.';
      case 'common.search':
        return 'Pretraži';
      case 'common.sortBy':
        return 'Sortiraj po';
      case 'common.subscription':
        return 'Pretplata';
      case 'common.downloading':
        return 'Preuzimanje...';
      case 'common.downloadSuccess':
        return 'Datoteka je uspješno preuzeta!';
      case 'common.addPropertyBannerTitle':
        return 'Želite iznajmiti svoju nekretninu?';
      case 'common.application':
        return 'Prijava';
      case 'common.tenantHasPaidDeposit':
        return 'Najmoprimac je uplatio polog.';
      case 'common.askProcessingRentApplication':
        return 'Jeste li sigurni da želite obraditi ovaj zahtjev za najam nekretnine?';
      case 'common.dateAndTime':
        return 'Datum i vrijeme';
      case 'common.applicationDetails':
        return 'Detalji prijave';
      case 'common.depositStatus':
        return 'Status pologa';
      case 'common.uploadRentAgreement':
        return 'Prenesi ugovor o najmu';
      case 'common.uploadFilePDF':
        return 'Prenesi datoteku (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Molimo odaberite datoteku ugovora.';
      case 'common.landlordRentAgreementPDF':
        return 'PDF ugovora o najmu (najmodavac)';
      case 'common.tenantRentAgreementPDF':
        return 'PDF ugovora o najmu (najmoprimac)';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Napomena: '),
            note('Odobrite prijavu tek nakon što najmoprimac uplati polog.'),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Razlog odbijanja';
      case 'common.youveRejectedThisApplication':
        return 'Odbili ste ovu prijavu';
      case 'common.landlordDetails':
        return 'Detalji o najmodavcu';
      case 'common.landlordName':
        return 'Ime najmodavca';
      case 'common.downloadRentAgreement':
        return 'Preuzmi ugovor o najmu';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Prihvaćam '),
            toc('Uvjete i odredbe'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Napomena: '),
            note(
              'Preuzmite i pročitajte ugovor. Potpisani ugovor pošaljite najmodavcu putem WhatsAppa ili e-pošte.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Napomena: '),
            note(
              'Najmodavac odobrava prijavu kada najmoprimac uplati polog, režije i jednomjesečnu predujam najamnine.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Ugovor o najmu (PDF) '),
            complete('Cijeli ugovor'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Napomena: '),
            note(
              'Najmodavac odobrava prijavu kada najmoprimac uplati polog, režije i jednomjesečnu predujam najamnine.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Popis prijava';
      case 'common.viewDetails':
        return 'Pogledaj detalje';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Početna';
      case 'common.dashboard':
        return 'Nadzorna ploča';
      case 'common.tenants':
        return 'Najmoprimci';
      case 'common.maintenance':
        return 'Održavanje';
      case 'common.maintenanceList':
        return 'Popis održavanja';
      case 'common.maintenanceReport':
        return 'Izvješće o održavanju';
      case 'common.labor':
        return 'Radna snaga';
      case 'common.applications':
        return 'Prijave';
      case 'common.rentInvitation':
        return 'Poziv za najam';
      case 'common.payment':
        return 'Plaćanje';
      case 'common.rentPayment':
        return 'Uplata najamnine';
      case 'common.depositUtilityPayment':
        return 'Uplata pologa i režija';
      case 'common.refundRequest':
        return 'Zahtjev za povrat novca';
      case 'common.withdrawRequest':
        return 'Zahtjev za isplatu';
      case 'common.myProperty':
        return 'Moja nekretnina';
      case 'common.myRent':
        return 'Moj najam';
      case 'common.wishlist':
        return 'Lista želja';
      case 'common.properties':
        return 'Nekretnine';
      case 'common.allProperties':
        return 'Sve nekretnine';
      case 'common.totalPropery':
        return 'Ukupno nekretnina';
      case 'common.occupied':
        return 'Zauzet';
      case 'common.vacant':
        return 'Slobodan';
      case 'common.accounting':
        return 'Računovodstvo';
      case 'common.totalIncome':
        return 'Ukupni prihodi';
      case 'common.totalExpense':
        return 'Ukupni troškovi';
      case 'common.currentBalance':
        return 'Trenutno stanje';
      case 'common.totalWithdrawal':
        return 'Ukupno (isplata)';
      case 'common.totalProperties':
        return 'Ukupno nekretnina';
      case 'common.totalTenant':
        return 'Ukupno najmoprimaca';
      case 'common.totalRentPaid':
        return 'Ukupno plaćeno najamnine';
      case 'common.totalRentDue':
        return 'Ukupno dospjelo najamnine';
      case 'common.totalApplication':
        return 'Ukupno prijava';
      case 'common.pendingApplication':
        return 'Prijave na čekanju';
      case 'common.processingApplication':
        return 'Prijave u obradi';
      case 'common.approveApplication':
        return 'Odobri prijavu';
      case 'common.rejectApplication':
        return 'Odbij prijavu';
      case 'common.maintenanceCost':
        return 'Troškovi održavanja';
      case 'common.transactionSummary':
        return 'Sažetak transakcija';
      case 'common.maintenanceRequest':
        return 'Zahtjev za održavanje';
      case 'common.notifications':
        return 'Obavijesti';
      case 'common.myProperties':
        return 'Moje nekretnine';
      case 'common.recommendationProperties':
        return 'Preporučene nekretnine';
      case 'common.laborList':
        return 'Popis radne snage';
      case 'common.addLabor':
        return 'Dodaj radnu snagu';
      case 'common.laborDetails':
        return 'Detalji o radnoj snazi';
      case 'common.laborSalary':
        return 'Plaća radne snage';
      case 'common.editLabor':
        return 'Uredi radnu snagu';
      case 'common.addNewLabor':
        return 'Dodaj novu radnu snagu';
      case 'common.enterAmount':
        return 'Unesi iznos';
      case 'common.maintenanceDetails':
        return 'Detalji o održavanju';
      case 'common.laborName':
        return 'Ime radnika';
      case 'common.comment':
        return 'Komentar';
      case 'common.image':
        return 'Slika';
      case 'common.complete':
        return 'Dovršeno';
      case 'common.details':
        return 'Detalji';
      case 'common.title':
        return 'Naslov';
      case 'common.date':
        return 'Datum';
      case 'common.reason':
        return 'Razlog';
      case 'common.edit':
        return 'Uredi';
      case 'common.property':
        return 'Nekretnina';
      case 'common.completeYourProfile':
        return 'Dovršite svoj profil';
      case 'common.profileImage':
        return 'Slika profila';
      case 'common.imagePickHint':
        return 'Samo JPEG i PNG slike, maksimalne veličine 120x120 piksela.';
      case 'common.invoiceId':
        return 'ID računa';
      case 'common.depositAmount':
        return 'Iznos pologa';
      case 'common.landlordPhone':
        return 'Telefon najmodavca';
      case 'common.rentalAdvance':
        return 'Najamnina (predujam)';
      case 'common.totalAmount':
        return 'Ukupni iznos';
      case 'common.rentalAmount':
        return 'Iznos najamnine';
      case 'common.adminCharge':
        return 'Administrativna naknada';
      case 'common.editAccount':
        return 'Uredi račun';
      case 'common.addNewAccount':
        return 'Dodaj novi račun';
      case 'common.transactionId':
        return 'ID transakcije';
      case 'common.transactionType':
        return 'Vrsta transakcije';
      case 'common.requestDate':
        return 'Datum zahtjeva';
      case 'common.amount':
        return 'Iznos';
      case 'common.fee':
        return 'Naknada';
      case 'common.paymentStatus':
        return 'Status plaćanja';
      case 'common.generatedTime':
        return 'Vrijeme generiranja';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Ovo je sistemski generirano izvješće o '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Povijest isplata';
      case 'common.history':
        return 'Povijest';
      case 'common.withdrawAmount':
        return 'Iznos isplate';
      case 'common.availableBalance':
        return 'Dostupno stanje';
      case 'common.withdrawCharge':
        return 'Naknada za isplatu';
      case 'common.paymentMethod':
        return 'Način plaćanja';
      case 'common.requestSendSuccess':
        return 'Zahtjev je uspješno poslan!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Potvrda o uplati je uspješno poslana.';
      case 'common.refundReason':
        return 'Razlog povrata novca';
      case 'common.note':
        return 'Napomena';
      case 'common.refundReceiveSuccess':
        return 'Povrat novca je uspješno primljen.';
      case 'common.downloadPaymentReceipt':
        return 'Preuzmi potvrdu o uplati';
      case 'common.invoice':
        return 'Račun';
      case 'common.selectPropertyToSeeInvoice':
        return 'Odaberite nekretninu da biste vidjeli broj računa...';
      case 'common.bankAccName':
        return 'Ime vlasnika bankovnog računa';
      case 'common.bankName':
        return 'Ime banke';
      case 'common.bankAccNum':
        return 'Broj bankovnog računa';
      case 'common.thankYou':
        return 'Hvala vam!';
      case 'common.basicInfo':
        return 'Osnovne informacije';
      case 'common.descriptionPricing':
        return 'Opis i cijene';
      case 'common.contact':
        return 'Kontakt';
      case 'common.photos':
        return 'Fotografije';
      case 'common.successfullySubmitted':
        return 'Uspješno poslano!';
      case 'common.editProperty':
        return 'Uredi nekretninu';
      case 'common.addNewProperty':
        return 'Dodaj novu nekretninu';
      case 'common.propertyManageRequestSuccess':
        return 'Vaš oglas je poslan na pregled.';
      case 'common.postAnotherProperty':
        return 'Objavi drugu nekretninu';
      case 'common.browseYourProperty':
        return 'Pretraži svoju nekretninu';
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
        return 'Što biste željeli objaviti?';
      case 'common.category':
        return 'Kategorija';
      case 'common.invalidCategory':
        return 'Neispravna kategorija';
      case 'common.unitNumber':
        return 'Broj jedinice';
      case 'common.sqft':
        return 'kv. ft.';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Veličina nekretnine mora biti veća od nule';
      case 'common.whatAreTheFacility':
        return 'Koji su sadržaji?';
      case 'common.whatAreTheAmenity':
        return 'Koje su pogodnosti?';
      case 'common.parkingLot':
        return 'Parkiralište';
      case 'common.houseType':
        return 'Vrsta kuće';
      case 'common.value':
        return 'Vrijednost';
      case 'common.unitLotSize':
        return 'Veličina jedinice / parcele';
      case 'common.landSize':
        return 'Veličina zemljišta';
      case 'common.acres':
        return 'akri';
      case 'common.roomSize':
        return 'Veličina sobe';
      case 'common.askTenantPreference':
        return 'Koje su vaše preferencije za najmoprimca?';
      case 'common.couple':
        return 'Par';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Opišite ${propertyType}';
      case 'common.adTitle':
        return 'Naslov oglasa';
      case 'common.minimumRentalPeriod':
        return 'Minimalno razdoblje najma';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Broj';
      case 'common.hideOrDisplayEmail':
        return 'Sakrij ili prikaži adresu e-pošte';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Hvala vam što ste objavili na ${appName}!';
      case 'common.propertyList':
        return 'Popis nekretnina';
      case 'common.newInviteRent':
        return 'Novi poziv za najam';
      case 'common.rentAgreement':
        return 'Ugovor o najmu';
      case 'common.rentDetails':
        return 'Detalji najma';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Napomena: '),
            note('Pričekajte da najmoprimac prihvati poziv.'),
          ],
        );
      case 'common.rent':
        return 'Najam';
      case 'common.editTenant':
        return 'Uredi najmoprimca';
      case 'common.addNewTenant':
        return 'Dodaj novog najmoprimca';
      case 'common.shareInstallLink':
        return 'Podijeli vezu za instalaciju';
      case 'common.tenantList':
        return 'Popis najmoprimaca';
      case 'common.editMaintenanceRequest':
        return 'Uredi zahtjev za održavanje';
      case 'common.addNewMaintenance':
        return 'Dodaj novo održavanje';
      case 'common.landlordId':
        return 'ID najmodavca';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Napomena: '),
            note(
              'Vaš ugovor je na pregledu. Pričekajte dok najmodavac ne odobri vaš najam.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Uredi recenziju';
      case 'common.writeAReview':
        return 'Napiši recenziju';
      case 'common.selectRating':
        return 'Odaberite ocjenu';
      case 'common.enterYourOpinion':
        return 'Unesite svoje mišljenje';
      case 'common.askToEnterReviewMsg':
        return 'Molimo unesite poruku recenzije';
      case 'common.pressBackAgainToExit':
        return 'Pritisnite ponovno tipku Natrag za izlaz.';
      case 'common.selectPaymentMethod':
        return 'Odaberite način plaćanja';
      case 'common.filter':
        return 'Filtriraj';
      case 'common.perMonth':
        return '/mjesečno';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Pretražite bilo što u ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Nešto je pošlo po zlu, molimo pokušajte ponovno';
      case 'exceptions.noNidPassport':
        return 'Nije dostavljena slika NID/Putovnice.';
      case 'exceptions.noRentPropertyFound':
        return 'Za ovog najmoprimca nije pronađena nekretnina za iznajmljivanje.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Nije pronađena nekretnina!\nMolimo pokušajte s drugim ključnim riječima';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Nije pronađen plan pretplate!\nMolimo osvježite stranicu i pokušajte ponovno.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Neispravni podaci ${dataType}! Molimo osvježite stranicu i pokušajte ponovno.';
      case 'exceptions.invalidDownloadUrl':
        return 'Neispravan URL za preuzimanje!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Spremanje datoteke nije uspjelo! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Pogreška pri otvaranju datoteke! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Nisu navedene informacije o vozilu.';
      case 'exceptions.yourApplicationRejected':
        return 'Vaša prijava je odbijena';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Nije pronađena prijava!\n${subject} bit će prikazano ovdje kada bude dostupno.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Vaša prijava';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Prijava najmoprimca';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Nije pronađena nekretnina!\nMolimo pokušajte dodati nekretninu da biste je vidjeli ovdje.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Nisu pronađene preporučene nekretnine\nMolimo pokušajte ponovno kasnije.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Nekretnine nisu dostupne\nMolimo pokušajte ponovno kasnije.';
      case 'exceptions.noImageProvided':
        return 'Slika nije priložena';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Nije pronađeno ${status} održavanje.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Održavanje nije pronađeno! Možete stvoriti zahtjev za održavanje da biste ga vidjeli ovdje.';
      case 'exceptions.noDepositFound':
        return 'Nije pronađen sigurnosni polog!\nMolimo, sigurnosne pologe možete vidjeti kada budu dostupni';
      case 'exceptions.noRentPaymentFound':
        return 'Nije pronađena uplata najamnine!\nMolimo, uplate najamnine možete vidjeti kada budu dostupne';
      case 'exceptions.transactionSummaryApiException':
        return 'Nije uspjelo dohvaćanje sažetka transakcija.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Nije pronađen zahtjev!\nMolimo pokušajte stvoriti zahtjev za isplatu da biste ga vidjeli ovdje.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Ovaj zahtjev za isplatu nije odobren!.';
      case 'exceptions.nonZeroError':
        return 'Molimo unesite valjani iznos veći od nule.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Iznos mora biti najmanje ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Iznos ne smije premašiti ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Prvo odaberite način plaćanja.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Nije pronađen ${status} zahtjev za povrat novca!\nZahtjev za povrat novca možete vidjeti ovdje kada bude dostupan.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Nije pronađen zahtjev za povrat novca!\nMožete stvoriti zahtjev za povrat novca da biste ga vidjeli ovdje.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Najmoprimac će odobriti povrat novca kada dobije novac natrag';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Pregledat ćemo zahtjev za povrat novca i odobriti ga u roku od 24 sata.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Molimo odaberite broj ${value}';
      case 'exceptions.invalidDateRange':
        return 'Neispravan raspon datuma.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) => '${value} mora biti veće od nule.';
      case 'exceptions.editProperty.rentalChange':
        return 'Najamnina nekretnine se mijenja. Mora biti valjana (na snazi) samo za sljedeći mjesec uplate najamnine.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Vašu nekretninu već iznajmljuje najmoprimac. Ne možete je izbrisati dok prvo ne uklonite najmoprimca';
      case 'exceptions.editProperty.alreayRented':
        return 'Ova nekretnina je već iznajmljena. Molimo pokušajte ponovno kasnije.\nIli se možete obratiti najmodavcu za više informacija.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Nije pronađen poziv za najam!\nMolimo pokušajte stvoriti poziv za najam da biste ga vidjeli ovdje.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Nije pronađen poziv za najam!\nOvdje možete vidjeti poziv za najam kada bude dostupan.';
      case 'exceptions.notenantFoundList':
        return 'Nema najmoprimaca!\nMolimo pokušajte dodati najmoprimca da biste ga vidjeli ovdje.';
      case 'exceptions.noFeaturesProvided':
        return 'Nisu navedene značajke.';
      case 'exceptions.noNotificationFound':
        return 'Nema dostupnih obavijesti.\nOvdje možete vidjeti svoje obavijesti kada budu dostupne.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Jeste li sigurni da se želite odjaviti?';
      case 'prompt.application.rejectTitle':
        return 'Zašto odbijate ovu prijavu?';
      case 'prompt.application.applicationSent.successfully':
        return 'Prijava je uspješno poslana!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Ovu prijavu možete vidjeti na popisu svojih prijava';
      case 'prompt.labor.delete.title':
        return 'Izbrisati radnika?';
      case 'prompt.labor.delete.description':
        return 'Jeste li sigurni da želite izbrisati ovog radnika?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Zašto se ovaj zahtjev odbija?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Jeste li sigurni da obrađujete ovaj zahtjev za održavanje?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Je li posao završen?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Izbrisati način isplate?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Jeste li sigurni da želite izbrisati ovaj način isplate?';
      case 'prompt.unsavedChanges.title':
        return 'Jeste li sigurni da se želite vratiti?';
      case 'prompt.unsavedChanges.message':
        return 'Promijenjena polja neće biti spremljena!';
      case 'prompt.property.delete.title':
        return 'Izbrisati nekretninu?';
      case 'prompt.property.delete.message':
        return 'Jeste li sigurni da želite izbrisati ovu nekretninu?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Jeste li sigurni da želite odobriti ovaj najam?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Provjerite jeste li pregledali ugovor koji je potpisao najmoprimac.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Jeste li sigurni da prihvaćate ovaj poziv?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Provjerite jeste li preuzeli pdf datoteku ugovora!';
      case 'prompt.sessionExpired.title':
        return 'Sesija istekla';
      case 'prompt.sessionExpired.message':
        return 'Vaša je sesija istekla. Molimo prijavite se ponovno';
      case 'prompt.sessionExpired.action':
        return 'Prijava';
      case 'prompt.noInternet.title':
        return 'Nema internetske veze';
      case 'prompt.noInternet.message':
        return 'Molimo provjerite svoju Wi-Fi vezu ili mobilnu mrežu i pokušajte ponovno';
      case 'prompt.noInternet.action':
        return 'Pokušajte ponovno';
      case 'prompt.permissionHandler.title':
        return 'Potrebna dozvola!';
      case 'prompt.permissionHandler.message':
        return 'Morate dodijeliti dopuštenja u postavkama aplikacije. Želite li sada otvoriti postavke?';
      case 'prompt.imagePicker.title':
        return 'Odaberite opciju';
      case 'prompt.imagePicker.gallery':
        return 'Galerija';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Potvrdite svoju e-poštu';
      case 'prompt.verificationDialog.message':
        return 'Poslali smo e-mail s kodom za potvrdu';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} na ${email}';
      case 'prompt.notification.clearTitle':
        return 'Očistiti obavijesti?';
      case 'prompt.notification.clearMessage':
        return 'Jeste li sigurni da želite očistiti sve obavijesti?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Unesite ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Molimo unesite svoje ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Unesite svoj ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Molimo unesite svoju ${_root.common.email} adresu';
      case 'form.email.errors.invalid':
        return '⦸ Neispravna e-pošta, molimo pokušajte ponovno';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Molimo unesite svoju ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Lozinka mora imati najmanje ${count} znakova!';
      case 'form.confirmPassword.label':
        return 'Potvrdite ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Molimo unesite svoju ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Potvrda lozinke se ne podudara!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Molimo unesite svoj ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Broj kuće i naziv ulice';
      case 'form.address1.errors.required':
        return 'Molimo unesite svoju ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Stan, apartman, jedinica, itd.';
      case 'form.address2.errors.required':
        return 'Molimo unesite svoju ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Unesite ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Molimo unesite svoj ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Unesite naziv ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Molimo unesite naziv svog ${_root.common.city}.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Unesite naziv ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Molimo unesite naziv svog ${_root.common.state}.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Odaberite ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Molimo odaberite svoju ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Molimo unesite OTP.';
      case 'form.otp.errors.invalid':
        return 'Molimo unesite ispravan OTP.';
      case 'form.title.label':
        return 'Naslov';
      case 'form.title.hint':
        return 'Unesite naslov';
      case 'form.title.errors.required':
        return 'Molimo unesite naslov';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Odaberite ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Molimo odaberite ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Razlog';
      case 'form.reason.hint':
        return 'Unesite razlog';
      case 'form.reason.errors.required':
        return 'Molimo unesite razlog';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Odaberite ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Molimo odaberite ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Prenesite ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Molimo odaberite ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Unesite ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Molimo unesite ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Odaberite ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Molimo odaberite ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Unesite ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Molimo unesite ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Molimo unesite valjani @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Odaberite ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Molimo odaberite ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Molimo odaberite valjani @form.anyDropdown.label';
      case 'action.next':
        return 'Dalje';
      case 'action.getStarted':
        return 'Počni';
      case 'action.skip':
        return 'Preskoči';
      case 'action.select':
        return 'Odaberi';
      case 'action.save':
        return 'Spremi';
      case 'action.signIn':
        return 'Prijava';
      case 'action.signUp':
        return 'Registracija';
      case 'action.kContinue':
        return 'Nastavi';
      case 'action.clearAll':
        return 'Očisti sve';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Pošalji';
      case 'action.pay':
        return 'Plati';
      case 'action.remove':
        return 'Ukloni';
      case 'action.goBack':
        return 'Natrag';
      case 'action.buyNow':
        return 'Kupi sada';
      case 'action.no':
        return 'Ne';
      case 'action.open':
        return 'Otvori';
      case 'action.addProperty':
        return 'Dodaj nekretninu';
      case 'action.process':
        return 'Obradi';
      case 'action.approve':
        return 'Odobri';
      case 'action.reject':
        return 'Odbij';
      case 'action.viewRent':
        return 'Pogledaj najam';
      case 'action.openNavigationMenu':
        return 'Otvori navigacijski izbornik';
      case 'action.seeAll':
        return 'Vidi sve';
      case 'action.update':
        return 'Ažuriraj';
      case 'action.printTransaction':
        return 'Ispiši transakciju';
      case 'action.payoutRequest':
        return 'Zahtjev za isplatu';
      case 'action.addNew':
        return '+ Dodaj novo';
      case 'action.sendRequest':
        return 'Pošalji zahtjev';
      case 'action.print':
        return 'Ispiši';
      case 'action.requestForRefund':
        return 'Zahtjev za povrat novca';
      case 'action.previous':
        return 'Prethodno';
      case 'action.delete':
        return 'Izbriši';
      case 'action.applyProperty':
        return 'Prijavi se za nekretninu';
      case 'action.viewApplication':
        return 'Pogledaj prijavu';
      case 'action.inviteTenant':
        return 'Pozovi najmoprimca';
      case 'action.inviteRent':
        return 'Pozovi za najam';
      case 'action.cancel':
        return 'Otkaži';
      case 'action.accept':
        return 'Prihvati';
      case 'action.submit':
        return 'Podnesi';
      case 'action.yes':
        return 'Da';
      case 'action.okay':
        return 'U redu';
      case 'action.confirm':
        return 'Potvrdi';
      case 'action.apply':
        return 'Primijeni';
      case 'action.reset':
        return 'Resetiraj';
      case 'action.retry':
        return 'Pokušaj ponovno';
      case 'action.viewAll':
        return 'Pogledaj sve';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Pronađite svoju nekretninu';
      case 'pages.onboard.onboardData.data1.description':
        return 'Olakšali smo pronalazak mjesta koje odgovara vašem životnom stilu - bilo da se radi o sobi, stanu ili kući.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Stan u gradu';
      case 'pages.onboard.onboardData.data2.description':
        return 'Štedimo vam vrijeme tako što vas brzo spajamo sa savršenom nekretninom prije nego što nestane, tako da možete uživati u svom novom domu ili besplatno oglasiti svoj vlastiti.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Vaša udobna kuća';
      case 'pages.onboard.onboardData.data3.description':
        return 'Ako tražite mjesto za život, pogledajte naše kuće za iznajmljivanje. Imamo širok raspon kuća koje možete izabrati diljem zemlje.';
      case 'pages.signIn.title':
        return 'Dobrodošli natrag';
      case 'pages.signIn.subtitle':
        return 'Prijavite se sada i započnite nevjerojatno putovanje.';
      case 'pages.signIn.extra.rememberMe':
        return 'Zapamti me';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Nemate račun? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Zaboravili ste lozinku';
      case 'pages.forgotPassword.subtitle':
        return 'Unesite svoju e-mail adresu za oporavak lozinke.';
      case 'pages.otpVerification.title':
        return 'Verifikacija';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Četveroznamenkasti pin je poslan na vašu e-mail adresu. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Kod će biti poslan za ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Ponovno pošalji kod'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Resetiranje lozinke';
      case 'pages.resetPassword.subtitle':
        return 'Resetirajte lozinku za oporavak i prijavu na svoj račun';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Uspješno promijenjeno!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Prijavite se svojom novom lozinkom.\nPreusmjeravam vas na prijavu...';
      case 'pages.signUp.title':
        return 'Stvorite račun';
      case 'pages.signUp.subtitle':
        return 'Prijavite se sada i započnite nevjerojatno putovanje';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Imate račun? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Tko ste vi?';
      case 'pages.welcome.subtitle':
        return 'Odaberite opciju u nastavku.';
      case 'pages.welcome.extra.landlordTag':
        return 'Upravljajte svojim nekretninama';
      case 'pages.welcome.extra.tenantTag':
        return 'Prijavite se na svoj račun za iznajmljivanje';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Obavijesti';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Poruka...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Zašto ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Napišite razlog';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Molimo unesite razlog otkazivanja najma';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Izvanmrežno plaćanje';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Napomena o plaćanju (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Unesite neki tekst...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Iznos uplate: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Ime vlasnika računa';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Broj računa';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'SWIFT kod';
      case 'pages.offlinePayment.extra.branch':
        return 'Podružnica';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Odaberite datoteke formata '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' ili '),
            fileType('DOC'),
            const TextSpan(text: '. Veličina datoteke '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Pogledaj račun';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Pregledat ćemo uplatu i odobriti je u roku od 24 sata.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Pokušajte ponovno';
      case 'pages.paymentStatus.fail.title':
        return 'Ups! Plaćanje nije uspjelo';
      case 'pages.paymentStatus.fail.description':
        return 'Vaša transakcija nije uspjela zbog nekih tehničkih pogrešaka.';
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
            const TextSpan(text: 'Značajke '),
            fa('(Sadržaji i pogodnosti)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Odaberite razdoblje najma';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Napišite recenziju';
      case 'pages.search.appbarTitle':
        return 'Pretraživanje';
      case 'pages.search.extra.hint':
        return 'Pretražite parcele, stanove, sobe...';
      case 'pages.search.extra.noRecentSearch':
        return 'Nemate nedavnih pretraživanja.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Odaberite svoj plan';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Uplata pretplate uspješna.\nSada možete pristupiti pretplaćenim značajkama.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Ukupni troškovi održavanja: '),
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
        return 'Sve nekretnine';
      case 'enums.propertyStatus.pending':
        return 'Na čekanju';
      case 'enums.propertyStatus.active':
        return 'Aktivno';
      case 'enums.propertyStatus.inactive':
        return 'Neaktivno';
      case 'enums.propertyStatus.rejected':
        return 'Odbijeno';
      case 'enums.propertyType.apartmentCondominium':
        return 'Stan/Apartman';
      case 'enums.propertyType.house':
        return 'Kuća';
      case 'enums.propertyType.commercialProperty':
        return 'Poslovni prostor';
      case 'enums.propertyType.land':
        return 'Zemljište';
      case 'enums.propertyType.room':
        return 'Soba';
      case 'enums.applicationStatus.all':
        return 'Sve';
      case 'enums.applicationStatus.pending':
        return 'Na čekanju';
      case 'enums.applicationStatus.processing':
        return 'U obradi';
      case 'enums.applicationStatus.approved':
        return 'Odobreno';
      case 'enums.applicationStatus.rejected':
        return 'Odbijeno';
      case 'enums.myRentStatus.pending':
        return 'Na čekanju';
      case 'enums.myRentStatus.processing':
        return 'U obradi';
      case 'enums.myRentStatus.active':
        return 'Aktivno';
      case 'enums.myRentStatus.expired':
        return 'Isteklo';
      case 'enums.myRentStatus.cancelled':
        return 'Otkazano';
      case 'enums.maintenanceStatus.pending':
        return 'Na čekanju';
      case 'enums.maintenanceStatus.processing':
        return 'U obradi';
      case 'enums.maintenanceStatus.rejected':
        return 'Odbijeno';
      case 'enums.maintenanceStatus.completed':
        return 'Dovršeno';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Privatna osoba';
      case 'enums.tenantProfileType.company':
        return 'Tvrtka';
      case 'enums.tenantType.newTenant':
        return 'Novi najmoprimac';
      case 'enums.tenantType.activeTenant':
        return 'Aktivni najmoprimac';
      case 'enums.tenantType.expiredTenant':
        return 'Istekli najmoprimac';
      case 'enums.paymentStatus.all':
        return 'Sve';
      case 'enums.paymentStatus.pending':
        return 'Na čekanju';
      case 'enums.paymentStatus.paid':
        return 'Plaćeno';
      case 'enums.paymentStatus.unpaid':
        return 'Neplaćeno';
      case 'enums.paymentStatus.rejected':
        return 'Odbijeno';
      case 'enums.paymentStatus.refund':
        return 'Povrat novca';
      case 'enums.paymentOptions.onlinePayment':
        return 'Online plaćanje';
      case 'enums.paymentOptions.offlinePayment':
        return 'Izvanmrežno plaćanje';
      case 'enums.paymentType.securityDeposit':
        return 'Sigurnosni polog';
      case 'enums.paymentType.rentPayment':
        return 'Uplata najamnine';
      case 'enums.paymentType.subscription':
        return 'Pretplata';
      case 'enums.gender.male':
        return 'Muško';
      case 'enums.gender.female':
        return 'Žensko';
      case 'enums.gender.other':
        return 'Ostalo';
      case 'enums.ecRelation.wife':
        return 'Supruga';
      case 'enums.ecRelation.parent':
        return 'Roditelj';
      case 'enums.ecRelation.friend':
        return 'Prijatelj';
      case 'enums.ecRelation.brother':
        return 'Brat';
      case 'enums.ecRelation.sister':
        return 'Sestra';
      case 'enums.ecRelation.child':
        return 'Dijete';
      case 'enums.vehicleType.car':
        return 'Automobil';
      case 'enums.vehicleType.motorcycles':
        return 'Motocikli';
      case 'enums.vehicleType.lorry':
        return 'Kamion';
      case 'enums.sortBy.lowToHigh':
        return 'Od najnižeg do najvišeg';
      case 'enums.sortBy.highToLow':
        return 'Od najvišeg do najnižeg';
      case 'enums.residentialType.flat':
        return 'Stan';
      case 'enums.residentialType.apartment':
        return 'Apartman';
      case 'enums.residentialType.condominium':
        return 'Condominium';
      case 'enums.residentialType.serviceResidence':
        return 'Servisni apartman';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Duplex';
      case 'enums.residentialType.townhouseCondo':
        return 'Kuća u nizu';
      case 'enums.residentialType.others':
        return 'Ostalo';
      case 'enums.floorRange.high':
        return 'Visoko';
      case 'enums.floorRange.medium':
        return 'Srednje';
      case 'enums.floorRange.low':
        return 'Nisko';
      case 'enums.furnishings.fullyFurnished':
        return 'Potpuno namješteno';
      case 'enums.furnishings.partiallyFurnished':
        return 'Djelomično namješteno';
      case 'enums.furnishings.notFurnished':
        return 'Nije namješteno';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Uredski prostor';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Maloprodajni prostor';
      case 'enums.commercialPropertyType.shopLot':
        return 'Poslovni prostor';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Skladište / Tvornica';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Odmaralište';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Ostalo';
      case 'enums.landPropertyType.residential':
        return 'Stambeno';
      case 'enums.landPropertyType.industrial':
        return 'Industrijsko';
      case 'enums.landPropertyType.agricultural':
        return 'Poljoprivredno';
      case 'enums.landPropertyType.commercial':
        return 'Komercijalno';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Mješoviti razvoj';
      case 'enums.landPropertyType.others':
        return 'Ostalo';
      case 'enums.residentPropertyType.condo':
        return 'Condo / Servisni apartman / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Apartman / Stan';
      case 'enums.residentPropertyType.house':
        return 'Kuće';
      case 'enums.residentPropertyType.shoplot':
        return 'Poslovni prostor';
      case 'enums.residentPropertyType.sharing':
        return 'Dijeljenje kuće / stana';
      case 'enums.residentPropertyType.others':
        return 'Ostalo';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 mjeseci';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 godina';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 godina';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 godine';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 godine';
      case 'enums.dropdownDateFilter.daily':
        return 'Dnevno';
      case 'enums.dropdownDateFilter.weekly':
        return 'Tjedno';
      case 'enums.dropdownDateFilter.monthly':
        return 'Mjesečno';
      case 'enums.dropdownDateFilter.yearly':
        return 'Godišnje';
      case 'enums.dropdownDateFilter.custom':
        return 'Prilagođeno';
      default:
        return null;
    }
  }
}
