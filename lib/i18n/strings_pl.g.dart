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
class TranslationsPl implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsPl({
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
             locale: AppLocale.pl,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <pl>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsPl _root = this; // ignore: unused_field

  @override
  TranslationsPl $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsPl(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonPl common = _TranslationsCommonPl._(_root);
  @override
  late final _TranslationsExceptionsPl exceptions = _TranslationsExceptionsPl._(
    _root,
  );
  @override
  late final _TranslationsPromptPl prompt = _TranslationsPromptPl._(_root);
  @override
  late final _TranslationsFormPl form = _TranslationsFormPl._(_root);
  @override
  late final _TranslationsActionPl action = _TranslationsActionPl._(_root);
  @override
  late final _TranslationsPagesPl pages = _TranslationsPagesPl._(_root);
  @override
  late final _TranslationsEnumsPl enums = _TranslationsEnumsPl._(_root);
}

// Path: common
class _TranslationsCommonPl implements TranslationsCommonEn {
  _TranslationsCommonPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Język';
  @override
  String get subscriptionPlan => 'Plan subskrypcji';
  @override
  String get contactUs => 'Skontaktuj się z nami';
  @override
  String get termsAndConditions => 'Zasady i warunki';
  @override
  String get aboutUs => 'O nas';
  @override
  String get logout => 'Wyloguj';
  @override
  String get editProfile => 'Edytuj profil';
  @override
  String get fullName => 'Imię i nazwisko';
  @override
  String get email => 'E-mail';
  @override
  String get mobileNumber => 'Numer telefonu komórkowego';
  @override
  String get address => 'Adres';
  @override
  String get postalCode => 'Kod pocztowy';
  @override
  String get city => 'Miasto';
  @override
  String get country => 'Kraj';
  @override
  String get state => 'Stan';
  @override
  String get password => 'Hasło';
  @override
  String get forgotPassword => 'Zapomniałem hasła';
  @override
  String get tenant => 'Najemca';
  @override
  String get landlord => 'Wynajmujący';
  @override
  String get cancelRenting => 'Anuluj wynajem';
  @override
  String get startDate => 'Data rozpoczęcia';
  @override
  String get endDate => 'Data zakończenia';
  @override
  String get fromDate => 'Od daty';
  @override
  String get toDate => 'Do daty';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Lista banków';
  @override
  String get withdrawMethod => 'Metoda wypłaty';
  @override
  String get uploadPaymentReceipt => 'Prześlij dowód wpłaty';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Uwaga: '),
      note('Płatność wymaga ręcznej akceptacji przez administratora w ciągu'),
      const TextSpan(text: ' '),
      duraion('24-48 godzin.'),
    ],
  );
  @override
  String get reviews => 'Recenzje';
  @override
  String get description => 'Opis';
  @override
  String get about => 'O';
  @override
  String get propertyTypes => 'Typy nieruchomości';
  @override
  String get features => 'Funkcje';
  @override
  String get floorPlans => 'Plany pięter';
  @override
  String get buildingDetails => 'Szczegóły budynku';
  @override
  String get buildingName => 'Nazwa budynku';
  @override
  String get propertyAddress => 'Adres nieruchomości';
  @override
  String get completionYear => 'Rok ukończenia';
  @override
  String get lotNumber => 'Numer działki';
  @override
  String get residentialType => 'Typ mieszkalny';
  @override
  String get furnishings => 'Umeblowanie';
  @override
  String get floorRange => 'Zakres pięter';
  @override
  String get bedrooms => 'Sypialnie';
  @override
  String get bathrooms => 'Łazienki';
  @override
  String get propertySize => 'Powierzchnia nieruchomości';
  @override
  String get rentalPeriod => 'Okres wynajmu';
  @override
  String get securityDeposit => 'Kaucja';
  @override
  String get utilityBill => 'Rachunek za media';
  @override
  String get facilities => 'Udogodnienia';
  @override
  String get amenities => 'Udogodnienia';
  @override
  String get expiringReason => 'Powód wygaśnięcia';
  @override
  String get tenantDetails => 'Szczegóły najemcy';
  @override
  String get typeOfTenant => 'Typ najemcy';
  @override
  String get tenantName => 'Imię najemcy';
  @override
  String get nidPassport => 'NID/Paszport';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID najemcy';
  @override
  String get dateOfBirth => 'Data urodzenia';
  @override
  String get gender => 'Płeć';
  @override
  String get nominee => 'Nominowany';
  @override
  String get name => 'Imię';
  @override
  String get optional => 'Opcjonalnie';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobilePl nomineeMobile =
      _TranslationsCommonNomineeMobilePl._(_root);
  @override
  String get emergencyContact => 'Kontakt w nagłych wypadkach';
  @override
  String get relation => 'Relacja';
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
  String get workplace => 'Miejsce pracy';
  @override
  String get officePhoneNo => 'Numer telefonu biurowego';
  @override
  String get officeMobileNo => 'Biuro ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Pojazd';
  @override
  late final _TranslationsCommonVehiclesInfoPl vehiclesInfo =
      _TranslationsCommonVehiclesInfoPl._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoPl vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoPl._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Brand';
  @override
  String get rentProperty => 'Wynajmij nieruchomość';
  @override
  String get propertyDetails => 'Szczegóły nieruchomości';
  @override
  String get propertyId => 'ID nieruchomości';
  @override
  String get propertyType => 'Typ nieruchomości';
  @override
  String get propertyName => 'Nazwa nieruchomości';
  @override
  String get paymentDetails => 'Szczegóły płatności';
  @override
  String get monthlyRent => 'Czynsz miesięczny';
  @override
  String get thisMonthPayment => 'Płatność w tym miesiącu';
  @override
  String get totalPaidRent => 'Całkowity zapłacony czynsz';
  @override
  String get dueRent => 'Zaległy czynsz';
  @override
  String get rentStartDate => 'Czynsz ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Czynsz ${_root.common.endDate}';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'Umowa najmu PDF';
  @override
  String get noFile => 'Brak pliku';
  @override
  String get tenantImageOp => 'Zdjęcie najemcy ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Dodaj nowe pojazdy';
  @override
  String get uploadNidPassport => 'Prześlij NID/Paszport';
  @override
  String get nidPassportUploadNote =>
      'Akceptowane będą tylko obrazy typu pliku. Limit pliku do 2,5 MB.';
  @override
  String get search => 'Szukaj';
  @override
  String get sortBy => 'Sortuj według';
  @override
  String get subscription => 'Subskrypcja';
  @override
  String get downloading => 'Pobieranie...';
  @override
  String get downloadSuccess => 'Plik pobrany pomyślnie!';
  @override
  String get addPropertyBannerTitle => 'Chcesz wynająć swoją nieruchomość?';
  @override
  String get application => 'Aplikacja';
  @override
  String get tenantHasPaidDeposit => 'Najemca zapłacił kaucję.';
  @override
  String get askProcessingRentApplication =>
      'Czy na pewno chcesz przetworzyć tę prośbę o wynajem nieruchomości?';
  @override
  String get dateAndTime => 'Data i czas';
  @override
  String get applicationDetails => 'Szczegóły aplikacji';
  @override
  String get depositStatus => 'Status depozytu';
  @override
  String get uploadRentAgreement => 'Prześlij umowę najmu';
  @override
  String get uploadFilePDF => 'Prześlij plik (PDF)';
  @override
  String get askSelectRentAgreement => 'Wybierz plik dokumentu umowy.';
  @override
  String get landlordRentAgreementPDF => 'Umowa najmu wynajmującego PDF';
  @override
  String get tenantRentAgreementPDF => 'Umowa najmu najemcy PDF';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Uwaga: '),
      note(
        'Zatwierdź aplikację dopiero po dokonaniu przez najemcę wpłaty depozytu.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Powód odrzucenia';
  @override
  String get youveRejectedThisApplication => 'Odrzuciłeś tę aplikację';
  @override
  String get landlordDetails => 'Szczegóły wynajmującego';
  @override
  String get landlordName => 'Imię wynajmującego';
  @override
  String get downloadRentAgreement => 'Pobierz umowę najmu';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Akceptuj '),
      toc('Zasady i warunki'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Uwaga: '),
      note(
        'Pobierz i przeczytaj umowę. Wyślij podpisaną umowę do wynajmującego przez WhatsApp lub e-mail.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Uwaga: '),
      note(
        'Wynajmujący zatwierdza aplikację, gdy najemca płaci kaucję, media i jednomiesięczną zaliczkę czynszu.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Umowa najmu (PDF) '),
          complete('Kompletna umowa'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Uwaga: '),
      note(
        'Wynajmujący zatwierdza aplikację, gdy najemca płaci kaucję, media i jednomiesięczną zaliczkę czynszu.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Lista aplikacji';
  @override
  String get viewDetails => 'Wyświetl szczegóły';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Dom';
  @override
  String get dashboard => 'Panel';
  @override
  String get tenants => 'Najemcy';
  @override
  String get maintenance => 'Konserwacja';
  @override
  String get maintenanceList => 'Lista konserwacji';
  @override
  String get maintenanceReport => 'Raport konserwacji';
  @override
  String get labor => 'Praca';
  @override
  String get applications => 'Aplikacje';
  @override
  String get rentInvitation => 'Zaproszenie do wynajmu';
  @override
  String get payment => 'Płatność';
  @override
  String get rentPayment => 'Płatność za czynsz';
  @override
  String get depositUtilityPayment => 'Depozyt i płatność za media';
  @override
  String get refundRequest => 'Prośba o zwrot pieniędzy';
  @override
  String get withdrawRequest => 'Prośba o wypłatę';
  @override
  String get myProperty => 'Moja nieruchomość';
  @override
  String get myRent => 'Mój czynsz';
  @override
  String get wishlist => 'Lista życzeń';
  @override
  String get properties => 'Nieruchomości';
  @override
  String get allProperties => 'Wszystkie nieruchomości';
  @override
  String get totalPropery => 'Całkowita nieruchomość';
  @override
  String get occupied => 'Zajęte';
  @override
  String get vacant => 'Wolne';
  @override
  String get accounting => 'Księgowość';
  @override
  String get totalIncome => 'Całkowity dochód';
  @override
  String get totalExpense => 'Całkowity wydatek';
  @override
  String get currentBalance => 'Aktualne saldo';
  @override
  String get totalWithdrawal => 'Suma (wypłata)';
  @override
  String get totalProperties => 'Całkowita liczba nieruchomości';
  @override
  String get totalTenant => 'Całkowita liczba najemców';
  @override
  String get totalRentPaid => 'Całkowity zapłacony czynsz';
  @override
  String get totalRentDue => 'Całkowity zaległy czynsz';
  @override
  String get totalApplication => 'Całkowita liczba aplikacji';
  @override
  String get pendingApplication => 'Oczekująca aplikacja';
  @override
  String get processingApplication => 'Przetwarzanie aplikacji';
  @override
  String get approveApplication => 'Zatwierdź aplikację';
  @override
  String get rejectApplication => 'Odrzuć aplikację';
  @override
  String get maintenanceCost => 'Koszt konserwacji';
  @override
  String get transactionSummary => 'Podsumowanie transakcji';
  @override
  String get maintenanceRequest => 'Prośba o konserwację';
  @override
  String get notifications => 'Powiadomienia';
  @override
  String get myProperties => 'Moje nieruchomości';
  @override
  String get recommendationProperties => 'Rekomendowane nieruchomości';
  @override
  String get laborList => 'Lista pracowników';
  @override
  String get addLabor => 'Dodaj pracownika';
  @override
  String get laborDetails => 'Szczegóły dotyczące pracownika';
  @override
  String get laborSalary => 'Wynagrodzenie pracownika';
  @override
  String get editLabor => 'Edytuj pracownika';
  @override
  String get addNewLabor => 'Dodaj nowego pracownika';
  @override
  String get enterAmount => 'Wprowadź kwotę';
  @override
  String get maintenanceDetails => 'Szczegóły konserwacji';
  @override
  String get laborName => 'Imię pracownika';
  @override
  String get comment => 'Komentarz';
  @override
  String get image => 'Obraz';
  @override
  String get complete => 'Kompletny';
  @override
  String get details => 'Szczegóły';
  @override
  String get title => 'Tytuł';
  @override
  String get date => 'Data';
  @override
  String get reason => 'Powód';
  @override
  String get edit => 'Edytuj';
  @override
  String get property => 'Nieruchomość';
  @override
  String get completeYourProfile => 'Uzupełnij swój profil';
  @override
  String get profileImage => 'Zdjęcie profilowe';
  @override
  String get imagePickHint =>
      'Tylko obraz JPEG i PNG o maksymalnym rozmiarze 120x120 pikseli.';
  @override
  String get invoiceId => 'ID faktury';
  @override
  String get depositAmount => 'Kwota depozytu';
  @override
  String get landlordPhone => 'Telefon wynajmującego';
  @override
  String get rentalAdvance => 'Czynsz (zaliczka)';
  @override
  String get totalAmount => 'Całkowita kwota';
  @override
  String get rentalAmount => 'Kwota czynszu';
  @override
  String get adminCharge => 'Opłata administracyjna';
  @override
  String get editAccount => 'Edytuj konto';
  @override
  String get addNewAccount => 'Dodaj nowe konto';
  @override
  String get transactionId => 'ID transakcji';
  @override
  String get transactionType => 'Typ transakcji';
  @override
  String get requestDate => 'Data żądania';
  @override
  String get amount => 'Kwota';
  @override
  String get fee => 'Opłata';
  @override
  String get paymentStatus => 'Status płatności';
  @override
  String get generatedTime => 'Wygenerowany czas';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'To jest raport wygenerowany przez system '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Historia wypłat';
  @override
  String get history => 'Historia';
  @override
  String get withdrawAmount => 'Kwota wypłaty';
  @override
  String get availableBalance => 'Dostępne saldo';
  @override
  String get withdrawCharge => 'Opłata za wypłatę';
  @override
  String get paymentMethod => 'Metoda płatności';
  @override
  String get requestSendSuccess => 'Prośba wysłana pomyślnie!';
  @override
  String get paymentReceiptSubmitSuccess => 'Dowód wpłaty przesłany pomyślnie.';
  @override
  String get refundReason => 'Powód zwrotu pieniędzy';
  @override
  String get note => 'Uwaga';
  @override
  String get refundReceiveSuccess => 'Zwrot pieniędzy otrzymano pomyślnie.';
  @override
  String get downloadPaymentReceipt => 'Pobierz dowód wpłaty';
  @override
  String get invoice => 'Faktura';
  @override
  String get selectPropertyToSeeInvoice =>
      'Wybierz nieruchomość, aby zobaczyć numer faktury...';
  @override
  String get bankAccName => 'Nazwa konta bankowego';
  @override
  String get bankName => 'Nazwa banku';
  @override
  String get bankAccNum => 'Numer konta bankowego';
  @override
  String get thankYou => 'Dziękujemy!';
  @override
  String get basicInfo => 'Podstawowe informacje';
  @override
  String get descriptionPricing => 'Opis i ceny';
  @override
  String get contact => 'Kontakt';
  @override
  String get photos => 'Zdjęcia';
  @override
  String get successfullySubmitted => 'Przesłano pomyślnie!';
  @override
  String get editProperty => 'Edytuj nieruchomość';
  @override
  String get addNewProperty => 'Dodaj nową nieruchomość';
  @override
  String get propertyManageRequestSuccess =>
      'Ogłoszenie zostało przesłane do weryfikacji.';
  @override
  String get postAnotherProperty => 'Opublikuj kolejną nieruchomość';
  @override
  String get browseYourProperty => 'Przeglądaj swoją nieruchomość';
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
  String get whatWouldYouLikeToPost => 'Co chcesz opublikować?';
  @override
  String get category => 'Kategoria';
  @override
  String get invalidCategory => 'Nieprawidłowa kategoria';
  @override
  String get unitNumber => 'Numer jednostki';
  @override
  String get sqft => 'stopa kwadratowa';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Wielkość nieruchomości musi być większa od zera';
  @override
  String get whatAreTheFacility => 'Jakie są udogodnienia?';
  @override
  String get whatAreTheAmenity => 'Jakie są udogodnienia?';
  @override
  String get parkingLot => 'Parking';
  @override
  String get houseType => 'Typ domu';
  @override
  String get value => 'Wartość';
  @override
  String get unitLotSize => 'Wielkość jednostki / działki';
  @override
  String get landSize => 'Wielkość działki';
  @override
  String get acres => 'akr(y)';
  @override
  String get roomSize => 'Wielkość pokoju';
  @override
  String get askTenantPreference =>
      'Jakie są Twoje preferencje dotyczące najemcy?';
  @override
  String get couple => 'Para';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Opisz ${propertyType}';
  @override
  String get adTitle => 'Tytuł ogłoszenia';
  @override
  String get minimumRentalPeriod => 'Minimalny okres wynajmu';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  @override
  String get hideOrDisplayEmail => 'Ukryj lub pokaż adres e-mail';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Dziękujemy za opublikowanie na ${appName}!';
  @override
  String get propertyList => 'Lista nieruchomości';
  @override
  String get newInviteRent => 'Nowe zaproszenie do wynajmu';
  @override
  String get rentAgreement => 'Umowa najmu';
  @override
  String get rentDetails => 'Szczegóły wynajmu';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Uwaga: '),
      note('Proszę czekać, aż najemca zaakceptuje zaproszenie.'),
    ],
  );
  @override
  String get rent => 'Czynsz';
  @override
  String get editTenant => 'Edytuj najemcę';
  @override
  String get addNewTenant => 'Dodaj nowego najemcę';
  @override
  String get shareInstallLink => 'Udostępnij link do instalacji';
  @override
  String get tenantList => 'Lista najemców';
  @override
  String get editMaintenanceRequest => 'Edytuj prośbę o konserwację';
  @override
  String get addNewMaintenance => 'Dodaj nową konserwację';
  @override
  String get landlordId => 'ID wynajmującego';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Uwaga '),
      note(
        'Twoja umowa jest w trakcie weryfikacji. Proszę czekać, aż wynajmujący zatwierdzi Twój wynajem.',
      ),
    ],
  );
  @override
  String get editReview => 'Edytuj recenzję';
  @override
  String get writeAReview => 'Napisz recenzję';
  @override
  String get selectRating => 'Wybierz ocenę';
  @override
  String get enterYourOpinion => 'Wprowadź swoją opinię';
  @override
  String get askToEnterReviewMsg => 'Proszę wprowadzić wiadomość z recenzją';
  @override
  String get pressBackAgainToExit =>
      'Naciśnij ponownie przycisk Wstecz, aby wyjść.';
  @override
  String get selectPaymentMethod => 'Wybierz metodę płatności';
  @override
  String get filter => 'Filtr';
  @override
  String get perMonth => '/1 miesiąc';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Szukaj czegokolwiek w ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsPl implements TranslationsExceptionsEn {
  _TranslationsExceptionsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Coś poszło nie tak, spróbuj ponownie';
  @override
  String get noNidPassport => 'Nie podano obrazu NID/Paszportu.';
  @override
  String get noRentPropertyFound =>
      'Nie znaleziono nieruchomości na wynajem dla tego najemcy.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Nie znaleziono nieruchomości!\nSpróbuj użyć innych słów kluczowych';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Nie znaleziono planu subskrypcji!\nOdśwież stronę i spróbuj ponownie.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Nieprawidłowe informacje ${dataType}! Odśwież stronę i spróbuj ponownie.';
  @override
  String get invalidDownloadUrl => 'Nieprawidłowy adres URL pobierania!';
  @override
  String failedToSaveFile({required String error}) =>
      'Nie udało się zapisać pliku! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Błąd podczas otwierania pliku! ${error}';
  @override
  String get noVehicleInfoProvided => 'Nie podano informacji o pojeździe.';
  @override
  String get yourApplicationRejected => 'Twoja aplikacja została odrzucona';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintPl
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintPl._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintPl noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintPl._(_root);
  @override
  String get noImageProvided => 'Nie podano obrazu';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundPl
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundPl._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Nie znaleziono kaucji!\nBędzie można zobaczyć kaucje, gdy będą dostępne';
  @override
  String get noRentPaymentFound =>
      'Nie znaleziono płatności za czynsz!\nBędzie można zobaczyć płatności za czynsz, gdy będą dostępne';
  @override
  String get transactionSummaryApiException =>
      'Nie udało się pobrać podsumowania transakcji.';
  @override
  String get noWithdrawRequestFound =>
      'Nie znaleziono prośby!\nSpróbuj utworzyć prośbę o wypłatę, aby zobaczyć ją tutaj.';
  @override
  String get withdrawRequestNotApproved =>
      'Ta prośba o wypłatę nie została zatwierdzona!.';
  @override
  String get nonZeroError => 'Wprowadź prawidłową kwotę większą od zera.';
  @override
  String minAmountError({required String minValue}) =>
      'Kwota musi wynosić co najmniej ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Kwota nie może przekraczać ${maxValue}.';
  @override
  String get selectPaymentMethodHint => 'Najpierw wybierz metodę płatności.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundPl
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundPl._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintPl refundRequestHint =
      _TranslationsExceptionsRefundRequestHintPl._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Wybierz liczbę ${value}';
  @override
  String get invalidDateRange => 'Nieprawidłowy zakres dat.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} musi być większe od zera.';
  @override
  late final _TranslationsExceptionsEditPropertyPl editProperty =
      _TranslationsExceptionsEditPropertyPl._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationPl rentInvitation =
      _TranslationsExceptionsRentInvitationPl._(_root);
  @override
  String get notenantFoundList =>
      'Brak najemców!\nSpróbuj dodać najemcę, aby zobaczyć go tutaj.';
  @override
  String get noFeaturesProvided => 'Nie podano żadnych funkcji.';
  @override
  String get noNotificationFound =>
      'Brak dostępnych powiadomień.\nBędzie można zobaczyć powiadomienia tutaj, gdy będą dostępne.';
}

// Path: prompt
class _TranslationsPromptPl implements TranslationsPromptEn {
  _TranslationsPromptPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutPl logout = _TranslationsPromptLogoutPl._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationPl application =
      _TranslationsPromptApplicationPl._(_root);
  @override
  late final _TranslationsPromptLaborPl labor = _TranslationsPromptLaborPl._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestPl maintenanceRequest =
      _TranslationsPromptMaintenanceRequestPl._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodPl withdrawMethod =
      _TranslationsPromptWithdrawMethodPl._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesPl unsavedChanges =
      _TranslationsPromptUnsavedChangesPl._(_root);
  @override
  late final _TranslationsPromptPropertyPl property =
      _TranslationsPromptPropertyPl._(_root);
  @override
  late final _TranslationsPromptRentInvitationPl rentInvitation =
      _TranslationsPromptRentInvitationPl._(_root);
  @override
  late final _TranslationsPromptSessionExpiredPl sessionExpired =
      _TranslationsPromptSessionExpiredPl._(_root);
  @override
  late final _TranslationsPromptNoInternetPl noInternet =
      _TranslationsPromptNoInternetPl._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerPl permissionHandler =
      _TranslationsPromptPermissionHandlerPl._(_root);
  @override
  late final _TranslationsPromptImagePickerPl imagePicker =
      _TranslationsPromptImagePickerPl._(_root);
  @override
  late final _TranslationsPromptVerificationDialogPl verificationDialog =
      _TranslationsPromptVerificationDialogPl._(_root);
  @override
  late final _TranslationsPromptNotificationPl notification =
      _TranslationsPromptNotificationPl._(_root);
}

// Path: form
class _TranslationsFormPl implements TranslationsFormEn {
  _TranslationsFormPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNamePl fullName =
      _TranslationsFormFullNamePl._(_root);
  @override
  late final _TranslationsFormEmailPl email = _TranslationsFormEmailPl._(_root);
  @override
  late final _TranslationsFormPasswordPl password =
      _TranslationsFormPasswordPl._(_root);
  @override
  late final _TranslationsFormConfirmPasswordPl confirmPassword =
      _TranslationsFormConfirmPasswordPl._(_root);
  @override
  late final _TranslationsFormMobileNumberPl mobileNumber =
      _TranslationsFormMobileNumberPl._(_root);
  @override
  late final _TranslationsFormAddress1Pl address1 =
      _TranslationsFormAddress1Pl._(_root);
  @override
  late final _TranslationsFormAddress2Pl address2 =
      _TranslationsFormAddress2Pl._(_root);
  @override
  late final _TranslationsFormPostalCodePl postalCode =
      _TranslationsFormPostalCodePl._(_root);
  @override
  late final _TranslationsFormCityPl city = _TranslationsFormCityPl._(_root);
  @override
  late final _TranslationsFormStatePl state = _TranslationsFormStatePl._(_root);
  @override
  late final _TranslationsFormCountryPl country = _TranslationsFormCountryPl._(
    _root,
  );
  @override
  late final _TranslationsFormOtpPl otp = _TranslationsFormOtpPl._(_root);
  @override
  late final _TranslationsFormTitlePl title = _TranslationsFormTitlePl._(_root);
  @override
  late final _TranslationsFormDatePl date = _TranslationsFormDatePl._(_root);
  @override
  late final _TranslationsFormReasonPl reason = _TranslationsFormReasonPl._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodPl withdrawMethod =
      _TranslationsFormWithdrawMethodPl._(_root);
  @override
  late final _TranslationsFormFileFieldPl fileField =
      _TranslationsFormFileFieldPl._(_root);
  @override
  late final _TranslationsFormNotePl note = _TranslationsFormNotePl._(_root);
  @override
  late final _TranslationsFormGenderPl gender = _TranslationsFormGenderPl._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldPl anyField =
      _TranslationsFormAnyFieldPl._(_root);
  @override
  late final _TranslationsFormAnyDropdownPl anyDropdown =
      _TranslationsFormAnyDropdownPl._(_root);
}

// Path: action
class _TranslationsActionPl implements TranslationsActionEn {
  _TranslationsActionPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Dalej';
  @override
  String get getStarted => 'Rozpocznij';
  @override
  String get skip => 'Pomiń';
  @override
  String get select => 'Wybierz';
  @override
  String get save => 'Zapisz';
  @override
  String get signIn => 'Zaloguj się';
  @override
  String get signUp => 'Zarejestruj się';
  @override
  String get kContinue => 'Kontynuuj';
  @override
  String get clearAll => 'Wyczyść wszystko';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Wyślij';
  @override
  String get pay => 'Zapłać';
  @override
  String get remove => 'Usuń';
  @override
  String get goBack => 'Wróć';
  @override
  String get buyNow => 'Kup teraz';
  @override
  String get no => 'Nie';
  @override
  String get open => 'Otwórz';
  @override
  String get addProperty => 'Dodaj nieruchomość';
  @override
  String get process => 'Przetwarzaj';
  @override
  String get approve => 'Zatwierdź';
  @override
  String get reject => 'Odrzuć';
  @override
  String get viewRent => 'Wyświetl czynsz';
  @override
  String get openNavigationMenu => 'Otwórz menu nawigacyjne';
  @override
  String get seeAll => 'Zobacz wszystko';
  @override
  String get update => 'Aktualizuj';
  @override
  String get printTransaction => 'Drukuj transakcję';
  @override
  String get payoutRequest => 'Żądanie wypłaty';
  @override
  String get addNew => '+ Dodaj nowy';
  @override
  String get sendRequest => 'Wyślij prośbę';
  @override
  String get print => 'Drukuj';
  @override
  String get requestForRefund => 'Prośba o zwrot pieniędzy';
  @override
  String get previous => 'Poprzedni';
  @override
  String get delete => 'Usuń';
  @override
  String get applyProperty => 'Zastosuj nieruchomość';
  @override
  String get viewApplication => 'Wyświetl aplikację';
  @override
  String get inviteTenant => 'Zaproś najemcę';
  @override
  String get inviteRent => 'Zaproś do wynajmu';
  @override
  String get cancel => 'Anuluj';
  @override
  String get accept => 'Akceptuj';
  @override
  String get submit => 'Prześlij';
  @override
  String get yes => 'Tak';
  @override
  String get okay => 'OK';
  @override
  String get confirm => 'Potwierdź';
  @override
  String get apply => 'Zastosuj';
  @override
  String get reset => 'Resetuj';
  @override
  String get retry => 'Spróbuj ponownie';
  @override
  String get viewAll => 'Zobacz wszystko';
}

// Path: pages
class _TranslationsPagesPl implements TranslationsPagesEn {
  _TranslationsPagesPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguagePl language =
      _TranslationsPagesLanguagePl._(_root);
  @override
  late final _TranslationsPagesOnboardPl onboard =
      _TranslationsPagesOnboardPl._(_root);
  @override
  late final _TranslationsPagesSignInPl signIn = _TranslationsPagesSignInPl._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordPl forgotPassword =
      _TranslationsPagesForgotPasswordPl._(_root);
  @override
  late final _TranslationsPagesOtpVerificationPl otpVerification =
      _TranslationsPagesOtpVerificationPl._(_root);
  @override
  late final _TranslationsPagesResetPasswordPl resetPassword =
      _TranslationsPagesResetPasswordPl._(_root);
  @override
  late final _TranslationsPagesSignUpPl signUp = _TranslationsPagesSignUpPl._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomePl welcome =
      _TranslationsPagesWelcomePl._(_root);
  @override
  late final _TranslationsPagesAboutUsPl aboutUs =
      _TranslationsPagesAboutUsPl._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsPl termsAndConditions =
      _TranslationsPagesTermsAndConditionsPl._(_root);
  @override
  late final _TranslationsPagesNotificationListPl notificationList =
      _TranslationsPagesNotificationListPl._(_root);
  @override
  late final _TranslationsPagesContactUsPl contactUs =
      _TranslationsPagesContactUsPl._(_root);
  @override
  late final _TranslationsPagesCancelRentingPl cancelRenting =
      _TranslationsPagesCancelRentingPl._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsPl invoiceDetails =
      _TranslationsPagesInvoiceDetailsPl._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentPl offlinePayment =
      _TranslationsPagesOfflinePaymentPl._(_root);
  @override
  late final _TranslationsPagesPaymentStatusPl paymentStatus =
      _TranslationsPagesPaymentStatusPl._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsPl propertyDetails =
      _TranslationsPagesPropertyDetailsPl._(_root);
  @override
  late final _TranslationsPagesSearchPl search = _TranslationsPagesSearchPl._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanPl subscriptionPlan =
      _TranslationsPagesSubscriptionPlanPl._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportPl
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportPl._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsPl implements TranslationsEnumsEn {
  _TranslationsEnumsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusPl propertyStatus =
      _TranslationsEnumsPropertyStatusPl._(_root);
  @override
  late final _TranslationsEnumsPropertyTypePl propertyType =
      _TranslationsEnumsPropertyTypePl._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusPl applicationStatus =
      _TranslationsEnumsApplicationStatusPl._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusPl myRentStatus =
      _TranslationsEnumsMyRentStatusPl._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusPl maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusPl._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypePl tenantProfileType =
      _TranslationsEnumsTenantProfileTypePl._(_root);
  @override
  late final _TranslationsEnumsTenantTypePl tenantType =
      _TranslationsEnumsTenantTypePl._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusPl paymentStatus =
      _TranslationsEnumsPaymentStatusPl._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsPl paymentOptions =
      _TranslationsEnumsPaymentOptionsPl._(_root);
  @override
  late final _TranslationsEnumsPaymentTypePl paymentType =
      _TranslationsEnumsPaymentTypePl._(_root);
  @override
  late final _TranslationsEnumsGenderPl gender = _TranslationsEnumsGenderPl._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationPl ecRelation =
      _TranslationsEnumsEcRelationPl._(_root);
  @override
  late final _TranslationsEnumsVehicleTypePl vehicleType =
      _TranslationsEnumsVehicleTypePl._(_root);
  @override
  late final _TranslationsEnumsSortByPl sortBy = _TranslationsEnumsSortByPl._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypePl residentialType =
      _TranslationsEnumsResidentialTypePl._(_root);
  @override
  late final _TranslationsEnumsFloorRangePl floorRange =
      _TranslationsEnumsFloorRangePl._(_root);
  @override
  late final _TranslationsEnumsFurnishingsPl furnishings =
      _TranslationsEnumsFurnishingsPl._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypePl commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypePl._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypePl landPropertyType =
      _TranslationsEnumsLandPropertyTypePl._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypePl residentPropertyType =
      _TranslationsEnumsResidentPropertyTypePl._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodPl minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodPl._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterPl dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterPl._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobilePl
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobilePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoPl
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informacje o pojazdach';
  @override
  String get optional => 'Informacje o pojazdach (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoPl
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Numer rejestracyjny pojazdu.';
  @override
  String get short => 'Numer rejestracyjny.';
  @override
  String get alt => 'Numer tablicy.';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintPl
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Nie znaleziono aplikacji!\n${subject} zostanie wyświetlone tutaj, gdy będzie dostępne.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsPl subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsPl._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintPl
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Nie znaleziono nieruchomości!\nSpróbuj dodać nieruchomość, aby zobaczyć ją tutaj.';
  @override
  String get tenantRecommended =>
      'Nie znaleziono polecanych nieruchomości\nSpróbuj ponownie później.';
  @override
  String get tenantAllProperty =>
      'Nieruchomości niedostępne\nSpróbuj ponownie później.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundPl
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nie znaleziono ${status} konserwacji.';
  @override
  String get tenant =>
      'Nie znaleziono konserwacji! Możesz utworzyć prośbę o konserwację, aby zobaczyć ją tutaj.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundPl
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Nie znaleziono ${status} prośby o zwrot pieniędzy!\nBędzie można zobaczyć prośbę o zwrot pieniędzy, gdy będzie dostępna.';
  @override
  String get tenant =>
      'Nie znaleziono prośby o zwrot pieniędzy!\nMożesz utworzyć prośbę o zwrot pieniędzy, aby zobaczyć ją tutaj.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintPl
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Najemca zatwierdzi zwrot pieniędzy, gdy otrzyma pieniądze z powrotem';
  @override
  String get tenantReqSuccess =>
      'Przeanalizujemy prośbę o zwrot pieniędzy i zatwierdzimy ją w ciągu 24 godzin.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyPl
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Nieruchomość do wynajęcia ulega zmianie. Musi być ważna (obowiązująca) tylko dla płatności za czynsz w następnym miesiącu.';
  @override
  String get deleteOnRent =>
      'Twoja nieruchomość jest już wynajęta przez najemcę. Nie można jej usunąć, dopóki najemca nie zostanie usunięty';
  @override
  String get alreayRented =>
      'Ta nieruchomość jest już wynajęta. Spróbuj ponownie później.\nLub możesz skontaktować się z wynajmującym, aby uzyskać więcej informacji.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationPl
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Nie znaleziono zaproszenia do wynajmu!\nSpróbuj utworzyć zaproszenie do wynajmu, aby zobaczyć je tutaj.';
  @override
  String get tenantNoRentInvitation =>
      'Nie znaleziono zaproszenia do wynajmu!\nBędzie można zobaczyć zaproszenie do wynajmu, gdy będzie dostępne.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutPl implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Czy na pewno chcesz się wylogować?';
}

// Path: prompt.application
class _TranslationsPromptApplicationPl
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Dlaczego odrzucasz tę aplikację?';
  @override
  late final _TranslationsPromptApplicationApplicationSentPl applicationSent =
      _TranslationsPromptApplicationApplicationSentPl._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborPl implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeletePl delete =
      _TranslationsPromptLaborDeletePl._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestPl
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Dlaczego to żądanie jest odrzucane?';
  @override
  String get processTitle =>
      'Czy na pewno chcesz przetworzyć to żądanie konserwacji?';
  @override
  String get completeTitle => 'Praca ukończona?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodPl
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Usunąć metodę wypłaty?';
  @override
  String get deleteDescription =>
      'Czy na pewno chcesz usunąć tę metodę wypłaty?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesPl
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Czy na pewno chcesz wrócić?';
  @override
  String get message => 'Zmienione pola nie zostaną zapisane!';
}

// Path: prompt.property
class _TranslationsPromptPropertyPl implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeletePl delete =
      _TranslationsPromptPropertyDeletePl._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationPl
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApprovePl
  landlordApprove = _TranslationsPromptRentInvitationLandlordApprovePl._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptPl tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptPl._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredPl
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sesja wygasła';
  @override
  String get message => 'Twoja sesja wygasła. Zaloguj się ponownie.';
  @override
  String get action => 'Zaloguj się';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetPl
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Brak połączenia z Internetem';
  @override
  String get message =>
      'Sprawdź połączenie Wi-Fi lub sieć komórkową i spróbuj ponownie.';
  @override
  String get action => 'Spróbuj ponownie';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerPl
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wymagane uprawnienia!';
  @override
  String get message =>
      'Musisz przyznać uprawnienia w ustawieniach aplikacji. Czy chcesz teraz otworzyć ustawienia?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerPl
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Wybierz opcję';
  @override
  String get gallery => 'Galeria';
  @override
  String get camera => 'Aparat';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogPl
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Zweryfikuj swój e-mail';
  @override
  String get message => 'Wysłaliśmy e-mail z kodem weryfikacyjnym';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} do ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationPl
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Wyczyścić powiadomienia?';
  @override
  String get clearMessage =>
      'Czy na pewno chcesz wyczyścić wszystkie powiadomienia?';
}

