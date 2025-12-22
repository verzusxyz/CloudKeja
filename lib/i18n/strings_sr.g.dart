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
class TranslationsSr implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsSr({
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
             locale: AppLocale.sr,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <sr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsSr _root = this; // ignore: unused_field

  @override
  TranslationsSr $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsSr(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonSr common = _TranslationsCommonSr._(_root);
  @override
  late final _TranslationsExceptionsSr exceptions = _TranslationsExceptionsSr._(
    _root,
  );
  @override
  late final _TranslationsPromptSr prompt = _TranslationsPromptSr._(_root);
  @override
  late final _TranslationsFormSr form = _TranslationsFormSr._(_root);
  @override
  late final _TranslationsActionSr action = _TranslationsActionSr._(_root);
  @override
  late final _TranslationsPagesSr pages = _TranslationsPagesSr._(_root);
  @override
  late final _TranslationsEnumsSr enums = _TranslationsEnumsSr._(_root);
}

// Path: common
class _TranslationsCommonSr implements TranslationsCommonEn {
  _TranslationsCommonSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Jezik';
  @override
  String get subscriptionPlan => 'Plan pretplate';
  @override
  String get contactUs => 'Контактирајте нас';
  @override
  String get termsAndConditions => 'Услови коришћења';
  @override
  String get aboutUs => 'О нама';
  @override
  String get logout => 'Одјава';
  @override
  String get editProfile => 'Измени профил';
  @override
  String get fullName => 'Пуно име';
  @override
  String get email => 'Е-пошта';
  @override
  String get mobileNumber => 'Број мобилног телефона';
  @override
  String get address => 'Адреса';
  @override
  String get postalCode => 'Поштански број';
  @override
  String get city => 'Град';
  @override
  String get country => 'Држава';
  @override
  String get state => 'Држава';
  @override
  String get password => 'Лозинка';
  @override
  String get forgotPassword => 'Заборавили сте лозинку';
  @override
  String get tenant => 'Станар';
  @override
  String get landlord => 'Власник';
  @override
  String get cancelRenting => 'Откажи изнајмљивање';
  @override
  String get startDate => 'Датум почетка';
  @override
  String get endDate => 'Датум завршетка';
  @override
  String get fromDate => 'Од датума';
  @override
  String get toDate => 'До датума';
  @override
  String get online => 'Онлајн';
  @override
  String get bankList => 'Листа банака';
  @override
  String get withdrawMethod => 'Начин повлачења';
  @override
  String get uploadPaymentReceipt => 'Отпремите потврду о уплати';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Напомена: '),
      note('За уплату је потребно ручно одобрење администратора у року од'),
      const TextSpan(text: ' '),
      duraion('24~48 сати.'),
    ],
  );
  @override
  String get reviews => 'Рецензије';
  @override
  String get description => 'Опис';
  @override
  String get about => 'О';
  @override
  String get propertyTypes => 'Типови некретнина';
  @override
  String get features => 'Карактеристике';
  @override
  String get floorPlans => 'Планови спратова';
  @override
  String get buildingDetails => 'Детаљи зграде';
  @override
  String get buildingName => 'Име зграде';
  @override
  String get propertyAddress => 'Адреса некретнине';
  @override
  String get completionYear => 'Година завршетка';
  @override
  String get lotNumber => 'Број парцеле';
  @override
  String get residentialType => 'Резиденцијални тип';
  @override
  String get furnishings => 'Намештај';
  @override
  String get floorRange => 'Распон спратова';
  @override
  String get bedrooms => 'Спаваће собе';
  @override
  String get bathrooms => 'Купатила';
  @override
  String get propertySize => 'Величина некретнине';
  @override
  String get rentalPeriod => 'Период изнајмљивања';
  @override
  String get securityDeposit => 'Депозит';
  @override
  String get utilityBill => 'Рачун за комуналије';
  @override
  String get facilities => 'Објекти';
  @override
  String get amenities => 'Погодности';
  @override
  String get expiringReason => 'Разлог истека';
  @override
  String get tenantDetails => 'Детаљи о станару';
  @override
  String get typeOfTenant => 'Тип станара';
  @override
  String get tenantName => 'Име станара';
  @override
  String get nidPassport => 'НИД/Пасош';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ИД станара';
  @override
  String get dateOfBirth => 'Датум рођења';
  @override
  String get gender => 'Пол';
  @override
  String get nominee => 'Номиновани';
  @override
  String get name => 'Име';
  @override
  String get optional => 'Опционо';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileSr nomineeMobile =
      _TranslationsCommonNomineeMobileSr._(_root);
  @override
  String get emergencyContact => 'Контакт за хитне случајеве';
  @override
  String get relation => 'Однос';
  @override
  String get relationWith => '${_root.common.relation} With';
  @override
  String get relationWithYou => '${_root.common.relationWith} You';
  @override
  String get company => 'Компанија';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Радно место';
  @override
  String get officePhoneNo => 'Број телефона канцеларије';
  @override
  String get officeMobileNo => 'Канцеларија ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Возило';
  @override
  late final _TranslationsCommonVehiclesInfoSr vehiclesInfo =
      _TranslationsCommonVehiclesInfoSr._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoSr vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoSr._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Brand';
  @override
  String get rentProperty => 'Изнајми некретнину';
  @override
  String get propertyDetails => 'Детаљи о некретнини';
  @override
  String get propertyId => 'ИД некретнине';
  @override
  String get propertyType => 'Тип некретнине';
  @override
  String get propertyName => 'Име некретнине';
  @override
  String get paymentDetails => 'Детаљи плаћања';
  @override
  String get monthlyRent => 'Месечна кирија';
  @override
  String get thisMonthPayment => 'Уплата за овај месец';
  @override
  String get totalPaidRent => 'Укупна уплата кирије';
  @override
  String get dueRent => 'Дугована кирија';
  @override
  String get rentStartDate => 'Кирија ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Кирија ${_root.common.endDate}';
  @override
  String get status => 'Статус';
  @override
  String get rentAgreementPdf => 'ПДФ уговор о закупу';
  @override
  String get noFile => 'Нема фајла';
  @override
  String get tenantImageOp => 'Слика станара ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Додај нова возила';
  @override
  String get uploadNidPassport => 'Уплоад НИД/Пасош';
  @override
  String get nidPassportUploadNote =>
      'Биће прихваћене само слике типа датотеке. Ограничење величине датотеке до 2,5 МБ.';
  @override
  String get search => 'Претрага';
  @override
  String get sortBy => 'Сортирај по';
  @override
  String get subscription => 'Претплата';
  @override
  String get downloading => 'Преузимање...';
  @override
  String get downloadSuccess => 'Фајл је успешно преузет!';
  @override
  String get addPropertyBannerTitle => 'Желите да издате своју некретнину?';
  @override
  String get application => 'Апликација';
  @override
  String get tenantHasPaidDeposit => 'Станар је уплатио депозит.';
  @override
  String get askProcessingRentApplication =>
      'Да ли сте сигурни да обрађујете овај захтев за изнајмљивање некретнине?';
  @override
  String get dateAndTime => 'Датум и време';
  @override
  String get applicationDetails => 'Детаљи апликације';
  @override
  String get depositStatus => 'Статус депозита';
  @override
  String get uploadRentAgreement => 'Отпреми уговор о закупу';
  @override
  String get uploadFilePDF => 'Отпреми фајл (ПДФ)';
  @override
  String get askSelectRentAgreement =>
      'Молимо, изаберите фајл документа уговора.';
  @override
  String get landlordRentAgreementPDF => 'ПДФ уговор о закупу власника';
  @override
  String get tenantRentAgreementPDF => 'ПДФ уговор о закупу станара';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Напомена: '),
          note(
            'Одобрите апликацију тек након што станар изврши уплату депозита.',
          ),
        ],
      );
  @override
  String get reasonOfRejection => 'Разлог одбијања';
  @override
  String get youveRejectedThisApplication => 'Одбили сте ову апликацију';
  @override
  String get landlordDetails => 'Детаљи о власнику';
  @override
  String get landlordName => 'Име власника';
  @override
  String get downloadRentAgreement => 'Преузмите уговор о закупу';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Прихватите '),
      toc('Услове коришћења'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Напомена: '),
      note(
        'Преузмите и прочитајте уговор. Пошаљите потписани уговор власнику путем ВхатсАпп-а или е-поште.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Напомена: '),
      note(
        'Власник одобрава апликацију када станар уплати депозит, рачун за комуналије и једномесечну авансну кирију.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Уговор о закупу (ПДФ) '),
          complete('Комплетан уговор'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Напомена : '),
      note(
        'Власник одобрава апликацију када станар уплати депозит, рачун за комуналије и једномесечну авансну кирију.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Вхатсапп';
  @override
  String get applicationList => 'Листа апликација';
  @override
  String get viewDetails => 'Погледај детаље';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Почетна';
  @override
  String get dashboard => 'Контролна табла';
  @override
  String get tenants => 'Станари';
  @override
  String get maintenance => 'Одржавање';
  @override
  String get maintenanceList => 'Листа одржавања';
  @override
  String get maintenanceReport => 'Извештај о одржавању';
  @override
  String get labor => 'Рад';
  @override
  String get applications => 'Апликације';
  @override
  String get rentInvitation => 'Позив за закуп';
  @override
  String get payment => 'Плаћање';
  @override
  String get rentPayment => 'Плаћање кирије';
  @override
  String get depositUtilityPayment => 'Депозит и плаћање комуналија';
  @override
  String get refundRequest => 'Захтев за повраћај новца';
  @override
  String get withdrawRequest => 'Захтев за повлачење';
  @override
  String get myProperty => 'Моја некретнина';
  @override
  String get myRent => 'Мој закуп';
  @override
  String get wishlist => 'Листа жеља';
  @override
  String get properties => 'Некретнине';
  @override
  String get allProperties => 'Све некретнине';
  @override
  String get totalPropery => 'Укупна некретнина';
  @override
  String get occupied => 'Заузето';
  @override
  String get vacant => 'Слободно';
  @override
  String get accounting => 'Рачуноводство';
  @override
  String get totalIncome => 'Укупан приход';
  @override
  String get totalExpense => 'Укупан трошак';
  @override
  String get currentBalance => 'Тренутни баланс';
  @override
  String get totalWithdrawal => 'Укупно (Повлачење)';
  @override
  String get totalProperties => 'Укупно некретнина';
  @override
  String get totalTenant => 'Укупно станара';
  @override
  String get totalRentPaid => 'Укупно уплаћено кирије';
  @override
  String get totalRentDue => 'Укупно дуговано кирије';
  @override
  String get totalApplication => 'Укупно апликација';
  @override
  String get pendingApplication => 'Апликација на чекању';
  @override
  String get processingApplication => 'Апликација у обради';
  @override
  String get approveApplication => 'Одобри апликацију';
  @override
  String get rejectApplication => 'Одбиј апликацију';
  @override
  String get maintenanceCost => 'Трошкови одржавања';
  @override
  String get transactionSummary => 'Резиме трансакција';
  @override
  String get maintenanceRequest => 'Захтев за одржавање';
  @override
  String get notifications => 'Обавештења';
  @override
  String get myProperties => 'Моје некретнине';
  @override
  String get recommendationProperties => 'Препоручене некретнине';
  @override
  String get laborList => 'Листа радника';
  @override
  String get addLabor => 'Додај радника';
  @override
  String get laborDetails => 'Детаљи о раднику';
  @override
  String get laborSalary => 'Плаћа радника';
  @override
  String get editLabor => 'Измени радника';
  @override
  String get addNewLabor => 'Додај новог радника';
  @override
  String get enterAmount => 'Унеси износ';
  @override
  String get maintenanceDetails => 'Детаљи одржавања';
  @override
  String get laborName => 'Име радника';
  @override
  String get comment => 'Коментар';
  @override
  String get image => 'Слика';
  @override
  String get complete => 'Заврши';
  @override
  String get details => 'Детаљи';
  @override
  String get title => 'Наслов';
  @override
  String get date => 'Датум';
  @override
  String get reason => 'Разлог';
  @override
  String get edit => 'Измени';
  @override
  String get property => 'Некретнина';
  @override
  String get completeYourProfile => 'Попуните свој профил';
  @override
  String get profileImage => 'Слика профила';
  @override
  String get imagePickHint =>
      'Прихватају се само ЈПЕГ и ПНГ слике максималне величине 120к120 пиксела.';
  @override
  String get invoiceId => 'ИД фактуре';
  @override
  String get depositAmount => 'Износ депозита';
  @override
  String get landlordPhone => 'Телефон власника';
  @override
  String get rentalAdvance => 'Закуп (Аванс)';
  @override
  String get totalAmount => 'Укупан износ';
  @override
  String get rentalAmount => 'Износ закупа';
  @override
  String get adminCharge => 'Административна накнада';
  @override
  String get editAccount => 'Измени налог';
  @override
  String get addNewAccount => 'Додај нови налог';
  @override
  String get transactionId => 'ИД трансакције';
  @override
  String get transactionType => 'Тип трансакције';
  @override
  String get requestDate => 'Датум захтева';
  @override
  String get amount => 'Износ';
  @override
  String get fee => 'Накнада';
  @override
  String get paymentStatus => 'Статус плаћања';
  @override
  String get generatedTime => 'Време генерисања';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Ово је системски генерисан извештај о '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Историја повлачења';
  @override
  String get history => 'Историја';
  @override
  String get withdrawAmount => 'Износ повлачења';
  @override
  String get availableBalance => 'Доступан баланс';
  @override
  String get withdrawCharge => 'Накнада за повлачење';
  @override
  String get paymentMethod => 'Начин плаћања';
  @override
  String get requestSendSuccess => 'Захтев је успешно послат!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Потврда о уплати је успешно послата.';
  @override
  String get refundReason => 'Разлог за повраћај новца';
  @override
  String get note => 'Напомена';
  @override
  String get refundReceiveSuccess => 'Повраћај новца је успешно примљен.';
  @override
  String get downloadPaymentReceipt => 'Преузмите потврду о уплати';
  @override
  String get invoice => 'Фактура';
  @override
  String get selectPropertyToSeeInvoice =>
      'Изаберите некретнину да бисте видели број фактуре...';
  @override
  String get bankAccName => 'Име банковног рачуна';
  @override
  String get bankName => 'Име банке';
  @override
  String get bankAccNum => 'Број банковног рачуна';
  @override
  String get thankYou => 'Хвала вам!';
  @override
  String get basicInfo => 'Основне информације';
  @override
  String get descriptionPricing => 'Опис и цене';
  @override
  String get contact => 'Контакт';
  @override
  String get photos => 'Фотографије';
  @override
  String get successfullySubmitted => 'Успешно послато!';
  @override
  String get editProperty => 'Измени некретнину';
  @override
  String get addNewProperty => 'Додај нову некретнину';
  @override
  String get propertyManageRequestSuccess =>
      'Ваш оглас је послат на рецензију.';
  @override
  String get postAnotherProperty => 'Постави још једну некретнину';
  @override
  String get browseYourProperty => 'Прегледајте своју некретнину';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Корак '),
      step,
      const TextSpan(text: ' од '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Шта бисте желели да објавите?';
  @override
  String get category => 'Категорија';
  @override
  String get invalidCategory => 'Неважећа категорија';
  @override
  String get unitNumber => 'Број јединице';
  @override
  String get sqft => 'кв. фт.';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Величина некретнине мора бити већа од нуле';
  @override
  String get whatAreTheFacility => 'Који су објекти?';
  @override
  String get whatAreTheAmenity => 'Који су садржаји?';
  @override
  String get parkingLot => 'Паркинг';
  @override
  String get houseType => 'Тип куће';
  @override
  String get value => 'Вредност';
  @override
  String get unitLotSize => 'Величина јединице / парцеле';
  @override
  String get landSize => 'Величина земљишта';
  @override
  String get acres => 'акр(и)';
  @override
  String get roomSize => 'Величина собе';
  @override
  String get askTenantPreference => 'Које су ваше преференције за станаре';
  @override
  String get couple => 'Пар';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Опишите ${propertyType}';
  @override
  String get adTitle => 'Наслов огласа';
  @override
  String get minimumRentalPeriod => 'Минимални период закупа';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Број';
  @override
  String get hideOrDisplayEmail => 'Сакриј или прикажи адресу е-поште';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Хвала вам што сте објавили на ${appName}!';
  @override
  String get propertyList => 'Листа некретнина';
  @override
  String get newInviteRent => 'Нови позив за закуп';
  @override
  String get rentAgreement => 'Уговор о закупу';
  @override
  String get rentDetails => 'Детаљи закупа';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Напомена: '),
      note('Молимо сачекајте да станар прихвати позив.'),
    ],
  );
  @override
  String get rent => 'Закуп';
  @override
  String get editTenant => 'Измени станара';
  @override
  String get addNewTenant => 'Додај новог станара';
  @override
  String get shareInstallLink => 'Делите везу за инсталацију';
  @override
  String get tenantList => 'Листа станара';
  @override
  String get editMaintenanceRequest => 'Измени захтев за одржавање';
  @override
  String get addNewMaintenance => 'Додај ново одржавање';
  @override
  String get landlordId => 'ИД власника';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Напомена '),
      note(
        'Ваш уговор је на рецензији. Молимо сачекајте док власник не одобри ваш закуп.',
      ),
    ],
  );
  @override
  String get editReview => 'Измени рецензију';
  @override
  String get writeAReview => 'Напишите рецензију';
  @override
  String get selectRating => 'Изаберите оцену';
  @override
  String get enterYourOpinion => 'Унесите своје мишљење';
  @override
  String get askToEnterReviewMsg => 'Молимо унесите поруку рецензије';
  @override
  String get pressBackAgainToExit => 'Притисните поново назад да бисте изашли.';
  @override
  String get selectPaymentMethod => 'Изаберите начин плаћања';
  @override
  String get filter => 'Филтер';
  @override
  String get perMonth => '/1 месец';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Претражите било шта у ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsSr implements TranslationsExceptionsEn {
  _TranslationsExceptionsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong =>
      'Нешто је кренуло наопако, молимо покушајте поново';
  @override
  String get noNidPassport => 'Није достављена слика НИД/Пасоша.';
  @override
  String get noRentPropertyFound =>
      'Није пронађена имовина за изнајмљивање за овог станара.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Имовина није пронађена!\nМолимо покушајте са другим кључним речима';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Није пронађен план претплате!\nМолимо освежите страницу и покушајте поново.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Неважећи ${dataType} подаци! Молимо освежите страницу и покушајте поново.';
  @override
  String get invalidDownloadUrl => 'Неважећи урл за преузимање!';
  @override
  String failedToSaveFile({required String error}) =>
      'Није успело чување датотеке! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Грешка при отварању датотеке! ${error}';
  @override
  String get noVehicleInfoProvided => 'Нису пружене информације о возилу.';
  @override
  String get yourApplicationRejected => 'Ваша пријава је одбијена';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSr
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintSr._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintSr noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintSr._(_root);
  @override
  String get noImageProvided => 'Слика није пружена';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundSr
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundSr._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Сигурносни депозит није пронађен!\nМолимо, можете да видите сигурносне депозите када буду доступни';
  @override
  String get noRentPaymentFound =>
      'Уплата за кирију није пронађена!\nМолимо, можете да видите уплате за кирију када буду доступне';
  @override
  String get transactionSummaryApiException =>
      'Није успело преузимање резимеа трансакције.';
  @override
  String get noWithdrawRequestFound =>
      'Захтев није пронађен!\nМолимо покушајте да креирате захтев за подизање да бисте га видели овде.';
  @override
  String get withdrawRequestNotApproved =>
      'Овај захтев за подизање није одобрен!.';
  @override
  String get nonZeroError => 'Молимо унесите важећи износ већи од нуле.';
  @override
  String minAmountError({required String minValue}) =>
      'Износ мора бити најмање ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Износ не сме да прелази ${maxValue}.';
  @override
  String get selectPaymentMethodHint => 'Молимо, прво изаберите начин плаћања.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundSr
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundSr._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintSr refundRequestHint =
      _TranslationsExceptionsRefundRequestHintSr._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Молимо изаберите број ${value}';
  @override
  String get invalidDateRange => 'Неважећи опсег датума.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} мора бити веће од нуле.';
  @override
  late final _TranslationsExceptionsEditPropertySr editProperty =
      _TranslationsExceptionsEditPropertySr._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationSr rentInvitation =
      _TranslationsExceptionsRentInvitationSr._(_root);
  @override
  String get notenantFoundList =>
      'Нема станара!\nМолимо покушајте да додате станара да бисте га видели овде.';
  @override
  String get noFeaturesProvided => 'Функције нису пружене.';
  @override
  String get noNotificationFound =>
      'Обавештење није доступно.\nМожете да видите своје обавештење овде када буде доступно.';
}

