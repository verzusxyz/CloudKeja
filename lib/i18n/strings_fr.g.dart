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
class TranslationsFr implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsFr({
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
             locale: AppLocale.fr,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <fr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsFr _root = this; // ignore: unused_field

  @override
  TranslationsFr $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsFr(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonFr common = _TranslationsCommonFr._(_root);
  @override
  late final _TranslationsExceptionsFr exceptions = _TranslationsExceptionsFr._(
    _root,
  );
  @override
  late final _TranslationsPromptFr prompt = _TranslationsPromptFr._(_root);
  @override
  late final _TranslationsFormFr form = _TranslationsFormFr._(_root);
  @override
  late final _TranslationsActionFr action = _TranslationsActionFr._(_root);
  @override
  late final _TranslationsPagesFr pages = _TranslationsPagesFr._(_root);
  @override
  late final _TranslationsEnumsFr enums = _TranslationsEnumsFr._(_root);
}

// Path: common
class _TranslationsCommonFr implements TranslationsCommonEn {
  _TranslationsCommonFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profiili';
  @override
  String get language => 'Kieli';
  @override
  String get subscriptionPlan => 'Tilaussuunnitelma';
  @override
  String get contactUs => 'Ota yhteyttä';
  @override
  String get termsAndConditions => 'Käyttöehdot';
  @override
  String get aboutUs => 'Meistä';
  @override
  String get logout => 'Kirjaudu ulos';
  @override
  String get editProfile => 'Muokkaa profiilia';
  @override
  String get fullName => 'Koko nimi';
  @override
  String get email => 'Sähköposti';
  @override
  String get mobileNumber => 'Matkapuhelinnumero';
  @override
  String get address => 'Osoite';
  @override
  String get postalCode => 'Postinumero';
  @override
  String get city => 'Kaupunki';
  @override
  String get country => 'Maa';
  @override
  String get state => 'Osavaltio';
  @override
  String get password => 'Salasana';
  @override
  String get forgotPassword => 'Unohtuiko salasana';
  @override
  String get tenant => 'Vuokralainen';
  @override
  String get landlord => 'Vuokranantaja';
  @override
  String get cancelRenting => 'Peruuta vuokraus';
  @override
  String get startDate => 'Aloituspäivä';
  @override
  String get endDate => 'Päättymispäivä';
  @override
  String get fromDate => 'Mistä päivästä';
  @override
  String get toDate => 'Mihin päivään';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Pankkilista';
  @override
  String get withdrawMethod => 'Nostotapa';
  @override
  String get uploadPaymentReceipt => 'Lataa maksukuitti';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Huomautus: '),
      note('Maksu vaatii manuaalisen hyväksynnän järjestelmänvalvojalta'),
      const TextSpan(text: ' '),
      duraion('24–48 tunnin sisällä.'),
    ],
  );
  @override
  String get reviews => 'Arvostelut';
  @override
  String get description => 'Kuvaus';
  @override
  String get about => 'Tietoja';
  @override
  String get propertyTypes => 'Kiinteistötyypit';
  @override
  String get features => 'Ominaisuudet';
  @override
  String get floorPlans => 'Pohjapiirrokset';
  @override
  String get buildingDetails => 'Rakennuksen tiedot';
  @override
  String get buildingName => 'Rakennuksen nimi';
  @override
  String get propertyAddress => 'Kiinteistön osoite';
  @override
  String get completionYear => 'Valmistumisvuosi';
  @override
  String get lotNumber => 'Tonttinumero';
  @override
  String get residentialType => 'Asumistyyppi';
  @override
  String get furnishings => 'Kalusteet';
  @override
  String get floorRange => 'Kerrosalue';
  @override
  String get bedrooms => 'Makuuhuoneet';
  @override
  String get bathrooms => 'Kylpyhuoneet';
  @override
  String get propertySize => 'Kiinteistön koko';
  @override
  String get rentalPeriod => 'Vuokra-aika';
  @override
  String get securityDeposit => 'Vakuusmaksu';
  @override
  String get utilityBill => 'Sähkölasku';
  @override
  String get facilities => 'Palvelut';
  @override
  String get amenities => 'Mukavuudet';
  @override
  String get expiringReason => 'Vanhenemisen syy';
  @override
  String get tenantDetails => 'Vuokralaisen tiedot';
  @override
  String get typeOfTenant => 'Vuokralaisen tyyppi';
  @override
  String get tenantName => 'Vuokralaisen nimi';
  @override
  String get nidPassport => 'NID/Passeport';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Vuokralaisen tunnus';
  @override
  String get dateOfBirth => 'Syntymäaika';
  @override
  String get gender => 'Sukupuoli';
  @override
  String get nominee => 'Ehdokas';
  @override
  String get name => 'Nimi';
  @override
  String get optional => 'Valinnainen';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileFr nomineeMobile =
      _TranslationsCommonNomineeMobileFr._(_root);
  @override
  String get emergencyContact => 'Hätäyhteyshenkilö';
  @override
  String get relation => 'Suhde';
  @override
  String get relationWith => '${_root.common.relation} With';
  @override
  String get relationWithYou => '${_root.common.relationWith} Sinulle';
  @override
  String get company => 'Yritys';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Työpaikka';
  @override
  String get officePhoneNo => 'Työpuhelinnumero';
  @override
  String get officeMobileNo => 'Työ ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Ajoneuvo';
  @override
  late final _TranslationsCommonVehiclesInfoFr vehiclesInfo =
      _TranslationsCommonVehiclesInfoFr._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoFr vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoFr._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Merkki';
  @override
  String get rentProperty => 'Vuokraa kiinteistö';
  @override
  String get propertyDetails => 'Kiinteistön tiedot';
  @override
  String get propertyId => 'Kiinteistön ID';
  @override
  String get propertyType => 'Kiinteistötyyppi';
  @override
  String get propertyName => 'Kiinteistön nimi';
  @override
  String get paymentDetails => 'Maksutiedot';
  @override
  String get monthlyRent => 'Kuukausivuokra';
  @override
  String get thisMonthPayment => 'Tämän kuun maksu';
  @override
  String get totalPaidRent => 'Maksettu vuokra yhteensä';
  @override
  String get dueRent => 'Erääntyvä vuokra';
  @override
  String get rentStartDate => 'Vuokra ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Vuokra ${_root.common.endDate}';
  @override
  String get status => 'Tila';
  @override
  String get rentAgreementPdf => 'Vuokrasopimus PDF';
  @override
  String get noFile => 'Ei tiedostoa';
  @override
  String get tenantImageOp => 'Vuokralaisen kuva ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Lisää uusi ajoneuvo';
  @override
  String get uploadNidPassport => 'Télécharger NID/Passeport';
  @override
  String get nidPassportUploadNote =>
      'Seules les images de type fichier seront acceptées. Limite de taille de fichier jusqu\'à 2,5 Mo.';
  @override
  String get search => 'Haku';
  @override
  String get sortBy => 'Lajittele';
  @override
  String get subscription => 'Tilaus';
  @override
  String get downloading => 'Ladataan...';
  @override
  String get downloadSuccess => 'Tiedosto ladattu onnistuneesti!';
  @override
  String get addPropertyBannerTitle => 'Haluatko vuokrata kiinteistösi?';
  @override
  String get application => 'Hakemus';
  @override
  String get tenantHasPaidDeposit => 'Vuokralainen on maksanut talletuksen.';
  @override
  String get askProcessingRentApplication =>
      'Oletko varma, että käsittelet tämän vuokrakiinteistön pyynnön?';
  @override
  String get dateAndTime => 'Päivämäärä ja aika';
  @override
  String get applicationDetails => 'Hakemuksen tiedot';
  @override
  String get depositStatus => 'Talletuksen tila';
  @override
  String get uploadRentAgreement => 'Lataa vuokrasopimus';
  @override
  String get uploadFilePDF => 'Lataa tiedosto (PDF)';
  @override
  String get askSelectRentAgreement => 'Valitse sopimusasiakirjatiedosto.';
  @override
  String get landlordRentAgreementPDF => 'Vuokranantajan vuokrasopimus PDF';
  @override
  String get tenantRentAgreementPDF => 'Vuokralaisen vuokrasopimus PDF';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Huomautus: '),
      note(
        'Hyväksy hakemus vasta sen jälkeen, kun vuokralainen on suorittanut talletusmaksun.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Hylkäämisen syy';
  @override
  String get youveRejectedThisApplication => 'Olet hylännyt tämän hakemuksen';
  @override
  String get landlordDetails => 'Vuokranantajan tiedot';
  @override
  String get landlordName => 'Vuokranantajan nimi';
  @override
  String get downloadRentAgreement => 'Lataa vuokrasopimus';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Hyväksy '),
      toc('käyttöehdot'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Huomautus: '),
      note(
        'Lataa ja lue sopimus. Lähetä allekirjoitettu sopimus vuokranantajalle WhatsAppin tai sähköpostin välityksellä.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Huomautus: '),
      note(
        'Vuokranantaja hyväksyy hakemuksen, kun vuokralainen maksaa vakuuden, sähkölaskun ja yhden kuukauden vuokran etukäteen.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Vuokrasopimus (PDF) '),
          complete('Täytä sopimus'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Huomautus : '),
      note(
        'Vuokranantaja hyväksyy hakemuksen, kun vuokralainen maksaa vakuuden, sähkölaskun ja yhden kuukauden vuokran etukäteen.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Hakemusluettelo';
  @override
  String get viewDetails => 'Näytä tiedot';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Koti';
  @override
  String get dashboard => 'Hallintapaneeli';
  @override
  String get tenants => 'Vuokralaiset';
  @override
  String get maintenance => 'Huolto';
  @override
  String get maintenanceList => 'Huoltoluettelo';
  @override
  String get maintenanceReport => 'Huoltoraportti';
  @override
  String get labor => 'Työvoima';
  @override
  String get applications => 'Hakemukset';
  @override
  String get rentInvitation => 'Vuokrakutsu';
  @override
  String get payment => 'Maksu';
  @override
  String get rentPayment => 'Vuokranmaksu';
  @override
  String get depositUtilityPayment => 'Talletus- ja sähkölaskun maksu';
  @override
  String get refundRequest => 'Palautuspyyntö';
  @override
  String get withdrawRequest => 'Nostopyyntö';
  @override
  String get myProperty => 'Oma kiinteistöni';
  @override
  String get myRent => 'Oma vuokrani';
  @override
  String get wishlist => 'Toivelista';
  @override
  String get properties => 'Kiinteistöt';
  @override
  String get allProperties => 'Kaikki kiinteistöt';
  @override
  String get totalPropery => 'Kiinteistöjä yhteensä';
  @override
  String get occupied => 'Varattu';
  @override
  String get vacant => 'Vapaa';
  @override
  String get accounting => 'Kirjanpito';
  @override
  String get totalIncome => 'Tulot yhteensä';
  @override
  String get totalExpense => 'Menot yhteensä';
  @override
  String get currentBalance => 'Nykyinen saldo';
  @override
  String get totalWithdrawal => 'Nostot yhteensä';
  @override
  String get totalProperties => 'Kiinteistöjä yhteensä';
  @override
  String get totalTenant => 'Vuokralaisia yhteensä';
  @override
  String get totalRentPaid => 'Maksettu vuokra yhteensä';
  @override
  String get totalRentDue => 'Erääntyvä vuokra yhteensä';
  @override
  String get totalApplication => 'Hakemuksia yhteensä';
  @override
  String get pendingApplication => 'Odottaa hakemusta';
  @override
  String get processingApplication => 'Käsittelyssä oleva hakemus';
  @override
  String get approveApplication => 'Hyväksy hakemus';
  @override
  String get rejectApplication => 'Hylkää hakemus';
  @override
  String get maintenanceCost => 'Huoltokustannukset';
  @override
  String get transactionSummary => 'Tapahtumien yhteenveto';
  @override
  String get maintenanceRequest => 'Huoltopyyntö';
  @override
  String get notifications => 'Ilmoitukset';
  @override
  String get myProperties => 'Omat kiinteistöni';
  @override
  String get recommendationProperties => 'Suositellut kiinteistöt';
  @override
  String get laborList => 'Työvoimaluettelo';
  @override
  String get addLabor => 'Lisää työvoimaa';
  @override
  String get laborDetails => 'Työvoiman tiedot';
  @override
  String get laborSalary => 'Työvoiman palkka';
  @override
  String get editLabor => 'Muokkaa työvoimaa';
  @override
  String get addNewLabor => 'Lisää uusi työvoima';
  @override
  String get enterAmount => 'Syötä summa';
  @override
  String get maintenanceDetails => 'Huoltotiedot';
  @override
  String get laborName => 'Työvoiman nimi';
  @override
  String get comment => 'Kommentti';
  @override
  String get image => 'Kuva';
  @override
  String get complete => 'Valmis';
  @override
  String get details => 'Tiedot';
  @override
  String get title => 'Otsikko';
  @override
  String get date => 'Päivämäärä';
  @override
  String get reason => 'Syy';
  @override
  String get edit => 'Muokkaa';
  @override
  String get property => 'Kiinteistö';
  @override
  String get completeYourProfile => 'Täytä profiilisi';
  @override
  String get profileImage => 'Profiilikuva';
  @override
  String get imagePickHint =>
      'Vain JPEG- ja PNG-kuvat, joiden enimmäiskoko on 120x120 pikseliä.';
  @override
  String get invoiceId => 'Laskun ID';
  @override
  String get depositAmount => 'Talletussumma';
  @override
  String get landlordPhone => 'Vuokranantajan puhelin';
  @override
  String get rentalAdvance => 'Vuokra (ennakko)';
  @override
  String get totalAmount => 'Summa yhteensä';
  @override
  String get rentalAmount => 'Vuokrasumma';
  @override
  String get adminCharge => 'Hallinnointimaksu';
  @override
  String get editAccount => 'Muokkaa tiliä';
  @override
  String get addNewAccount => 'Lisää uusi tili';
  @override
  String get transactionId => 'Tapahtumien ID';
  @override
  String get transactionType => 'Tapahtumatyyppi';
  @override
  String get requestDate => 'Pyyntöpäivä';
  @override
  String get amount => 'Summa';
  @override
  String get fee => 'Maksu';
  @override
  String get paymentStatus => 'Maksun tila';
  @override
  String get generatedTime => 'Luontiaika';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Tämä on järjestelmän luoma raportti kohteesta '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Nostohistoria';
  @override
  String get history => 'Historia';
  @override
  String get withdrawAmount => 'Nostosumma';
  @override
  String get availableBalance => 'Käytettävissä oleva saldo';
  @override
  String get withdrawCharge => 'Nostomaksu';
  @override
  String get paymentMethod => 'Maksutapa';
  @override
  String get requestSendSuccess => 'Pyyntö lähetetty onnistuneesti!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Maksukuitti lähetetty onnistuneesti.';
  @override
  String get refundReason => 'Palautuksen syy';
  @override
  String get note => 'Huomautus';
  @override
  String get refundReceiveSuccess => 'Palautus vastaanotettu onnistuneesti.';
  @override
  String get downloadPaymentReceipt => 'Lataa maksukuitti';
  @override
  String get invoice => 'Lasku';
  @override
  String get selectPropertyToSeeInvoice =>
      'Valitse kiinteistö nähdäksesi laskunumeron...';
  @override
  String get bankAccName => 'Pankkitilin nimi';
  @override
  String get bankName => 'Pankin nimi';
  @override
  String get bankAccNum => 'Pankkitilin numero';
  @override
  String get thankYou => 'Kiitos!';
  @override
  String get basicInfo => 'Perustiedot';
  @override
  String get descriptionPricing => 'Kuvaus ja hinnoittelu';
  @override
  String get contact => 'Yhteystiedot';
  @override
  String get photos => 'Kuvat';
  @override
  String get successfullySubmitted => 'Onnistuneesti lähetetty!';
  @override
  String get editProperty => 'Muokkaa kiinteistöä';
  @override
  String get addNewProperty => 'Lisää uusi kiinteistö';
  @override
  String get propertyManageRequestSuccess =>
      'Mainoksesi on lähetetty tarkastettavaksi.';
  @override
  String get postAnotherProperty => 'Lähetä toinen kiinteistö';
  @override
  String get browseYourProperty => 'Selaa kiinteistöäsi';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Vaihe '),
      step,
      const TextSpan(text: ' / '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Mitä haluaisit lähettää?';
  @override
  String get category => 'Kategoria';
  @override
  String get invalidCategory => 'Virheellinen kategoria';
  @override
  String get unitNumber => 'Yksikkönumero';
  @override
  String get sqft => 'neliöjalkaa';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Kiinteistön koon tulee olla suurempi kuin nolla';
  @override
  String get whatAreTheFacility => 'Mitkä ovat palvelut?';
  @override
  String get whatAreTheAmenity => 'Mitkä ovat mukavuudet?';
  @override
  String get parkingLot => 'Pysäköintialue';
  @override
  String get houseType => 'Majatyyppi';
  @override
  String get value => 'Arvo';
  @override
  String get unitLotSize => 'Yksikön / tontin koko';
  @override
  String get landSize => 'Maan koko';
  @override
  String get acres => 'hehtaari(a)';
  @override
  String get roomSize => 'Huoneen koko';
  @override
  String get askTenantPreference => 'Mikä on vuokralaispreferenceesi?';
  @override
  String get couple => 'Pariskunta';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Kuvaile ${propertyType}';
  @override
  String get adTitle => 'Mainoksen otsikko';
  @override
  String get minimumRentalPeriod => 'Vähimmäisvuokra-aika';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Numero';
  @override
  String get hideOrDisplayEmail => 'Piilota tai näytä sähköpostiosoite';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Kiitos, että lähetit kohteen kohteeseen ${appName}!';
  @override
  String get propertyList => 'Kiinteistöluettelo';
  @override
  String get newInviteRent => 'Uusi vuokrakutsu';
  @override
  String get rentAgreement => 'Vuokrasopimus';
  @override
  String get rentDetails => 'Vuokratiedot';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Huomautus: '),
      note('Odota, että vuokralainen hyväksyy kutsun.'),
    ],
  );
  @override
  String get rent => 'Vuokra';
  @override
  String get editTenant => 'Muokkaa vuokralaista';
  @override
  String get addNewTenant => 'Lisää uusi vuokralainen';
  @override
  String get shareInstallLink => 'Jaa asennuslinkki';
  @override
  String get tenantList => 'Vuokralaisluettelo';
  @override
  String get editMaintenanceRequest => 'Muokkaa huoltopyyntöä';
  @override
  String get addNewMaintenance => 'Lisää uusi huolto';
  @override
  String get landlordId => 'Vuokranantajan tunnus';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Huomautus '),
      note(
        'Sopimuksesi on tarkastettavana. Odota, kunnes vuokranantaja hyväksyy vuokrasi.',
      ),
    ],
  );
  @override
  String get editReview => 'Muokkaa arvostelua';
  @override
  String get writeAReview => 'Kirjoita arvostelu';
  @override
  String get selectRating => 'Valitse luokitus';
  @override
  String get enterYourOpinion => 'Kirjoita mielipiteesi';
  @override
  String get askToEnterReviewMsg => 'Kirjoita arvosteluviesti';
  @override
  String get pressBackAgainToExit => 'Paina uudelleen takaisin poistuaksesi.';
  @override
  String get selectPaymentMethod => 'Valitse maksutapa';
  @override
  String get filter => 'Suodata';
  @override
  String get perMonth => '/kk';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Etsi mitä tahansa kohteesta ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsFr implements TranslationsExceptionsEn {
  _TranslationsExceptionsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Jokin meni pieleen, yritä uudelleen';
  @override
  String get noNidPassport => 'Aucune image NID/Passeport fournie.';
  @override
  String get noRentPropertyFound =>
      'Tälle vuokralaiselle ei löytynyt vuokrakiinteistöä.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Kiinteistöä ei löytynyt!\nKokeile eri avainsanoilla';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Tilaussuunnitelmaa ei löytynyt!\nPäivitä sivu ja yritä uudelleen.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Virheelliset ${dataType} tiedot! Päivitä sivu ja yritä uudelleen.';
  @override
  String get invalidDownloadUrl => 'Virheellinen latausosoite!';
  @override
  String failedToSaveFile({required String error}) =>
      'Tiedoston tallentaminen epäonnistui! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Virhe tiedoston avaamisessa! ${error}';
  @override
  String get noVehicleInfoProvided => 'Ajoneuvotietoja ei ole toimitettu.';
  @override
  String get yourApplicationRejected => 'Hakemuksesi on hylätty';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintFr
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintFr._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintFr noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintFr._(_root);
  @override
  String get noImageProvided => 'Kuvaa ei ole toimitettu';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundFr
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundFr._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Vakuusmaksua ei löytynyt!\nNäet vakuusmaksut, kun ne ovat saatavilla';
  @override
  String get noRentPaymentFound =>
      'Vuokranmaksua ei löytynyt!\nNäet vuokranmaksut, kun ne ovat saatavilla';
  @override
  String get transactionSummaryApiException =>
      'Tapahtumien yhteenvedon hakeminen epäonnistui.';
  @override
  String get noWithdrawRequestFound =>
      'Pyyntöä ei löytynyt!\nLuo nostopyyntö nähdäksesi sen tässä.';
  @override
  String get withdrawRequestNotApproved =>
      'Tätä nostopyyntöä ei ole hyväksytty!.';
  @override
  String get nonZeroError =>
      'Anna kelvollinen summa, joka on suurempi kuin nolla.';
  @override
  String minAmountError({required String minValue}) =>
      'Summan on oltava vähintään ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Summa ei saa ylittää ${maxValue}.';
  @override
  String get selectPaymentMethodHint => 'Valitse ensin maksutapa.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundFr
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundFr._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintFr refundRequestHint =
      _TranslationsExceptionsRefundRequestHintFr._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Valitse ${value} määrä';
  @override
  String get invalidDateRange => 'Virheellinen aikaväli.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} on oltava suurempi kuin nolla.';
  @override
  late final _TranslationsExceptionsEditPropertyFr editProperty =
      _TranslationsExceptionsEditPropertyFr._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationFr rentInvitation =
      _TranslationsExceptionsRentInvitationFr._(_root);
  @override
  String get notenantFoundList =>
      'Ei vuokralaisia!\nLisää vuokralainen nähdäksesi hänet tässä.';
  @override
  String get noFeaturesProvided => 'Ominaisuuksia ei ole toimitettu.';
  @override
  String get noNotificationFound =>
      'Ilmoituksia ei ole saatavilla.\nNäet ilmoituksesi tässä, kun niitä on saatavilla.';
}

// Path: prompt
class _TranslationsPromptFr implements TranslationsPromptEn {
  _TranslationsPromptFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutFr logout = _TranslationsPromptLogoutFr._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationFr application =
      _TranslationsPromptApplicationFr._(_root);
  @override
  late final _TranslationsPromptLaborFr labor = _TranslationsPromptLaborFr._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestFr maintenanceRequest =
      _TranslationsPromptMaintenanceRequestFr._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodFr withdrawMethod =
      _TranslationsPromptWithdrawMethodFr._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesFr unsavedChanges =
      _TranslationsPromptUnsavedChangesFr._(_root);
  @override
  late final _TranslationsPromptPropertyFr property =
      _TranslationsPromptPropertyFr._(_root);
  @override
  late final _TranslationsPromptRentInvitationFr rentInvitation =
      _TranslationsPromptRentInvitationFr._(_root);
  @override
  late final _TranslationsPromptSessionExpiredFr sessionExpired =
      _TranslationsPromptSessionExpiredFr._(_root);
  @override
  late final _TranslationsPromptNoInternetFr noInternet =
      _TranslationsPromptNoInternetFr._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerFr permissionHandler =
      _TranslationsPromptPermissionHandlerFr._(_root);
  @override
  late final _TranslationsPromptImagePickerFr imagePicker =
      _TranslationsPromptImagePickerFr._(_root);
  @override
  late final _TranslationsPromptVerificationDialogFr verificationDialog =
      _TranslationsPromptVerificationDialogFr._(_root);
  @override
  late final _TranslationsPromptNotificationFr notification =
      _TranslationsPromptNotificationFr._(_root);
}

// Path: form
class _TranslationsFormFr implements TranslationsFormEn {
  _TranslationsFormFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameFr fullName =
      _TranslationsFormFullNameFr._(_root);
  @override
  late final _TranslationsFormEmailFr email = _TranslationsFormEmailFr._(_root);
  @override
  late final _TranslationsFormPasswordFr password =
      _TranslationsFormPasswordFr._(_root);
  @override
  late final _TranslationsFormConfirmPasswordFr confirmPassword =
      _TranslationsFormConfirmPasswordFr._(_root);
  @override
  late final _TranslationsFormMobileNumberFr mobileNumber =
      _TranslationsFormMobileNumberFr._(_root);
  @override
  late final _TranslationsFormAddress1Fr address1 =
      _TranslationsFormAddress1Fr._(_root);
  @override
  late final _TranslationsFormAddress2Fr address2 =
      _TranslationsFormAddress2Fr._(_root);
  @override
  late final _TranslationsFormPostalCodeFr postalCode =
      _TranslationsFormPostalCodeFr._(_root);
  @override
  late final _TranslationsFormCityFr city = _TranslationsFormCityFr._(_root);
  @override
  late final _TranslationsFormStateFr state = _TranslationsFormStateFr._(_root);
  @override
  late final _TranslationsFormCountryFr country = _TranslationsFormCountryFr._(
    _root,
  );
  @override
  late final _TranslationsFormOtpFr otp = _TranslationsFormOtpFr._(_root);
  @override
  late final _TranslationsFormTitleFr title = _TranslationsFormTitleFr._(_root);
  @override
  late final _TranslationsFormDateFr date = _TranslationsFormDateFr._(_root);
  @override
  late final _TranslationsFormReasonFr reason = _TranslationsFormReasonFr._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodFr withdrawMethod =
      _TranslationsFormWithdrawMethodFr._(_root);
  @override
  late final _TranslationsFormFileFieldFr fileField =
      _TranslationsFormFileFieldFr._(_root);
  @override
  late final _TranslationsFormNoteFr note = _TranslationsFormNoteFr._(_root);
  @override
  late final _TranslationsFormGenderFr gender = _TranslationsFormGenderFr._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldFr anyField =
      _TranslationsFormAnyFieldFr._(_root);
  @override
  late final _TranslationsFormAnyDropdownFr anyDropdown =
      _TranslationsFormAnyDropdownFr._(_root);
}

// Path: action
class _TranslationsActionFr implements TranslationsActionEn {
  _TranslationsActionFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Seuraava';
  @override
  String get getStarted => 'Aloita';
  @override
  String get skip => 'Ohita';
  @override
  String get select => 'Valitse';
  @override
  String get save => 'Tallenna';
  @override
  String get signIn => 'Kirjaudu sisään';
  @override
  String get signUp => 'Rekisteröidy';
  @override
  String get kContinue => 'Jatka';
  @override
  String get clearAll => 'Tyhjennä kaikki';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Lähetä';
  @override
  String get pay => 'Maksa';
  @override
  String get remove => 'Poista';
  @override
  String get goBack => 'Mene takaisin';
  @override
  String get buyNow => 'Osta nyt';
  @override
  String get no => 'Ei';
  @override
  String get open => 'Avaa';
  @override
  String get addProperty => 'Lisää kiinteistö';
  @override
  String get process => 'Käsittele';
  @override
  String get approve => 'Hyväksy';
  @override
  String get reject => 'Hylkää';
  @override
  String get viewRent => 'Näytä vuokra';
  @override
  String get openNavigationMenu => 'Avaa navigointivalikko';
  @override
  String get seeAll => 'Näytä kaikki';
  @override
  String get update => 'Päivitä';
  @override
  String get printTransaction => 'Tulosta tapahtuma';
  @override
  String get payoutRequest => 'Maksupyyntö';
  @override
  String get addNew => '+ Lisää uusi';
  @override
  String get sendRequest => 'Lähetä pyyntö';
  @override
  String get print => 'Tulosta';
  @override
  String get requestForRefund => 'Pyydä palautusta';
  @override
  String get previous => 'Edellinen';
  @override
  String get delete => 'Poista';
  @override
  String get applyProperty => 'Hae kiinteistöä';
  @override
  String get viewApplication => 'Näytä hakemus';
  @override
  String get inviteTenant => 'Kutsu vuokralainen';
  @override
  String get inviteRent => 'Kutsu vuokraan';
  @override
  String get cancel => 'Peruuta';
  @override
  String get accept => 'Hyväksy';
  @override
  String get submit => 'Lähetä';
  @override
  String get yes => 'Kyllä';
  @override
  String get okay => 'OK';
  @override
  String get confirm => 'Vahvista';
  @override
  String get apply => 'Hae';
  @override
  String get reset => 'Nollaa';
  @override
  String get retry => 'Yritä uudelleen';
  @override
  String get viewAll => 'Näytä kaikki';
}

// Path: pages
class _TranslationsPagesFr implements TranslationsPagesEn {
  _TranslationsPagesFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageFr language =
      _TranslationsPagesLanguageFr._(_root);
  @override
  late final _TranslationsPagesOnboardFr onboard =
      _TranslationsPagesOnboardFr._(_root);
  @override
  late final _TranslationsPagesSignInFr signIn = _TranslationsPagesSignInFr._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordFr forgotPassword =
      _TranslationsPagesForgotPasswordFr._(_root);
  @override
  late final _TranslationsPagesOtpVerificationFr otpVerification =
      _TranslationsPagesOtpVerificationFr._(_root);
  @override
  late final _TranslationsPagesResetPasswordFr resetPassword =
      _TranslationsPagesResetPasswordFr._(_root);
  @override
  late final _TranslationsPagesSignUpFr signUp = _TranslationsPagesSignUpFr._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeFr welcome =
      _TranslationsPagesWelcomeFr._(_root);
  @override
  late final _TranslationsPagesAboutUsFr aboutUs =
      _TranslationsPagesAboutUsFr._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsFr termsAndConditions =
      _TranslationsPagesTermsAndConditionsFr._(_root);
  @override
  late final _TranslationsPagesNotificationListFr notificationList =
      _TranslationsPagesNotificationListFr._(_root);
  @override
  late final _TranslationsPagesContactUsFr contactUs =
      _TranslationsPagesContactUsFr._(_root);
  @override
  late final _TranslationsPagesCancelRentingFr cancelRenting =
      _TranslationsPagesCancelRentingFr._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsFr invoiceDetails =
      _TranslationsPagesInvoiceDetailsFr._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentFr offlinePayment =
      _TranslationsPagesOfflinePaymentFr._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFr paymentStatus =
      _TranslationsPagesPaymentStatusFr._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsFr propertyDetails =
      _TranslationsPagesPropertyDetailsFr._(_root);
  @override
  late final _TranslationsPagesSearchFr search = _TranslationsPagesSearchFr._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanFr subscriptionPlan =
      _TranslationsPagesSubscriptionPlanFr._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportFr
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportFr._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsFr implements TranslationsEnumsEn {
  _TranslationsEnumsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusFr propertyStatus =
      _TranslationsEnumsPropertyStatusFr._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeFr propertyType =
      _TranslationsEnumsPropertyTypeFr._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusFr applicationStatus =
      _TranslationsEnumsApplicationStatusFr._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusFr myRentStatus =
      _TranslationsEnumsMyRentStatusFr._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusFr maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusFr._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeFr tenantProfileType =
      _TranslationsEnumsTenantProfileTypeFr._(_root);
  @override
  late final _TranslationsEnumsTenantTypeFr tenantType =
      _TranslationsEnumsTenantTypeFr._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusFr paymentStatus =
      _TranslationsEnumsPaymentStatusFr._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsFr paymentOptions =
      _TranslationsEnumsPaymentOptionsFr._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeFr paymentType =
      _TranslationsEnumsPaymentTypeFr._(_root);
  @override
  late final _TranslationsEnumsGenderFr gender = _TranslationsEnumsGenderFr._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationFr ecRelation =
      _TranslationsEnumsEcRelationFr._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeFr vehicleType =
      _TranslationsEnumsVehicleTypeFr._(_root);
  @override
  late final _TranslationsEnumsSortByFr sortBy = _TranslationsEnumsSortByFr._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeFr residentialType =
      _TranslationsEnumsResidentialTypeFr._(_root);
  @override
  late final _TranslationsEnumsFloorRangeFr floorRange =
      _TranslationsEnumsFloorRangeFr._(_root);
  @override
  late final _TranslationsEnumsFurnishingsFr furnishings =
      _TranslationsEnumsFurnishingsFr._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeFr commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeFr._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeFr landPropertyType =
      _TranslationsEnumsLandPropertyTypeFr._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeFr residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeFr._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodFr minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodFr._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterFr dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterFr._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileFr
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Puh. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoFr
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Ajoneuvotiedot';
  @override
  String get optional => 'Ajoneuvotiedot (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoFr
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Ajoneuvon rekisterinumero';
  @override
  String get short => 'Rekisterinumero';
  @override
  String get alt => 'Rekisterikilpi';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintFr
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Hakemusta ei löytynyt!\n${subject} näytetään tässä, kun se on saatavilla.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsFr subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsFr._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintFr
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Kiinteistöä ei löytynyt!\nLisää kiinteistö nähdäksesi sen tässä.';
  @override
  String get tenantRecommended =>
      'Suositeltuja kiinteistöjä ei löytynyt\nYritä uudelleen myöhemmin.';
  @override
  String get tenantAllProperty =>
      'Kiinteistöjä ei saatavilla\nYritä uudelleen myöhemmin.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundFr
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) => 'Ei ${status} huoltoa löytynyt.';
  @override
  String get tenant =>
      'Huoltoa ei löytynyt! Voit luoda huoltopyynnön nähdäksesi sen tässä.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundFr
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Ei ${status} palautuspyyntöä löytynyt!\nNäet palautuspyynnön tässä, kun se on saatavilla.';
  @override
  String get tenant =>
      'Palautuspyyntöä ei löytynyt!\nVoit luoda palautuspyynnön nähdäksesi sen tässä.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintFr
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Vuokralainen hyväksyy palautuksen, kun hän saa rahat takaisin';
  @override
  String get tenantReqSuccess =>
      'Käsittelemme palautuspyynnön ja hyväksymme sen 24 tunnin kuluessa.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyFr
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Vuokrakiinteistö on muuttumassa. Sen on oltava voimassa (tehokas) seuraavan kuukauden vuokranmaksua varten.';
  @override
  String get deleteOnRent =>
      'Kiinteistösi on jo vuokrattu vuokralaiselle. Et voi poistaa sitä ennen kuin poistat vuokralaisen ensin';
  @override
  String get alreayRented =>
      'Tämä kiinteistö on jo vuokrattu. Yritä uudelleen myöhemmin.\nTai voit ottaa yhteyttä vuokranantajaan saadaksesi lisätietoja.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationFr
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Vuokrakutsua ei löytynyt!\nLuo vuokrakutsu nähdäksesi sen tässä.';
  @override
  String get tenantNoRentInvitation =>
      'Vuokrakutsua ei löytynyt!\nNäet vuokrakutsun tässä, kun se on saatavilla.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutFr implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Oletko varma, että haluat kirjautua ulos?';
}

// Path: prompt.application
class _TranslationsPromptApplicationFr
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Miksi hylkäät tämän hakemuksen?';
  @override
  late final _TranslationsPromptApplicationApplicationSentFr applicationSent =
      _TranslationsPromptApplicationApplicationSentFr._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborFr implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteFr delete =
      _TranslationsPromptLaborDeleteFr._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestFr
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Miksi tämä pyyntö hylätään?';
  @override
  String get processTitle =>
      'Oletko varma, että käsittelet tämän huoltopyynnön?';
  @override
  String get completeTitle => 'Työ suoritettu?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodFr
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Poista nostotapa?';
  @override
  String get deleteDescription =>
      'Oletko varma, että haluat poistaa tämän nostotavan?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesFr
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Oletko varma, että haluat palata takaisin?';
  @override
  String get message => 'Muutettuja kenttiä ei tallenneta!';
}

// Path: prompt.property
class _TranslationsPromptPropertyFr implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteFr delete =
      _TranslationsPromptPropertyDeleteFr._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationFr
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveFr
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveFr._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptFr tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptFr._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredFr
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Istunto on vanhentunut';
  @override
  String get message => 'Istuntosi on vanhentunut. Kirjaudu sisään uudelleen.';
  @override
  String get action => 'Kirjaudu sisään';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetFr
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ei इंटरनेट-yhteyttä';
  @override
  String get message =>
      'Tarkista Wi-Fi-mobiiliverkkoyhteytesi ja yritä uudelleen.';
  @override
  String get action => 'Yritä uudelleen';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerFr
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Lupa vaaditaan!';
  @override
  String get message =>
      'Sinun on myönnettävä käyttöoikeudet sovellusasetuksissa. Haluatko avata asetukset nyt?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerFr
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Valitse vaihtoehto';
  @override
  String get gallery => 'Galleria';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogFr
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vahvista sähköpostisi';
  @override
  String get message => 'Olemme lähettäneet vahvistuskoodin sähköpostiisi';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} kohteeseen ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationFr
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Tyhjennä ilmoitukset?';
  @override
  String get clearMessage =>
      'Oletko varma, että haluat tyhjentää kaikki ilmoitukset?';
}