// Path: form.fullName
class _TranslationsFormFullNamePl implements TranslationsFormFullNameEn {
  _TranslationsFormFullNamePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Wprowadź ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsPl errors =
      _TranslationsFormFullNameErrorsPl._(_root);
}

// Path: form.email
class _TranslationsFormEmailPl implements TranslationsFormEmailEn {
  _TranslationsFormEmailPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Wprowadź swój ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsPl errors =
      _TranslationsFormEmailErrorsPl._(_root);
}

// Path: form.password
class _TranslationsFormPasswordPl implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsPl errors =
      _TranslationsFormPasswordErrorsPl._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordPl
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Potwierdź ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsPl errors =
      _TranslationsFormConfirmPasswordErrorsPl._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberPl
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsPl errors =
      _TranslationsFormMobileNumberErrorsPl._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Pl implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Pl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Numer domu i nazwa ulicy';
  @override
  late final _TranslationsFormAddress1ErrorsPl errors =
      _TranslationsFormAddress1ErrorsPl._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Pl implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Pl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Apartament, apartament, lokal itp.';
  @override
  late final _TranslationsFormAddress2ErrorsPl errors =
      _TranslationsFormAddress2ErrorsPl._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodePl implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Wprowadź ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsPl errors =
      _TranslationsFormPostalCodeErrorsPl._(_root);
}