// Path: prompt
class _TranslationsPromptSr implements TranslationsPromptEn {
  _TranslationsPromptSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutSr logout = _TranslationsPromptLogoutSr._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationSr application =
      _TranslationsPromptApplicationSr._(_root);
  @override
  late final _TranslationsPromptLaborSr labor = _TranslationsPromptLaborSr._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestSr maintenanceRequest =
      _TranslationsPromptMaintenanceRequestSr._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodSr withdrawMethod =
      _TranslationsPromptWithdrawMethodSr._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesSr unsavedChanges =
      _TranslationsPromptUnsavedChangesSr._(_root);
  @override
  late final _TranslationsPromptPropertySr property =
      _TranslationsPromptPropertySr._(_root);
  @override
  late final _TranslationsPromptRentInvitationSr rentInvitation =
      _TranslationsPromptRentInvitationSr._(_root);
  @override
  late final _TranslationsPromptSessionExpiredSr sessionExpired =
      _TranslationsPromptSessionExpiredSr._(_root);
  @override
  late final _TranslationsPromptNoInternetSr noInternet =
      _TranslationsPromptNoInternetSr._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerSr permissionHandler =
      _TranslationsPromptPermissionHandlerSr._(_root);
  @override
  late final _TranslationsPromptImagePickerSr imagePicker =
      _TranslationsPromptImagePickerSr._(_root);
  @override
  late final _TranslationsPromptVerificationDialogSr verificationDialog =
      _TranslationsPromptVerificationDialogSr._(_root);
  @override
  late final _TranslationsPromptNotificationSr notification =
      _TranslationsPromptNotificationSr._(_root);
}