// Path: form.fullName
class _TranslationsFormFullNameFr implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Syötä ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsFr errors =
      _TranslationsFormFullNameErrorsFr._(_root);
}

// Path: form.email
class _TranslationsFormEmailFr implements TranslationsFormEmailEn {
  _TranslationsFormEmailFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Syötä ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsFr errors =
      _TranslationsFormEmailErrorsFr._(_root);
}

// Path: form.password
class _TranslationsFormPasswordFr implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsFr errors =
      _TranslationsFormPasswordErrorsFr._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordFr
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Vahvista ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsFr errors =
      _TranslationsFormConfirmPasswordErrorsFr._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberFr
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsFr errors =
      _TranslationsFormMobileNumberErrorsFr._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Fr implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Fr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Talon numero ja kadun nimi';
  @override
  late final _TranslationsFormAddress1ErrorsFr errors =
      _TranslationsFormAddress1ErrorsFr._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Fr implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Fr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Huoneisto, sviitti, yksikkö jne.';
  @override
  late final _TranslationsFormAddress2ErrorsFr errors =
      _TranslationsFormAddress2ErrorsFr._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeFr implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Syötä ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsFr errors =
      _TranslationsFormPostalCodeErrorsFr._(_root);
}

// Path: form.city
class _TranslationsFormCityFr implements TranslationsFormCityEn {
  _TranslationsFormCityFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Syötä ${_root.common.city} nimi.';
  @override
  late final _TranslationsFormCityErrorsFr errors =
      _TranslationsFormCityErrorsFr._(_root);
}