// Path: form.city
class _TranslationsFormCityPl implements TranslationsFormCityEn {
  _TranslationsFormCityPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Wprowadź nazwę ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsPl errors =
      _TranslationsFormCityErrorsPl._(_root);
}

// Path: form.state
class _TranslationsFormStatePl implements TranslationsFormStateEn {
  _TranslationsFormStatePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Wprowadź nazwę ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsPl errors =
      _TranslationsFormStateErrorsPl._(_root);
}

// Path: form.country
class _TranslationsFormCountryPl implements TranslationsFormCountryEn {
  _TranslationsFormCountryPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Wybierz ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsPl errors =
      _TranslationsFormCountryErrorsPl._(_root);
}

// Path: form.otp
class _TranslationsFormOtpPl implements TranslationsFormOtpEn {
  _TranslationsFormOtpPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsPl errors =
      _TranslationsFormOtpErrorsPl._(_root);
}

// Path: form.title
class _TranslationsFormTitlePl implements TranslationsFormTitleEn {
  _TranslationsFormTitlePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Tytuł';
  @override
  String get hint => 'Wprowadź tytuł';
  @override
  late final _TranslationsFormTitleErrorsPl errors =
      _TranslationsFormTitleErrorsPl._(_root);
}

// Path: form.date
class _TranslationsFormDatePl implements TranslationsFormDateEn {
  _TranslationsFormDatePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Wybierz ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsPl errors =
      _TranslationsFormDateErrorsPl._(_root);
}