// Path: form
class _TranslationsFormSr implements TranslationsFormEn {
  _TranslationsFormSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameSr fullName =
      _TranslationsFormFullNameSr._(_root);
  @override
  late final _TranslationsFormEmailSr email = _TranslationsFormEmailSr._(_root);
  @override
  late final _TranslationsFormPasswordSr password =
      _TranslationsFormPasswordSr._(_root);
  @override
  late final _TranslationsFormConfirmPasswordSr confirmPassword =
      _TranslationsFormConfirmPasswordSr._(_root);
  @override
  late final _TranslationsFormMobileNumberSr mobileNumber =
      _TranslationsFormMobileNumberSr._(_root);
  @override
  late final _TranslationsFormAddress1Sr address1 =
      _TranslationsFormAddress1Sr._(_root);
  @override
  late final _TranslationsFormAddress2Sr address2 =
      _TranslationsFormAddress2Sr._(_root);
  @override
  late final _TranslationsFormPostalCodeSr postalCode =
      _TranslationsFormPostalCodeSr._(_root);
  @override
  late final _TranslationsFormCitySr city = _TranslationsFormCitySr._(_root);
  @override
  late final _TranslationsFormStateSr state = _TranslationsFormStateSr._(_root);
  @override
  late final _TranslationsFormCountrySr country = _TranslationsFormCountrySr._(
    _root,
  );
  @override
  late final _TranslationsFormOtpSr otp = _TranslationsFormOtpSr._(_root);
  @override
  late final _TranslationsFormTitleSr title = _TranslationsFormTitleSr._(_root);
  @override
  late final _TranslationsFormDateSr date = _TranslationsFormDateSr._(_root);
  @override
  late final _TranslationsFormReasonSr reason = _TranslationsFormReasonSr._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodSr withdrawMethod =
      _TranslationsFormWithdrawMethodSr._(_root);
  @override
  late final _TranslationsFormFileFieldSr fileField =
      _TranslationsFormFileFieldSr._(_root);
  @override
  late final _TranslationsFormNoteSr note = _TranslationsFormNoteSr._(_root);
  @override
  late final _TranslationsFormGenderSr gender = _TranslationsFormGenderSr._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldSr anyField =
      _TranslationsFormAnyFieldSr._(_root);
  @override
  late final _TranslationsFormAnyDropdownSr anyDropdown =
      _TranslationsFormAnyDropdownSr._(_root);
}

// Path: action
class _TranslationsActionSr implements TranslationsActionEn {
  _TranslationsActionSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Следеће';
  @override
  String get getStarted => 'Почните';
  @override
  String get skip => 'Прескочи';
  @override
  String get select => 'Изаберите';
  @override
  String get save => 'Сачувај';
  @override
  String get signIn => 'Пријавите се';
  @override
  String get signUp => 'Региструјте се';
  @override
  String get kContinue => 'Наставите';
  @override
  String get clearAll => 'Обриши све';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Пошаљи';
  @override
  String get pay => 'Плати';
  @override
  String get remove => 'Уклони';
  @override
  String get goBack => 'Иди назад';
  @override
  String get buyNow => 'Купи сада';
  @override
  String get no => 'Не';
  @override
  String get open => 'Отвори';
  @override
  String get addProperty => 'Додај некретнину';
  @override
  String get process => 'Обради';
  @override
  String get approve => 'Одобри';
  @override
  String get reject => 'Одбиј';
  @override
  String get viewRent => 'Погледај кирију';
  @override
  String get openNavigationMenu => 'Отвори навигациони мени';
  @override
  String get seeAll => 'Погледај све';
  @override
  String get update => 'Ажурирај';
  @override
  String get printTransaction => 'Одштампај трансакцију';
  @override
  String get payoutRequest => 'Захтев за исплату';
  @override
  String get addNew => '+ Додај ново';
  @override
  String get sendRequest => 'Пошаљи захтев';
  @override
  String get print => 'Штампај';
  @override
  String get requestForRefund => 'Захтев за повраћај новца';
  @override
  String get previous => 'Претходно';
  @override
  String get delete => 'Избриши';
  @override
  String get applyProperty => 'Пријави некретнину';
  @override
  String get viewApplication => 'Погледај пријаву';
  @override
  String get inviteTenant => 'Позови станара';
  @override
  String get inviteRent => 'Позови за кирију';
  @override
  String get cancel => 'Откажи';
  @override
  String get accept => 'Прихвати';
  @override
  String get submit => 'Поднеси';
  @override
  String get yes => 'Да';
  @override
  String get okay => 'У реду';
  @override
  String get confirm => 'Потврди';
  @override
  String get apply => 'Примени';
  @override
  String get reset => 'Ресетуј';
  @override
  String get retry => 'Покушај поново';
  @override
  String get viewAll => 'Погледај све';
}

// Path: pages
class _TranslationsPagesSr implements TranslationsPagesEn {
  _TranslationsPagesSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageSr language =
      _TranslationsPagesLanguageSr._(_root);
  @override
  late final _TranslationsPagesOnboardSr onboard =
      _TranslationsPagesOnboardSr._(_root);
  @override
  late final _TranslationsPagesSignInSr signIn = _TranslationsPagesSignInSr._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordSr forgotPassword =
      _TranslationsPagesForgotPasswordSr._(_root);
  @override
  late final _TranslationsPagesOtpVerificationSr otpVerification =
      _TranslationsPagesOtpVerificationSr._(_root);
  @override
  late final _TranslationsPagesResetPasswordSr resetPassword =
      _TranslationsPagesResetPasswordSr._(_root);
  @override
  late final _TranslationsPagesSignUpSr signUp = _TranslationsPagesSignUpSr._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeSr welcome =
      _TranslationsPagesWelcomeSr._(_root);
  @override
  late final _TranslationsPagesAboutUsSr aboutUs =
      _TranslationsPagesAboutUsSr._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsSr termsAndConditions =
      _TranslationsPagesTermsAndConditionsSr._(_root);
  @override
  late final _TranslationsPagesNotificationListSr notificationList =
      _TranslationsPagesNotificationListSr._(_root);
  @override
  late final _TranslationsPagesContactUsSr contactUs =
      _TranslationsPagesContactUsSr._(_root);
  @override
  late final _TranslationsPagesCancelRentingSr cancelRenting =
      _TranslationsPagesCancelRentingSr._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsSr invoiceDetails =
      _TranslationsPagesInvoiceDetailsSr._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentSr offlinePayment =
      _TranslationsPagesOfflinePaymentSr._(_root);
  @override
  late final _TranslationsPagesPaymentStatusSr paymentStatus =
      _TranslationsPagesPaymentStatusSr._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsSr propertyDetails =
      _TranslationsPagesPropertyDetailsSr._(_root);
  @override
  late final _TranslationsPagesSearchSr search = _TranslationsPagesSearchSr._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanSr subscriptionPlan =
      _TranslationsPagesSubscriptionPlanSr._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportSr
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportSr._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsSr implements TranslationsEnumsEn {
  _TranslationsEnumsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusSr propertyStatus =
      _TranslationsEnumsPropertyStatusSr._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeSr propertyType =
      _TranslationsEnumsPropertyTypeSr._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusSr applicationStatus =
      _TranslationsEnumsApplicationStatusSr._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusSr myRentStatus =
      _TranslationsEnumsMyRentStatusSr._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusSr maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusSr._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeSr tenantProfileType =
      _TranslationsEnumsTenantProfileTypeSr._(_root);
  @override
  late final _TranslationsEnumsTenantTypeSr tenantType =
      _TranslationsEnumsTenantTypeSr._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusSr paymentStatus =
      _TranslationsEnumsPaymentStatusSr._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsSr paymentOptions =
      _TranslationsEnumsPaymentOptionsSr._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeSr paymentType =
      _TranslationsEnumsPaymentTypeSr._(_root);
  @override
  late final _TranslationsEnumsGenderSr gender = _TranslationsEnumsGenderSr._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationSr ecRelation =
      _TranslationsEnumsEcRelationSr._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeSr vehicleType =
      _TranslationsEnumsVehicleTypeSr._(_root);
  @override
  late final _TranslationsEnumsSortBySr sortBy = _TranslationsEnumsSortBySr._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeSr residentialType =
      _TranslationsEnumsResidentialTypeSr._(_root);
  @override
  late final _TranslationsEnumsFloorRangeSr floorRange =
      _TranslationsEnumsFloorRangeSr._(_root);
  @override
  late final _TranslationsEnumsFurnishingsSr furnishings =
      _TranslationsEnumsFurnishingsSr._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeSr commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeSr._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeSr landPropertyType =
      _TranslationsEnumsLandPropertyTypeSr._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeSr residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeSr._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodSr minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodSr._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterSr dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterSr._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileSr
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoSr
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Информације о возилима';
  @override
  String get optional => 'Информације о возилима (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoSr
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Регистрација возила бр.';
  @override
  String get short => 'Регистрација бр.';
  @override
  String get alt => 'Број таблице.';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintSr
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Пријава није пронађена!\n${subject} ће бити приказана овде када буде доступна.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsSr subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsSr._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintSr
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Имовина није пронађена!\nМолимо покушајте да додате имовину да бисте је видели овде.';
  @override
  String get tenantRecommended =>
      'Нису пронађене препоручене некретнине\nМолимо покушајте поново касније.';
  @override
  String get tenantAllProperty =>
      'Некретнине нису доступне\nМолимо покушајте поново касније.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundSr
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Није пронађено ${status} одржавање.';
  @override
  String get tenant =>
      'Одржавање није пронађено! Можете да креирате захтев за одржавање да бисте га видели овде.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundSr
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Није пронађен ${status} захтев за повраћај новца!\nМожете да видите захтев за повраћај новца овде када буде доступан.';
  @override
  String get tenant =>
      'Захтев за повраћај новца није пронађен!\nМожете да креирате захтев за повраћај новца да бисте га видели овде.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintSr
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Станар ће одобрити повраћај новца када добије новац назад';
  @override
  String get tenantReqSuccess =>
      'Прегледаћемо захтев за повраћај новца и одобрити га у року од 24 сата.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertySr
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertySr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Имовина за изнајмљивање се мења. Мора бити важећа (на снази) само за уплату кирије за следећи месец.';
  @override
  String get deleteOnRent =>
      'Вашу имовину је већ изнајмио станар. Не можете да је избришете док прво не уклоните станара';
  @override
  String get alreayRented =>
      'Ова некретнина је већ изнајмљена. Молимо покушајте поново касније.\nИли можете да контактирате станодавца за више информација.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationSr
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Није пронађен позив за кирију!\nМолимо покушајте да креирате позив за кирију да бисте га видели овде.';
  @override
  String get tenantNoRentInvitation =>
      'Није пронађен позив за кирију!\nМожете да видите позив за кирију овде када буде доступан.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutSr implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Да ли сте сигурни да желите да се одјавите?';
}

// Path: prompt.application
class _TranslationsPromptApplicationSr
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Зашто одбијате ову пријаву?';
  @override
  late final _TranslationsPromptApplicationApplicationSentSr applicationSent =
      _TranslationsPromptApplicationApplicationSentSr._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborSr implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteSr delete =
      _TranslationsPromptLaborDeleteSr._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestSr
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Зашто се овај захтев одбија?';
  @override
  String get processTitle =>
      'Да ли сте сигурни да обрађујете овај захтев за одржавање?';
  @override
  String get completeTitle => 'Да ли је посао завршен?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodSr
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Избрисати метод подизања?';
  @override
  String get deleteDescription =>
      'Да ли сте сигурни да желите да избришете овај метод подизања?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesSr
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Да ли сте сигурни да желите да се вратите назад?';
  @override
  String get message => 'Поља која су промењена неће бити сачувана!';
}