// Path: form.state
class _TranslationsFormStateFr implements TranslationsFormStateEn {
  _TranslationsFormStateFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Syötä ${_root.common.state} nimi.';
  @override
  late final _TranslationsFormStateErrorsFr errors =
      _TranslationsFormStateErrorsFr._(_root);
}

// Path: form.country
class _TranslationsFormCountryFr implements TranslationsFormCountryEn {
  _TranslationsFormCountryFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Valitse ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsFr errors =
      _TranslationsFormCountryErrorsFr._(_root);
}

// Path: form.otp
class _TranslationsFormOtpFr implements TranslationsFormOtpEn {
  _TranslationsFormOtpFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsFr errors =
      _TranslationsFormOtpErrorsFr._(_root);
}

// Path: form.title
class _TranslationsFormTitleFr implements TranslationsFormTitleEn {
  _TranslationsFormTitleFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Otsikko';
  @override
  String get hint => 'Syötä otsikko';
  @override
  late final _TranslationsFormTitleErrorsFr errors =
      _TranslationsFormTitleErrorsFr._(_root);
}

// Path: form.date
class _TranslationsFormDateFr implements TranslationsFormDateEn {
  _TranslationsFormDateFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Valitse ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsFr errors =
      _TranslationsFormDateErrorsFr._(_root);
}