// Path: form.reason
class _TranslationsFormReasonPl implements TranslationsFormReasonEn {
  _TranslationsFormReasonPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Powód';
  @override
  String get hint => 'Wprowadź powód';
  @override
  late final _TranslationsFormReasonErrorsPl errors =
      _TranslationsFormReasonErrorsPl._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodPl
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Wybierz ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsPl errors =
      _TranslationsFormWithdrawMethodErrorsPl._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldPl implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Prześlij ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsPl errors =
      _TranslationsFormFileFieldErrorsPl._(_root);
}

// Path: form.note
class _TranslationsFormNotePl implements TranslationsFormNoteEn {
  _TranslationsFormNotePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Wprowadź ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsPl errors =
      _TranslationsFormNoteErrorsPl._(_root);
}

// Path: form.gender
class _TranslationsFormGenderPl implements TranslationsFormGenderEn {
  _TranslationsFormGenderPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Wybierz ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsPl errors =
      _TranslationsFormGenderErrorsPl._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldPl implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Wprowadź ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsPl errors =
      _TranslationsFormAnyFieldErrorsPl._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownPl implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Wybierz ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsPl errors =
      _TranslationsFormAnyDropdownErrorsPl._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguagePl implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguagePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardPl implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataPl onboardData =
      _TranslationsPagesOnboardOnboardDataPl._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInPl implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Witamy z powrotem';
  @override
  String get subtitle => 'Zaloguj się teraz, aby rozpocząć niesamowitą podróż.';
  @override
  late final _TranslationsPagesSignInExtraPl extra =
      _TranslationsPagesSignInExtraPl._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordPl
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Nie pamiętasz hasła';
  @override
  String get subtitle => 'Wprowadź swój adres e-mail, aby odzyskać hasło.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationPl
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Weryfikacja';
  @override
  String subtitle({required String email}) =>
      '4-cyfrowy kod PIN został wysłany na Twój adres e-mail. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraPl extra =
      _TranslationsPagesOtpVerificationExtraPl._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordPl
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Zresetuj hasło';
  @override
  String get subtitle =>
      'Zresetuj hasło, aby je odzyskać i zalogować się na swoje konto.';
  @override
  late final _TranslationsPagesResetPasswordExtraPl extra =
      _TranslationsPagesResetPasswordExtraPl._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpPl implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Utwórz konto';
  @override
  String get subtitle =>
      'Zarejestruj się teraz, aby rozpocząć niesamowitą podróż';
  @override
  late final _TranslationsPagesSignUpExtraPl extra =
      _TranslationsPagesSignUpExtraPl._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomePl implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kim jesteś?';
  @override
  String get subtitle => 'Wybierz opcję poniżej.';
  @override
  late final _TranslationsPagesWelcomeExtraPl extra =
      _TranslationsPagesWelcomeExtraPl._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsPl implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsPl
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListPl
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Powiadomienia';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsPl implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraPl extra =
      _TranslationsPagesContactUsExtraPl._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingPl
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Dlaczego ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormPl form =
      _TranslationsPagesCancelRentingFormPl._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsPl
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentPl
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Płatność offline';
  @override
  late final _TranslationsPagesOfflinePaymentFormPl form =
      _TranslationsPagesOfflinePaymentFormPl._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraPl extra =
      _TranslationsPagesOfflinePaymentExtraPl._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusPl
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessPl success =
      _TranslationsPagesPaymentStatusSuccessPl._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailPl fail =
      _TranslationsPagesPaymentStatusFailPl._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsPl
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraPl extra =
      _TranslationsPagesPropertyDetailsExtraPl._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchPl implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Szukaj';
  @override
  late final _TranslationsPagesSearchExtraPl extra =
      _TranslationsPagesSearchExtraPl._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanPl
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Wybierz swój plan';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraPl extra =
      _TranslationsPagesSubscriptionPlanExtraPl._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportPl
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Całkowity koszt utrzymania: '),
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
class _TranslationsEnumsPropertyStatusPl
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Wszystkie nieruchomości';
  @override
  String get pending => 'Oczekujące';
  @override
  String get active => 'Aktywne';
  @override
  String get inactive => 'Nieaktywne';
  @override
  String get rejected => 'Odrzucone';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypePl
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Mieszkanie/Apartament';
  @override
  String get house => 'Dom';
  @override
  String get commercialProperty => 'Nieruchomość komercyjna';
  @override
  String get land => 'Działka';
  @override
  String get room => 'Pokój';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusPl
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Wszystkie';
  @override
  String get pending => 'Oczekujące';
  @override
  String get processing => 'W trakcie przetwarzania';
  @override
  String get approved => 'Zatwierdzone';
  @override
  String get rejected => 'Odrzucone';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusPl
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Oczekujące';
  @override
  String get processing => 'W trakcie przetwarzania';
  @override
  String get active => 'Aktywne';
  @override
  String get expired => 'Wygasłe';
  @override
  String get cancelled => 'Anulowane';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusPl
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Oczekujące';
  @override
  String get processing => 'W trakcie przetwarzania';
  @override
  String get rejected => 'Odrzucone';
  @override
  String get completed => 'Ukończone';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypePl
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Osoba prywatna';
  @override
  String get company => 'Firma';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypePl implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Nowy najemca';
  @override
  String get activeTenant => 'Aktywny najemca';
  @override
  String get expiredTenant => 'Wygasły najemca';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusPl
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Wszystkie';
  @override
  String get pending => 'Oczekujące';
  @override
  String get paid => 'Zapłacone';
  @override
  String get unpaid => 'Niezapłacone';
  @override
  String get rejected => 'Odrzucone';
  @override
  String get refund => 'Zwrot';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsPl
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Płatność online';
  @override
  String get offlinePayment => 'Płatność offline';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypePl
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Kaucja';
  @override
  String get rentPayment => 'Płatność za czynsz';
  @override
  String get subscription => 'Subskrypcja';
}