// Path: prompt.property
class _TranslationsPromptPropertySr implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertySr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteSr delete =
      _TranslationsPromptPropertyDeleteSr._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationSr
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveSr
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveSr._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptSr tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptSr._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredSr
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Сесија је истекла';
  @override
  String get message => 'Ваша сесија је истекла. Молимо, пријавите се поново';
  @override
  String get action => 'Пријавите се';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetSr
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Нема интернет везе';
  @override
  String get message =>
      'Молимо, проверите своју Ви-Фи везу са мобилном мрежом и покушајте поново';
  @override
  String get action => 'Покушајте поново';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerSr
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Потребна дозвола!';
  @override
  String get message =>
      'Морате да доделите дозволе у подешавањима апликације. Да ли желите да отворите подешавања сада?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerSr
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Изаберите опцију';
  @override
  String get gallery => 'Галерија';
  @override
  String get camera => 'Камера';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogSr
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Верификујте своју е-пошту';
  @override
  String get message => 'Послали смо е-пошту са верификационим кодом';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} на ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationSr
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Обрисати обавештења?';
  @override
  String get clearMessage =>
      'Да ли сте сигурни да желите да обришете сва обавештења?';
}

// Path: form.fullName
class _TranslationsFormFullNameSr implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Унесите ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsSr errors =
      _TranslationsFormFullNameErrorsSr._(_root);
}

// Path: form.email
class _TranslationsFormEmailSr implements TranslationsFormEmailEn {
  _TranslationsFormEmailSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Унесите вашу ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsSr errors =
      _TranslationsFormEmailErrorsSr._(_root);
}

// Path: form.password
class _TranslationsFormPasswordSr implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsSr errors =
      _TranslationsFormPasswordErrorsSr._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordSr
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Потврдите ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsSr errors =
      _TranslationsFormConfirmPasswordErrorsSr._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberSr
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsSr errors =
      _TranslationsFormMobileNumberErrorsSr._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Sr implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Sr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Број куће и назив улице';
  @override
  late final _TranslationsFormAddress1ErrorsSr errors =
      _TranslationsFormAddress1ErrorsSr._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Sr implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Sr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Стан, апартман, јединица, итд.';
  @override
  late final _TranslationsFormAddress2ErrorsSr errors =
      _TranslationsFormAddress2ErrorsSr._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeSr implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Унесите ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsSr errors =
      _TranslationsFormPostalCodeErrorsSr._(_root);
}

// Path: form.city
class _TranslationsFormCitySr implements TranslationsFormCityEn {
  _TranslationsFormCitySr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Унесите назив ${_root.common.city} града.';
  @override
  late final _TranslationsFormCityErrorsSr errors =
      _TranslationsFormCityErrorsSr._(_root);
}

// Path: form.state
class _TranslationsFormStateSr implements TranslationsFormStateEn {
  _TranslationsFormStateSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Унесите назив ${_root.common.state} државе.';
  @override
  late final _TranslationsFormStateErrorsSr errors =
      _TranslationsFormStateErrorsSr._(_root);
}

// Path: form.country
class _TranslationsFormCountrySr implements TranslationsFormCountryEn {
  _TranslationsFormCountrySr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Изаберите ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsSr errors =
      _TranslationsFormCountryErrorsSr._(_root);
}

// Path: form.otp
class _TranslationsFormOtpSr implements TranslationsFormOtpEn {
  _TranslationsFormOtpSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsSr errors =
      _TranslationsFormOtpErrorsSr._(_root);
}

// Path: form.title
class _TranslationsFormTitleSr implements TranslationsFormTitleEn {
  _TranslationsFormTitleSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Наслов';
  @override
  String get hint => 'Унесите наслов';
  @override
  late final _TranslationsFormTitleErrorsSr errors =
      _TranslationsFormTitleErrorsSr._(_root);
}

// Path: form.date
class _TranslationsFormDateSr implements TranslationsFormDateEn {
  _TranslationsFormDateSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Изаберите ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsSr errors =
      _TranslationsFormDateErrorsSr._(_root);
}

// Path: form.reason
class _TranslationsFormReasonSr implements TranslationsFormReasonEn {
  _TranslationsFormReasonSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Разлог';
  @override
  String get hint => 'Унесите разлог';
  @override
  late final _TranslationsFormReasonErrorsSr errors =
      _TranslationsFormReasonErrorsSr._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodSr
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Изаберите ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsSr errors =
      _TranslationsFormWithdrawMethodErrorsSr._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldSr implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Отпремите ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsSr errors =
      _TranslationsFormFileFieldErrorsSr._(_root);
}

// Path: form.note
class _TranslationsFormNoteSr implements TranslationsFormNoteEn {
  _TranslationsFormNoteSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Унесите ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsSr errors =
      _TranslationsFormNoteErrorsSr._(_root);
}

// Path: form.gender
class _TranslationsFormGenderSr implements TranslationsFormGenderEn {
  _TranslationsFormGenderSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Изаберите ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsSr errors =
      _TranslationsFormGenderErrorsSr._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldSr implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Унесите ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsSr errors =
      _TranslationsFormAnyFieldErrorsSr._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownSr implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Изаберите ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsSr errors =
      _TranslationsFormAnyDropdownErrorsSr._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageSr implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardSr implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataSr onboardData =
      _TranslationsPagesOnboardOnboardDataSr._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInSr implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Добродошли назад';
  @override
  String get subtitle =>
      'Пријавите се сада да бисте започели невероватно путовање.';
  @override
  late final _TranslationsPagesSignInExtraSr extra =
      _TranslationsPagesSignInExtraSr._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordSr
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Заборављена лозинка';
  @override
  String get subtitle =>
      'Унесите своју е-маил адресу да бисте повратили лозинку.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationSr
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Верификација';
  @override
  String subtitle({required String email}) =>
      '4-цифрени пин је послат на вашу е-маил адресу. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraSr extra =
      _TranslationsPagesOtpVerificationExtraSr._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordSr
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ресетуј лозинку';
  @override
  String get subtitle =>
      'Ресетујте лозинку за опоравак и пријавите се на свој налог';
  @override
  late final _TranslationsPagesResetPasswordExtraSr extra =
      _TranslationsPagesResetPasswordExtraSr._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpSr implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Направи налог';
  @override
  String get subtitle =>
      'Пријавите се сада да бисте започели невероватно путовање';
  @override
  late final _TranslationsPagesSignUpExtraSr extra =
      _TranslationsPagesSignUpExtraSr._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeSr implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ко сте ви?';
  @override
  String get subtitle => 'Молимо, изаберите опцију испод.';
  @override
  late final _TranslationsPagesWelcomeExtraSr extra =
      _TranslationsPagesWelcomeExtraSr._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsSr implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsSr
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListSr
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Обавештења';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsSr implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraSr extra =
      _TranslationsPagesContactUsExtraSr._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingSr
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Зашто ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormSr form =
      _TranslationsPagesCancelRentingFormSr._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsSr
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentSr
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Офлајн плаћање';
  @override
  late final _TranslationsPagesOfflinePaymentFormSr form =
      _TranslationsPagesOfflinePaymentFormSr._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraSr extra =
      _TranslationsPagesOfflinePaymentExtraSr._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusSr
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessSr success =
      _TranslationsPagesPaymentStatusSuccessSr._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailSr fail =
      _TranslationsPagesPaymentStatusFailSr._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsSr
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraSr extra =
      _TranslationsPagesPropertyDetailsExtraSr._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchSr implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Претрага';
  @override
  late final _TranslationsPagesSearchExtraSr extra =
      _TranslationsPagesSearchExtraSr._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanSr
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Изаберите свој план';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraSr extra =
      _TranslationsPagesSubscriptionPlanExtraSr._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportSr
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Укупни трошкови одржавања: '),
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
class _TranslationsEnumsPropertyStatusSr
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Сва некретнина';
  @override
  String get pending => 'На чекању';
  @override
  String get active => 'Активно';
  @override
  String get inactive => 'Неактивно';
  @override
  String get rejected => 'Одбијено';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeSr
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Стан/Кондоминијум';
  @override
  String get house => 'Кућа';
  @override
  String get commercialProperty => 'Комерцијална некретнина';
  @override
  String get land => 'Земљиште';
  @override
  String get room => 'Соба';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusSr
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Све';
  @override
  String get pending => 'На чекању';
  @override
  String get processing => 'Обрада';
  @override
  String get approved => 'Одобрено';
  @override
  String get rejected => 'Одбијено';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusSr
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'На чекању';
  @override
  String get processing => 'Обрада';
  @override
  String get active => 'Активно';
  @override
  String get expired => 'Истекло';
  @override
  String get cancelled => 'Отказано';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusSr
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'На чекању';
  @override
  String get processing => 'Обрада';
  @override
  String get rejected => 'Одбијено';
  @override
  String get completed => 'Завршено';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeSr
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Приватно (Индивидуално)';
  @override
  String get company => 'Компанија';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeSr implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Нови станар';
  @override
  String get activeTenant => 'Активни станар';
  @override
  String get expiredTenant => 'Истекли станар';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusSr
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Све';
  @override
  String get pending => 'На чекању';
  @override
  String get paid => 'Плаћено';
  @override
  String get unpaid => 'Неплаћено';
  @override
  String get rejected => 'Одбијено';
  @override
  String get refund => 'Повраћај новца';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsSr
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Онлајн плаћање';
  @override
  String get offlinePayment => 'Офлајн плаћање';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeSr
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Сигурносни депозит';
  @override
  String get rentPayment => 'Уплата кирије';
  @override
  String get subscription => 'Претплата';
}

// Path: enums.gender
class _TranslationsEnumsGenderSr implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Мушко';
  @override
  String get female => 'Женско';
  @override
  String get other => 'Друго';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationSr implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Супруга';
  @override
  String get parent => 'Родитељ';
  @override
  String get friend => 'Пријатељ';
  @override
  String get brother => 'Брат';
  @override
  String get sister => 'Сестра';
  @override
  String get child => 'Дете';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeSr
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Аутомобил';
  @override
  String get motorcycles => 'Мотоцикли';
  @override
  String get lorry => 'Камион';
}