// Path: form.reason
class _TranslationsFormReasonFr implements TranslationsFormReasonEn {
  _TranslationsFormReasonFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Syy';
  @override
  String get hint => 'Syötä syy';
  @override
  late final _TranslationsFormReasonErrorsFr errors =
      _TranslationsFormReasonErrorsFr._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodFr
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Valitse ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsFr errors =
      _TranslationsFormWithdrawMethodErrorsFr._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldFr implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Lataa ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsFr errors =
      _TranslationsFormFileFieldErrorsFr._(_root);
}

// Path: form.note
class _TranslationsFormNoteFr implements TranslationsFormNoteEn {
  _TranslationsFormNoteFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Syötä ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsFr errors =
      _TranslationsFormNoteErrorsFr._(_root);
}

// Path: form.gender
class _TranslationsFormGenderFr implements TranslationsFormGenderEn {
  _TranslationsFormGenderFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Valitse ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsFr errors =
      _TranslationsFormGenderErrorsFr._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldFr implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Syötä ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsFr errors =
      _TranslationsFormAnyFieldErrorsFr._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownFr implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Valitse ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsFr errors =
      _TranslationsFormAnyDropdownErrorsFr._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageFr implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardFr implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataFr onboardData =
      _TranslationsPagesOnboardOnboardDataFr._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInFr implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tervetuloa takaisin';
  @override
  String get subtitle => 'Kirjaudu sisään nyt aloittaaksesi upean matkan.';
  @override
  late final _TranslationsPagesSignInExtraFr extra =
      _TranslationsPagesSignInExtraFr._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordFr
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Unohtuiko salasana';
  @override
  String get subtitle =>
      'Syötä sähköpostiosoitteesi salasanan palauttamista varten.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationFr
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Vahvistus';
  @override
  String subtitle({required String email}) =>
      '4-numeroinen koodi on lähetetty sähköpostiosoitteeseesi. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraFr extra =
      _TranslationsPagesOtpVerificationExtraFr._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordFr
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nollaa salasana';
  @override
  String get subtitle =>
      'Nollaa salasanasi palauttaaksesi sen ja kirjaudu tilillesi';
  @override
  late final _TranslationsPagesResetPasswordExtraFr extra =
      _TranslationsPagesResetPasswordExtraFr._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpFr implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Luo tili';
  @override
  String get subtitle => 'Rekisteröidy nyt aloittaaksesi upean matkan';
  @override
  late final _TranslationsPagesSignUpExtraFr extra =
      _TranslationsPagesSignUpExtraFr._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeFr implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kuka olet?';
  @override
  String get subtitle => 'Valitse alla olevista vaihtoehdoista.';
  @override
  late final _TranslationsPagesWelcomeExtraFr extra =
      _TranslationsPagesWelcomeExtraFr._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsFr implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsFr
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListFr
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Ilmoitukset';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsFr implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraFr extra =
      _TranslationsPagesContactUsExtraFr._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingFr
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Miksi ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormFr form =
      _TranslationsPagesCancelRentingFormFr._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsFr
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentFr
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Offline-maksu';
  @override
  late final _TranslationsPagesOfflinePaymentFormFr form =
      _TranslationsPagesOfflinePaymentFormFr._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraFr extra =
      _TranslationsPagesOfflinePaymentExtraFr._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusFr
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessFr success =
      _TranslationsPagesPaymentStatusSuccessFr._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailFr fail =
      _TranslationsPagesPaymentStatusFailFr._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsFr
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraFr extra =
      _TranslationsPagesPropertyDetailsExtraFr._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchFr implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Haku';
  @override
  late final _TranslationsPagesSearchExtraFr extra =
      _TranslationsPagesSearchExtraFr._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanFr
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Valitse suunnitelmasi';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraFr extra =
      _TranslationsPagesSubscriptionPlanExtraFr._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportFr
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Huoltokustannukset yhteensä: '),
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
class _TranslationsEnumsPropertyStatusFr
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Kaikki kiinteistöt';
  @override
  String get pending => 'Odottaa';
  @override
  String get active => 'Aktiivinen';
  @override
  String get inactive => 'Passiivinen';
  @override
  String get rejected => 'Hylätty';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeFr
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Asunto/Kerrostalo';
  @override
  String get house => 'Talo';
  @override
  String get commercialProperty => 'Liiketila';
  @override
  String get land => 'Maa';
  @override
  String get room => 'Huone';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusFr
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Kaikki';
  @override
  String get pending => 'Odottaa';
  @override
  String get processing => 'Käsittelyssä';
  @override
  String get approved => 'Hyväksytty';
  @override
  String get rejected => 'Hylätty';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusFr
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Odottaa';
  @override
  String get processing => 'Käsittelyssä';
  @override
  String get active => 'Aktiivinen';
  @override
  String get expired => 'Vanhentunut';
  @override
  String get cancelled => 'Peruutettu';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusFr
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Odottaa';
  @override
  String get processing => 'Käsittelyssä';
  @override
  String get rejected => 'Hylätty';
  @override
  String get completed => 'Valmis';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeFr
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Yksityinen (henkilö)';
  @override
  String get company => 'Yritys';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeFr implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Uusi vuokralainen';
  @override
  String get activeTenant => 'Aktiivinen vuokralainen';
  @override
  String get expiredTenant => 'Vanhentunut vuokralainen';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusFr
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Kaikki';
  @override
  String get pending => 'Odottaa';
  @override
  String get paid => 'Maksettu';
  @override
  String get unpaid => 'Maksamatta';
  @override
  String get rejected => 'Hylätty';
  @override
  String get refund => 'Palautus';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsFr
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Verkkomaksu';
  @override
  String get offlinePayment => 'Offline-maksu';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeFr
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Vakuusmaksu';
  @override
  String get rentPayment => 'Vuokranmaksu';
  @override
  String get subscription => 'Tilaus';
}