// Path: enums.gender
class _TranslationsEnumsGenderPl implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Mężczyzna';
  @override
  String get female => 'Kobieta';
  @override
  String get other => 'Inne';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationPl implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Żona';
  @override
  String get parent => 'Rodzic';
  @override
  String get friend => 'Przyjaciel';
  @override
  String get brother => 'Brat';
  @override
  String get sister => 'Siostra';
  @override
  String get child => 'Dziecko';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypePl
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Samochód';
  @override
  String get motorcycles => 'Motocykle';
  @override
  String get lorry => 'Ciężarówka';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByPl implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Od najniższego do najwyższego';
  @override
  String get highToLow => 'Od najwyższego do najniższego';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypePl
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Mieszkanie';
  @override
  String get apartment => 'Apartament';
  @override
  String get condominium => 'Apartament';
  @override
  String get serviceResidence => 'Rezydencja serwisowana';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Dupleks';
  @override
  String get townhouseCondo => 'Kamienica/Apartament';
  @override
  String get others => 'Inne';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangePl implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Wysokie';
  @override
  String get medium => 'Średnie';
  @override
  String get low => 'Niskie';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsPl
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'W pełni umeblowane';
  @override
  String get partiallyFurnished => 'Częściowo umeblowane';
  @override
  String get notFurnished => 'Nieumeblowane';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypePl
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Powierzchnia biurowa';
  @override
  String get retailSpace => 'Powierzchnia handlowa';
  @override
  String get shopLot => 'Lokal handlowy';
  @override
  String get warehouseFactory => 'Magazyn / Fabryka';
  @override
  String get hotelResort => 'Hotel / Kurort';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Inne';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypePl
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Mieszkalne';
  @override
  String get industrial => 'Przemysłowe';
  @override
  String get agricultural => 'Rolnicze';
  @override
  String get commercial => 'Komercyjne';
  @override
  String get mixedDevelopment => 'Wielofunkcyjne';
  @override
  String get others => 'Inne';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypePl
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Apartament / Rezydencja serwisowana / Penthouse';
  @override
  String get apartment => 'Mieszkanie / Apartament';
  @override
  String get house => 'Domy';
  @override
  String get shoplot => 'Lokal handlowy';
  @override
  String get sharing => 'Współdzielenie domu / mieszkania';
  @override
  String get others => 'Inne';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodPl
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 miesięcy';
  @override
  String get oneYear => '1 rok';
  @override
  String get oneAndHalfYears => '1,5 roku';
  @override
  String get twoYears => '2 lata';
  @override
  String get twoAndHalfYears => '2,5 roku';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterPl
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Dziennie';
  @override
  String get weekly => 'Tygodniowo';
  @override
  String get monthly => 'Miesięcznie';
  @override
  String get yearly => 'Rocznie';
  @override
  String get custom => 'Niestandardowe';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsPl
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Twoja aplikacja';
  @override
  String get landlord => 'Aplikacja najemcy';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentPl
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Aplikacja wysłana pomyślnie!';
  @override
  String get sucessDescription =>
      'Możesz zobaczyć tę aplikację na liście aplikacji';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeletePl
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeletePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Usunąć pracę?';
  @override
  String get description => 'Czy na pewno chcesz usunąć tę pracę?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeletePl
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeletePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Usunąć nieruchomość?';
  @override
  String get message => 'Czy na pewno chcesz usunąć tę nieruchomość?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApprovePl
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApprovePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Czy na pewno chcesz zatwierdzić ten czynsz?';
  @override
  String get description =>
      'Upewnij się, że zapoznałeś się z umową podpisaną przez najemcę.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptPl
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Czy na pewno chcesz przyjąć to zaproszenie?';
  @override
  String get description => 'Upewnij się, że pobrałeś plik PDF z umową!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsPl
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić swoje ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsPl implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić swój adres ${_root.common.email}';
  @override
  String get invalid => '⦸ Nieprawidłowy e-mail, spróbuj ponownie';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsPl
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić swoje ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Hasło musi mieć co najmniej ${count} znaków!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsPl
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić swoje ${_root.common.password}';
  @override
  String get notMatched => 'Potwierdzenie hasła nie pasuje!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsPl
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić swój ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsPl
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić swój ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsPl
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić swój ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsPl
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić swój ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsPl implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić nazwę ${_root.common.city}.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsPl implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić nazwę ${_root.common.state}.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsPl
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wybrać swój ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsPl implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić kod OTP.';
  @override
  String get invalid => 'Proszę wprowadzić poprawny kod OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsPl implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić tytuł';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsPl implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Proszę wybrać ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsPl
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wprowadzić powód';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsPl
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wybrać ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsPl
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Proszę wybrać ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsPl implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Proszę wprowadzić ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsPl
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę wybrać ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsPl
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Proszę wprowadzić ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Proszę wprowadzić poprawny @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsPl
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Proszę wybrać ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Proszę wybrać poprawny @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataPl
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Pl data1 =
      _TranslationsPagesOnboardOnboardDataData1Pl._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Pl data2 =
      _TranslationsPagesOnboardOnboardDataData2Pl._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Pl data3 =
      _TranslationsPagesOnboardOnboardDataData3Pl._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraPl
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Zapamiętaj mnie';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Nie masz konta? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraPl
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendPl codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendPl._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraPl
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogPl dialog =
      _TranslationsPagesResetPasswordExtraDialogPl._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraPl
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Masz już konto? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraPl
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Zarządzaj własnymi nieruchomościami';
  @override
  String get tenantTag => 'Zaloguj się na swoje konto najemcy';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraPl
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Wiadomość...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormPl
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonPl reason =
      _TranslationsPagesCancelRentingFormReasonPl._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormPl
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNotePl paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNotePl._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraPl
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Kwota do zapłaty: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Nazwa posiadacza konta';
  @override
  String get accountNumber => 'Numer konta';
  @override
  String get swiftCode => 'Kod Swift';
  @override
  String get branch => 'Oddział';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Wybierz tylko pliki w formacie '),
      fileType('JPG, PNG, PDF'),
      const TextSpan(text: ' lub '),
      fileType('DOC'),
      const TextSpan(text: '. Rozmiar pliku '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessPl
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Wyświetl fakturę';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Sprawdzimy płatność i zatwierdzimy ją w ciągu 24 godzin.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailPl
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Spróbuj ponownie';
  @override
  String get title => 'Ups! Płatność nie powiodła się';
  @override
  String get description =>
      'Twoja transakcja nie powiodła się z powodu błędu technicznego.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraPl
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

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
      const TextSpan(text: 'Udogodnienia '),
      fa('(Facilities & Amenities)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Wybierz okres wynajmu';
  @override
  String get writeAReview => '+ Napisz recenzję';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraPl
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Szukaj działek, mieszkań, pokoi...';
  @override
  String get noRecentSearch => 'Nie masz żadnych ostatnich wyszukiwań.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraPl
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Płatność za subskrypcję zakończona pomyślnie.\nMożesz teraz korzystać z subskrybowanych funkcji.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Pl
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Pl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Znajdź swoją nieruchomość';
  @override
  String get description =>
      'Sprawiliśmy, że znalezienie miejsca, które pasuje do Twojego życia, jest bardzo proste — niezależnie od tego, czy jest to pokój, mieszkanie, czy dom.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Pl
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Pl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Mieszkanie w mieście';
  @override
  String get description =>
      'Oszczędzamy Twój czas, szybko dopasowując Cię do idealnej nieruchomości, zanim zniknie, dzięki czemu możesz cieszyć się nowym domem lub wystawić własne za darmo.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Pl
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Pl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Twój komfortowy dom';
  @override
  String get description =>
      'Jeśli szukasz miejsca do życia, spójrz na nasze domy do wynajęcia. Mamy szeroki wybór domów do wyboru w całym kraju.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendPl
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Kod zostanie wysłany za ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Wyślij kod ponownie'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogPl
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Zmieniono pomyślnie!';
  @override
  String get subtitle =>
      'Zaloguj się za pomocą nowego hasła.\n Przekierowujemy Cię do logowania...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonPl
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Napisz powód';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsPl errors =
      _TranslationsPagesCancelRentingFormReasonErrorsPl._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNotePl
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNotePl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Uwaga dotycząca płatności (${_root.common.optional})';
  @override
  String get hint => 'Wprowadź tekst...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsPl
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsPl._(this._root);

  final TranslationsPl _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Proszę podać powód anulowania wynajmu';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsPl {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Język';
      case 'common.subscriptionPlan':
        return 'Plan subskrypcji';
      case 'common.contactUs':
        return 'Skontaktuj się z nami';
      case 'common.termsAndConditions':
        return 'Zasady i warunki';
      case 'common.aboutUs':
        return 'O nas';
      case 'common.logout':
        return 'Wyloguj';
      case 'common.editProfile':
        return 'Edytuj profil';
      case 'common.fullName':
        return 'Imię i nazwisko';
      case 'common.email':
        return 'E-mail';
      case 'common.mobileNumber':
        return 'Numer telefonu komórkowego';
      case 'common.address':
        return 'Adres';
      case 'common.postalCode':
        return 'Kod pocztowy';
      case 'common.city':
        return 'Miasto';
      case 'common.country':
        return 'Kraj';
      case 'common.state':
        return 'Stan';
      case 'common.password':
        return 'Hasło';
      case 'common.forgotPassword':
        return 'Zapomniałem hasła';
      case 'common.tenant':
        return 'Najemca';
      case 'common.landlord':
        return 'Wynajmujący';
      case 'common.cancelRenting':
        return 'Anuluj wynajem';
      case 'common.startDate':
        return 'Data rozpoczęcia';
      case 'common.endDate':
        return 'Data zakończenia';
      case 'common.fromDate':
        return 'Od daty';
      case 'common.toDate':
        return 'Do daty';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Lista banków';
      case 'common.withdrawMethod':
        return 'Metoda wypłaty';
      case 'common.uploadPaymentReceipt':
        return 'Prześlij dowód wpłaty';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Uwaga: '),
            note(
              'Płatność wymaga ręcznej akceptacji przez administratora w ciągu',
            ),
            const TextSpan(text: ' '),
            duraion('24-48 godzin.'),
          ],
        );
      case 'common.reviews':
        return 'Recenzje';
      case 'common.description':
        return 'Opis';
      case 'common.about':
        return 'O';
      case 'common.propertyTypes':
        return 'Typy nieruchomości';
      case 'common.features':
        return 'Funkcje';
      case 'common.floorPlans':
        return 'Plany pięter';
      case 'common.buildingDetails':
        return 'Szczegóły budynku';
      case 'common.buildingName':
        return 'Nazwa budynku';
      case 'common.propertyAddress':
        return 'Adres nieruchomości';
      case 'common.completionYear':
        return 'Rok ukończenia';
      case 'common.lotNumber':
        return 'Numer działki';
      case 'common.residentialType':
        return 'Typ mieszkalny';
      case 'common.furnishings':
        return 'Umeblowanie';
      case 'common.floorRange':
        return 'Zakres pięter';
      case 'common.bedrooms':
        return 'Sypialnie';
      case 'common.bathrooms':
        return 'Łazienki';
      case 'common.propertySize':
        return 'Powierzchnia nieruchomości';
      case 'common.rentalPeriod':
        return 'Okres wynajmu';
      case 'common.securityDeposit':
        return 'Kaucja';
      case 'common.utilityBill':
        return 'Rachunek za media';
      case 'common.facilities':
        return 'Udogodnienia';
      case 'common.amenities':
        return 'Udogodnienia';
      case 'common.expiringReason':
        return 'Powód wygaśnięcia';
      case 'common.tenantDetails':
        return 'Szczegóły najemcy';
      case 'common.typeOfTenant':
        return 'Typ najemcy';
      case 'common.tenantName':
        return 'Imię najemcy';
      case 'common.nidPassport':
        return 'NID/Paszport';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID najemcy';
      case 'common.dateOfBirth':
        return 'Data urodzenia';
      case 'common.gender':
        return 'Płeć';
      case 'common.nominee':
        return 'Nominowany';
      case 'common.name':
        return 'Imię';
      case 'common.optional':
        return 'Opcjonalnie';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Kontakt w nagłych wypadkach';
      case 'common.relation':
        return 'Relacja';
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
        return 'Miejsce pracy';
      case 'common.officePhoneNo':
        return 'Numer telefonu biurowego';
      case 'common.officeMobileNo':
        return 'Biuro ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Pojazd';
      case 'common.vehiclesInfo.plain':
        return 'Informacje o pojazdach';
      case 'common.vehiclesInfo.optional':
        return 'Informacje o pojazdach (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Numer rejestracyjny pojazdu.';
      case 'common.vehicleRegistrationNo.short':
        return 'Numer rejestracyjny.';
      case 'common.vehicleRegistrationNo.alt':
        return 'Numer tablicy.';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Brand';
      case 'common.rentProperty':
        return 'Wynajmij nieruchomość';
      case 'common.propertyDetails':
        return 'Szczegóły nieruchomości';
      case 'common.propertyId':
        return 'ID nieruchomości';
      case 'common.propertyType':
        return 'Typ nieruchomości';
      case 'common.propertyName':
        return 'Nazwa nieruchomości';
      case 'common.paymentDetails':
        return 'Szczegóły płatności';
      case 'common.monthlyRent':
        return 'Czynsz miesięczny';
      case 'common.thisMonthPayment':
        return 'Płatność w tym miesiącu';
      case 'common.totalPaidRent':
        return 'Całkowity zapłacony czynsz';
      case 'common.dueRent':
        return 'Zaległy czynsz';
      case 'common.rentStartDate':
        return 'Czynsz ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Czynsz ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'Umowa najmu PDF';
      case 'common.noFile':
        return 'Brak pliku';
      case 'common.tenantImageOp':
        return 'Zdjęcie najemcy ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Dodaj nowe pojazdy';
      case 'common.uploadNidPassport':
        return 'Prześlij NID/Paszport';
      case 'common.nidPassportUploadNote':
        return 'Akceptowane będą tylko obrazy typu pliku. Limit pliku do 2,5 MB.';
      case 'common.search':
        return 'Szukaj';
      case 'common.sortBy':
        return 'Sortuj według';
      case 'common.subscription':
        return 'Subskrypcja';
      case 'common.downloading':
        return 'Pobieranie...';
      case 'common.downloadSuccess':
        return 'Plik pobrany pomyślnie!';
      case 'common.addPropertyBannerTitle':
        return 'Chcesz wynająć swoją nieruchomość?';
      case 'common.application':
        return 'Aplikacja';
      case 'common.tenantHasPaidDeposit':
        return 'Najemca zapłacił kaucję.';
      case 'common.askProcessingRentApplication':
        return 'Czy na pewno chcesz przetworzyć tę prośbę o wynajem nieruchomości?';
      case 'common.dateAndTime':
        return 'Data i czas';
      case 'common.applicationDetails':
        return 'Szczegóły aplikacji';
      case 'common.depositStatus':
        return 'Status depozytu';
      case 'common.uploadRentAgreement':
        return 'Prześlij umowę najmu';
      case 'common.uploadFilePDF':
        return 'Prześlij plik (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Wybierz plik dokumentu umowy.';
      case 'common.landlordRentAgreementPDF':
        return 'Umowa najmu wynajmującego PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Umowa najmu najemcy PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Uwaga: '),
            note(
              'Zatwierdź aplikację dopiero po dokonaniu przez najemcę wpłaty depozytu.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Powód odrzucenia';
      case 'common.youveRejectedThisApplication':
        return 'Odrzuciłeś tę aplikację';
      case 'common.landlordDetails':
        return 'Szczegóły wynajmującego';
      case 'common.landlordName':
        return 'Imię wynajmującego';
      case 'common.downloadRentAgreement':
        return 'Pobierz umowę najmu';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Akceptuj '),
            toc('Zasady i warunki'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Uwaga: '),
            note(
              'Pobierz i przeczytaj umowę. Wyślij podpisaną umowę do wynajmującego przez WhatsApp lub e-mail.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Uwaga: '),
            note(
              'Wynajmujący zatwierdza aplikację, gdy najemca płaci kaucję, media i jednomiesięczną zaliczkę czynszu.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Umowa najmu (PDF) '),
            complete('Kompletna umowa'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Uwaga: '),
            note(
              'Wynajmujący zatwierdza aplikację, gdy najemca płaci kaucję, media i jednomiesięczną zaliczkę czynszu.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Lista aplikacji';
      case 'common.viewDetails':
        return 'Wyświetl szczegóły';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Dom';
      case 'common.dashboard':
        return 'Panel';
      case 'common.tenants':
        return 'Najemcy';
      case 'common.maintenance':
        return 'Konserwacja';
      case 'common.maintenanceList':
        return 'Lista konserwacji';
      case 'common.maintenanceReport':
        return 'Raport konserwacji';
      case 'common.labor':
        return 'Praca';
      case 'common.applications':
        return 'Aplikacje';
      case 'common.rentInvitation':
        return 'Zaproszenie do wynajmu';
      case 'common.payment':
        return 'Płatność';
      case 'common.rentPayment':
        return 'Płatność za czynsz';
      case 'common.depositUtilityPayment':
        return 'Depozyt i płatność za media';
      case 'common.refundRequest':
        return 'Prośba o zwrot pieniędzy';
      case 'common.withdrawRequest':
        return 'Prośba o wypłatę';
      case 'common.myProperty':
        return 'Moja nieruchomość';
      case 'common.myRent':
        return 'Mój czynsz';
      case 'common.wishlist':
        return 'Lista życzeń';
      case 'common.properties':
        return 'Nieruchomości';
      case 'common.allProperties':
        return 'Wszystkie nieruchomości';
      case 'common.totalPropery':
        return 'Całkowita nieruchomość';
      case 'common.occupied':
        return 'Zajęte';
      case 'common.vacant':
        return 'Wolne';
      case 'common.accounting':
        return 'Księgowość';
      case 'common.totalIncome':
        return 'Całkowity dochód';
      case 'common.totalExpense':
        return 'Całkowity wydatek';
      case 'common.currentBalance':
        return 'Aktualne saldo';
      case 'common.totalWithdrawal':
        return 'Suma (wypłata)';
      case 'common.totalProperties':
        return 'Całkowita liczba nieruchomości';
      case 'common.totalTenant':
        return 'Całkowita liczba najemców';
      case 'common.totalRentPaid':
        return 'Całkowity zapłacony czynsz';
      case 'common.totalRentDue':
        return 'Całkowity zaległy czynsz';
      case 'common.totalApplication':
        return 'Całkowita liczba aplikacji';
      case 'common.pendingApplication':
        return 'Oczekująca aplikacja';
      case 'common.processingApplication':
        return 'Przetwarzanie aplikacji';
      case 'common.approveApplication':
        return 'Zatwierdź aplikację';
      case 'common.rejectApplication':
        return 'Odrzuć aplikację';
      case 'common.maintenanceCost':
        return 'Koszt konserwacji';
      case 'common.transactionSummary':
        return 'Podsumowanie transakcji';
      case 'common.maintenanceRequest':
        return 'Prośba o konserwację';
      case 'common.notifications':
        return 'Powiadomienia';
      case 'common.myProperties':
        return 'Moje nieruchomości';
      case 'common.recommendationProperties':
        return 'Rekomendowane nieruchomości';
      case 'common.laborList':
        return 'Lista pracowników';
      case 'common.addLabor':
        return 'Dodaj pracownika';
      case 'common.laborDetails':
        return 'Szczegóły dotyczące pracownika';
      case 'common.laborSalary':
        return 'Wynagrodzenie pracownika';
      case 'common.editLabor':
        return 'Edytuj pracownika';
      case 'common.addNewLabor':
        return 'Dodaj nowego pracownika';
      case 'common.enterAmount':
        return 'Wprowadź kwotę';
      case 'common.maintenanceDetails':
        return 'Szczegóły konserwacji';
      case 'common.laborName':
        return 'Imię pracownika';
      case 'common.comment':
        return 'Komentarz';
      case 'common.image':
        return 'Obraz';
      case 'common.complete':
        return 'Kompletny';
      case 'common.details':
        return 'Szczegóły';
      case 'common.title':
        return 'Tytuł';
      case 'common.date':
        return 'Data';
      case 'common.reason':
        return 'Powód';
      case 'common.edit':
        return 'Edytuj';
      case 'common.property':
        return 'Nieruchomość';
      case 'common.completeYourProfile':
        return 'Uzupełnij swój profil';
      case 'common.profileImage':
        return 'Zdjęcie profilowe';
      case 'common.imagePickHint':
        return 'Tylko obraz JPEG i PNG o maksymalnym rozmiarze 120x120 pikseli.';
      case 'common.invoiceId':
        return 'ID faktury';
      case 'common.depositAmount':
        return 'Kwota depozytu';
      case 'common.landlordPhone':
        return 'Telefon wynajmującego';
      case 'common.rentalAdvance':
        return 'Czynsz (zaliczka)';
      case 'common.totalAmount':
        return 'Całkowita kwota';
      case 'common.rentalAmount':
        return 'Kwota czynszu';
      case 'common.adminCharge':
        return 'Opłata administracyjna';
      case 'common.editAccount':
        return 'Edytuj konto';
      case 'common.addNewAccount':
        return 'Dodaj nowe konto';
      case 'common.transactionId':
        return 'ID transakcji';
      case 'common.transactionType':
        return 'Typ transakcji';
      case 'common.requestDate':
        return 'Data żądania';
      case 'common.amount':
        return 'Kwota';
      case 'common.fee':
        return 'Opłata';
      case 'common.paymentStatus':
        return 'Status płatności';
      case 'common.generatedTime':
        return 'Wygenerowany czas';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'To jest raport wygenerowany przez system '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Historia wypłat';
      case 'common.history':
        return 'Historia';
      case 'common.withdrawAmount':
        return 'Kwota wypłaty';
      case 'common.availableBalance':
        return 'Dostępne saldo';
      case 'common.withdrawCharge':
        return 'Opłata za wypłatę';
      case 'common.paymentMethod':
        return 'Metoda płatności';
      case 'common.requestSendSuccess':
        return 'Prośba wysłana pomyślnie!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Dowód wpłaty przesłany pomyślnie.';
      case 'common.refundReason':
        return 'Powód zwrotu pieniędzy';
      case 'common.note':
        return 'Uwaga';
      case 'common.refundReceiveSuccess':
        return 'Zwrot pieniędzy otrzymano pomyślnie.';
      case 'common.downloadPaymentReceipt':
        return 'Pobierz dowód wpłaty';
      case 'common.invoice':
        return 'Faktura';
      case 'common.selectPropertyToSeeInvoice':
        return 'Wybierz nieruchomość, aby zobaczyć numer faktury...';
      case 'common.bankAccName':
        return 'Nazwa konta bankowego';
      case 'common.bankName':
        return 'Nazwa banku';
      case 'common.bankAccNum':
        return 'Numer konta bankowego';
      case 'common.thankYou':
        return 'Dziękujemy!';
      case 'common.basicInfo':
        return 'Podstawowe informacje';
      case 'common.descriptionPricing':
        return 'Opis i ceny';
      case 'common.contact':
        return 'Kontakt';
      case 'common.photos':
        return 'Zdjęcia';
      case 'common.successfullySubmitted':
        return 'Przesłano pomyślnie!';
      case 'common.editProperty':
        return 'Edytuj nieruchomość';
      case 'common.addNewProperty':
        return 'Dodaj nową nieruchomość';
      case 'common.propertyManageRequestSuccess':
        return 'Ogłoszenie zostało przesłane do weryfikacji.';
      case 'common.postAnotherProperty':
        return 'Opublikuj kolejną nieruchomość';
      case 'common.browseYourProperty':
        return 'Przeglądaj swoją nieruchomość';
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
        return 'Co chcesz opublikować?';
      case 'common.category':
        return 'Kategoria';
      case 'common.invalidCategory':
        return 'Nieprawidłowa kategoria';
      case 'common.unitNumber':
        return 'Numer jednostki';
      case 'common.sqft':
        return 'stopa kwadratowa';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Wielkość nieruchomości musi być większa od zera';
      case 'common.whatAreTheFacility':
        return 'Jakie są udogodnienia?';
      case 'common.whatAreTheAmenity':
        return 'Jakie są udogodnienia?';
      case 'common.parkingLot':
        return 'Parking';
      case 'common.houseType':
        return 'Typ domu';
      case 'common.value':
        return 'Wartość';
      case 'common.unitLotSize':
        return 'Wielkość jednostki / działki';
      case 'common.landSize':
        return 'Wielkość działki';
      case 'common.acres':
        return 'akr(y)';
      case 'common.roomSize':
        return 'Wielkość pokoju';
      case 'common.askTenantPreference':
        return 'Jakie są Twoje preferencje dotyczące najemcy?';
      case 'common.couple':
        return 'Para';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Opisz ${propertyType}';
      case 'common.adTitle':
        return 'Tytuł ogłoszenia';
      case 'common.minimumRentalPeriod':
        return 'Minimalny okres wynajmu';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Ukryj lub pokaż adres e-mail';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Dziękujemy za opublikowanie na ${appName}!';
      case 'common.propertyList':
        return 'Lista nieruchomości';
      case 'common.newInviteRent':
        return 'Nowe zaproszenie do wynajmu';
      case 'common.rentAgreement':
        return 'Umowa najmu';
      case 'common.rentDetails':
        return 'Szczegóły wynajmu';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Uwaga: '),
            note('Proszę czekać, aż najemca zaakceptuje zaproszenie.'),
          ],
        );
      case 'common.rent':
        return 'Czynsz';
      case 'common.editTenant':
        return 'Edytuj najemcę';
      case 'common.addNewTenant':
        return 'Dodaj nowego najemcę';
      case 'common.shareInstallLink':
        return 'Udostępnij link do instalacji';
      case 'common.tenantList':
        return 'Lista najemców';
      case 'common.editMaintenanceRequest':
        return 'Edytuj prośbę o konserwację';
      case 'common.addNewMaintenance':
        return 'Dodaj nową konserwację';
      case 'common.landlordId':
        return 'ID wynajmującego';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Uwaga '),
            note(
              'Twoja umowa jest w trakcie weryfikacji. Proszę czekać, aż wynajmujący zatwierdzi Twój wynajem.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Edytuj recenzję';
      case 'common.writeAReview':
        return 'Napisz recenzję';
      case 'common.selectRating':
        return 'Wybierz ocenę';
      case 'common.enterYourOpinion':
        return 'Wprowadź swoją opinię';
      case 'common.askToEnterReviewMsg':
        return 'Proszę wprowadzić wiadomość z recenzją';
      case 'common.pressBackAgainToExit':
        return 'Naciśnij ponownie przycisk Wstecz, aby wyjść.';
      case 'common.selectPaymentMethod':
        return 'Wybierz metodę płatności';
      case 'common.filter':
        return 'Filtr';
      case 'common.perMonth':
        return '/1 miesiąc';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Szukaj czegokolwiek w ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Coś poszło nie tak, spróbuj ponownie';
      case 'exceptions.noNidPassport':
        return 'Nie podano obrazu NID/Paszportu.';
      case 'exceptions.noRentPropertyFound':
        return 'Nie znaleziono nieruchomości na wynajem dla tego najemcy.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Nie znaleziono nieruchomości!\nSpróbuj użyć innych słów kluczowych';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Nie znaleziono planu subskrypcji!\nOdśwież stronę i spróbuj ponownie.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Nieprawidłowe informacje ${dataType}! Odśwież stronę i spróbuj ponownie.';
      case 'exceptions.invalidDownloadUrl':
        return 'Nieprawidłowy adres URL pobierania!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Nie udało się zapisać pliku! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Błąd podczas otwierania pliku! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Nie podano informacji o pojeździe.';
      case 'exceptions.yourApplicationRejected':
        return 'Twoja aplikacja została odrzucona';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Nie znaleziono aplikacji!\n${subject} zostanie wyświetlone tutaj, gdy będzie dostępne.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Twoja aplikacja';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Aplikacja najemcy';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Nie znaleziono nieruchomości!\nSpróbuj dodać nieruchomość, aby zobaczyć ją tutaj.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Nie znaleziono polecanych nieruchomości\nSpróbuj ponownie później.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Nieruchomości niedostępne\nSpróbuj ponownie później.';
      case 'exceptions.noImageProvided':
        return 'Nie podano obrazu';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Nie znaleziono ${status} konserwacji.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Nie znaleziono konserwacji! Możesz utworzyć prośbę o konserwację, aby zobaczyć ją tutaj.';
      case 'exceptions.noDepositFound':
        return 'Nie znaleziono kaucji!\nBędzie można zobaczyć kaucje, gdy będą dostępne';
      case 'exceptions.noRentPaymentFound':
        return 'Nie znaleziono płatności za czynsz!\nBędzie można zobaczyć płatności za czynsz, gdy będą dostępne';
      case 'exceptions.transactionSummaryApiException':
        return 'Nie udało się pobrać podsumowania transakcji.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Nie znaleziono prośby!\nSpróbuj utworzyć prośbę o wypłatę, aby zobaczyć ją tutaj.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Ta prośba o wypłatę nie została zatwierdzona!.';
      case 'exceptions.nonZeroError':
        return 'Wprowadź prawidłową kwotę większą od zera.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Kwota musi wynosić co najmniej ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Kwota nie może przekraczać ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Najpierw wybierz metodę płatności.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Nie znaleziono ${status} prośby o zwrot pieniędzy!\nBędzie można zobaczyć prośbę o zwrot pieniędzy, gdy będzie dostępna.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Nie znaleziono prośby o zwrot pieniędzy!\nMożesz utworzyć prośbę o zwrot pieniędzy, aby zobaczyć ją tutaj.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Najemca zatwierdzi zwrot pieniędzy, gdy otrzyma pieniądze z powrotem';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Przeanalizujemy prośbę o zwrot pieniędzy i zatwierdzimy ją w ciągu 24 godzin.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Wybierz liczbę ${value}';
      case 'exceptions.invalidDateRange':
        return 'Nieprawidłowy zakres dat.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} musi być większe od zera.';
      case 'exceptions.editProperty.rentalChange':
        return 'Nieruchomość do wynajęcia ulega zmianie. Musi być ważna (obowiązująca) tylko dla płatności za czynsz w następnym miesiącu.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Twoja nieruchomość jest już wynajęta przez najemcę. Nie można jej usunąć, dopóki najemca nie zostanie usunięty';
      case 'exceptions.editProperty.alreayRented':
        return 'Ta nieruchomość jest już wynajęta. Spróbuj ponownie później.\nLub możesz skontaktować się z wynajmującym, aby uzyskać więcej informacji.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Nie znaleziono zaproszenia do wynajmu!\nSpróbuj utworzyć zaproszenie do wynajmu, aby zobaczyć je tutaj.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Nie znaleziono zaproszenia do wynajmu!\nBędzie można zobaczyć zaproszenie do wynajmu, gdy będzie dostępne.';
      case 'exceptions.notenantFoundList':
        return 'Brak najemców!\nSpróbuj dodać najemcę, aby zobaczyć go tutaj.';
      case 'exceptions.noFeaturesProvided':
        return 'Nie podano żadnych funkcji.';
      case 'exceptions.noNotificationFound':
        return 'Brak dostępnych powiadomień.\nBędzie można zobaczyć powiadomienia tutaj, gdy będą dostępne.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Czy na pewno chcesz się wylogować?';
      case 'prompt.application.rejectTitle':
        return 'Dlaczego odrzucasz tę aplikację?';
      case 'prompt.application.applicationSent.successfully':
        return 'Aplikacja wysłana pomyślnie!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Możesz zobaczyć tę aplikację na liście aplikacji';
      case 'prompt.labor.delete.title':
        return 'Usunąć pracę?';
      case 'prompt.labor.delete.description':
        return 'Czy na pewno chcesz usunąć tę pracę?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Dlaczego to żądanie jest odrzucane?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Czy na pewno chcesz przetworzyć to żądanie konserwacji?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Praca ukończona?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Usunąć metodę wypłaty?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Czy na pewno chcesz usunąć tę metodę wypłaty?';
      case 'prompt.unsavedChanges.title':
        return 'Czy na pewno chcesz wrócić?';
      case 'prompt.unsavedChanges.message':
        return 'Zmienione pola nie zostaną zapisane!';
      case 'prompt.property.delete.title':
        return 'Usunąć nieruchomość?';
      case 'prompt.property.delete.message':
        return 'Czy na pewno chcesz usunąć tę nieruchomość?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Czy na pewno chcesz zatwierdzić ten czynsz?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Upewnij się, że zapoznałeś się z umową podpisaną przez najemcę.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Czy na pewno chcesz przyjąć to zaproszenie?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Upewnij się, że pobrałeś plik PDF z umową!';
      case 'prompt.sessionExpired.title':
        return 'Sesja wygasła';
      case 'prompt.sessionExpired.message':
        return 'Twoja sesja wygasła. Zaloguj się ponownie.';
      case 'prompt.sessionExpired.action':
        return 'Zaloguj się';
      case 'prompt.noInternet.title':
        return 'Brak połączenia z Internetem';
      case 'prompt.noInternet.message':
        return 'Sprawdź połączenie Wi-Fi lub sieć komórkową i spróbuj ponownie.';
      case 'prompt.noInternet.action':
        return 'Spróbuj ponownie';
      case 'prompt.permissionHandler.title':
        return 'Wymagane uprawnienia!';
      case 'prompt.permissionHandler.message':
        return 'Musisz przyznać uprawnienia w ustawieniach aplikacji. Czy chcesz teraz otworzyć ustawienia?';
      case 'prompt.imagePicker.title':
        return 'Wybierz opcję';
      case 'prompt.imagePicker.gallery':
        return 'Galeria';
      case 'prompt.imagePicker.camera':
        return 'Aparat';
      case 'prompt.verificationDialog.title':
        return 'Zweryfikuj swój e-mail';
      case 'prompt.verificationDialog.message':
        return 'Wysłaliśmy e-mail z kodem weryfikacyjnym';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} do ${email}';
      case 'prompt.notification.clearTitle':
        return 'Wyczyścić powiadomienia?';
      case 'prompt.notification.clearMessage':
        return 'Czy na pewno chcesz wyczyścić wszystkie powiadomienia?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Wprowadź ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Proszę wprowadzić swoje ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Wprowadź swój ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Proszę wprowadzić swój adres ${_root.common.email}';
      case 'form.email.errors.invalid':
        return '⦸ Nieprawidłowy e-mail, spróbuj ponownie';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Proszę wprowadzić swoje ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Hasło musi mieć co najmniej ${count} znaków!';
      case 'form.confirmPassword.label':
        return 'Potwierdź ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Proszę wprowadzić swoje ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Potwierdzenie hasła nie pasuje!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Proszę wprowadzić swój ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Numer domu i nazwa ulicy';
      case 'form.address1.errors.required':
        return 'Proszę wprowadzić swój ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Apartament, apartament, lokal itp.';
      case 'form.address2.errors.required':
        return 'Proszę wprowadzić swój ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Wprowadź ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Proszę wprowadzić swój ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Wprowadź nazwę ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Proszę wprowadzić nazwę ${_root.common.city}.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Wprowadź nazwę ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Proszę wprowadzić nazwę ${_root.common.state}.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Wybierz ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Proszę wybrać swój ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Proszę wprowadzić kod OTP.';
      case 'form.otp.errors.invalid':
        return 'Proszę wprowadzić poprawny kod OTP.';
      case 'form.title.label':
        return 'Tytuł';
      case 'form.title.hint':
        return 'Wprowadź tytuł';
      case 'form.title.errors.required':
        return 'Proszę wprowadzić tytuł';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Wybierz ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Proszę wybrać ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Powód';
      case 'form.reason.hint':
        return 'Wprowadź powód';
      case 'form.reason.errors.required':
        return 'Proszę wprowadzić powód';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Wybierz ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Proszę wybrać ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Prześlij ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Proszę wybrać ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Wprowadź ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Proszę wprowadzić ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Wybierz ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Proszę wybrać ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Wprowadź ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Proszę wprowadzić ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Proszę wprowadzić poprawny @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Wybierz ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Proszę wybrać ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Proszę wybrać poprawny @form.anyDropdown.label';
      case 'action.next':
        return 'Dalej';
      case 'action.getStarted':
        return 'Rozpocznij';
      case 'action.skip':
        return 'Pomiń';
      case 'action.select':
        return 'Wybierz';
      case 'action.save':
        return 'Zapisz';
      case 'action.signIn':
        return 'Zaloguj się';
      case 'action.signUp':
        return 'Zarejestruj się';
      case 'action.kContinue':
        return 'Kontynuuj';
      case 'action.clearAll':
        return 'Wyczyść wszystko';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Wyślij';
      case 'action.pay':
        return 'Zapłać';
      case 'action.remove':
        return 'Usuń';
      case 'action.goBack':
        return 'Wróć';
      case 'action.buyNow':
        return 'Kup teraz';
      case 'action.no':
        return 'Nie';
      case 'action.open':
        return 'Otwórz';
      case 'action.addProperty':
        return 'Dodaj nieruchomość';
      case 'action.process':
        return 'Przetwarzaj';
      case 'action.approve':
        return 'Zatwierdź';
      case 'action.reject':
        return 'Odrzuć';
      case 'action.viewRent':
        return 'Wyświetl czynsz';
      case 'action.openNavigationMenu':
        return 'Otwórz menu nawigacyjne';
      case 'action.seeAll':
        return 'Zobacz wszystko';
      case 'action.update':
        return 'Aktualizuj';
      case 'action.printTransaction':
        return 'Drukuj transakcję';
      case 'action.payoutRequest':
        return 'Żądanie wypłaty';
      case 'action.addNew':
        return '+ Dodaj nowy';
      case 'action.sendRequest':
        return 'Wyślij prośbę';
      case 'action.print':
        return 'Drukuj';
      case 'action.requestForRefund':
        return 'Prośba o zwrot pieniędzy';
      case 'action.previous':
        return 'Poprzedni';
      case 'action.delete':
        return 'Usuń';
      case 'action.applyProperty':
        return 'Zastosuj nieruchomość';
      case 'action.viewApplication':
        return 'Wyświetl aplikację';
      case 'action.inviteTenant':
        return 'Zaproś najemcę';
      case 'action.inviteRent':
        return 'Zaproś do wynajmu';
      case 'action.cancel':
        return 'Anuluj';
      case 'action.accept':
        return 'Akceptuj';
      case 'action.submit':
        return 'Prześlij';
      case 'action.yes':
        return 'Tak';
      case 'action.okay':
        return 'OK';
      case 'action.confirm':
        return 'Potwierdź';
      case 'action.apply':
        return 'Zastosuj';
      case 'action.reset':
        return 'Resetuj';
      case 'action.retry':
        return 'Spróbuj ponownie';
      case 'action.viewAll':
        return 'Zobacz wszystko';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Znajdź swoją nieruchomość';
      case 'pages.onboard.onboardData.data1.description':
        return 'Sprawiliśmy, że znalezienie miejsca, które pasuje do Twojego życia, jest bardzo proste — niezależnie od tego, czy jest to pokój, mieszkanie, czy dom.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Mieszkanie w mieście';
      case 'pages.onboard.onboardData.data2.description':
        return 'Oszczędzamy Twój czas, szybko dopasowując Cię do idealnej nieruchomości, zanim zniknie, dzięki czemu możesz cieszyć się nowym domem lub wystawić własne za darmo.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Twój komfortowy dom';
      case 'pages.onboard.onboardData.data3.description':
        return 'Jeśli szukasz miejsca do życia, spójrz na nasze domy do wynajęcia. Mamy szeroki wybór domów do wyboru w całym kraju.';
      case 'pages.signIn.title':
        return 'Witamy z powrotem';
      case 'pages.signIn.subtitle':
        return 'Zaloguj się teraz, aby rozpocząć niesamowitą podróż.';
      case 'pages.signIn.extra.rememberMe':
        return 'Zapamiętaj mnie';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Nie masz konta? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Nie pamiętasz hasła';
      case 'pages.forgotPassword.subtitle':
        return 'Wprowadź swój adres e-mail, aby odzyskać hasło.';
      case 'pages.otpVerification.title':
        return 'Weryfikacja';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-cyfrowy kod PIN został wysłany na Twój adres e-mail. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Kod zostanie wysłany za ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Wyślij kod ponownie'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Zresetuj hasło';
      case 'pages.resetPassword.subtitle':
        return 'Zresetuj hasło, aby je odzyskać i zalogować się na swoje konto.';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Zmieniono pomyślnie!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Zaloguj się za pomocą nowego hasła.\n Przekierowujemy Cię do logowania...';
      case 'pages.signUp.title':
        return 'Utwórz konto';
      case 'pages.signUp.subtitle':
        return 'Zarejestruj się teraz, aby rozpocząć niesamowitą podróż';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Masz już konto? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Kim jesteś?';
      case 'pages.welcome.subtitle':
        return 'Wybierz opcję poniżej.';
      case 'pages.welcome.extra.landlordTag':
        return 'Zarządzaj własnymi nieruchomościami';
      case 'pages.welcome.extra.tenantTag':
        return 'Zaloguj się na swoje konto najemcy';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Powiadomienia';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Wiadomość...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Dlaczego ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Napisz powód';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Proszę podać powód anulowania wynajmu';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Płatność offline';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Uwaga dotycząca płatności (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Wprowadź tekst...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Kwota do zapłaty: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Nazwa posiadacza konta';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Numer konta';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Kod Swift';
      case 'pages.offlinePayment.extra.branch':
        return 'Oddział';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Wybierz tylko pliki w formacie '),
            fileType('JPG, PNG, PDF'),
            const TextSpan(text: ' lub '),
            fileType('DOC'),
            const TextSpan(text: '. Rozmiar pliku '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Wyświetl fakturę';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Sprawdzimy płatność i zatwierdzimy ją w ciągu 24 godzin.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Spróbuj ponownie';
      case 'pages.paymentStatus.fail.title':
        return 'Ups! Płatność nie powiodła się';
      case 'pages.paymentStatus.fail.description':
        return 'Twoja transakcja nie powiodła się z powodu błędu technicznego.';
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
            const TextSpan(text: 'Udogodnienia '),
            fa('(Facilities & Amenities)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Wybierz okres wynajmu';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Napisz recenzję';
      case 'pages.search.appbarTitle':
        return 'Szukaj';
      case 'pages.search.extra.hint':
        return 'Szukaj działek, mieszkań, pokoi...';
      case 'pages.search.extra.noRecentSearch':
        return 'Nie masz żadnych ostatnich wyszukiwań.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Wybierz swój plan';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Płatność za subskrypcję zakończona pomyślnie.\nMożesz teraz korzystać z subskrybowanych funkcji.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Całkowity koszt utrzymania: '),
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
        return 'Wszystkie nieruchomości';
      case 'enums.propertyStatus.pending':
        return 'Oczekujące';
      case 'enums.propertyStatus.active':
        return 'Aktywne';
      case 'enums.propertyStatus.inactive':
        return 'Nieaktywne';
      case 'enums.propertyStatus.rejected':
        return 'Odrzucone';
      case 'enums.propertyType.apartmentCondominium':
        return 'Mieszkanie/Apartament';
      case 'enums.propertyType.house':
        return 'Dom';
      case 'enums.propertyType.commercialProperty':
        return 'Nieruchomość komercyjna';
      case 'enums.propertyType.land':
        return 'Działka';
      case 'enums.propertyType.room':
        return 'Pokój';
      case 'enums.applicationStatus.all':
        return 'Wszystkie';
      case 'enums.applicationStatus.pending':
        return 'Oczekujące';
      case 'enums.applicationStatus.processing':
        return 'W trakcie przetwarzania';
      case 'enums.applicationStatus.approved':
        return 'Zatwierdzone';
      case 'enums.applicationStatus.rejected':
        return 'Odrzucone';
      case 'enums.myRentStatus.pending':
        return 'Oczekujące';
      case 'enums.myRentStatus.processing':
        return 'W trakcie przetwarzania';
      case 'enums.myRentStatus.active':
        return 'Aktywne';
      case 'enums.myRentStatus.expired':
        return 'Wygasłe';
      case 'enums.myRentStatus.cancelled':
        return 'Anulowane';
      case 'enums.maintenanceStatus.pending':
        return 'Oczekujące';
      case 'enums.maintenanceStatus.processing':
        return 'W trakcie przetwarzania';
      case 'enums.maintenanceStatus.rejected':
        return 'Odrzucone';
      case 'enums.maintenanceStatus.completed':
        return 'Ukończone';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Osoba prywatna';
      case 'enums.tenantProfileType.company':
        return 'Firma';
      case 'enums.tenantType.newTenant':
        return 'Nowy najemca';
      case 'enums.tenantType.activeTenant':
        return 'Aktywny najemca';
      case 'enums.tenantType.expiredTenant':
        return 'Wygasły najemca';
      case 'enums.paymentStatus.all':
        return 'Wszystkie';
      case 'enums.paymentStatus.pending':
        return 'Oczekujące';
      case 'enums.paymentStatus.paid':
        return 'Zapłacone';
      case 'enums.paymentStatus.unpaid':
        return 'Niezapłacone';
      case 'enums.paymentStatus.rejected':
        return 'Odrzucone';
      case 'enums.paymentStatus.refund':
        return 'Zwrot';
      case 'enums.paymentOptions.onlinePayment':
        return 'Płatność online';
      case 'enums.paymentOptions.offlinePayment':
        return 'Płatność offline';
      case 'enums.paymentType.securityDeposit':
        return 'Kaucja';
      case 'enums.paymentType.rentPayment':
        return 'Płatność za czynsz';
      case 'enums.paymentType.subscription':
        return 'Subskrypcja';
      case 'enums.gender.male':
        return 'Mężczyzna';
      case 'enums.gender.female':
        return 'Kobieta';
      case 'enums.gender.other':
        return 'Inne';
      case 'enums.ecRelation.wife':
        return 'Żona';
      case 'enums.ecRelation.parent':
        return 'Rodzic';
      case 'enums.ecRelation.friend':
        return 'Przyjaciel';
      case 'enums.ecRelation.brother':
        return 'Brat';
      case 'enums.ecRelation.sister':
        return 'Siostra';
      case 'enums.ecRelation.child':
        return 'Dziecko';
      case 'enums.vehicleType.car':
        return 'Samochód';
      case 'enums.vehicleType.motorcycles':
        return 'Motocykle';
      case 'enums.vehicleType.lorry':
        return 'Ciężarówka';
      case 'enums.sortBy.lowToHigh':
        return 'Od najniższego do najwyższego';
      case 'enums.sortBy.highToLow':
        return 'Od najwyższego do najniższego';
      case 'enums.residentialType.flat':
        return 'Mieszkanie';
      case 'enums.residentialType.apartment':
        return 'Apartament';
      case 'enums.residentialType.condominium':
        return 'Apartament';
      case 'enums.residentialType.serviceResidence':
        return 'Rezydencja serwisowana';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Dupleks';
      case 'enums.residentialType.townhouseCondo':
        return 'Kamienica/Apartament';
      case 'enums.residentialType.others':
        return 'Inne';
      case 'enums.floorRange.high':
        return 'Wysokie';
      case 'enums.floorRange.medium':
        return 'Średnie';
      case 'enums.floorRange.low':
        return 'Niskie';
      case 'enums.furnishings.fullyFurnished':
        return 'W pełni umeblowane';
      case 'enums.furnishings.partiallyFurnished':
        return 'Częściowo umeblowane';
      case 'enums.furnishings.notFurnished':
        return 'Nieumeblowane';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Powierzchnia biurowa';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Powierzchnia handlowa';
      case 'enums.commercialPropertyType.shopLot':
        return 'Lokal handlowy';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Magazyn / Fabryka';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Kurort';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Inne';
      case 'enums.landPropertyType.residential':
        return 'Mieszkalne';
      case 'enums.landPropertyType.industrial':
        return 'Przemysłowe';
      case 'enums.landPropertyType.agricultural':
        return 'Rolnicze';
      case 'enums.landPropertyType.commercial':
        return 'Komercyjne';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Wielofunkcyjne';
      case 'enums.landPropertyType.others':
        return 'Inne';
      case 'enums.residentPropertyType.condo':
        return 'Apartament / Rezydencja serwisowana / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Mieszkanie / Apartament';
      case 'enums.residentPropertyType.house':
        return 'Domy';
      case 'enums.residentPropertyType.shoplot':
        return 'Lokal handlowy';
      case 'enums.residentPropertyType.sharing':
        return 'Współdzielenie domu / mieszkania';
      case 'enums.residentPropertyType.others':
        return 'Inne';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 miesięcy';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 rok';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 roku';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 lata';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 roku';
      case 'enums.dropdownDateFilter.daily':
        return 'Dziennie';
      case 'enums.dropdownDateFilter.weekly':
        return 'Tygodniowo';
      case 'enums.dropdownDateFilter.monthly':
        return 'Miesięcznie';
      case 'enums.dropdownDateFilter.yearly':
        return 'Rocznie';
      case 'enums.dropdownDateFilter.custom':
        return 'Niestandardowe';
      default:
        return null;
    }
  }
}