// Path: enums.sortBy
class _TranslationsEnumsSortBySr implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortBySr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Од ниског ка високом';
  @override
  String get highToLow => 'Од високог ка ниском';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeSr
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Стан';
  @override
  String get apartment => 'Апартман';
  @override
  String get condominium => 'Кондоминијум';
  @override
  String get serviceResidence => 'Резиденција са услугама';
  @override
  String get studio => 'Студио';
  @override
  String get duplex => 'Дуплекс';
  @override
  String get townhouseCondo => 'Кућа у низу Кондо';
  @override
  String get others => 'Остало';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeSr implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Високо';
  @override
  String get medium => 'Средње';
  @override
  String get low => 'Ниско';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsSr
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Потпуно намештено';
  @override
  String get partiallyFurnished => 'Делимично намештено';
  @override
  String get notFurnished => 'Није намештено';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeSr
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Канцеларијски простор';
  @override
  String get retailSpace => 'Простор за малопродају';
  @override
  String get shopLot => 'Продавница';
  @override
  String get warehouseFactory => 'Складиште / Фабрика';
  @override
  String get hotelResort => 'Хотел / Ресорт';
  @override
  String get sofo => 'Софо';
  @override
  String get soho => 'Сохо';
  @override
  String get sovo => 'Сово';
  @override
  String get others => 'Остало';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeSr
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Резиденцијално';
  @override
  String get industrial => 'Индустријско';
  @override
  String get agricultural => 'Пољопривредно';
  @override
  String get commercial => 'Комерцијално';
  @override
  String get mixedDevelopment => 'Мешовити развој';
  @override
  String get others => 'Остало';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeSr
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Кондо / Резиденција са услугама / Пентхаус';
  @override
  String get apartment => 'Апартман / Стан';
  @override
  String get house => 'Куће';
  @override
  String get shoplot => 'Продавница';
  @override
  String get sharing => 'Дељење куће / стана';
  @override
  String get others => 'Остало';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodSr
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 месеци';
  @override
  String get oneYear => '1 година';
  @override
  String get oneAndHalfYears => '1.5 године';
  @override
  String get twoYears => '2 године';
  @override
  String get twoAndHalfYears => '2.5 године';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterSr
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Дневно';
  @override
  String get weekly => 'Недељно';
  @override
  String get monthly => 'Месечно';
  @override
  String get yearly => 'Годишње';
  @override
  String get custom => 'Прилагођено';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsSr
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Ваша пријава';
  @override
  String get landlord => 'Пријава станара';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentSr
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Пријава је успешно послата!';
  @override
  String get sucessDescription =>
      'Ову пријаву можете видети на листи ваших пријава';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteSr
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Избрисати рад?';
  @override
  String get description =>
      'Да ли сте сигурни да желите да избришете овај рад?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteSr
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Избрисати имовину?';
  @override
  String get message => 'Да ли сте сигурни да желите да избришете ову имовину?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveSr
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Да ли сте сигурни да желите да одобрите ову кирију?';
  @override
  String get description =>
      'Уверите се да сте прегледали уговор који је потписао станар.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptSr
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Да ли сте сигурни да прихватате ову позивницу?';
  @override
  String get description => 'Уверите се да сте преузели пдф датотеку уговора!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsSr
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите ваше ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsSr implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите вашу ${_root.common.email} адресу';
  @override
  String get invalid => '⦸ Неважећа е-пошта, молимо покушајте поново';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsSr
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите вашу ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Лозинка мора да има најмање ${count} карактера!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsSr
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите вашу ${_root.common.password}';
  @override
  String get notMatched => 'Потврда лозинке се не подудара!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsSr
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите ваш ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsSr
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите вашу ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsSr
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите вашу ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsSr
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите ваш ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsSr implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Молимо унесите назив вашег ${_root.common.city} града.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsSr implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Молимо унесите назив ваше ${_root.common.state} државе.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsSr
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо изаберите вашу ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsSr implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите отп.';
  @override
  String get invalid => 'Молимо унесите исправан отп.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsSr implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите наслов';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsSr implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Молимо изаберите ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsSr
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите разлог';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsSr
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо изаберите ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsSr
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Молимо изаберите ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsSr implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Молимо унесите ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsSr
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо изаберите ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsSr
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Молимо унесите ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Молимо унесите важећи @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsSr
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Молимо изаберите ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Молимо изаберите важећи @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataSr
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Sr data1 =
      _TranslationsPagesOnboardOnboardDataData1Sr._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Sr data2 =
      _TranslationsPagesOnboardOnboardDataData2Sr._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Sr data3 =
      _TranslationsPagesOnboardOnboardDataData3Sr._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraSr
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Запамти ме';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Немате налог? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraSr
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendSr codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendSr._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraSr
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogSr dialog =
      _TranslationsPagesResetPasswordExtraDialogSr._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraSr
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Већ имате налог? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraSr
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Управљајте својим некретнинама';
  @override
  String get tenantTag => 'Пријавите се на свој налог за изнајмљивање';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraSr
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Порука...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormSr
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonSr reason =
      _TranslationsPagesCancelRentingFormReasonSr._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormSr
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteSr paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteSr._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraSr
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Износ уплате: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Име власника рачуна';
  @override
  String get accountNumber => 'Број рачуна';
  @override
  String get swiftCode => 'Свифт код';
  @override
  String get branch => 'Филијала';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Изаберите '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' или '),
      fileType('DOC'),
      const TextSpan(text: ' формате датотека. Величина датотеке '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessSr
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Погледај фактуру';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Прегледаћемо уплату и одобрити је у року од 24 сата.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailSr
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Покушај поново';
  @override
  String get title => 'Ух! Плаћање није успело';
  @override
  String get description =>
      'Ваша трансакција није успела због неке техничке грешке.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraSr
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

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
      const TextSpan(text: 'Карактеристике '),
      fa('(Погодности и садржаји)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Изаберите период изнајмљивања';
  @override
  String get writeAReview => '+ Напишите рецензију';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraSr
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Претражите парцеле, станове, собе...';
  @override
  String get noRecentSearch => 'Немате недавних претрага.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraSr
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Уплата за претплату је успешна.\nСада можете да приступите претплаћеним функцијама.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Sr
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Sr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Пронађите своју некретнину';
  @override
  String get description =>
      'Олакшали смо проналазак места које одговара вашем животу — било да је то соба, стан или кућа.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Sr
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Sr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Стан у граду';
  @override
  String get description =>
      'Штедимо вам време тако што вас брзо спајамо са савршеном некретнином пре него што нестане, тако да можете да уживате у свом новом дому или да бесплатно огласите свој.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Sr
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Sr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ваша удобна кућа';
  @override
  String get description =>
      'Ако тражите место за живот, погледајте наше куће за изнајмљивање. Имамо широк спектар кућа које можете да изаберете широм земље.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendSr
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Код је послат за ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Пошаљи код поново'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogSr
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Успешно промењено!';
  @override
  String get subtitle =>
      'Пријавите се са својом новом лозинком.\nПреусмеравамо вас на пријаву...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonSr
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Напишите разлог';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsSr errors =
      _TranslationsPagesCancelRentingFormReasonErrorsSr._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteSr
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Напомена о плаћању (${_root.common.optional})';
  @override
  String get hint => 'Унесите неки текст...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsSr
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsSr._(this._root);

  final TranslationsSr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Молимо унесите разлог за отказивање кирије';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsSr {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Jezik';
      case 'common.subscriptionPlan':
        return 'Plan pretplate';
      case 'common.contactUs':
        return 'Контактирајте нас';
      case 'common.termsAndConditions':
        return 'Услови коришћења';
      case 'common.aboutUs':
        return 'О нама';
      case 'common.logout':
        return 'Одјава';
      case 'common.editProfile':
        return 'Измени профил';
      case 'common.fullName':
        return 'Пуно име';
      case 'common.email':
        return 'Е-пошта';
      case 'common.mobileNumber':
        return 'Број мобилног телефона';
      case 'common.address':
        return 'Адреса';
      case 'common.postalCode':
        return 'Поштански број';
      case 'common.city':
        return 'Град';
      case 'common.country':
        return 'Држава';
      case 'common.state':
        return 'Држава';
      case 'common.password':
        return 'Лозинка';
      case 'common.forgotPassword':
        return 'Заборавили сте лозинку';
      case 'common.tenant':
        return 'Станар';
      case 'common.landlord':
        return 'Власник';
      case 'common.cancelRenting':
        return 'Откажи изнајмљивање';
      case 'common.startDate':
        return 'Датум почетка';
      case 'common.endDate':
        return 'Датум завршетка';
      case 'common.fromDate':
        return 'Од датума';
      case 'common.toDate':
        return 'До датума';
      case 'common.online':
        return 'Онлајн';
      case 'common.bankList':
        return 'Листа банака';
      case 'common.withdrawMethod':
        return 'Начин повлачења';
      case 'common.uploadPaymentReceipt':
        return 'Отпремите потврду о уплати';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Напомена: '),
            note(
              'За уплату је потребно ручно одобрење администратора у року од',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 сати.'),
          ],
        );
      case 'common.reviews':
        return 'Рецензије';
      case 'common.description':
        return 'Опис';
      case 'common.about':
        return 'О';
      case 'common.propertyTypes':
        return 'Типови некретнина';
      case 'common.features':
        return 'Карактеристике';
      case 'common.floorPlans':
        return 'Планови спратова';
      case 'common.buildingDetails':
        return 'Детаљи зграде';
      case 'common.buildingName':
        return 'Име зграде';
      case 'common.propertyAddress':
        return 'Адреса некретнине';
      case 'common.completionYear':
        return 'Година завршетка';
      case 'common.lotNumber':
        return 'Број парцеле';
      case 'common.residentialType':
        return 'Резиденцијални тип';
      case 'common.furnishings':
        return 'Намештај';
      case 'common.floorRange':
        return 'Распон спратова';
      case 'common.bedrooms':
        return 'Спаваће собе';
      case 'common.bathrooms':
        return 'Купатила';
      case 'common.propertySize':
        return 'Величина некретнине';
      case 'common.rentalPeriod':
        return 'Период изнајмљивања';
      case 'common.securityDeposit':
        return 'Депозит';
      case 'common.utilityBill':
        return 'Рачун за комуналије';
      case 'common.facilities':
        return 'Објекти';
      case 'common.amenities':
        return 'Погодности';
      case 'common.expiringReason':
        return 'Разлог истека';
      case 'common.tenantDetails':
        return 'Детаљи о станару';
      case 'common.typeOfTenant':
        return 'Тип станара';
      case 'common.tenantName':
        return 'Име станара';
      case 'common.nidPassport':
        return 'НИД/Пасош';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ИД станара';
      case 'common.dateOfBirth':
        return 'Датум рођења';
      case 'common.gender':
        return 'Пол';
      case 'common.nominee':
        return 'Номиновани';
      case 'common.name':
        return 'Име';
      case 'common.optional':
        return 'Опционо';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Контакт за хитне случајеве';
      case 'common.relation':
        return 'Однос';
      case 'common.relationWith':
        return '${_root.common.relation} With';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} You';
      case 'common.company':
        return 'Компанија';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Радно место';
      case 'common.officePhoneNo':
        return 'Број телефона канцеларије';
      case 'common.officeMobileNo':
        return 'Канцеларија ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Возило';
      case 'common.vehiclesInfo.plain':
        return 'Информације о возилима';
      case 'common.vehiclesInfo.optional':
        return 'Информације о возилима (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Регистрација возила бр.';
      case 'common.vehicleRegistrationNo.short':
        return 'Регистрација бр.';
      case 'common.vehicleRegistrationNo.alt':
        return 'Број таблице.';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Brand';
      case 'common.rentProperty':
        return 'Изнајми некретнину';
      case 'common.propertyDetails':
        return 'Детаљи о некретнини';
      case 'common.propertyId':
        return 'ИД некретнине';
      case 'common.propertyType':
        return 'Тип некретнине';
      case 'common.propertyName':
        return 'Име некретнине';
      case 'common.paymentDetails':
        return 'Детаљи плаћања';
      case 'common.monthlyRent':
        return 'Месечна кирија';
      case 'common.thisMonthPayment':
        return 'Уплата за овај месец';
      case 'common.totalPaidRent':
        return 'Укупна уплата кирије';
      case 'common.dueRent':
        return 'Дугована кирија';
      case 'common.rentStartDate':
        return 'Кирија ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Кирија ${_root.common.endDate}';
      case 'common.status':
        return 'Статус';
      case 'common.rentAgreementPdf':
        return 'ПДФ уговор о закупу';
      case 'common.noFile':
        return 'Нема фајла';
      case 'common.tenantImageOp':
        return 'Слика станара ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Додај нова возила';
      case 'common.uploadNidPassport':
        return 'Уплоад НИД/Пасош';
      case 'common.nidPassportUploadNote':
        return 'Биће прихваћене само слике типа датотеке. Ограничење величине датотеке до 2,5 МБ.';
      case 'common.search':
        return 'Претрага';
      case 'common.sortBy':
        return 'Сортирај по';
      case 'common.subscription':
        return 'Претплата';
      case 'common.downloading':
        return 'Преузимање...';
      case 'common.downloadSuccess':
        return 'Фајл је успешно преузет!';
      case 'common.addPropertyBannerTitle':
        return 'Желите да издате своју некретнину?';
      case 'common.application':
        return 'Апликација';
      case 'common.tenantHasPaidDeposit':
        return 'Станар је уплатио депозит.';
      case 'common.askProcessingRentApplication':
        return 'Да ли сте сигурни да обрађујете овај захтев за изнајмљивање некретнине?';
      case 'common.dateAndTime':
        return 'Датум и време';
      case 'common.applicationDetails':
        return 'Детаљи апликације';
      case 'common.depositStatus':
        return 'Статус депозита';
      case 'common.uploadRentAgreement':
        return 'Отпреми уговор о закупу';
      case 'common.uploadFilePDF':
        return 'Отпреми фајл (ПДФ)';
      case 'common.askSelectRentAgreement':
        return 'Молимо, изаберите фајл документа уговора.';
      case 'common.landlordRentAgreementPDF':
        return 'ПДФ уговор о закупу власника';
      case 'common.tenantRentAgreementPDF':
        return 'ПДФ уговор о закупу станара';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Напомена: '),
            note(
              'Одобрите апликацију тек након што станар изврши уплату депозита.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Разлог одбијања';
      case 'common.youveRejectedThisApplication':
        return 'Одбили сте ову апликацију';
      case 'common.landlordDetails':
        return 'Детаљи о власнику';
      case 'common.landlordName':
        return 'Име власника';
      case 'common.downloadRentAgreement':
        return 'Преузмите уговор о закупу';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Прихватите '),
            toc('Услове коришћења'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Напомена: '),
            note(
              'Преузмите и прочитајте уговор. Пошаљите потписани уговор власнику путем ВхатсАпп-а или е-поште.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Напомена: '),
            note(
              'Власник одобрава апликацију када станар уплати депозит, рачун за комуналије и једномесечну авансну кирију.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Уговор о закупу (ПДФ) '),
            complete('Комплетан уговор'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Напомена : '),
            note(
              'Власник одобрава апликацију када станар уплати депозит, рачун за комуналије и једномесечну авансну кирију.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Вхатсапп';
      case 'common.applicationList':
        return 'Листа апликација';
      case 'common.viewDetails':
        return 'Погледај детаље';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Почетна';
      case 'common.dashboard':
        return 'Контролна табла';
      case 'common.tenants':
        return 'Станари';
      case 'common.maintenance':
        return 'Одржавање';
      case 'common.maintenanceList':
        return 'Листа одржавања';
      case 'common.maintenanceReport':
        return 'Извештај о одржавању';
      case 'common.labor':
        return 'Рад';
      case 'common.applications':
        return 'Апликације';
      case 'common.rentInvitation':
        return 'Позив за закуп';
      case 'common.payment':
        return 'Плаћање';
      case 'common.rentPayment':
        return 'Плаћање кирије';
      case 'common.depositUtilityPayment':
        return 'Депозит и плаћање комуналија';
      case 'common.refundRequest':
        return 'Захтев за повраћај новца';
      case 'common.withdrawRequest':
        return 'Захтев за повлачење';
      case 'common.myProperty':
        return 'Моја некретнина';
      case 'common.myRent':
        return 'Мој закуп';
      case 'common.wishlist':
        return 'Листа жеља';
      case 'common.properties':
        return 'Некретнине';
      case 'common.allProperties':
        return 'Све некретнине';
      case 'common.totalPropery':
        return 'Укупна некретнина';
      case 'common.occupied':
        return 'Заузето';
      case 'common.vacant':
        return 'Слободно';
      case 'common.accounting':
        return 'Рачуноводство';
      case 'common.totalIncome':
        return 'Укупан приход';
      case 'common.totalExpense':
        return 'Укупан трошак';
      case 'common.currentBalance':
        return 'Тренутни баланс';
      case 'common.totalWithdrawal':
        return 'Укупно (Повлачење)';
      case 'common.totalProperties':
        return 'Укупно некретнина';
      case 'common.totalTenant':
        return 'Укупно станара';
      case 'common.totalRentPaid':
        return 'Укупно уплаћено кирије';
      case 'common.totalRentDue':
        return 'Укупно дуговано кирије';
      case 'common.totalApplication':
        return 'Укупно апликација';
      case 'common.pendingApplication':
        return 'Апликација на чекању';
      case 'common.processingApplication':
        return 'Апликација у обради';
      case 'common.approveApplication':
        return 'Одобри апликацију';
      case 'common.rejectApplication':
        return 'Одбиј апликацију';
      case 'common.maintenanceCost':
        return 'Трошкови одржавања';
      case 'common.transactionSummary':
        return 'Резиме трансакција';
      case 'common.maintenanceRequest':
        return 'Захтев за одржавање';
      case 'common.notifications':
        return 'Обавештења';
      case 'common.myProperties':
        return 'Моје некретнине';
      case 'common.recommendationProperties':
        return 'Препоручене некретнине';
      case 'common.laborList':
        return 'Листа радника';
      case 'common.addLabor':
        return 'Додај радника';
      case 'common.laborDetails':
        return 'Детаљи о раднику';
      case 'common.laborSalary':
        return 'Плаћа радника';
      case 'common.editLabor':
        return 'Измени радника';
      case 'common.addNewLabor':
        return 'Додај новог радника';
      case 'common.enterAmount':
        return 'Унеси износ';
      case 'common.maintenanceDetails':
        return 'Детаљи одржавања';
      case 'common.laborName':
        return 'Име радника';
      case 'common.comment':
        return 'Коментар';
      case 'common.image':
        return 'Слика';
      case 'common.complete':
        return 'Заврши';
      case 'common.details':
        return 'Детаљи';
      case 'common.title':
        return 'Наслов';
      case 'common.date':
        return 'Датум';
      case 'common.reason':
        return 'Разлог';
      case 'common.edit':
        return 'Измени';
      case 'common.property':
        return 'Некретнина';
      case 'common.completeYourProfile':
        return 'Попуните свој профил';
      case 'common.profileImage':
        return 'Слика профила';
      case 'common.imagePickHint':
        return 'Прихватају се само ЈПЕГ и ПНГ слике максималне величине 120к120 пиксела.';
      case 'common.invoiceId':
        return 'ИД фактуре';
      case 'common.depositAmount':
        return 'Износ депозита';
      case 'common.landlordPhone':
        return 'Телефон власника';
      case 'common.rentalAdvance':
        return 'Закуп (Аванс)';
      case 'common.totalAmount':
        return 'Укупан износ';
      case 'common.rentalAmount':
        return 'Износ закупа';
      case 'common.adminCharge':
        return 'Административна накнада';
      case 'common.editAccount':
        return 'Измени налог';
      case 'common.addNewAccount':
        return 'Додај нови налог';
      case 'common.transactionId':
        return 'ИД трансакције';
      case 'common.transactionType':
        return 'Тип трансакције';
      case 'common.requestDate':
        return 'Датум захтева';
      case 'common.amount':
        return 'Износ';
      case 'common.fee':
        return 'Накнада';
      case 'common.paymentStatus':
        return 'Статус плаћања';
      case 'common.generatedTime':
        return 'Време генерисања';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Ово је системски генерисан извештај о '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Историја повлачења';
      case 'common.history':
        return 'Историја';
      case 'common.withdrawAmount':
        return 'Износ повлачења';
      case 'common.availableBalance':
        return 'Доступан баланс';
      case 'common.withdrawCharge':
        return 'Накнада за повлачење';
      case 'common.paymentMethod':
        return 'Начин плаћања';
      case 'common.requestSendSuccess':
        return 'Захтев је успешно послат!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Потврда о уплати је успешно послата.';
      case 'common.refundReason':
        return 'Разлог за повраћај новца';
      case 'common.note':
        return 'Напомена';
      case 'common.refundReceiveSuccess':
        return 'Повраћај новца је успешно примљен.';
      case 'common.downloadPaymentReceipt':
        return 'Преузмите потврду о уплати';
      case 'common.invoice':
        return 'Фактура';
      case 'common.selectPropertyToSeeInvoice':
        return 'Изаберите некретнину да бисте видели број фактуре...';
      case 'common.bankAccName':
        return 'Име банковног рачуна';
      case 'common.bankName':
        return 'Име банке';
      case 'common.bankAccNum':
        return 'Број банковног рачуна';
      case 'common.thankYou':
        return 'Хвала вам!';
      case 'common.basicInfo':
        return 'Основне информације';
      case 'common.descriptionPricing':
        return 'Опис и цене';
      case 'common.contact':
        return 'Контакт';
      case 'common.photos':
        return 'Фотографије';
      case 'common.successfullySubmitted':
        return 'Успешно послато!';
      case 'common.editProperty':
        return 'Измени некретнину';
      case 'common.addNewProperty':
        return 'Додај нову некретнину';
      case 'common.propertyManageRequestSuccess':
        return 'Ваш оглас је послат на рецензију.';
      case 'common.postAnotherProperty':
        return 'Постави још једну некретнину';
      case 'common.browseYourProperty':
        return 'Прегледајте своју некретнину';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Корак '),
                step,
                const TextSpan(text: ' од '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Шта бисте желели да објавите?';
      case 'common.category':
        return 'Категорија';
      case 'common.invalidCategory':
        return 'Неважећа категорија';
      case 'common.unitNumber':
        return 'Број јединице';
      case 'common.sqft':
        return 'кв. фт.';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Величина некретнине мора бити већа од нуле';
      case 'common.whatAreTheFacility':
        return 'Који су објекти?';
      case 'common.whatAreTheAmenity':
        return 'Који су садржаји?';
      case 'common.parkingLot':
        return 'Паркинг';
      case 'common.houseType':
        return 'Тип куће';
      case 'common.value':
        return 'Вредност';
      case 'common.unitLotSize':
        return 'Величина јединице / парцеле';
      case 'common.landSize':
        return 'Величина земљишта';
      case 'common.acres':
        return 'акр(и)';
      case 'common.roomSize':
        return 'Величина собе';
      case 'common.askTenantPreference':
        return 'Које су ваше преференције за станаре';
      case 'common.couple':
        return 'Пар';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Опишите ${propertyType}';
      case 'common.adTitle':
        return 'Наслов огласа';
      case 'common.minimumRentalPeriod':
        return 'Минимални период закупа';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Број';
      case 'common.hideOrDisplayEmail':
        return 'Сакриј или прикажи адресу е-поште';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Хвала вам што сте објавили на ${appName}!';
      case 'common.propertyList':
        return 'Листа некретнина';
      case 'common.newInviteRent':
        return 'Нови позив за закуп';
      case 'common.rentAgreement':
        return 'Уговор о закупу';
      case 'common.rentDetails':
        return 'Детаљи закупа';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Напомена: '),
            note('Молимо сачекајте да станар прихвати позив.'),
          ],
        );
      case 'common.rent':
        return 'Закуп';
      case 'common.editTenant':
        return 'Измени станара';
      case 'common.addNewTenant':
        return 'Додај новог станара';
      case 'common.shareInstallLink':
        return 'Делите везу за инсталацију';
      case 'common.tenantList':
        return 'Листа станара';
      case 'common.editMaintenanceRequest':
        return 'Измени захтев за одржавање';
      case 'common.addNewMaintenance':
        return 'Додај ново одржавање';
      case 'common.landlordId':
        return 'ИД власника';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Напомена '),
            note(
              'Ваш уговор је на рецензији. Молимо сачекајте док власник не одобри ваш закуп.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Измени рецензију';
      case 'common.writeAReview':
        return 'Напишите рецензију';
      case 'common.selectRating':
        return 'Изаберите оцену';
      case 'common.enterYourOpinion':
        return 'Унесите своје мишљење';
      case 'common.askToEnterReviewMsg':
        return 'Молимо унесите поруку рецензије';
      case 'common.pressBackAgainToExit':
        return 'Притисните поново назад да бисте изашли.';
      case 'common.selectPaymentMethod':
        return 'Изаберите начин плаћања';
      case 'common.filter':
        return 'Филтер';
      case 'common.perMonth':
        return '/1 месец';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Претражите било шта у ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Нешто је кренуло наопако, молимо покушајте поново';
      case 'exceptions.noNidPassport':
        return 'Није достављена слика НИД/Пасоша.';
      case 'exceptions.noRentPropertyFound':
        return 'Није пронађена имовина за изнајмљивање за овог станара.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Имовина није пронађена!\nМолимо покушајте са другим кључним речима';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Није пронађен план претплате!\nМолимо освежите страницу и покушајте поново.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Неважећи ${dataType} подаци! Молимо освежите страницу и покушајте поново.';
      case 'exceptions.invalidDownloadUrl':
        return 'Неважећи урл за преузимање!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Није успело чување датотеке! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Грешка при отварању датотеке! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Нису пружене информације о возилу.';
      case 'exceptions.yourApplicationRejected':
        return 'Ваша пријава је одбијена';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Пријава није пронађена!\n${subject} ће бити приказана овде када буде доступна.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Ваша пријава';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Пријава станара';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Имовина није пронађена!\nМолимо покушајте да додате имовину да бисте је видели овде.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Нису пронађене препоручене некретнине\nМолимо покушајте поново касније.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Некретнине нису доступне\nМолимо покушајте поново касније.';
      case 'exceptions.noImageProvided':
        return 'Слика није пружена';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Није пронађено ${status} одржавање.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Одржавање није пронађено! Можете да креирате захтев за одржавање да бисте га видели овде.';
      case 'exceptions.noDepositFound':
        return 'Сигурносни депозит није пронађен!\nМолимо, можете да видите сигурносне депозите када буду доступни';
      case 'exceptions.noRentPaymentFound':
        return 'Уплата за кирију није пронађена!\nМолимо, можете да видите уплате за кирију када буду доступне';
      case 'exceptions.transactionSummaryApiException':
        return 'Није успело преузимање резимеа трансакције.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Захтев није пронађен!\nМолимо покушајте да креирате захтев за подизање да бисте га видели овде.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Овај захтев за подизање није одобрен!.';
      case 'exceptions.nonZeroError':
        return 'Молимо унесите важећи износ већи од нуле.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Износ мора бити најмање ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Износ не сме да прелази ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Молимо, прво изаберите начин плаћања.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Није пронађен ${status} захтев за повраћај новца!\nМожете да видите захтев за повраћај новца овде када буде доступан.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Захтев за повраћај новца није пронађен!\nМожете да креирате захтев за повраћај новца да бисте га видели овде.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Станар ће одобрити повраћај новца када добије новац назад';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Прегледаћемо захтев за повраћај новца и одобрити га у року од 24 сата.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Молимо изаберите број ${value}';
      case 'exceptions.invalidDateRange':
        return 'Неважећи опсег датума.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) => '${value} мора бити веће од нуле.';
      case 'exceptions.editProperty.rentalChange':
        return 'Имовина за изнајмљивање се мења. Мора бити важећа (на снази) само за уплату кирије за следећи месец.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Вашу имовину је већ изнајмио станар. Не можете да је избришете док прво не уклоните станара';
      case 'exceptions.editProperty.alreayRented':
        return 'Ова некретнина је већ изнајмљена. Молимо покушајте поново касније.\nИли можете да контактирате станодавца за више информација.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Није пронађен позив за кирију!\nМолимо покушајте да креирате позив за кирију да бисте га видели овде.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Није пронађен позив за кирију!\nМожете да видите позив за кирију овде када буде доступан.';
      case 'exceptions.notenantFoundList':
        return 'Нема станара!\nМолимо покушајте да додате станара да бисте га видели овде.';
      case 'exceptions.noFeaturesProvided':
        return 'Функције нису пружене.';
      case 'exceptions.noNotificationFound':
        return 'Обавештење није доступно.\nМожете да видите своје обавештење овде када буде доступно.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Да ли сте сигурни да желите да се одјавите?';
      case 'prompt.application.rejectTitle':
        return 'Зашто одбијате ову пријаву?';
      case 'prompt.application.applicationSent.successfully':
        return 'Пријава је успешно послата!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Ову пријаву можете видети на листи ваших пријава';
      case 'prompt.labor.delete.title':
        return 'Избрисати рад?';
      case 'prompt.labor.delete.description':
        return 'Да ли сте сигурни да желите да избришете овај рад?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Зашто се овај захтев одбија?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Да ли сте сигурни да обрађујете овај захтев за одржавање?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Да ли је посао завршен?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Избрисати метод подизања?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Да ли сте сигурни да желите да избришете овај метод подизања?';
      case 'prompt.unsavedChanges.title':
        return 'Да ли сте сигурни да желите да се вратите назад?';
      case 'prompt.unsavedChanges.message':
        return 'Поља која су промењена неће бити сачувана!';
      case 'prompt.property.delete.title':
        return 'Избрисати имовину?';
      case 'prompt.property.delete.message':
        return 'Да ли сте сигурни да желите да избришете ову имовину?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Да ли сте сигурни да желите да одобрите ову кирију?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Уверите се да сте прегледали уговор који је потписао станар.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Да ли сте сигурни да прихватате ову позивницу?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Уверите се да сте преузели пдф датотеку уговора!';
      case 'prompt.sessionExpired.title':
        return 'Сесија је истекла';
      case 'prompt.sessionExpired.message':
        return 'Ваша сесија је истекла. Молимо, пријавите се поново';
      case 'prompt.sessionExpired.action':
        return 'Пријавите се';
      case 'prompt.noInternet.title':
        return 'Нема интернет везе';
      case 'prompt.noInternet.message':
        return 'Молимо, проверите своју Ви-Фи везу са мобилном мрежом и покушајте поново';
      case 'prompt.noInternet.action':
        return 'Покушајте поново';
      case 'prompt.permissionHandler.title':
        return 'Потребна дозвола!';
      case 'prompt.permissionHandler.message':
        return 'Морате да доделите дозволе у подешавањима апликације. Да ли желите да отворите подешавања сада?';
      case 'prompt.imagePicker.title':
        return 'Изаберите опцију';
      case 'prompt.imagePicker.gallery':
        return 'Галерија';
      case 'prompt.imagePicker.camera':
        return 'Камера';
      case 'prompt.verificationDialog.title':
        return 'Верификујте своју е-пошту';
      case 'prompt.verificationDialog.message':
        return 'Послали смо е-пошту са верификационим кодом';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} на ${email}';
      case 'prompt.notification.clearTitle':
        return 'Обрисати обавештења?';
      case 'prompt.notification.clearMessage':
        return 'Да ли сте сигурни да желите да обришете сва обавештења?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Унесите ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Молимо унесите ваше ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Унесите вашу ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Молимо унесите вашу ${_root.common.email} адресу';
      case 'form.email.errors.invalid':
        return '⦸ Неважећа е-пошта, молимо покушајте поново';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Молимо унесите вашу ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Лозинка мора да има најмање ${count} карактера!';
      case 'form.confirmPassword.label':
        return 'Потврдите ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Молимо унесите вашу ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Потврда лозинке се не подудара!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Молимо унесите ваш ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Број куће и назив улице';
      case 'form.address1.errors.required':
        return 'Молимо унесите вашу ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Стан, апартман, јединица, итд.';
      case 'form.address2.errors.required':
        return 'Молимо унесите вашу ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Унесите ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Молимо унесите ваш ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Унесите назив ${_root.common.city} града.';
      case 'form.city.errors.required':
        return 'Молимо унесите назив вашег ${_root.common.city} града.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Унесите назив ${_root.common.state} државе.';
      case 'form.state.errors.required':
        return 'Молимо унесите назив ваше ${_root.common.state} државе.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Изаберите ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Молимо изаберите вашу ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Молимо унесите отп.';
      case 'form.otp.errors.invalid':
        return 'Молимо унесите исправан отп.';
      case 'form.title.label':
        return 'Наслов';
      case 'form.title.hint':
        return 'Унесите наслов';
      case 'form.title.errors.required':
        return 'Молимо унесите наслов';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Изаберите ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Молимо изаберите ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Разлог';
      case 'form.reason.hint':
        return 'Унесите разлог';
      case 'form.reason.errors.required':
        return 'Молимо унесите разлог';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Изаберите ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Молимо изаберите ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Отпремите ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Молимо изаберите ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Унесите ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Молимо унесите ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Изаберите ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Молимо изаберите ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Унесите ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Молимо унесите ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Молимо унесите важећи @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Изаберите ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Молимо изаберите ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Молимо изаберите важећи @form.anyDropdown.label';
      case 'action.next':
        return 'Следеће';
      case 'action.getStarted':
        return 'Почните';
      case 'action.skip':
        return 'Прескочи';
      case 'action.select':
        return 'Изаберите';
      case 'action.save':
        return 'Сачувај';
      case 'action.signIn':
        return 'Пријавите се';
      case 'action.signUp':
        return 'Региструјте се';
      case 'action.kContinue':
        return 'Наставите';
      case 'action.clearAll':
        return 'Обриши све';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Пошаљи';
      case 'action.pay':
        return 'Плати';
      case 'action.remove':
        return 'Уклони';
      case 'action.goBack':
        return 'Иди назад';
      case 'action.buyNow':
        return 'Купи сада';
      case 'action.no':
        return 'Не';
      case 'action.open':
        return 'Отвори';
      case 'action.addProperty':
        return 'Додај некретнину';
      case 'action.process':
        return 'Обради';
      case 'action.approve':
        return 'Одобри';
      case 'action.reject':
        return 'Одбиј';
      case 'action.viewRent':
        return 'Погледај кирију';
      case 'action.openNavigationMenu':
        return 'Отвори навигациони мени';
      case 'action.seeAll':
        return 'Погледај све';
      case 'action.update':
        return 'Ажурирај';
      case 'action.printTransaction':
        return 'Одштампај трансакцију';
      case 'action.payoutRequest':
        return 'Захтев за исплату';
      case 'action.addNew':
        return '+ Додај ново';
      case 'action.sendRequest':
        return 'Пошаљи захтев';
      case 'action.print':
        return 'Штампај';
      case 'action.requestForRefund':
        return 'Захтев за повраћај новца';
      case 'action.previous':
        return 'Претходно';
      case 'action.delete':
        return 'Избриши';
      case 'action.applyProperty':
        return 'Пријави некретнину';
      case 'action.viewApplication':
        return 'Погледај пријаву';
      case 'action.inviteTenant':
        return 'Позови станара';
      case 'action.inviteRent':
        return 'Позови за кирију';
      case 'action.cancel':
        return 'Откажи';
      case 'action.accept':
        return 'Прихвати';
      case 'action.submit':
        return 'Поднеси';
      case 'action.yes':
        return 'Да';
      case 'action.okay':
        return 'У реду';
      case 'action.confirm':
        return 'Потврди';
      case 'action.apply':
        return 'Примени';
      case 'action.reset':
        return 'Ресетуј';
      case 'action.retry':
        return 'Покушај поново';
      case 'action.viewAll':
        return 'Погледај све';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Пронађите своју некретнину';
      case 'pages.onboard.onboardData.data1.description':
        return 'Олакшали смо проналазак места које одговара вашем животу — било да је то соба, стан или кућа.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Стан у граду';
      case 'pages.onboard.onboardData.data2.description':
        return 'Штедимо вам време тако што вас брзо спајамо са савршеном некретнином пре него што нестане, тако да можете да уживате у свом новом дому или да бесплатно огласите свој.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Ваша удобна кућа';
      case 'pages.onboard.onboardData.data3.description':
        return 'Ако тражите место за живот, погледајте наше куће за изнајмљивање. Имамо широк спектар кућа које можете да изаберете широм земље.';
      case 'pages.signIn.title':
        return 'Добродошли назад';
      case 'pages.signIn.subtitle':
        return 'Пријавите се сада да бисте започели невероватно путовање.';
      case 'pages.signIn.extra.rememberMe':
        return 'Запамти ме';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Немате налог? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Заборављена лозинка';
      case 'pages.forgotPassword.subtitle':
        return 'Унесите своју е-маил адресу да бисте повратили лозинку.';
      case 'pages.otpVerification.title':
        return 'Верификација';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-цифрени пин је послат на вашу е-маил адресу. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Код је послат за ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Пошаљи код поново'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Ресетуј лозинку';
      case 'pages.resetPassword.subtitle':
        return 'Ресетујте лозинку за опоравак и пријавите се на свој налог';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Успешно промењено!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Пријавите се са својом новом лозинком.\nПреусмеравамо вас на пријаву...';
      case 'pages.signUp.title':
        return 'Направи налог';
      case 'pages.signUp.subtitle':
        return 'Пријавите се сада да бисте започели невероватно путовање';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Већ имате налог? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Ко сте ви?';
      case 'pages.welcome.subtitle':
        return 'Молимо, изаберите опцију испод.';
      case 'pages.welcome.extra.landlordTag':
        return 'Управљајте својим некретнинама';
      case 'pages.welcome.extra.tenantTag':
        return 'Пријавите се на свој налог за изнајмљивање';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Обавештења';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Порука...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Зашто ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Напишите разлог';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Молимо унесите разлог за отказивање кирије';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Офлајн плаћање';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Напомена о плаћању (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Унесите неки текст...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Износ уплате: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Име власника рачуна';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Број рачуна';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Свифт код';
      case 'pages.offlinePayment.extra.branch':
        return 'Филијала';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Изаберите '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' или '),
            fileType('DOC'),
            const TextSpan(text: ' формате датотека. Величина датотеке '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Погледај фактуру';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Прегледаћемо уплату и одобрити је у року од 24 сата.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Покушај поново';
      case 'pages.paymentStatus.fail.title':
        return 'Ух! Плаћање није успело';
      case 'pages.paymentStatus.fail.description':
        return 'Ваша трансакција није успела због неке техничке грешке.';
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
            const TextSpan(text: 'Карактеристике '),
            fa('(Погодности и садржаји)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Изаберите период изнајмљивања';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Напишите рецензију';
      case 'pages.search.appbarTitle':
        return 'Претрага';
      case 'pages.search.extra.hint':
        return 'Претражите парцеле, станове, собе...';
      case 'pages.search.extra.noRecentSearch':
        return 'Немате недавних претрага.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Изаберите свој план';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Уплата за претплату је успешна.\nСада можете да приступите претплаћеним функцијама.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Укупни трошкови одржавања: '),
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
        return 'Сва некретнина';
      case 'enums.propertyStatus.pending':
        return 'На чекању';
      case 'enums.propertyStatus.active':
        return 'Активно';
      case 'enums.propertyStatus.inactive':
        return 'Неактивно';
      case 'enums.propertyStatus.rejected':
        return 'Одбијено';
      case 'enums.propertyType.apartmentCondominium':
        return 'Стан/Кондоминијум';
      case 'enums.propertyType.house':
        return 'Кућа';
      case 'enums.propertyType.commercialProperty':
        return 'Комерцијална некретнина';
      case 'enums.propertyType.land':
        return 'Земљиште';
      case 'enums.propertyType.room':
        return 'Соба';
      case 'enums.applicationStatus.all':
        return 'Све';
      case 'enums.applicationStatus.pending':
        return 'На чекању';
      case 'enums.applicationStatus.processing':
        return 'Обрада';
      case 'enums.applicationStatus.approved':
        return 'Одобрено';
      case 'enums.applicationStatus.rejected':
        return 'Одбијено';
      case 'enums.myRentStatus.pending':
        return 'На чекању';
      case 'enums.myRentStatus.processing':
        return 'Обрада';
      case 'enums.myRentStatus.active':
        return 'Активно';
      case 'enums.myRentStatus.expired':
        return 'Истекло';
      case 'enums.myRentStatus.cancelled':
        return 'Отказано';
      case 'enums.maintenanceStatus.pending':
        return 'На чекању';
      case 'enums.maintenanceStatus.processing':
        return 'Обрада';
      case 'enums.maintenanceStatus.rejected':
        return 'Одбијено';
      case 'enums.maintenanceStatus.completed':
        return 'Завршено';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Приватно (Индивидуално)';
      case 'enums.tenantProfileType.company':
        return 'Компанија';
      case 'enums.tenantType.newTenant':
        return 'Нови станар';
      case 'enums.tenantType.activeTenant':
        return 'Активни станар';
      case 'enums.tenantType.expiredTenant':
        return 'Истекли станар';
      case 'enums.paymentStatus.all':
        return 'Све';
      case 'enums.paymentStatus.pending':
        return 'На чекању';
      case 'enums.paymentStatus.paid':
        return 'Плаћено';
      case 'enums.paymentStatus.unpaid':
        return 'Неплаћено';
      case 'enums.paymentStatus.rejected':
        return 'Одбијено';
      case 'enums.paymentStatus.refund':
        return 'Повраћај новца';
      case 'enums.paymentOptions.onlinePayment':
        return 'Онлајн плаћање';
      case 'enums.paymentOptions.offlinePayment':
        return 'Офлајн плаћање';
      case 'enums.paymentType.securityDeposit':
        return 'Сигурносни депозит';
      case 'enums.paymentType.rentPayment':
        return 'Уплата кирије';
      case 'enums.paymentType.subscription':
        return 'Претплата';
      case 'enums.gender.male':
        return 'Мушко';
      case 'enums.gender.female':
        return 'Женско';
      case 'enums.gender.other':
        return 'Друго';
      case 'enums.ecRelation.wife':
        return 'Супруга';
      case 'enums.ecRelation.parent':
        return 'Родитељ';
      case 'enums.ecRelation.friend':
        return 'Пријатељ';
      case 'enums.ecRelation.brother':
        return 'Брат';
      case 'enums.ecRelation.sister':
        return 'Сестра';
      case 'enums.ecRelation.child':
        return 'Дете';
      case 'enums.vehicleType.car':
        return 'Аутомобил';
      case 'enums.vehicleType.motorcycles':
        return 'Мотоцикли';
      case 'enums.vehicleType.lorry':
        return 'Камион';
      case 'enums.sortBy.lowToHigh':
        return 'Од ниског ка високом';
      case 'enums.sortBy.highToLow':
        return 'Од високог ка ниском';
      case 'enums.residentialType.flat':
        return 'Стан';
      case 'enums.residentialType.apartment':
        return 'Апартман';
      case 'enums.residentialType.condominium':
        return 'Кондоминијум';
      case 'enums.residentialType.serviceResidence':
        return 'Резиденција са услугама';
      case 'enums.residentialType.studio':
        return 'Студио';
      case 'enums.residentialType.duplex':
        return 'Дуплекс';
      case 'enums.residentialType.townhouseCondo':
        return 'Кућа у низу Кондо';
      case 'enums.residentialType.others':
        return 'Остало';
      case 'enums.floorRange.high':
        return 'Високо';
      case 'enums.floorRange.medium':
        return 'Средње';
      case 'enums.floorRange.low':
        return 'Ниско';
      case 'enums.furnishings.fullyFurnished':
        return 'Потпуно намештено';
      case 'enums.furnishings.partiallyFurnished':
        return 'Делимично намештено';
      case 'enums.furnishings.notFurnished':
        return 'Није намештено';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Канцеларијски простор';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Простор за малопродају';
      case 'enums.commercialPropertyType.shopLot':
        return 'Продавница';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Складиште / Фабрика';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Хотел / Ресорт';
      case 'enums.commercialPropertyType.sofo':
        return 'Софо';
      case 'enums.commercialPropertyType.soho':
        return 'Сохо';
      case 'enums.commercialPropertyType.sovo':
        return 'Сово';
      case 'enums.commercialPropertyType.others':
        return 'Остало';
      case 'enums.landPropertyType.residential':
        return 'Резиденцијално';
      case 'enums.landPropertyType.industrial':
        return 'Индустријско';
      case 'enums.landPropertyType.agricultural':
        return 'Пољопривредно';
      case 'enums.landPropertyType.commercial':
        return 'Комерцијално';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Мешовити развој';
      case 'enums.landPropertyType.others':
        return 'Остало';
      case 'enums.residentPropertyType.condo':
        return 'Кондо / Резиденција са услугама / Пентхаус';
      case 'enums.residentPropertyType.apartment':
        return 'Апартман / Стан';
      case 'enums.residentPropertyType.house':
        return 'Куће';
      case 'enums.residentPropertyType.shoplot':
        return 'Продавница';
      case 'enums.residentPropertyType.sharing':
        return 'Дељење куће / стана';
      case 'enums.residentPropertyType.others':
        return 'Остало';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 месеци';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 година';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1.5 године';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 године';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2.5 године';
      case 'enums.dropdownDateFilter.daily':
        return 'Дневно';
      case 'enums.dropdownDateFilter.weekly':
        return 'Недељно';
      case 'enums.dropdownDateFilter.monthly':
        return 'Месечно';
      case 'enums.dropdownDateFilter.yearly':
        return 'Годишње';
      case 'enums.dropdownDateFilter.custom':
        return 'Прилагођено';
      default:
        return null;
    }
  }
}