// Path: enums.gender
class _TranslationsEnumsGenderFr implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Mies';
  @override
  String get female => 'Nainen';
  @override
  String get other => 'Muu';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationFr implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Vaimo';
  @override
  String get parent => 'Vanhempi';
  @override
  String get friend => 'Ystävä';
  @override
  String get brother => 'Veli';
  @override
  String get sister => 'Sisar';
  @override
  String get child => 'Lapsi';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeFr
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Auto';
  @override
  String get motorcycles => 'Moottoripyörät';
  @override
  String get lorry => 'Kuorma-auto';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByFr implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Matalasta korkeaan';
  @override
  String get highToLow => 'Korkeasta matalaan';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeFr
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Kerrostaloasunto';
  @override
  String get apartment => 'Asunto';
  @override
  String get condominium => 'Kerrostalo';
  @override
  String get serviceResidence => 'Palveluasunto';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Paritalo';
  @override
  String get townhouseCondo => 'Rivitaloasunto';
  @override
  String get others => 'Muut';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeFr implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Korkea';
  @override
  String get medium => 'Keski';
  @override
  String get low => 'Matala';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsFr
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Täysin kalustettu';
  @override
  String get partiallyFurnished => 'Osittain kalustettu';
  @override
  String get notFurnished => 'Ei kalustettu';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeFr
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Toimistotila';
  @override
  String get retailSpace => 'Vähittäismyyntitila';
  @override
  String get shopLot => 'Liiketila';
  @override
  String get warehouseFactory => 'Varasto / Tehdas';
  @override
  String get hotelResort => 'Hotelli / Lomakeskus';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Muut';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeFr
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Asuin';
  @override
  String get industrial => 'Teollisuus';
  @override
  String get agricultural => 'Maatalous';
  @override
  String get commercial => 'Kaupallinen';
  @override
  String get mixedDevelopment => 'Sekakäyttöinen';
  @override
  String get others => 'Muut';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeFr
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Kerrostalo / Palveluasunto / Kattohuoneisto';
  @override
  String get apartment => 'Asunto / Huoneisto';
  @override
  String get house => 'Talot';
  @override
  String get shoplot => 'Liiketila';
  @override
  String get sharing => 'Asunnon / huoneiston jakaminen';
  @override
  String get others => 'Muut';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodFr
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 kuukautta';
  @override
  String get oneYear => '1 vuosi';
  @override
  String get oneAndHalfYears => '1,5 vuotta';
  @override
  String get twoYears => '2 vuotta';
  @override
  String get twoAndHalfYears => '2,5 vuotta';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterFr
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Päivittäin';
  @override
  String get weekly => 'Viikoittain';
  @override
  String get monthly => 'Kuukausittain';
  @override
  String get yearly => 'Vuosittain';
  @override
  String get custom => 'Mukautettu';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsFr
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Hakemuksesi';
  @override
  String get landlord => 'Vuokralaisen hakemus';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentFr
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Hakemus lähetetty onnistuneesti!';
  @override
  String get sucessDescription => 'Näet tämän hakemuksen hakemusluettelossasi';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteFr
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Poista työvoima?';
  @override
  String get description =>
      'Oletko varma, että haluat poistaa tämän työntekijän?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteFr
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Poista kiinteistö?';
  @override
  String get message => 'Oletko varma, että haluat poistaa tämän kiinteistön?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveFr
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Oletko varma, että haluat hyväksyä tämän vuokran?';
  @override
  String get description =>
      'Varmista, että olet tarkistanut vuokralaisen allekirjoittaman sopimuksen.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptFr
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Oletko varma, että haluat hyväksyä tämän kutsun?';
  @override
  String get description =>
      'Varmista, että olet ladannut sopimus-pdf-tiedoston!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsFr
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsFr implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.common.email}-osoitteesi';
  @override
  String get invalid => '⦸ Virheellinen sähköposti, yritä uudelleen';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsFr
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Salasanan on oltava vähintään ${count} merkkiä!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsFr
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.common.password}';
  @override
  String get notMatched => 'Vahvistettu salasana ei täsmää!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsFr
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsFr
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsFr
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsFr
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsFr implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.common.city} nimi.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsFr implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna ${_root.common.state} nimi.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsFr
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Valitse ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsFr implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna otp.';
  @override
  String get invalid => 'Anna oikea otp.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsFr implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna otsikko';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsFr implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Valitse ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsFr
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna syy';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsFr
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Valitse ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsFr
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Valitse ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsFr implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Syötä ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsFr
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Valitse ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsFr
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Syötä ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Anna kelvollinen @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsFr
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Valitse ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Valitse kelvollinen @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataFr
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Fr data1 =
      _TranslationsPagesOnboardOnboardDataData1Fr._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Fr data2 =
      _TranslationsPagesOnboardOnboardDataData2Fr._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Fr data3 =
      _TranslationsPagesOnboardOnboardDataData3Fr._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraFr
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Muista minut';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Eikö sinulla ole tiliä? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraFr
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendFr codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendFr._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraFr
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogFr dialog =
      _TranslationsPagesResetPasswordExtraDialogFr._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraFr
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Onko sinulla tili? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraFr
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Hallitse omia kiinteistöjäsi';
  @override
  String get tenantTag => 'Kirjaudu vuokratilillesi';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraFr
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Viesti...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormFr
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonFr reason =
      _TranslationsPagesCancelRentingFormReasonFr._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormFr
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteFr paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteFr._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraFr
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Maksettava summa: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Tilinhaltijan nimi';
  @override
  String get accountNumber => 'Tilinumero';
  @override
  String get swiftCode => 'Swift-koodi';
  @override
  String get branch => 'Konttori';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Valitse vain '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' tai '),
      fileType('DOC'),
      const TextSpan(text: '-muotoiset tiedostot. Tiedoston koko '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessFr
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Näytä lasku';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Käsittelemme maksun ja hyväksymme sen 24 tunnin kuluessa.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailFr
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Yritä uudelleen';
  @override
  String get title => 'Oho! Maksu epäonnistui';
  @override
  String get description =>
      'Tapahtumasi epäonnistui jonkin teknisen virheen vuoksi.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraFr
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

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
      const TextSpan(text: 'Ominaisuudet '),
      fa('(Palvelut ja mukavuudet)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Valitse vuokra-aika';
  @override
  String get writeAReview => '+ Kirjoita arvostelu';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraFr
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Etsi tontteja, asuntoja, huoneita...';
  @override
  String get noRecentSearch => 'Sinulla ei ole viimeaikaisia hakuja.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraFr
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Tilausmaksu onnistui.\nVoit käyttää tilattuja ominaisuuksia nyt.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Fr
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Fr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Löydä kiinteistösi';
  @override
  String get description =>
      'Olemme tehneet siitä helppoa löytää paikka, joka sopii elämääsi – olipa se huone, asunto tai talo.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Fr
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Fr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Asunto kaupungissa';
  @override
  String get description =>
      'Säästämme aikaasi yhdistämällä sinut nopeasti täydelliseen kiinteistöön ennen kuin se menee, jotta voit nauttia uudesta kodistasi tai listata omasi ilmaiseksi.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Fr
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Fr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Mukava talosi';
  @override
  String get description =>
      'Jos etsit asuinpaikkaa, tutustu vuokrattaviin taloihimme. Meillä on laaja valikoima taloja, joista voit valita ympäri maata.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendFr
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Koodi lähetetään ${minutes}:${seconds} kuluttua';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Lähetä koodi uudelleen'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogFr
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Muutettu onnistuneesti!';
  @override
  String get subtitle =>
      'Kirjaudu sisään uudella salasanallasi.\nSinut ohjataan kirjautumiseen...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonFr
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Kirjoita syy';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsFr errors =
      _TranslationsPagesCancelRentingFormReasonErrorsFr._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteFr
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Maksun huomautus (${_root.common.optional})';
  @override
  String get hint => 'Kirjoita tekstiä...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsFr
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsFr._(this._root);

  final TranslationsFr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Anna syy vuokran peruutukselle';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsFr {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profiili';
      case 'common.language':
        return 'Kieli';
      case 'common.subscriptionPlan':
        return 'Tilaussuunnitelma';
      case 'common.contactUs':
        return 'Ota yhteyttä';
      case 'common.termsAndConditions':
        return 'Käyttöehdot';
      case 'common.aboutUs':
        return 'Meistä';
      case 'common.logout':
        return 'Kirjaudu ulos';
      case 'common.editProfile':
        return 'Muokkaa profiilia';
      case 'common.fullName':
        return 'Koko nimi';
      case 'common.email':
        return 'Sähköposti';
      case 'common.mobileNumber':
        return 'Matkapuhelinnumero';
      case 'common.address':
        return 'Osoite';
      case 'common.postalCode':
        return 'Postinumero';
      case 'common.city':
        return 'Kaupunki';
      case 'common.country':
        return 'Maa';
      case 'common.state':
        return 'Osavaltio';
      case 'common.password':
        return 'Salasana';
      case 'common.forgotPassword':
        return 'Unohtuiko salasana';
      case 'common.tenant':
        return 'Vuokralainen';
      case 'common.landlord':
        return 'Vuokranantaja';
      case 'common.cancelRenting':
        return 'Peruuta vuokraus';
      case 'common.startDate':
        return 'Aloituspäivä';
      case 'common.endDate':
        return 'Päättymispäivä';
      case 'common.fromDate':
        return 'Mistä päivästä';
      case 'common.toDate':
        return 'Mihin päivään';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Pankkilista';
      case 'common.withdrawMethod':
        return 'Nostotapa';
      case 'common.uploadPaymentReceipt':
        return 'Lataa maksukuitti';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Huomautus: '),
            note('Maksu vaatii manuaalisen hyväksynnän järjestelmänvalvojalta'),
            const TextSpan(text: ' '),
            duraion('24–48 tunnin sisällä.'),
          ],
        );
      case 'common.reviews':
        return 'Arvostelut';
      case 'common.description':
        return 'Kuvaus';
      case 'common.about':
        return 'Tietoja';
      case 'common.propertyTypes':
        return 'Kiinteistötyypit';
      case 'common.features':
        return 'Ominaisuudet';
      case 'common.floorPlans':
        return 'Pohjapiirrokset';
      case 'common.buildingDetails':
        return 'Rakennuksen tiedot';
      case 'common.buildingName':
        return 'Rakennuksen nimi';
      case 'common.propertyAddress':
        return 'Kiinteistön osoite';
      case 'common.completionYear':
        return 'Valmistumisvuosi';
      case 'common.lotNumber':
        return 'Tonttinumero';
      case 'common.residentialType':
        return 'Asumistyyppi';
      case 'common.furnishings':
        return 'Kalusteet';
      case 'common.floorRange':
        return 'Kerrosalue';
      case 'common.bedrooms':
        return 'Makuuhuoneet';
      case 'common.bathrooms':
        return 'Kylpyhuoneet';
      case 'common.propertySize':
        return 'Kiinteistön koko';
      case 'common.rentalPeriod':
        return 'Vuokra-aika';
      case 'common.securityDeposit':
        return 'Vakuusmaksu';
      case 'common.utilityBill':
        return 'Sähkölasku';
      case 'common.facilities':
        return 'Palvelut';
      case 'common.amenities':
        return 'Mukavuudet';
      case 'common.expiringReason':
        return 'Vanhenemisen syy';
      case 'common.tenantDetails':
        return 'Vuokralaisen tiedot';
      case 'common.typeOfTenant':
        return 'Vuokralaisen tyyppi';
      case 'common.tenantName':
        return 'Vuokralaisen nimi';
      case 'common.nidPassport':
        return 'NID/Passeport';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Vuokralaisen tunnus';
      case 'common.dateOfBirth':
        return 'Syntymäaika';
      case 'common.gender':
        return 'Sukupuoli';
      case 'common.nominee':
        return 'Ehdokas';
      case 'common.name':
        return 'Nimi';
      case 'common.optional':
        return 'Valinnainen';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Puh. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Hätäyhteyshenkilö';
      case 'common.relation':
        return 'Suhde';
      case 'common.relationWith':
        return '${_root.common.relation} With';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} Sinulle';
      case 'common.company':
        return 'Yritys';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Työpaikka';
      case 'common.officePhoneNo':
        return 'Työpuhelinnumero';
      case 'common.officeMobileNo':
        return 'Työ ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Ajoneuvo';
      case 'common.vehiclesInfo.plain':
        return 'Ajoneuvotiedot';
      case 'common.vehiclesInfo.optional':
        return 'Ajoneuvotiedot (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Ajoneuvon rekisterinumero';
      case 'common.vehicleRegistrationNo.short':
        return 'Rekisterinumero';
      case 'common.vehicleRegistrationNo.alt':
        return 'Rekisterikilpi';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Merkki';
      case 'common.rentProperty':
        return 'Vuokraa kiinteistö';
      case 'common.propertyDetails':
        return 'Kiinteistön tiedot';
      case 'common.propertyId':
        return 'Kiinteistön ID';
      case 'common.propertyType':
        return 'Kiinteistötyyppi';
      case 'common.propertyName':
        return 'Kiinteistön nimi';
      case 'common.paymentDetails':
        return 'Maksutiedot';
      case 'common.monthlyRent':
        return 'Kuukausivuokra';
      case 'common.thisMonthPayment':
        return 'Tämän kuun maksu';
      case 'common.totalPaidRent':
        return 'Maksettu vuokra yhteensä';
      case 'common.dueRent':
        return 'Erääntyvä vuokra';
      case 'common.rentStartDate':
        return 'Vuokra ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Vuokra ${_root.common.endDate}';
      case 'common.status':
        return 'Tila';
      case 'common.rentAgreementPdf':
        return 'Vuokrasopimus PDF';
      case 'common.noFile':
        return 'Ei tiedostoa';
      case 'common.tenantImageOp':
        return 'Vuokralaisen kuva ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Lisää uusi ajoneuvo';
      case 'common.uploadNidPassport':
        return 'Télécharger NID/Passeport';
      case 'common.nidPassportUploadNote':
        return 'Seules les images de type fichier seront acceptées. Limite de taille de fichier jusqu\'à 2,5 Mo.';
      case 'common.search':
        return 'Haku';
      case 'common.sortBy':
        return 'Lajittele';
      case 'common.subscription':
        return 'Tilaus';
      case 'common.downloading':
        return 'Ladataan...';
      case 'common.downloadSuccess':
        return 'Tiedosto ladattu onnistuneesti!';
      case 'common.addPropertyBannerTitle':
        return 'Haluatko vuokrata kiinteistösi?';
      case 'common.application':
        return 'Hakemus';
      case 'common.tenantHasPaidDeposit':
        return 'Vuokralainen on maksanut talletuksen.';
      case 'common.askProcessingRentApplication':
        return 'Oletko varma, että käsittelet tämän vuokrakiinteistön pyynnön?';
      case 'common.dateAndTime':
        return 'Päivämäärä ja aika';
      case 'common.applicationDetails':
        return 'Hakemuksen tiedot';
      case 'common.depositStatus':
        return 'Talletuksen tila';
      case 'common.uploadRentAgreement':
        return 'Lataa vuokrasopimus';
      case 'common.uploadFilePDF':
        return 'Lataa tiedosto (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Valitse sopimusasiakirjatiedosto.';
      case 'common.landlordRentAgreementPDF':
        return 'Vuokranantajan vuokrasopimus PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Vuokralaisen vuokrasopimus PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Huomautus: '),
            note(
              'Hyväksy hakemus vasta sen jälkeen, kun vuokralainen on suorittanut talletusmaksun.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Hylkäämisen syy';
      case 'common.youveRejectedThisApplication':
        return 'Olet hylännyt tämän hakemuksen';
      case 'common.landlordDetails':
        return 'Vuokranantajan tiedot';
      case 'common.landlordName':
        return 'Vuokranantajan nimi';
      case 'common.downloadRentAgreement':
        return 'Lataa vuokrasopimus';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Hyväksy '),
            toc('käyttöehdot'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Huomautus: '),
            note(
              'Lataa ja lue sopimus. Lähetä allekirjoitettu sopimus vuokranantajalle WhatsAppin tai sähköpostin välityksellä.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Huomautus: '),
            note(
              'Vuokranantaja hyväksyy hakemuksen, kun vuokralainen maksaa vakuuden, sähkölaskun ja yhden kuukauden vuokran etukäteen.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Vuokrasopimus (PDF) '),
            complete('Täytä sopimus'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Huomautus : '),
            note(
              'Vuokranantaja hyväksyy hakemuksen, kun vuokralainen maksaa vakuuden, sähkölaskun ja yhden kuukauden vuokran etukäteen.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Hakemusluettelo';
      case 'common.viewDetails':
        return 'Näytä tiedot';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Koti';
      case 'common.dashboard':
        return 'Hallintapaneeli';
      case 'common.tenants':
        return 'Vuokralaiset';
      case 'common.maintenance':
        return 'Huolto';
      case 'common.maintenanceList':
        return 'Huoltoluettelo';
      case 'common.maintenanceReport':
        return 'Huoltoraportti';
      case 'common.labor':
        return 'Työvoima';
      case 'common.applications':
        return 'Hakemukset';
      case 'common.rentInvitation':
        return 'Vuokrakutsu';
      case 'common.payment':
        return 'Maksu';
      case 'common.rentPayment':
        return 'Vuokranmaksu';
      case 'common.depositUtilityPayment':
        return 'Talletus- ja sähkölaskun maksu';
      case 'common.refundRequest':
        return 'Palautuspyyntö';
      case 'common.withdrawRequest':
        return 'Nostopyyntö';
      case 'common.myProperty':
        return 'Oma kiinteistöni';
      case 'common.myRent':
        return 'Oma vuokrani';
      case 'common.wishlist':
        return 'Toivelista';
      case 'common.properties':
        return 'Kiinteistöt';
      case 'common.allProperties':
        return 'Kaikki kiinteistöt';
      case 'common.totalPropery':
        return 'Kiinteistöjä yhteensä';
      case 'common.occupied':
        return 'Varattu';
      case 'common.vacant':
        return 'Vapaa';
      case 'common.accounting':
        return 'Kirjanpito';
      case 'common.totalIncome':
        return 'Tulot yhteensä';
      case 'common.totalExpense':
        return 'Menot yhteensä';
      case 'common.currentBalance':
        return 'Nykyinen saldo';
      case 'common.totalWithdrawal':
        return 'Nostot yhteensä';
      case 'common.totalProperties':
        return 'Kiinteistöjä yhteensä';
      case 'common.totalTenant':
        return 'Vuokralaisia yhteensä';
      case 'common.totalRentPaid':
        return 'Maksettu vuokra yhteensä';
      case 'common.totalRentDue':
        return 'Erääntyvä vuokra yhteensä';
      case 'common.totalApplication':
        return 'Hakemuksia yhteensä';
      case 'common.pendingApplication':
        return 'Odottaa hakemusta';
      case 'common.processingApplication':
        return 'Käsittelyssä oleva hakemus';
      case 'common.approveApplication':
        return 'Hyväksy hakemus';
      case 'common.rejectApplication':
        return 'Hylkää hakemus';
      case 'common.maintenanceCost':
        return 'Huoltokustannukset';
      case 'common.transactionSummary':
        return 'Tapahtumien yhteenveto';
      case 'common.maintenanceRequest':
        return 'Huoltopyyntö';
      case 'common.notifications':
        return 'Ilmoitukset';
      case 'common.myProperties':
        return 'Omat kiinteistöni';
      case 'common.recommendationProperties':
        return 'Suositellut kiinteistöt';
      case 'common.laborList':
        return 'Työvoimaluettelo';
      case 'common.addLabor':
        return 'Lisää työvoimaa';
      case 'common.laborDetails':
        return 'Työvoiman tiedot';
      case 'common.laborSalary':
        return 'Työvoiman palkka';
      case 'common.editLabor':
        return 'Muokkaa työvoimaa';
      case 'common.addNewLabor':
        return 'Lisää uusi työvoima';
      case 'common.enterAmount':
        return 'Syötä summa';
      case 'common.maintenanceDetails':
        return 'Huoltotiedot';
      case 'common.laborName':
        return 'Työvoiman nimi';
      case 'common.comment':
        return 'Kommentti';
      case 'common.image':
        return 'Kuva';
      case 'common.complete':
        return 'Valmis';
      case 'common.details':
        return 'Tiedot';
      case 'common.title':
        return 'Otsikko';
      case 'common.date':
        return 'Päivämäärä';
      case 'common.reason':
        return 'Syy';
      case 'common.edit':
        return 'Muokkaa';
      case 'common.property':
        return 'Kiinteistö';
      case 'common.completeYourProfile':
        return 'Täytä profiilisi';
      case 'common.profileImage':
        return 'Profiilikuva';
      case 'common.imagePickHint':
        return 'Vain JPEG- ja PNG-kuvat, joiden enimmäiskoko on 120x120 pikseliä.';
      case 'common.invoiceId':
        return 'Laskun ID';
      case 'common.depositAmount':
        return 'Talletussumma';
      case 'common.landlordPhone':
        return 'Vuokranantajan puhelin';
      case 'common.rentalAdvance':
        return 'Vuokra (ennakko)';
      case 'common.totalAmount':
        return 'Summa yhteensä';
      case 'common.rentalAmount':
        return 'Vuokrasumma';
      case 'common.adminCharge':
        return 'Hallinnointimaksu';
      case 'common.editAccount':
        return 'Muokkaa tiliä';
      case 'common.addNewAccount':
        return 'Lisää uusi tili';
      case 'common.transactionId':
        return 'Tapahtumien ID';
      case 'common.transactionType':
        return 'Tapahtumatyyppi';
      case 'common.requestDate':
        return 'Pyyntöpäivä';
      case 'common.amount':
        return 'Summa';
      case 'common.fee':
        return 'Maksu';
      case 'common.paymentStatus':
        return 'Maksun tila';
      case 'common.generatedTime':
        return 'Luontiaika';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text: 'Tämä on järjestelmän luoma raportti kohteesta ',
            ),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Nostohistoria';
      case 'common.history':
        return 'Historia';
      case 'common.withdrawAmount':
        return 'Nostosumma';
      case 'common.availableBalance':
        return 'Käytettävissä oleva saldo';
      case 'common.withdrawCharge':
        return 'Nostomaksu';
      case 'common.paymentMethod':
        return 'Maksutapa';
      case 'common.requestSendSuccess':
        return 'Pyyntö lähetetty onnistuneesti!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Maksukuitti lähetetty onnistuneesti.';
      case 'common.refundReason':
        return 'Palautuksen syy';
      case 'common.note':
        return 'Huomautus';
      case 'common.refundReceiveSuccess':
        return 'Palautus vastaanotettu onnistuneesti.';
      case 'common.downloadPaymentReceipt':
        return 'Lataa maksukuitti';
      case 'common.invoice':
        return 'Lasku';
      case 'common.selectPropertyToSeeInvoice':
        return 'Valitse kiinteistö nähdäksesi laskunumeron...';
      case 'common.bankAccName':
        return 'Pankkitilin nimi';
      case 'common.bankName':
        return 'Pankin nimi';
      case 'common.bankAccNum':
        return 'Pankkitilin numero';
      case 'common.thankYou':
        return 'Kiitos!';
      case 'common.basicInfo':
        return 'Perustiedot';
      case 'common.descriptionPricing':
        return 'Kuvaus ja hinnoittelu';
      case 'common.contact':
        return 'Yhteystiedot';
      case 'common.photos':
        return 'Kuvat';
      case 'common.successfullySubmitted':
        return 'Onnistuneesti lähetetty!';
      case 'common.editProperty':
        return 'Muokkaa kiinteistöä';
      case 'common.addNewProperty':
        return 'Lisää uusi kiinteistö';
      case 'common.propertyManageRequestSuccess':
        return 'Mainoksesi on lähetetty tarkastettavaksi.';
      case 'common.postAnotherProperty':
        return 'Lähetä toinen kiinteistö';
      case 'common.browseYourProperty':
        return 'Selaa kiinteistöäsi';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Vaihe '),
                step,
                const TextSpan(text: ' / '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Mitä haluaisit lähettää?';
      case 'common.category':
        return 'Kategoria';
      case 'common.invalidCategory':
        return 'Virheellinen kategoria';
      case 'common.unitNumber':
        return 'Yksikkönumero';
      case 'common.sqft':
        return 'neliöjalkaa';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Kiinteistön koon tulee olla suurempi kuin nolla';
      case 'common.whatAreTheFacility':
        return 'Mitkä ovat palvelut?';
      case 'common.whatAreTheAmenity':
        return 'Mitkä ovat mukavuudet?';
      case 'common.parkingLot':
        return 'Pysäköintialue';
      case 'common.houseType':
        return 'Majatyyppi';
      case 'common.value':
        return 'Arvo';
      case 'common.unitLotSize':
        return 'Yksikön / tontin koko';
      case 'common.landSize':
        return 'Maan koko';
      case 'common.acres':
        return 'hehtaari(a)';
      case 'common.roomSize':
        return 'Huoneen koko';
      case 'common.askTenantPreference':
        return 'Mikä on vuokralaispreferenceesi?';
      case 'common.couple':
        return 'Pariskunta';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Kuvaile ${propertyType}';
      case 'common.adTitle':
        return 'Mainoksen otsikko';
      case 'common.minimumRentalPeriod':
        return 'Vähimmäisvuokra-aika';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Numero';
      case 'common.hideOrDisplayEmail':
        return 'Piilota tai näytä sähköpostiosoite';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Kiitos, että lähetit kohteen kohteeseen ${appName}!';
      case 'common.propertyList':
        return 'Kiinteistöluettelo';
      case 'common.newInviteRent':
        return 'Uusi vuokrakutsu';
      case 'common.rentAgreement':
        return 'Vuokrasopimus';
      case 'common.rentDetails':
        return 'Vuokratiedot';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Huomautus: '),
            note('Odota, että vuokralainen hyväksyy kutsun.'),
          ],
        );
      case 'common.rent':
        return 'Vuokra';
      case 'common.editTenant':
        return 'Muokkaa vuokralaista';
      case 'common.addNewTenant':
        return 'Lisää uusi vuokralainen';
      case 'common.shareInstallLink':
        return 'Jaa asennuslinkki';
      case 'common.tenantList':
        return 'Vuokralaisluettelo';
      case 'common.editMaintenanceRequest':
        return 'Muokkaa huoltopyyntöä';
      case 'common.addNewMaintenance':
        return 'Lisää uusi huolto';
      case 'common.landlordId':
        return 'Vuokranantajan tunnus';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Huomautus '),
            note(
              'Sopimuksesi on tarkastettavana. Odota, kunnes vuokranantaja hyväksyy vuokrasi.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Muokkaa arvostelua';
      case 'common.writeAReview':
        return 'Kirjoita arvostelu';
      case 'common.selectRating':
        return 'Valitse luokitus';
      case 'common.enterYourOpinion':
        return 'Kirjoita mielipiteesi';
      case 'common.askToEnterReviewMsg':
        return 'Kirjoita arvosteluviesti';
      case 'common.pressBackAgainToExit':
        return 'Paina uudelleen takaisin poistuaksesi.';
      case 'common.selectPaymentMethod':
        return 'Valitse maksutapa';
      case 'common.filter':
        return 'Suodata';
      case 'common.perMonth':
        return '/kk';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Etsi mitä tahansa kohteesta ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Jokin meni pieleen, yritä uudelleen';
      case 'exceptions.noNidPassport':
        return 'Aucune image NID/Passeport fournie.';
      case 'exceptions.noRentPropertyFound':
        return 'Tälle vuokralaiselle ei löytynyt vuokrakiinteistöä.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Kiinteistöä ei löytynyt!\nKokeile eri avainsanoilla';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Tilaussuunnitelmaa ei löytynyt!\nPäivitä sivu ja yritä uudelleen.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Virheelliset ${dataType} tiedot! Päivitä sivu ja yritä uudelleen.';
      case 'exceptions.invalidDownloadUrl':
        return 'Virheellinen latausosoite!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Tiedoston tallentaminen epäonnistui! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Virhe tiedoston avaamisessa! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Ajoneuvotietoja ei ole toimitettu.';
      case 'exceptions.yourApplicationRejected':
        return 'Hakemuksesi on hylätty';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Hakemusta ei löytynyt!\n${subject} näytetään tässä, kun se on saatavilla.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Hakemuksesi';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Vuokralaisen hakemus';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Kiinteistöä ei löytynyt!\nLisää kiinteistö nähdäksesi sen tässä.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Suositeltuja kiinteistöjä ei löytynyt\nYritä uudelleen myöhemmin.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Kiinteistöjä ei saatavilla\nYritä uudelleen myöhemmin.';
      case 'exceptions.noImageProvided':
        return 'Kuvaa ei ole toimitettu';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) => 'Ei ${status} huoltoa löytynyt.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Huoltoa ei löytynyt! Voit luoda huoltopyynnön nähdäksesi sen tässä.';
      case 'exceptions.noDepositFound':
        return 'Vakuusmaksua ei löytynyt!\nNäet vakuusmaksut, kun ne ovat saatavilla';
      case 'exceptions.noRentPaymentFound':
        return 'Vuokranmaksua ei löytynyt!\nNäet vuokranmaksut, kun ne ovat saatavilla';
      case 'exceptions.transactionSummaryApiException':
        return 'Tapahtumien yhteenvedon hakeminen epäonnistui.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Pyyntöä ei löytynyt!\nLuo nostopyyntö nähdäksesi sen tässä.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Tätä nostopyyntöä ei ole hyväksytty!.';
      case 'exceptions.nonZeroError':
        return 'Anna kelvollinen summa, joka on suurempi kuin nolla.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Summan on oltava vähintään ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Summa ei saa ylittää ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Valitse ensin maksutapa.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Ei ${status} palautuspyyntöä löytynyt!\nNäet palautuspyynnön tässä, kun se on saatavilla.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Palautuspyyntöä ei löytynyt!\nVoit luoda palautuspyynnön nähdäksesi sen tässä.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Vuokralainen hyväksyy palautuksen, kun hän saa rahat takaisin';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Käsittelemme palautuspyynnön ja hyväksymme sen 24 tunnin kuluessa.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Valitse ${value} määrä';
      case 'exceptions.invalidDateRange':
        return 'Virheellinen aikaväli.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} on oltava suurempi kuin nolla.';
      case 'exceptions.editProperty.rentalChange':
        return 'Vuokrakiinteistö on muuttumassa. Sen on oltava voimassa (tehokas) seuraavan kuukauden vuokranmaksua varten.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Kiinteistösi on jo vuokrattu vuokralaiselle. Et voi poistaa sitä ennen kuin poistat vuokralaisen ensin';
      case 'exceptions.editProperty.alreayRented':
        return 'Tämä kiinteistö on jo vuokrattu. Yritä uudelleen myöhemmin.\nTai voit ottaa yhteyttä vuokranantajaan saadaksesi lisätietoja.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Vuokrakutsua ei löytynyt!\nLuo vuokrakutsu nähdäksesi sen tässä.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Vuokrakutsua ei löytynyt!\nNäet vuokrakutsun tässä, kun se on saatavilla.';
      case 'exceptions.notenantFoundList':
        return 'Ei vuokralaisia!\nLisää vuokralainen nähdäksesi hänet tässä.';
      case 'exceptions.noFeaturesProvided':
        return 'Ominaisuuksia ei ole toimitettu.';
      case 'exceptions.noNotificationFound':
        return 'Ilmoituksia ei ole saatavilla.\nNäet ilmoituksesi tässä, kun niitä on saatavilla.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Oletko varma, että haluat kirjautua ulos?';
      case 'prompt.application.rejectTitle':
        return 'Miksi hylkäät tämän hakemuksen?';
      case 'prompt.application.applicationSent.successfully':
        return 'Hakemus lähetetty onnistuneesti!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Näet tämän hakemuksen hakemusluettelossasi';
      case 'prompt.labor.delete.title':
        return 'Poista työvoima?';
      case 'prompt.labor.delete.description':
        return 'Oletko varma, että haluat poistaa tämän työntekijän?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Miksi tämä pyyntö hylätään?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Oletko varma, että käsittelet tämän huoltopyynnön?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Työ suoritettu?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Poista nostotapa?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Oletko varma, että haluat poistaa tämän nostotavan?';
      case 'prompt.unsavedChanges.title':
        return 'Oletko varma, että haluat palata takaisin?';
      case 'prompt.unsavedChanges.message':
        return 'Muutettuja kenttiä ei tallenneta!';
      case 'prompt.property.delete.title':
        return 'Poista kiinteistö?';
      case 'prompt.property.delete.message':
        return 'Oletko varma, että haluat poistaa tämän kiinteistön?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Oletko varma, että haluat hyväksyä tämän vuokran?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Varmista, että olet tarkistanut vuokralaisen allekirjoittaman sopimuksen.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Oletko varma, että haluat hyväksyä tämän kutsun?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Varmista, että olet ladannut sopimus-pdf-tiedoston!';
      case 'prompt.sessionExpired.title':
        return 'Istunto on vanhentunut';
      case 'prompt.sessionExpired.message':
        return 'Istuntosi on vanhentunut. Kirjaudu sisään uudelleen.';
      case 'prompt.sessionExpired.action':
        return 'Kirjaudu sisään';
      case 'prompt.noInternet.title':
        return 'Ei इंटरनेट-yhteyttä';
      case 'prompt.noInternet.message':
        return 'Tarkista Wi-Fi-mobiiliverkkoyhteytesi ja yritä uudelleen.';
      case 'prompt.noInternet.action':
        return 'Yritä uudelleen';
      case 'prompt.permissionHandler.title':
        return 'Lupa vaaditaan!';
      case 'prompt.permissionHandler.message':
        return 'Sinun on myönnettävä käyttöoikeudet sovellusasetuksissa. Haluatko avata asetukset nyt?';
      case 'prompt.imagePicker.title':
        return 'Valitse vaihtoehto';
      case 'prompt.imagePicker.gallery':
        return 'Galleria';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Vahvista sähköpostisi';
      case 'prompt.verificationDialog.message':
        return 'Olemme lähettäneet vahvistuskoodin sähköpostiisi';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} kohteeseen ${email}';
      case 'prompt.notification.clearTitle':
        return 'Tyhjennä ilmoitukset?';
      case 'prompt.notification.clearMessage':
        return 'Oletko varma, että haluat tyhjentää kaikki ilmoitukset?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Syötä ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Anna ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Syötä ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Anna ${_root.common.email}-osoitteesi';
      case 'form.email.errors.invalid':
        return '⦸ Virheellinen sähköposti, yritä uudelleen';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Anna ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Salasanan on oltava vähintään ${count} merkkiä!';
      case 'form.confirmPassword.label':
        return 'Vahvista ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Anna ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Vahvistettu salasana ei täsmää!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Anna ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Talon numero ja kadun nimi';
      case 'form.address1.errors.required':
        return 'Anna ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Huoneisto, sviitti, yksikkö jne.';
      case 'form.address2.errors.required':
        return 'Anna ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Syötä ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Anna ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Syötä ${_root.common.city} nimi.';
      case 'form.city.errors.required':
        return 'Anna ${_root.common.city} nimi.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Syötä ${_root.common.state} nimi.';
      case 'form.state.errors.required':
        return 'Anna ${_root.common.state} nimi.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Valitse ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Valitse ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Anna otp.';
      case 'form.otp.errors.invalid':
        return 'Anna oikea otp.';
      case 'form.title.label':
        return 'Otsikko';
      case 'form.title.hint':
        return 'Syötä otsikko';
      case 'form.title.errors.required':
        return 'Anna otsikko';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Valitse ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Valitse ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Syy';
      case 'form.reason.hint':
        return 'Syötä syy';
      case 'form.reason.errors.required':
        return 'Anna syy';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Valitse ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Valitse ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Lataa ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Valitse ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Syötä ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Syötä ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Valitse ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Valitse ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Syötä ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Syötä ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Anna kelvollinen @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Valitse ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Valitse ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Valitse kelvollinen @form.anyDropdown.label';
      case 'action.next':
        return 'Seuraava';
      case 'action.getStarted':
        return 'Aloita';
      case 'action.skip':
        return 'Ohita';
      case 'action.select':
        return 'Valitse';
      case 'action.save':
        return 'Tallenna';
      case 'action.signIn':
        return 'Kirjaudu sisään';
      case 'action.signUp':
        return 'Rekisteröidy';
      case 'action.kContinue':
        return 'Jatka';
      case 'action.clearAll':
        return 'Tyhjennä kaikki';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Lähetä';
      case 'action.pay':
        return 'Maksa';
      case 'action.remove':
        return 'Poista';
      case 'action.goBack':
        return 'Mene takaisin';
      case 'action.buyNow':
        return 'Osta nyt';
      case 'action.no':
        return 'Ei';
      case 'action.open':
        return 'Avaa';
      case 'action.addProperty':
        return 'Lisää kiinteistö';
      case 'action.process':
        return 'Käsittele';
      case 'action.approve':
        return 'Hyväksy';
      case 'action.reject':
        return 'Hylkää';
      case 'action.viewRent':
        return 'Näytä vuokra';
      case 'action.openNavigationMenu':
        return 'Avaa navigointivalikko';
      case 'action.seeAll':
        return 'Näytä kaikki';
      case 'action.update':
        return 'Päivitä';
      case 'action.printTransaction':
        return 'Tulosta tapahtuma';
      case 'action.payoutRequest':
        return 'Maksupyyntö';
      case 'action.addNew':
        return '+ Lisää uusi';
      case 'action.sendRequest':
        return 'Lähetä pyyntö';
      case 'action.print':
        return 'Tulosta';
      case 'action.requestForRefund':
        return 'Pyydä palautusta';
      case 'action.previous':
        return 'Edellinen';
      case 'action.delete':
        return 'Poista';
      case 'action.applyProperty':
        return 'Hae kiinteistöä';
      case 'action.viewApplication':
        return 'Näytä hakemus';
      case 'action.inviteTenant':
        return 'Kutsu vuokralainen';
      case 'action.inviteRent':
        return 'Kutsu vuokraan';
      case 'action.cancel':
        return 'Peruuta';
      case 'action.accept':
        return 'Hyväksy';
      case 'action.submit':
        return 'Lähetä';
      case 'action.yes':
        return 'Kyllä';
      case 'action.okay':
        return 'OK';
      case 'action.confirm':
        return 'Vahvista';
      case 'action.apply':
        return 'Hae';
      case 'action.reset':
        return 'Nollaa';
      case 'action.retry':
        return 'Yritä uudelleen';
      case 'action.viewAll':
        return 'Näytä kaikki';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Löydä kiinteistösi';
      case 'pages.onboard.onboardData.data1.description':
        return 'Olemme tehneet siitä helppoa löytää paikka, joka sopii elämääsi – olipa se huone, asunto tai talo.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Asunto kaupungissa';
      case 'pages.onboard.onboardData.data2.description':
        return 'Säästämme aikaasi yhdistämällä sinut nopeasti täydelliseen kiinteistöön ennen kuin se menee, jotta voit nauttia uudesta kodistasi tai listata omasi ilmaiseksi.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Mukava talosi';
      case 'pages.onboard.onboardData.data3.description':
        return 'Jos etsit asuinpaikkaa, tutustu vuokrattaviin taloihimme. Meillä on laaja valikoima taloja, joista voit valita ympäri maata.';
      case 'pages.signIn.title':
        return 'Tervetuloa takaisin';
      case 'pages.signIn.subtitle':
        return 'Kirjaudu sisään nyt aloittaaksesi upean matkan.';
      case 'pages.signIn.extra.rememberMe':
        return 'Muista minut';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Eikö sinulla ole tiliä? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Unohtuiko salasana';
      case 'pages.forgotPassword.subtitle':
        return 'Syötä sähköpostiosoitteesi salasanan palauttamista varten.';
      case 'pages.otpVerification.title':
        return 'Vahvistus';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-numeroinen koodi on lähetetty sähköpostiosoitteeseesi. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Koodi lähetetään ${minutes}:${seconds} kuluttua';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Lähetä koodi uudelleen'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Nollaa salasana';
      case 'pages.resetPassword.subtitle':
        return 'Nollaa salasanasi palauttaaksesi sen ja kirjaudu tilillesi';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Muutettu onnistuneesti!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Kirjaudu sisään uudella salasanallasi.\nSinut ohjataan kirjautumiseen...';
      case 'pages.signUp.title':
        return 'Luo tili';
      case 'pages.signUp.subtitle':
        return 'Rekisteröidy nyt aloittaaksesi upean matkan';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Onko sinulla tili? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Kuka olet?';
      case 'pages.welcome.subtitle':
        return 'Valitse alla olevista vaihtoehdoista.';
      case 'pages.welcome.extra.landlordTag':
        return 'Hallitse omia kiinteistöjäsi';
      case 'pages.welcome.extra.tenantTag':
        return 'Kirjaudu vuokratilillesi';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Ilmoitukset';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Viesti...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Miksi ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Kirjoita syy';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Anna syy vuokran peruutukselle';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Offline-maksu';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Maksun huomautus (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Kirjoita tekstiä...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Maksettava summa: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Tilinhaltijan nimi';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Tilinumero';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift-koodi';
      case 'pages.offlinePayment.extra.branch':
        return 'Konttori';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Valitse vain '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' tai '),
            fileType('DOC'),
            const TextSpan(text: '-muotoiset tiedostot. Tiedoston koko '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Näytä lasku';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Käsittelemme maksun ja hyväksymme sen 24 tunnin kuluessa.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Yritä uudelleen';
      case 'pages.paymentStatus.fail.title':
        return 'Oho! Maksu epäonnistui';
      case 'pages.paymentStatus.fail.description':
        return 'Tapahtumasi epäonnistui jonkin teknisen virheen vuoksi.';
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
            const TextSpan(text: 'Ominaisuudet '),
            fa('(Palvelut ja mukavuudet)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Valitse vuokra-aika';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Kirjoita arvostelu';
      case 'pages.search.appbarTitle':
        return 'Haku';
      case 'pages.search.extra.hint':
        return 'Etsi tontteja, asuntoja, huoneita...';
      case 'pages.search.extra.noRecentSearch':
        return 'Sinulla ei ole viimeaikaisia hakuja.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Valitse suunnitelmasi';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Tilausmaksu onnistui.\nVoit käyttää tilattuja ominaisuuksia nyt.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Huoltokustannukset yhteensä: '),
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
        return 'Kaikki kiinteistöt';
      case 'enums.propertyStatus.pending':
        return 'Odottaa';
      case 'enums.propertyStatus.active':
        return 'Aktiivinen';
      case 'enums.propertyStatus.inactive':
        return 'Passiivinen';
      case 'enums.propertyStatus.rejected':
        return 'Hylätty';
      case 'enums.propertyType.apartmentCondominium':
        return 'Asunto/Kerrostalo';
      case 'enums.propertyType.house':
        return 'Talo';
      case 'enums.propertyType.commercialProperty':
        return 'Liiketila';
      case 'enums.propertyType.land':
        return 'Maa';
      case 'enums.propertyType.room':
        return 'Huone';
      case 'enums.applicationStatus.all':
        return 'Kaikki';
      case 'enums.applicationStatus.pending':
        return 'Odottaa';
      case 'enums.applicationStatus.processing':
        return 'Käsittelyssä';
      case 'enums.applicationStatus.approved':
        return 'Hyväksytty';
      case 'enums.applicationStatus.rejected':
        return 'Hylätty';
      case 'enums.myRentStatus.pending':
        return 'Odottaa';
      case 'enums.myRentStatus.processing':
        return 'Käsittelyssä';
      case 'enums.myRentStatus.active':
        return 'Aktiivinen';
      case 'enums.myRentStatus.expired':
        return 'Vanhentunut';
      case 'enums.myRentStatus.cancelled':
        return 'Peruutettu';
      case 'enums.maintenanceStatus.pending':
        return 'Odottaa';
      case 'enums.maintenanceStatus.processing':
        return 'Käsittelyssä';
      case 'enums.maintenanceStatus.rejected':
        return 'Hylätty';
      case 'enums.maintenanceStatus.completed':
        return 'Valmis';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Yksityinen (henkilö)';
      case 'enums.tenantProfileType.company':
        return 'Yritys';
      case 'enums.tenantType.newTenant':
        return 'Uusi vuokralainen';
      case 'enums.tenantType.activeTenant':
        return 'Aktiivinen vuokralainen';
      case 'enums.tenantType.expiredTenant':
        return 'Vanhentunut vuokralainen';
      case 'enums.paymentStatus.all':
        return 'Kaikki';
      case 'enums.paymentStatus.pending':
        return 'Odottaa';
      case 'enums.paymentStatus.paid':
        return 'Maksettu';
      case 'enums.paymentStatus.unpaid':
        return 'Maksamatta';
      case 'enums.paymentStatus.rejected':
        return 'Hylätty';
      case 'enums.paymentStatus.refund':
        return 'Palautus';
      case 'enums.paymentOptions.onlinePayment':
        return 'Verkkomaksu';
      case 'enums.paymentOptions.offlinePayment':
        return 'Offline-maksu';
      case 'enums.paymentType.securityDeposit':
        return 'Vakuusmaksu';
      case 'enums.paymentType.rentPayment':
        return 'Vuokranmaksu';
      case 'enums.paymentType.subscription':
        return 'Tilaus';
      case 'enums.gender.male':
        return 'Mies';
      case 'enums.gender.female':
        return 'Nainen';
      case 'enums.gender.other':
        return 'Muu';
      case 'enums.ecRelation.wife':
        return 'Vaimo';
      case 'enums.ecRelation.parent':
        return 'Vanhempi';
      case 'enums.ecRelation.friend':
        return 'Ystävä';
      case 'enums.ecRelation.brother':
        return 'Veli';
      case 'enums.ecRelation.sister':
        return 'Sisar';
      case 'enums.ecRelation.child':
        return 'Lapsi';
      case 'enums.vehicleType.car':
        return 'Auto';
      case 'enums.vehicleType.motorcycles':
        return 'Moottoripyörät';
      case 'enums.vehicleType.lorry':
        return 'Kuorma-auto';
      case 'enums.sortBy.lowToHigh':
        return 'Matalasta korkeaan';
      case 'enums.sortBy.highToLow':
        return 'Korkeasta matalaan';
      case 'enums.residentialType.flat':
        return 'Kerrostaloasunto';
      case 'enums.residentialType.apartment':
        return 'Asunto';
      case 'enums.residentialType.condominium':
        return 'Kerrostalo';
      case 'enums.residentialType.serviceResidence':
        return 'Palveluasunto';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Paritalo';
      case 'enums.residentialType.townhouseCondo':
        return 'Rivitaloasunto';
      case 'enums.residentialType.others':
        return 'Muut';
      case 'enums.floorRange.high':
        return 'Korkea';
      case 'enums.floorRange.medium':
        return 'Keski';
      case 'enums.floorRange.low':
        return 'Matala';
      case 'enums.furnishings.fullyFurnished':
        return 'Täysin kalustettu';
      case 'enums.furnishings.partiallyFurnished':
        return 'Osittain kalustettu';
      case 'enums.furnishings.notFurnished':
        return 'Ei kalustettu';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Toimistotila';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Vähittäismyyntitila';
      case 'enums.commercialPropertyType.shopLot':
        return 'Liiketila';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Varasto / Tehdas';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotelli / Lomakeskus';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Muut';
      case 'enums.landPropertyType.residential':
        return 'Asuin';
      case 'enums.landPropertyType.industrial':
        return 'Teollisuus';
      case 'enums.landPropertyType.agricultural':
        return 'Maatalous';
      case 'enums.landPropertyType.commercial':
        return 'Kaupallinen';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Sekakäyttöinen';
      case 'enums.landPropertyType.others':
        return 'Muut';
      case 'enums.residentPropertyType.condo':
        return 'Kerrostalo / Palveluasunto / Kattohuoneisto';
      case 'enums.residentPropertyType.apartment':
        return 'Asunto / Huoneisto';
      case 'enums.residentPropertyType.house':
        return 'Talot';
      case 'enums.residentPropertyType.shoplot':
        return 'Liiketila';
      case 'enums.residentPropertyType.sharing':
        return 'Asunnon / huoneiston jakaminen';
      case 'enums.residentPropertyType.others':
        return 'Muut';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 kuukautta';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 vuosi';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 vuotta';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 vuotta';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 vuotta';
      case 'enums.dropdownDateFilter.daily':
        return 'Päivittäin';
      case 'enums.dropdownDateFilter.weekly':
        return 'Viikoittain';
      case 'enums.dropdownDateFilter.monthly':
        return 'Kuukausittain';
      case 'enums.dropdownDateFilter.yearly':
        return 'Vuosittain';
      case 'enums.dropdownDateFilter.custom':
        return 'Mukautettu';
      default:
        return null;
    }
  }
}
