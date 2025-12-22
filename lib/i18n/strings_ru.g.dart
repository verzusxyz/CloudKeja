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
class TranslationsRu implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsRu({
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
             locale: AppLocale.ru,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ru>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsRu _root = this; // ignore: unused_field

  @override
  TranslationsRu $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsRu(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonRu common = _TranslationsCommonRu._(_root);
  @override
  late final _TranslationsExceptionsRu exceptions = _TranslationsExceptionsRu._(
    _root,
  );
  @override
  late final _TranslationsPromptRu prompt = _TranslationsPromptRu._(_root);
  @override
  late final _TranslationsFormRu form = _TranslationsFormRu._(_root);
  @override
  late final _TranslationsActionRu action = _TranslationsActionRu._(_root);
  @override
  late final _TranslationsPagesRu pages = _TranslationsPagesRu._(_root);
  @override
  late final _TranslationsEnumsRu enums = _TranslationsEnumsRu._(_root);
}

// Path: common
class _TranslationsCommonRu implements TranslationsCommonEn {
  _TranslationsCommonRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Профиль';
  @override
  String get language => 'Язык';
  @override
  String get subscriptionPlan => 'План подписки';
  @override
  String get contactUs => 'Свяжитесь с нами';
  @override
  String get termsAndConditions => 'Условия и положения';
  @override
  String get aboutUs => 'О нас';
  @override
  String get logout => 'Выйти';
  @override
  String get editProfile => 'Редактировать профиль';
  @override
  String get fullName => 'Полное имя';
  @override
  String get email => 'Электронная почта';
  @override
  String get mobileNumber => 'Мобильный номер';
  @override
  String get address => 'Адрес';
  @override
  String get postalCode => 'Почтовый индекс';
  @override
  String get city => 'Город';
  @override
  String get country => 'Страна';
  @override
  String get state => 'Штат/Область';
  @override
  String get password => 'Пароль';
  @override
  String get forgotPassword => 'Забыли пароль';
  @override
  String get tenant => 'Арендатор';
  @override
  String get landlord => 'Арендодатель';
  @override
  String get cancelRenting => 'Отменить аренду';
  @override
  String get startDate => 'Дата начала';
  @override
  String get endDate => 'Дата окончания';
  @override
  String get fromDate => 'С даты';
  @override
  String get toDate => 'По дату';
  @override
  String get online => 'Онлайн';
  @override
  String get bankList => 'Список банков';
  @override
  String get withdrawMethod => 'Метод вывода';
  @override
  String get uploadPaymentReceipt => 'Загрузить квитанцию об оплате';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Примечание: '),
      note('Платеж требует ручного одобрения администратором в течение'),
      const TextSpan(text: ' '),
      duraion('24~48 часов.'),
    ],
  );
  @override
  String get reviews => 'Отзывы';
  @override
  String get description => 'Описание';
  @override
  String get about => 'О проекте';
  @override
  String get propertyTypes => 'Типы недвижимости';
  @override
  String get features => 'Особенности';
  @override
  String get floorPlans => 'Планы этажей';
  @override
  String get buildingDetails => 'Детали здания';
  @override
  String get buildingName => 'Название здания';
  @override
  String get propertyAddress => 'Адрес недвижимости';
  @override
  String get completionYear => 'Год завершения';
  @override
  String get lotNumber => 'Номер участка';
  @override
  String get residentialType => 'Тип жилья';
  @override
  String get furnishings => 'Меблировка';
  @override
  String get floorRange => 'Диапазон этажей';
  @override
  String get bedrooms => 'Спальни';
  @override
  String get bathrooms => 'Ванные комнаты';
  @override
  String get propertySize => 'Размер недвижимости';
  @override
  String get rentalPeriod => 'Срок аренды';
  @override
  String get securityDeposit => 'Страховой депозит';
  @override
  String get utilityBill => 'Коммунальные платежи';
  @override
  String get facilities => 'Удобства';
  @override
  String get amenities => 'Комфорт';
  @override
  String get expiringReason => 'Причина истечения срока';
  @override
  String get tenantDetails => 'Данные арендатора';
  @override
  String get typeOfTenant => 'Тип арендатора';
  @override
  String get tenantName => 'Имя арендатора';
  @override
  String get nidPassport => 'NID/Паспорт';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID арендатора';
  @override
  String get dateOfBirth => 'Дата рождения';
  @override
  String get gender => 'Пол';
  @override
  String get nominee => 'Доверенное лицо';
  @override
  String get name => 'Имя';
  @override
  String get optional => 'Необязательно';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileRu nomineeMobile =
      _TranslationsCommonNomineeMobileRu._(_root);
  @override
  String get emergencyContact => 'Экстренный контакт';
  @override
  String get relation => 'Отношение';
  @override
  String get relationWith => '${_root.common.relation} с';
  @override
  String get relationWithYou => '${_root.common.relationWith} вами';
  @override
  String get company => 'Компания';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM №';
  @override
  String get workplace => 'Место работы';
  @override
  String get officePhoneNo => 'Офисный номер телефона';
  @override
  String get officeMobileNo => 'Офисный ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Транспортное средство';
  @override
  late final _TranslationsCommonVehiclesInfoRu vehiclesInfo =
      _TranslationsCommonVehiclesInfoRu._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Тип';
  @override
  late final _TranslationsCommonVehicleRegistrationNoRu vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoRu._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Марка';
  @override
  String get rentProperty => 'Аренда недвижимости';
  @override
  String get propertyDetails => 'Детали недвижимости';
  @override
  String get propertyId => 'ID недвижимости';
  @override
  String get propertyType => 'Тип недвижимости';
  @override
  String get propertyName => 'Название недвижимости';
  @override
  String get paymentDetails => 'Детали платежа';
  @override
  String get monthlyRent => 'Ежемесячная аренда';
  @override
  String get thisMonthPayment => 'Платеж за этот месяц';
  @override
  String get totalPaidRent => 'Общая сумма оплаченной аренды';
  @override
  String get dueRent => 'Задолженность по аренде';
  @override
  String get rentStartDate => 'Аренда ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Аренда ${_root.common.endDate}';
  @override
  String get status => 'Статус';
  @override
  String get rentAgreementPdf => 'Договор аренды (PDF)';
  @override
  String get noFile => 'Файл отсутствует';
  @override
  String get tenantImageOp => 'Фото арендатора ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Добавить новое транспортное средство';
  @override
  String get uploadNidPassport => 'Загрузить NID/Паспорт';
  @override
  String get nidPassportUploadNote =>
      'Будут приниматься только изображения файлового типа. Ограничение размера файла до 2,5 МБ.';
  @override
  String get search => 'Поиск';
  @override
  String get sortBy => 'Сортировать по';
  @override
  String get subscription => 'Подписка';
  @override
  String get downloading => 'Загрузка...';
  @override
  String get downloadSuccess => 'Файл успешно загружен!';
  @override
  String get addPropertyBannerTitle =>
      'Хотите сдать свою недвижимость в аренду?';
  @override
  String get application => 'Заявка';
  @override
  String get tenantHasPaidDeposit => 'Арендатор оплатил депозит.';
  @override
  String get askProcessingRentApplication =>
      'Вы уверены, что хотите обработать этот запрос на аренду?';
  @override
  String get dateAndTime => 'Дата и время';
  @override
  String get applicationDetails => 'Детали заявки';
  @override
  String get depositStatus => 'Статус депозита';
  @override
  String get uploadRentAgreement => 'Загрузить договор аренды';
  @override
  String get uploadFilePDF => 'Загрузить файл (PDF)';
  @override
  String get askSelectRentAgreement => 'Пожалуйста, выберите файл договора.';
  @override
  String get landlordRentAgreementPDF => 'Договор аренды арендодателя (PDF)';
  @override
  String get tenantRentAgreementPDF => 'Договор аренды арендатора (PDF)';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Примечание: '),
          note('Одобрите заявку только после внесения арендатором депозита.'),
        ],
      );
  @override
  String get reasonOfRejection => 'Причина отклонения';
  @override
  String get youveRejectedThisApplication => 'Вы отклонили эту заявку';
  @override
  String get landlordDetails => 'Детали арендодателя';
  @override
  String get landlordName => 'Имя арендодателя';
  @override
  String get downloadRentAgreement => 'Скачать договор аренды';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Принять '),
      toc('Условия и положения'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Примечание: '),
      note(
        'Пожалуйста, скачайте и ознакомьтесь с договором. Отправьте подписанный договор арендодателю через WhatsApp или email.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Примечание: '),
      note(
        'Арендодатель одобряет заявку, когда арендатор оплачивает страховой депозит, коммунальные услуги и арендную плату за первый месяц.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Договор аренды (PDF) '),
          complete('Полный договор'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Примечание: '),
      note(
        'Арендодатель одобряет заявку, когда арендатор оплачивает страховой депозит, коммунальные услуги и арендную плату за первый месяц.',
      ),
    ],
  );
  @override
  String get whatsapp => 'WhatsApp';
  @override
  String get applicationList => 'Список заявок';
  @override
  String get viewDetails => 'Просмотреть детали';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Главная';
  @override
  String get dashboard => 'Панель управления';
  @override
  String get tenants => 'Арендаторы';
  @override
  String get maintenance => 'Обслуживание';
  @override
  String get maintenanceList => 'Список заявок на обслуживание';
  @override
  String get maintenanceReport => 'Отчет об обслуживании';
  @override
  String get labor => 'Рабочая сила';
  @override
  String get applications => 'Заявки';
  @override
  String get rentInvitation => 'Приглашение к аренде';
  @override
  String get payment => 'Платеж';
  @override
  String get rentPayment => 'Оплата аренды';
  @override
  String get depositUtilityPayment => 'Оплата депозита и коммунальных услуг';
  @override
  String get refundRequest => 'Запрос на возврат';
  @override
  String get withdrawRequest => 'Запрос на вывод средств';
  @override
  String get myProperty => 'Моя недвижимость';
  @override
  String get myRent => 'Моя аренда';
  @override
  String get wishlist => 'Избранное';
  @override
  String get properties => 'Недвижимость';
  @override
  String get allProperties => 'Вся недвижимость';
  @override
  String get totalPropery => 'Общее количество недвижимости';
  @override
  String get occupied => 'Занято';
  @override
  String get vacant => 'Свободно';
  @override
  String get accounting => 'Бухгалтерский учет';
  @override
  String get totalIncome => 'Общий доход';
  @override
  String get totalExpense => 'Общий расход';
  @override
  String get currentBalance => 'Текущий баланс';
  @override
  String get totalWithdrawal => 'Всего (вывод)';
  @override
  String get totalProperties => 'Всего объектов';
  @override
  String get totalTenant => 'Всего арендаторов';
  @override
  String get totalRentPaid => 'Всего выплачено арендной платы';
  @override
  String get totalRentDue => 'Всего причитается арендной платы';
  @override
  String get totalApplication => 'Всего заявок';
  @override
  String get pendingApplication => 'Ожидающие заявки';
  @override
  String get processingApplication => 'Обрабатываемые заявки';
  @override
  String get approveApplication => 'Одобренные заявки';
  @override
  String get rejectApplication => 'Отклоненные заявки';
  @override
  String get maintenanceCost => 'Стоимость обслуживания';
  @override
  String get transactionSummary => 'Сводка по транзакциям';
  @override
  String get maintenanceRequest => 'Запрос на обслуживание';
  @override
  String get notifications => 'Уведомления';
  @override
  String get myProperties => 'Мои объекты';
  @override
  String get recommendationProperties => 'Рекомендованные объекты';
  @override
  String get laborList => 'Список рабочих';
  @override
  String get addLabor => 'Добавить рабочего';
  @override
  String get laborDetails => 'Сведения о рабочем';
  @override
  String get laborSalary => 'Зарплата рабочего';
  @override
  String get editLabor => 'Редактировать рабочего';
  @override
  String get addNewLabor => 'Добавить нового рабочего';
  @override
  String get enterAmount => 'Введите сумму';
  @override
  String get maintenanceDetails => 'Сведения об обслуживании';
  @override
  String get laborName => 'Имя рабочего';
  @override
  String get comment => 'Комментарий';
  @override
  String get image => 'Изображение';
  @override
  String get complete => 'Завершить';
  @override
  String get details => 'Подробности';
  @override
  String get title => 'Название';
  @override
  String get date => 'Дата';
  @override
  String get reason => 'Причина';
  @override
  String get edit => 'Редактировать';
  @override
  String get property => 'Объект';
  @override
  String get completeYourProfile => 'Заполните свой профиль';
  @override
  String get profileImage => 'Изображение профиля';
  @override
  String get imagePickHint =>
      'Только изображения JPEG и PNG максимальным размером 120x120 пикселей.';
  @override
  String get invoiceId => 'ID счета';
  @override
  String get depositAmount => 'Сумма депозита';
  @override
  String get landlordPhone => 'Телефон арендодателя';
  @override
  String get rentalAdvance => 'Аренда (аванс)';
  @override
  String get totalAmount => 'Общая сумма';
  @override
  String get rentalAmount => 'Сумма аренды';
  @override
  String get adminCharge => 'Административная плата';
  @override
  String get editAccount => 'Редактировать аккаунт';
  @override
  String get addNewAccount => 'Добавить новый аккаунт';
  @override
  String get transactionId => 'ID транзакции';
  @override
  String get transactionType => 'Тип транзакции';
  @override
  String get requestDate => 'Дата запроса';
  @override
  String get amount => 'Сумма';
  @override
  String get fee => 'Комиссия';
  @override
  String get paymentStatus => 'Статус платежа';
  @override
  String get generatedTime => 'Время создания';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Это автоматически сгенерированный отчет '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'История вывода средств';
  @override
  String get history => 'История';
  @override
  String get withdrawAmount => 'Сумма вывода';
  @override
  String get availableBalance => 'Доступный баланс';
  @override
  String get withdrawCharge => 'Комиссия за вывод';
  @override
  String get paymentMethod => 'Способ оплаты';
  @override
  String get requestSendSuccess => 'Запрос отправлен успешно!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Квитанция об оплате успешно отправлена.';
  @override
  String get refundReason => 'Причина возврата';
  @override
  String get note => 'Примечание';
  @override
  String get refundReceiveSuccess => 'Возврат успешно получен.';
  @override
  String get downloadPaymentReceipt => 'Скачать квитанцию об оплате';
  @override
  String get invoice => 'Счет';
  @override
  String get selectPropertyToSeeInvoice =>
      'Выберите объект, чтобы увидеть номер счета...';
  @override
  String get bankAccName => 'Название банковского счета';
  @override
  String get bankName => 'Название банка';
  @override
  String get bankAccNum => 'Номер банковского счета';
  @override
  String get thankYou => 'Спасибо!';
  @override
  String get basicInfo => 'Основная информация';
  @override
  String get descriptionPricing => 'Описание и цены';
  @override
  String get contact => 'Контакт';
  @override
  String get photos => 'Фотографии';
  @override
  String get successfullySubmitted => 'Успешно отправлено!';
  @override
  String get editProperty => 'Редактировать объект';
  @override
  String get addNewProperty => 'Добавить новый объект';
  @override
  String get propertyManageRequestSuccess =>
      'Ваше объявление отправлено на рассмотрение.';
  @override
  String get postAnotherProperty => 'Разместить еще один объект';
  @override
  String get browseYourProperty => 'Просмотреть свои объекты';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Шаг '),
      step,
      const TextSpan(text: ' из '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Что бы вы хотели разместить?';
  @override
  String get category => 'Категория';
  @override
  String get invalidCategory => 'Неверная категория';
  @override
  String get unitNumber => 'Номер квартиры';
  @override
  String get sqft => 'кв. футов';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Размер объекта должен быть больше нуля';
  @override
  String get whatAreTheFacility => 'Какие удобства?';
  @override
  String get whatAreTheAmenity => 'Какие удобства?';
  @override
  String get parkingLot => 'Парковка';
  @override
  String get houseType => 'Тип дома';
  @override
  String get value => 'Значение';
  @override
  String get unitLotSize => 'Размер участка / участка';
  @override
  String get landSize => 'Размер земли';
  @override
  String get acres => 'акр(ов)';
  @override
  String get roomSize => 'Размер комнаты';
  @override
  String get askTenantPreference => 'Какие у вас предпочтения по арендаторам';
  @override
  String get couple => 'Пара';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Опишите ${propertyType}';
  @override
  String get adTitle => 'Название объявления';
  @override
  String get minimumRentalPeriod => 'Минимальный срок аренды';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Номер';
  @override
  String get hideOrDisplayEmail =>
      'Скрыть или отобразить адрес электронной почты';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Спасибо за размещение на ${appName}!';
  @override
  String get propertyList => 'Список объектов';
  @override
  String get newInviteRent => 'Новое приглашение на аренду';
  @override
  String get rentAgreement => 'Договор аренды';
  @override
  String get rentDetails => 'Детали аренды';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Примечание: '),
      note('Пожалуйста, подождите, пока арендатор примет приглашение.'),
    ],
  );
  @override
  String get rent => 'Аренда';
  @override
  String get editTenant => 'Редактировать арендатора';
  @override
  String get addNewTenant => 'Добавить нового арендатора';
  @override
  String get shareInstallLink => 'Поделиться ссылкой на установку';
  @override
  String get tenantList => 'Список арендаторов';
  @override
  String get editMaintenanceRequest => 'Редактировать запрос на обслуживание';
  @override
  String get addNewMaintenance => 'Добавить новое обслуживание';
  @override
  String get landlordId => 'ID арендодателя';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Примечание '),
      note(
        'Ваш договор находится на рассмотрении. Пожалуйста, подождите, пока арендодатель одобрит вашу аренду.',
      ),
    ],
  );
  @override
  String get editReview => 'Редактировать отзыв';
  @override
  String get writeAReview => 'Написать отзыв';
  @override
  String get selectRating => 'Выберите рейтинг';
  @override
  String get enterYourOpinion => 'Введите свое мнение';
  @override
  String get askToEnterReviewMsg => 'Пожалуйста, введите сообщение отзыва';
  @override
  String get pressBackAgainToExit => 'Нажмите назад еще раз, чтобы выйти.';
  @override
  String get selectPaymentMethod => 'Выберите способ оплаты';
  @override
  String get filter => 'Фильтр';
  @override
  String get perMonth => '/1 месяц';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Поиск чего угодно в ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsRu implements TranslationsExceptionsEn {
  _TranslationsExceptionsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Что-то пошло не так, попробуйте снова';
  @override
  String get noNidPassport => 'Изображение NID/Паспорта не предоставлено.';
  @override
  String get noRentPropertyFound =>
      'Не найдено арендной недвижимости для этого арендатора.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Недвижимость не найдена!\nПожалуйста, попробуйте с другими ключевыми словами';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'План подписки не найден!\nПожалуйста, обновите страницу и попробуйте снова.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Недействительная информация о ${dataType}! Пожалуйста, обновите страницу и попробуйте снова.';
  @override
  String get invalidDownloadUrl => 'Недействительный URL загрузки!';
  @override
  String failedToSaveFile({required String error}) =>
      'Не удалось сохранить файл! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Ошибка открытия файла! ${error}';
  @override
  String get noVehicleInfoProvided =>
      'Информация о транспортном средстве не предоставлена.';
  @override
  String get yourApplicationRejected => 'Ваша заявка была отклонена';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintRu
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintRu._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintRu noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintRu._(_root);
  @override
  String get noImageProvided => 'Изображение не предоставлено';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundRu
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundRu._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Залог не найден!\nПожалуйста, вы сможете увидеть залоги, когда они будут доступны';
  @override
  String get noRentPaymentFound =>
      'Платеж за аренду не найден!\nПожалуйста, вы сможете увидеть платежи за аренду, когда они будут доступны';
  @override
  String get transactionSummaryApiException =>
      'Не удалось получить сводку по транзакциям.';
  @override
  String get noWithdrawRequestFound =>
      'Запрос не найден!\nПожалуйста, попробуйте создать запрос на вывод, чтобы увидеть его здесь.';
  @override
  String get withdrawRequestNotApproved =>
      'Этот запрос на вывод не был одобрен!.';
  @override
  String get nonZeroError =>
      'Пожалуйста, введите действительную сумму больше нуля.';
  @override
  String minAmountError({required String minValue}) =>
      'Сумма должна быть не менее ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Сумма не должна превышать ${maxValue}.';
  @override
  String get selectPaymentMethodHint =>
      'Пожалуйста, сначала выберите способ оплаты.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundRu
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundRu._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintRu refundRequestHint =
      _TranslationsExceptionsRefundRequestHintRu._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Пожалуйста, выберите количество ${value}';
  @override
  String get invalidDateRange => 'Неверный диапазон дат.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} должно быть больше нуля.';
  @override
  late final _TranslationsExceptionsEditPropertyRu editProperty =
      _TranslationsExceptionsEditPropertyRu._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationRu rentInvitation =
      _TranslationsExceptionsRentInvitationRu._(_root);
  @override
  String get notenantFoundList =>
      'Нет арендаторов!\nПожалуйста, попробуйте добавить арендатора, чтобы увидеть его здесь.';
  @override
  String get noFeaturesProvided => 'Функции не предоставлены.';
  @override
  String get noNotificationFound =>
      'Уведомлений нет.\nВы можете увидеть свои уведомления здесь, когда они будут доступны.';
}

// Path: prompt
class _TranslationsPromptRu implements TranslationsPromptEn {
  _TranslationsPromptRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutRu logout = _TranslationsPromptLogoutRu._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationRu application =
      _TranslationsPromptApplicationRu._(_root);
  @override
  late final _TranslationsPromptLaborRu labor = _TranslationsPromptLaborRu._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestRu maintenanceRequest =
      _TranslationsPromptMaintenanceRequestRu._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodRu withdrawMethod =
      _TranslationsPromptWithdrawMethodRu._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesRu unsavedChanges =
      _TranslationsPromptUnsavedChangesRu._(_root);
  @override
  late final _TranslationsPromptPropertyRu property =
      _TranslationsPromptPropertyRu._(_root);
  @override
  late final _TranslationsPromptRentInvitationRu rentInvitation =
      _TranslationsPromptRentInvitationRu._(_root);
  @override
  late final _TranslationsPromptSessionExpiredRu sessionExpired =
      _TranslationsPromptSessionExpiredRu._(_root);
  @override
  late final _TranslationsPromptNoInternetRu noInternet =
      _TranslationsPromptNoInternetRu._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerRu permissionHandler =
      _TranslationsPromptPermissionHandlerRu._(_root);
  @override
  late final _TranslationsPromptImagePickerRu imagePicker =
      _TranslationsPromptImagePickerRu._(_root);
  @override
  late final _TranslationsPromptVerificationDialogRu verificationDialog =
      _TranslationsPromptVerificationDialogRu._(_root);
  @override
  late final _TranslationsPromptNotificationRu notification =
      _TranslationsPromptNotificationRu._(_root);
}

// Path: form
class _TranslationsFormRu implements TranslationsFormEn {
  _TranslationsFormRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameRu fullName =
      _TranslationsFormFullNameRu._(_root);
  @override
  late final _TranslationsFormEmailRu email = _TranslationsFormEmailRu._(_root);
  @override
  late final _TranslationsFormPasswordRu password =
      _TranslationsFormPasswordRu._(_root);
  @override
  late final _TranslationsFormConfirmPasswordRu confirmPassword =
      _TranslationsFormConfirmPasswordRu._(_root);
  @override
  late final _TranslationsFormMobileNumberRu mobileNumber =
      _TranslationsFormMobileNumberRu._(_root);
  @override
  late final _TranslationsFormAddress1Ru address1 =
      _TranslationsFormAddress1Ru._(_root);
  @override
  late final _TranslationsFormAddress2Ru address2 =
      _TranslationsFormAddress2Ru._(_root);
  @override
  late final _TranslationsFormPostalCodeRu postalCode =
      _TranslationsFormPostalCodeRu._(_root);
  @override
  late final _TranslationsFormCityRu city = _TranslationsFormCityRu._(_root);
  @override
  late final _TranslationsFormStateRu state = _TranslationsFormStateRu._(_root);
  @override
  late final _TranslationsFormCountryRu country = _TranslationsFormCountryRu._(
    _root,
  );
  @override
  late final _TranslationsFormOtpRu otp = _TranslationsFormOtpRu._(_root);
  @override
  late final _TranslationsFormTitleRu title = _TranslationsFormTitleRu._(_root);
  @override
  late final _TranslationsFormDateRu date = _TranslationsFormDateRu._(_root);
  @override
  late final _TranslationsFormReasonRu reason = _TranslationsFormReasonRu._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodRu withdrawMethod =
      _TranslationsFormWithdrawMethodRu._(_root);
  @override
  late final _TranslationsFormFileFieldRu fileField =
      _TranslationsFormFileFieldRu._(_root);
  @override
  late final _TranslationsFormNoteRu note = _TranslationsFormNoteRu._(_root);
  @override
  late final _TranslationsFormGenderRu gender = _TranslationsFormGenderRu._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldRu anyField =
      _TranslationsFormAnyFieldRu._(_root);
  @override
  late final _TranslationsFormAnyDropdownRu anyDropdown =
      _TranslationsFormAnyDropdownRu._(_root);
}

// Path: action
class _TranslationsActionRu implements TranslationsActionEn {
  _TranslationsActionRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Далее';
  @override
  String get getStarted => 'Начать';
  @override
  String get skip => 'Пропустить';
  @override
  String get select => 'Выбрать';
  @override
  String get save => 'Сохранить';
  @override
  String get signIn => 'Войти';
  @override
  String get signUp => 'Зарегистрироваться';
  @override
  String get kContinue => 'Продолжить';
  @override
  String get clearAll => 'Очистить все';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Отправить';
  @override
  String get pay => 'Оплатить';
  @override
  String get remove => 'Удалить';
  @override
  String get goBack => 'Вернуться';
  @override
  String get buyNow => 'Купить сейчас';
  @override
  String get no => 'Нет';
  @override
  String get open => 'Открыть';
  @override
  String get addProperty => 'Добавить объект';
  @override
  String get process => 'Обработать';
  @override
  String get approve => 'Одобрить';
  @override
  String get reject => 'Отклонить';
  @override
  String get viewRent => 'Посмотреть аренду';
  @override
  String get openNavigationMenu => 'Открыть меню навигации';
  @override
  String get seeAll => 'Посмотреть все';
  @override
  String get update => 'Обновить';
  @override
  String get printTransaction => 'Распечатать транзакцию';
  @override
  String get payoutRequest => 'Запрос на выплату';
  @override
  String get addNew => '+ Добавить новый';
  @override
  String get sendRequest => 'Отправить запрос';
  @override
  String get print => 'Распечатать';
  @override
  String get requestForRefund => 'Запрос на возврат';
  @override
  String get previous => 'Предыдущий';
  @override
  String get delete => 'Удалить';
  @override
  String get applyProperty => 'Подать заявку на объект';
  @override
  String get viewApplication => 'Посмотреть заявку';
  @override
  String get inviteTenant => 'Пригласить арендатора';
  @override
  String get inviteRent => 'Пригласить на аренду';
  @override
  String get cancel => 'Отменить';
  @override
  String get accept => 'Принять';
  @override
  String get submit => 'Отправить';
  @override
  String get yes => 'Да';
  @override
  String get okay => 'Окей';
  @override
  String get confirm => 'Подтвердить';
  @override
  String get apply => 'Применить';
  @override
  String get reset => 'Сбросить';
  @override
  String get retry => 'Повторить';
  @override
  String get viewAll => 'Посмотреть все';
}

// Path: pages
class _TranslationsPagesRu implements TranslationsPagesEn {
  _TranslationsPagesRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageRu language =
      _TranslationsPagesLanguageRu._(_root);
  @override
  late final _TranslationsPagesOnboardRu onboard =
      _TranslationsPagesOnboardRu._(_root);
  @override
  late final _TranslationsPagesSignInRu signIn = _TranslationsPagesSignInRu._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordRu forgotPassword =
      _TranslationsPagesForgotPasswordRu._(_root);
  @override
  late final _TranslationsPagesOtpVerificationRu otpVerification =
      _TranslationsPagesOtpVerificationRu._(_root);
  @override
  late final _TranslationsPagesResetPasswordRu resetPassword =
      _TranslationsPagesResetPasswordRu._(_root);
  @override
  late final _TranslationsPagesSignUpRu signUp = _TranslationsPagesSignUpRu._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeRu welcome =
      _TranslationsPagesWelcomeRu._(_root);
  @override
  late final _TranslationsPagesAboutUsRu aboutUs =
      _TranslationsPagesAboutUsRu._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsRu termsAndConditions =
      _TranslationsPagesTermsAndConditionsRu._(_root);
  @override
  late final _TranslationsPagesNotificationListRu notificationList =
      _TranslationsPagesNotificationListRu._(_root);
  @override
  late final _TranslationsPagesContactUsRu contactUs =
      _TranslationsPagesContactUsRu._(_root);
  @override
  late final _TranslationsPagesCancelRentingRu cancelRenting =
      _TranslationsPagesCancelRentingRu._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsRu invoiceDetails =
      _TranslationsPagesInvoiceDetailsRu._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentRu offlinePayment =
      _TranslationsPagesOfflinePaymentRu._(_root);
  @override
  late final _TranslationsPagesPaymentStatusRu paymentStatus =
      _TranslationsPagesPaymentStatusRu._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsRu propertyDetails =
      _TranslationsPagesPropertyDetailsRu._(_root);
  @override
  late final _TranslationsPagesSearchRu search = _TranslationsPagesSearchRu._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanRu subscriptionPlan =
      _TranslationsPagesSubscriptionPlanRu._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportRu
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportRu._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsRu implements TranslationsEnumsEn {
  _TranslationsEnumsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusRu propertyStatus =
      _TranslationsEnumsPropertyStatusRu._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeRu propertyType =
      _TranslationsEnumsPropertyTypeRu._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusRu applicationStatus =
      _TranslationsEnumsApplicationStatusRu._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusRu myRentStatus =
      _TranslationsEnumsMyRentStatusRu._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusRu maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusRu._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeRu tenantProfileType =
      _TranslationsEnumsTenantProfileTypeRu._(_root);
  @override
  late final _TranslationsEnumsTenantTypeRu tenantType =
      _TranslationsEnumsTenantTypeRu._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusRu paymentStatus =
      _TranslationsEnumsPaymentStatusRu._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsRu paymentOptions =
      _TranslationsEnumsPaymentOptionsRu._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeRu paymentType =
      _TranslationsEnumsPaymentTypeRu._(_root);
  @override
  late final _TranslationsEnumsGenderRu gender = _TranslationsEnumsGenderRu._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationRu ecRelation =
      _TranslationsEnumsEcRelationRu._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeRu vehicleType =
      _TranslationsEnumsVehicleTypeRu._(_root);
  @override
  late final _TranslationsEnumsSortByRu sortBy = _TranslationsEnumsSortByRu._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeRu residentialType =
      _TranslationsEnumsResidentialTypeRu._(_root);
  @override
  late final _TranslationsEnumsFloorRangeRu floorRange =
      _TranslationsEnumsFloorRangeRu._(_root);
  @override
  late final _TranslationsEnumsFurnishingsRu furnishings =
      _TranslationsEnumsFurnishingsRu._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeRu commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeRu._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeRu landPropertyType =
      _TranslationsEnumsLandPropertyTypeRu._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeRu residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeRu._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodRu minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodRu._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterRu dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterRu._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileRu
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Моб. №';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoRu
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Информация о транспорте';
  @override
  String get optional => 'Информация о транспорте (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoRu
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Регистрационный номер транспорта';
  @override
  String get short => 'Регистрационный №';
  @override
  String get alt => 'Номерной знак';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintRu
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Заявка не найдена!\n${subject} будет отображаться здесь, когда будет доступно.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsRu subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsRu._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintRu
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Недвижимость не найдена!\nПожалуйста, попробуйте добавить недвижимость, чтобы увидеть ее здесь.';
  @override
  String get tenantRecommended =>
      'Рекомендованные объекты не найдены\nПожалуйста, попробуйте позже.';
  @override
  String get tenantAllProperty =>
      'Недвижимость недоступна\nПожалуйста, попробуйте позже.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundRu
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Не найдено ${status} обслуживания.';
  @override
  String get tenant =>
      'Обслуживание не найдено! Вы можете создать запрос на обслуживание, чтобы увидеть его здесь.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundRu
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Не найдено ${status} запроса на возврат!\nВы можете увидеть запрос на возврат здесь, когда он будет доступен.';
  @override
  String get tenant =>
      'Запрос на возврат не найден!\nВы можете создать запрос на возврат, чтобы увидеть его здесь.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintRu
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Арендатор одобрит возврат, когда получит деньги обратно';
  @override
  String get tenantReqSuccess =>
      'Мы рассмотрим запрос на возврат и одобрим его в течение 24 часов.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyRu
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Арендная плата меняется. Она должна быть действительной (эффективной) только для арендного платежа за следующий месяц.';
  @override
  String get deleteOnRent =>
      'Ваша недвижимость уже сдана в аренду арендатору. Невозможно удалить ее, пока не удалите арендатора.';
  @override
  String get alreayRented =>
      'Эта недвижимость уже сдана в аренду. Пожалуйста, попробуйте позже.\nИли вы можете связаться с арендодателем для получения дополнительной информации.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationRu
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Приглашение на аренду не найдено!\nПожалуйста, попробуйте создать приглашение на аренду, чтобы увидеть его здесь.';
  @override
  String get tenantNoRentInvitation =>
      'Приглашение на аренду не найдено!\nВы можете увидеть приглашение на аренду здесь, когда оно будет доступно.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutRu implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Вы уверены, что хотите выйти?';
}

// Path: prompt.application
class _TranslationsPromptApplicationRu
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Почему вы отклоняете эту заявку?';
  @override
  late final _TranslationsPromptApplicationApplicationSentRu applicationSent =
      _TranslationsPromptApplicationApplicationSentRu._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborRu implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteRu delete =
      _TranslationsPromptLaborDeleteRu._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestRu
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Почему этот запрос отклоняется?';
  @override
  String get processTitle =>
      'Вы уверены, что обрабатываете этот запрос на обслуживание?';
  @override
  String get completeTitle => 'Работа завершена?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodRu
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Удалить способ вывода?';
  @override
  String get deleteDescription =>
      'Вы уверены, что хотите удалить этот способ вывода?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesRu
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Вы уверены, что хотите вернуться?';
  @override
  String get message => 'Измененные поля не будут сохранены!';
}

// Path: prompt.property
class _TranslationsPromptPropertyRu implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteRu delete =
      _TranslationsPromptPropertyDeleteRu._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationRu
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveRu
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveRu._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptRu tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptRu._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredRu
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Сессия истекла';
  @override
  String get message =>
      'Срок действия вашей сессии истек. Пожалуйста, войдите снова';
  @override
  String get action => 'Войти';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetRu
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Нет подключения к Интернету';
  @override
  String get message =>
      'Пожалуйста, проверьте подключение к сети Wi-Fi или мобильной сети и попробуйте снова';
  @override
  String get action => 'Попробовать снова';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerRu
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Требуется разрешение!';
  @override
  String get message =>
      'Вам необходимо предоставить разрешения в настройках приложения. Хотите открыть настройки сейчас?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerRu
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Выберите вариант';
  @override
  String get gallery => 'Галерея';
  @override
  String get camera => 'Камера';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogRu
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Подтвердите свой адрес электронной почты';
  @override
  String get message =>
      'Мы отправили код подтверждения на адрес электронной почты';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} на ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationRu
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Очистить уведомления?';
  @override
  String get clearMessage => 'Вы уверены, что хотите очистить все уведомления?';
}

// Path: form.fullName
class _TranslationsFormFullNameRu implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Введите ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsRu errors =
      _TranslationsFormFullNameErrorsRu._(_root);
}

// Path: form.email
class _TranslationsFormEmailRu implements TranslationsFormEmailEn {
  _TranslationsFormEmailRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Введите ваш ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsRu errors =
      _TranslationsFormEmailErrorsRu._(_root);
}

// Path: form.password
class _TranslationsFormPasswordRu implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsRu errors =
      _TranslationsFormPasswordErrorsRu._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordRu
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Подтвердите ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsRu errors =
      _TranslationsFormConfirmPasswordErrorsRu._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberRu
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsRu errors =
      _TranslationsFormMobileNumberErrorsRu._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Ru implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Ru._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Номер дома и название улицы';
  @override
  late final _TranslationsFormAddress1ErrorsRu errors =
      _TranslationsFormAddress1ErrorsRu._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Ru implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Ru._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Квартира, люкс, блок и т.д.';
  @override
  late final _TranslationsFormAddress2ErrorsRu errors =
      _TranslationsFormAddress2ErrorsRu._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeRu implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Введите ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsRu errors =
      _TranslationsFormPostalCodeErrorsRu._(_root);
}

// Path: form.city
class _TranslationsFormCityRu implements TranslationsFormCityEn {
  _TranslationsFormCityRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Введите название ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsRu errors =
      _TranslationsFormCityErrorsRu._(_root);
}

// Path: form.state
class _TranslationsFormStateRu implements TranslationsFormStateEn {
  _TranslationsFormStateRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Введите название ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsRu errors =
      _TranslationsFormStateErrorsRu._(_root);
}

// Path: form.country
class _TranslationsFormCountryRu implements TranslationsFormCountryEn {
  _TranslationsFormCountryRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Выберите ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsRu errors =
      _TranslationsFormCountryErrorsRu._(_root);
}

// Path: form.otp
class _TranslationsFormOtpRu implements TranslationsFormOtpEn {
  _TranslationsFormOtpRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsRu errors =
      _TranslationsFormOtpErrorsRu._(_root);
}

// Path: form.title
class _TranslationsFormTitleRu implements TranslationsFormTitleEn {
  _TranslationsFormTitleRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Название';
  @override
  String get hint => 'Введите название';
  @override
  late final _TranslationsFormTitleErrorsRu errors =
      _TranslationsFormTitleErrorsRu._(_root);
}

// Path: form.date
class _TranslationsFormDateRu implements TranslationsFormDateEn {
  _TranslationsFormDateRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Выберите ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsRu errors =
      _TranslationsFormDateErrorsRu._(_root);
}

// Path: form.reason
class _TranslationsFormReasonRu implements TranslationsFormReasonEn {
  _TranslationsFormReasonRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Причина';
  @override
  String get hint => 'Введите причину';
  @override
  late final _TranslationsFormReasonErrorsRu errors =
      _TranslationsFormReasonErrorsRu._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodRu
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Выберите ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsRu errors =
      _TranslationsFormWithdrawMethodErrorsRu._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldRu implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Загрузите ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsRu errors =
      _TranslationsFormFileFieldErrorsRu._(_root);
}

// Path: form.note
class _TranslationsFormNoteRu implements TranslationsFormNoteEn {
  _TranslationsFormNoteRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Введите ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsRu errors =
      _TranslationsFormNoteErrorsRu._(_root);
}

// Path: form.gender
class _TranslationsFormGenderRu implements TranslationsFormGenderEn {
  _TranslationsFormGenderRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Выберите ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsRu errors =
      _TranslationsFormGenderErrorsRu._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldRu implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Введите ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsRu errors =
      _TranslationsFormAnyFieldErrorsRu._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownRu implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Выберите ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsRu errors =
      _TranslationsFormAnyDropdownErrorsRu._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageRu implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardRu implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataRu onboardData =
      _TranslationsPagesOnboardOnboardDataRu._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInRu implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'С возвращением';
  @override
  String get subtitle =>
      'Войдите сейчас, чтобы начать удивительное путешествие.';
  @override
  late final _TranslationsPagesSignInExtraRu extra =
      _TranslationsPagesSignInExtraRu._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordRu
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Забыли пароль';
  @override
  String get subtitle =>
      'Введите свой адрес электронной почты, чтобы восстановить свой пароль.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationRu
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Верификация';
  @override
  String subtitle({required String email}) =>
      '4-значный пин-код был отправлен на ваш адрес электронной почты. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraRu extra =
      _TranslationsPagesOtpVerificationExtraRu._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordRu
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Сброс пароля';
  @override
  String get subtitle =>
      'Сбросьте свой пароль для восстановления и войдите в свою учетную запись';
  @override
  late final _TranslationsPagesResetPasswordExtraRu extra =
      _TranslationsPagesResetPasswordExtraRu._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpRu implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Создать учетную запись';
  @override
  String get subtitle =>
      'Зарегистрируйтесь сейчас, чтобы начать удивительное путешествие';
  @override
  late final _TranslationsPagesSignUpExtraRu extra =
      _TranslationsPagesSignUpExtraRu._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeRu implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Кто вы?';
  @override
  String get subtitle => 'Пожалуйста, выберите опцию ниже.';
  @override
  late final _TranslationsPagesWelcomeExtraRu extra =
      _TranslationsPagesWelcomeExtraRu._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsRu implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsRu
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListRu
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Уведомления';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsRu implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraRu extra =
      _TranslationsPagesContactUsExtraRu._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingRu
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Почему вы ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormRu form =
      _TranslationsPagesCancelRentingFormRu._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsRu
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentRu
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Оффлайн-платеж';
  @override
  late final _TranslationsPagesOfflinePaymentFormRu form =
      _TranslationsPagesOfflinePaymentFormRu._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraRu extra =
      _TranslationsPagesOfflinePaymentExtraRu._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusRu
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessRu success =
      _TranslationsPagesPaymentStatusSuccessRu._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailRu fail =
      _TranslationsPagesPaymentStatusFailRu._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsRu
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraRu extra =
      _TranslationsPagesPropertyDetailsExtraRu._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchRu implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Поиск';
  @override
  late final _TranslationsPagesSearchExtraRu extra =
      _TranslationsPagesSearchExtraRu._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanRu
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Выберите свой план';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraRu extra =
      _TranslationsPagesSubscriptionPlanExtraRu._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportRu
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Общая стоимость обслуживания: '),
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
class _TranslationsEnumsPropertyStatusRu
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Вся недвижимость';
  @override
  String get pending => 'В ожидании';
  @override
  String get active => 'Активный';
  @override
  String get inactive => 'Неактивный';
  @override
  String get rejected => 'Отклонено';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeRu
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Квартира/Кондоминиум';
  @override
  String get house => 'Дом';
  @override
  String get commercialProperty => 'Коммерческая недвижимость';
  @override
  String get land => 'Земля';
  @override
  String get room => 'Комната';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusRu
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Все';
  @override
  String get pending => 'В ожидании';
  @override
  String get processing => 'В обработке';
  @override
  String get approved => 'Одобрено';
  @override
  String get rejected => 'Отклонено';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusRu
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'В ожидании';
  @override
  String get processing => 'В обработке';
  @override
  String get active => 'Активный';
  @override
  String get expired => 'Истек';
  @override
  String get cancelled => 'Отменено';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusRu
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'В ожидании';
  @override
  String get processing => 'В обработке';
  @override
  String get rejected => 'Отклонено';
  @override
  String get completed => 'Завершено';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeRu
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Частное лицо (индивидуальный)';
  @override
  String get company => 'Компания';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeRu implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Новый арендатор';
  @override
  String get activeTenant => 'Активный арендатор';
  @override
  String get expiredTenant => 'Истекший арендатор';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusRu
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Все';
  @override
  String get pending => 'В ожидании';
  @override
  String get paid => 'Оплачено';
  @override
  String get unpaid => 'Не оплачено';
  @override
  String get rejected => 'Отклонено';
  @override
  String get refund => 'Возврат';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsRu
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Онлайн-платеж';
  @override
  String get offlinePayment => 'Оффлайн-платеж';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeRu
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Залог';
  @override
  String get rentPayment => 'Платеж за аренду';
  @override
  String get subscription => 'Подписка';
}

// Path: enums.gender
class _TranslationsEnumsGenderRu implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Мужской';
  @override
  String get female => 'Женский';
  @override
  String get other => 'Другой';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationRu implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Жена';
  @override
  String get parent => 'Родитель';
  @override
  String get friend => 'Друг';
  @override
  String get brother => 'Брат';
  @override
  String get sister => 'Сестра';
  @override
  String get child => 'Ребенок';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeRu
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Автомобиль';
  @override
  String get motorcycles => 'Мотоциклы';
  @override
  String get lorry => 'Грузовик';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByRu implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'От низкого к высокому';
  @override
  String get highToLow => 'От высокого к низкому';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeRu
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Квартира';
  @override
  String get apartment => 'Апартаменты';
  @override
  String get condominium => 'Кондоминиум';
  @override
  String get serviceResidence => 'Резиденция с обслуживанием';
  @override
  String get studio => 'Студия';
  @override
  String get duplex => 'Дуплекс';
  @override
  String get townhouseCondo => 'Таунхаус/Кондо';
  @override
  String get others => 'Другое';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeRu implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Высокий';
  @override
  String get medium => 'Средний';
  @override
  String get low => 'Низкий';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsRu
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Полностью меблировано';
  @override
  String get partiallyFurnished => 'Частично меблировано';
  @override
  String get notFurnished => 'Не меблировано';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeRu
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Офисное помещение';
  @override
  String get retailSpace => 'Торговое помещение';
  @override
  String get shopLot => 'Торговый участок';
  @override
  String get warehouseFactory => 'Склад / Фабрика';
  @override
  String get hotelResort => 'Отель / Курорт';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Другое';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeRu
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Жилая';
  @override
  String get industrial => 'Промышленная';
  @override
  String get agricultural => 'Сельскохозяйственная';
  @override
  String get commercial => 'Коммерческая';
  @override
  String get mixedDevelopment => 'Смешанная застройка';
  @override
  String get others => 'Другое';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeRu
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Кондо / Резиденция с обслуживанием / Пентхаус';
  @override
  String get apartment => 'Квартира / Плоская';
  @override
  String get house => 'Дома';
  @override
  String get shoplot => 'Торговый участок';
  @override
  String get sharing => 'Совместное проживание в доме / квартире';
  @override
  String get others => 'Другое';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodRu
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 месяцев';
  @override
  String get oneYear => '1 год';
  @override
  String get oneAndHalfYears => '1,5 года';
  @override
  String get twoYears => '2 года';
  @override
  String get twoAndHalfYears => '2,5 года';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterRu
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Ежедневно';
  @override
  String get weekly => 'Еженедельно';
  @override
  String get monthly => 'Ежемесячно';
  @override
  String get yearly => 'Ежегодно';
  @override
  String get custom => 'Пользовательский';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsRu
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Ваша заявка';
  @override
  String get landlord => 'Заявка арендатора';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentRu
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Заявка успешно отправлена!';
  @override
  String get sucessDescription =>
      'Вы можете увидеть эту заявку в списке своих заявок';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteRu
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Удалить рабочего?';
  @override
  String get description => 'Вы уверены, что хотите удалить этого рабочего?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteRu
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Удалить объект?';
  @override
  String get message => 'Вы уверены, что хотите удалить этот объект?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveRu
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Вы уверены, что хотите одобрить эту аренду?';
  @override
  String get description =>
      'Убедитесь, что вы ознакомились с договором, подписанным арендатором.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptRu
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Вы уверены, что хотите принять это приглашение?';
  @override
  String get description => 'Убедитесь, что вы загрузили PDF-файл договора!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsRu
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите ваше ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsRu implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите ваш адрес ${_root.common.email}';
  @override
  String get invalid => '⦸ Неверный Email, Пожалуйста, попробуйте снова';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsRu
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите ваш ${_root.common.password}';
  @override
  String minLength({required Object count}) =>
      'Пароль должен содержать не менее ${count} символов!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsRu
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите ваш ${_root.common.password}';
  @override
  String get notMatched => 'Подтверждение пароля не совпадает!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsRu
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите ваш ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsRu
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите ваш ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsRu
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите ваш ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsRu
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите ваш ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsRu implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Пожалуйста, введите название вашего ${_root.common.city}.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsRu implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required =>
      'Пожалуйста, введите название вашего ${_root.common.state}.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsRu
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, выберите вашу ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsRu implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите OTP.';
  @override
  String get invalid => 'Пожалуйста, введите корректный OTP.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsRu implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите название';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsRu implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Пожалуйста, выберите ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsRu
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, введите причину';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsRu
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, выберите ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsRu
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Пожалуйста, выберите ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsRu implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Пожалуйста, введите ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsRu
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, выберите ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsRu
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Пожалуйста, введите ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Пожалуйста, введите корректное @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsRu
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Пожалуйста, выберите ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid =>
      'Пожалуйста, выберите корректное @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataRu
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Ru data1 =
      _TranslationsPagesOnboardOnboardDataData1Ru._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Ru data2 =
      _TranslationsPagesOnboardOnboardDataData2Ru._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Ru data3 =
      _TranslationsPagesOnboardOnboardDataData3Ru._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraRu
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Запомнить меня';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Нет учетной записи? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraRu
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendRu codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendRu._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraRu
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogRu dialog =
      _TranslationsPagesResetPasswordExtraDialogRu._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraRu
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Есть учетная запись? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraRu
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Управляйте своей собственной недвижимостью';
  @override
  String get tenantTag => 'Войдите в свою учетную запись арендатора';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraRu
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Сообщение...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormRu
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonRu reason =
      _TranslationsPagesCancelRentingFormReasonRu._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormRu
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteRu paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteRu._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraRu
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Сумма оплаты: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Имя владельца счета';
  @override
  String get accountNumber => 'Номер счета';
  @override
  String get swiftCode => 'Код Swift';
  @override
  String get branch => 'Отделение';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Выберите файлы формата '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' или '),
      fileType('DOC'),
      const TextSpan(text: '. Размер файла '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessRu
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Посмотреть счет';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Мы рассмотрим платеж и одобрим его в течение 24 часов.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailRu
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Попробовать снова';
  @override
  String get title => 'Ой! Платеж не удался';
  @override
  String get description =>
      'Ваша транзакция не удалась из-за некоторой технической ошибки.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraRu
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

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
      const TextSpan(text: 'Особенности '),
      fa('(Удобства и услуги)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Выберите период аренды';
  @override
  String get writeAReview => '+ Написать отзыв';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraRu
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Поиск участков, квартир, комнат...';
  @override
  String get noRecentSearch => 'У вас нет недавних поисков.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraRu
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Платеж за подписку успешно выполнен.\nТеперь вы можете получить доступ к функциям подписки.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Ru
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Ru._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Найдите свою недвижимость';
  @override
  String get description =>
      'Мы сделали поиск места, которое подходит вашей жизни, легким — будь то комната, квартира или дом.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Ru
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Ru._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Квартира в городе';
  @override
  String get description =>
      'Мы экономим ваше время, быстро подбирая для вас идеальную недвижимость, пока она не исчезла, чтобы вы могли наслаждаться своим новым домом, или разместите свою собственную бесплатно.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Ru
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Ru._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ваш комфортный дом';
  @override
  String get description =>
      'Если вы ищете место для жизни, взгляните на наши дома в аренду. У нас есть широкий выбор домов для вас на выбор по всей стране.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendRu
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Код будет отправлен через ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Отправить код повторно'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogRu
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Изменено успешно!';
  @override
  String get subtitle =>
      'Войдите со своим новым паролем.\nПеренаправляем вас на страницу входа...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonRu
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Напишите причину';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsRu errors =
      _TranslationsPagesCancelRentingFormReasonErrorsRu._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteRu
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Примечание к платежу (${_root.common.optional})';
  @override
  String get hint => 'Введите текст...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsRu
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsRu._(this._root);

  final TranslationsRu _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Пожалуйста, укажите причину отмены аренды';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsRu {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Профиль';
      case 'common.language':
        return 'Язык';
      case 'common.subscriptionPlan':
        return 'План подписки';
      case 'common.contactUs':
        return 'Свяжитесь с нами';
      case 'common.termsAndConditions':
        return 'Условия и положения';
      case 'common.aboutUs':
        return 'О нас';
      case 'common.logout':
        return 'Выйти';
      case 'common.editProfile':
        return 'Редактировать профиль';
      case 'common.fullName':
        return 'Полное имя';
      case 'common.email':
        return 'Электронная почта';
      case 'common.mobileNumber':
        return 'Мобильный номер';
      case 'common.address':
        return 'Адрес';
      case 'common.postalCode':
        return 'Почтовый индекс';
      case 'common.city':
        return 'Город';
      case 'common.country':
        return 'Страна';
      case 'common.state':
        return 'Штат/Область';
      case 'common.password':
        return 'Пароль';
      case 'common.forgotPassword':
        return 'Забыли пароль';
      case 'common.tenant':
        return 'Арендатор';
      case 'common.landlord':
        return 'Арендодатель';
      case 'common.cancelRenting':
        return 'Отменить аренду';
      case 'common.startDate':
        return 'Дата начала';
      case 'common.endDate':
        return 'Дата окончания';
      case 'common.fromDate':
        return 'С даты';
      case 'common.toDate':
        return 'По дату';
      case 'common.online':
        return 'Онлайн';
      case 'common.bankList':
        return 'Список банков';
      case 'common.withdrawMethod':
        return 'Метод вывода';
      case 'common.uploadPaymentReceipt':
        return 'Загрузить квитанцию об оплате';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Примечание: '),
            note('Платеж требует ручного одобрения администратором в течение'),
            const TextSpan(text: ' '),
            duraion('24~48 часов.'),
          ],
        );
      case 'common.reviews':
        return 'Отзывы';
      case 'common.description':
        return 'Описание';
      case 'common.about':
        return 'О проекте';
      case 'common.propertyTypes':
        return 'Типы недвижимости';
      case 'common.features':
        return 'Особенности';
      case 'common.floorPlans':
        return 'Планы этажей';
      case 'common.buildingDetails':
        return 'Детали здания';
      case 'common.buildingName':
        return 'Название здания';
      case 'common.propertyAddress':
        return 'Адрес недвижимости';
      case 'common.completionYear':
        return 'Год завершения';
      case 'common.lotNumber':
        return 'Номер участка';
      case 'common.residentialType':
        return 'Тип жилья';
      case 'common.furnishings':
        return 'Меблировка';
      case 'common.floorRange':
        return 'Диапазон этажей';
      case 'common.bedrooms':
        return 'Спальни';
      case 'common.bathrooms':
        return 'Ванные комнаты';
      case 'common.propertySize':
        return 'Размер недвижимости';
      case 'common.rentalPeriod':
        return 'Срок аренды';
      case 'common.securityDeposit':
        return 'Страховой депозит';
      case 'common.utilityBill':
        return 'Коммунальные платежи';
      case 'common.facilities':
        return 'Удобства';
      case 'common.amenities':
        return 'Комфорт';
      case 'common.expiringReason':
        return 'Причина истечения срока';
      case 'common.tenantDetails':
        return 'Данные арендатора';
      case 'common.typeOfTenant':
        return 'Тип арендатора';
      case 'common.tenantName':
        return 'Имя арендатора';
      case 'common.nidPassport':
        return 'NID/Паспорт';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID арендатора';
      case 'common.dateOfBirth':
        return 'Дата рождения';
      case 'common.gender':
        return 'Пол';
      case 'common.nominee':
        return 'Доверенное лицо';
      case 'common.name':
        return 'Имя';
      case 'common.optional':
        return 'Необязательно';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Моб. №';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Экстренный контакт';
      case 'common.relation':
        return 'Отношение';
      case 'common.relationWith':
        return '${_root.common.relation} с';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} вами';
      case 'common.company':
        return 'Компания';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM №';
      case 'common.workplace':
        return 'Место работы';
      case 'common.officePhoneNo':
        return 'Офисный номер телефона';
      case 'common.officeMobileNo':
        return 'Офисный ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Транспортное средство';
      case 'common.vehiclesInfo.plain':
        return 'Информация о транспорте';
      case 'common.vehiclesInfo.optional':
        return 'Информация о транспорте (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Тип';
      case 'common.vehicleRegistrationNo.normal':
        return 'Регистрационный номер транспорта';
      case 'common.vehicleRegistrationNo.short':
        return 'Регистрационный №';
      case 'common.vehicleRegistrationNo.alt':
        return 'Номерной знак';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Марка';
      case 'common.rentProperty':
        return 'Аренда недвижимости';
      case 'common.propertyDetails':
        return 'Детали недвижимости';
      case 'common.propertyId':
        return 'ID недвижимости';
      case 'common.propertyType':
        return 'Тип недвижимости';
      case 'common.propertyName':
        return 'Название недвижимости';
      case 'common.paymentDetails':
        return 'Детали платежа';
      case 'common.monthlyRent':
        return 'Ежемесячная аренда';
      case 'common.thisMonthPayment':
        return 'Платеж за этот месяц';
      case 'common.totalPaidRent':
        return 'Общая сумма оплаченной аренды';
      case 'common.dueRent':
        return 'Задолженность по аренде';
      case 'common.rentStartDate':
        return 'Аренда ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Аренда ${_root.common.endDate}';
      case 'common.status':
        return 'Статус';
      case 'common.rentAgreementPdf':
        return 'Договор аренды (PDF)';
      case 'common.noFile':
        return 'Файл отсутствует';
      case 'common.tenantImageOp':
        return 'Фото арендатора ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Добавить новое транспортное средство';
      case 'common.uploadNidPassport':
        return 'Загрузить NID/Паспорт';
      case 'common.nidPassportUploadNote':
        return 'Будут приниматься только изображения файлового типа. Ограничение размера файла до 2,5 МБ.';
      case 'common.search':
        return 'Поиск';
      case 'common.sortBy':
        return 'Сортировать по';
      case 'common.subscription':
        return 'Подписка';
      case 'common.downloading':
        return 'Загрузка...';
      case 'common.downloadSuccess':
        return 'Файл успешно загружен!';
      case 'common.addPropertyBannerTitle':
        return 'Хотите сдать свою недвижимость в аренду?';
      case 'common.application':
        return 'Заявка';
      case 'common.tenantHasPaidDeposit':
        return 'Арендатор оплатил депозит.';
      case 'common.askProcessingRentApplication':
        return 'Вы уверены, что хотите обработать этот запрос на аренду?';
      case 'common.dateAndTime':
        return 'Дата и время';
      case 'common.applicationDetails':
        return 'Детали заявки';
      case 'common.depositStatus':
        return 'Статус депозита';
      case 'common.uploadRentAgreement':
        return 'Загрузить договор аренды';
      case 'common.uploadFilePDF':
        return 'Загрузить файл (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Пожалуйста, выберите файл договора.';
      case 'common.landlordRentAgreementPDF':
        return 'Договор аренды арендодателя (PDF)';
      case 'common.tenantRentAgreementPDF':
        return 'Договор аренды арендатора (PDF)';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Примечание: '),
            note('Одобрите заявку только после внесения арендатором депозита.'),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Причина отклонения';
      case 'common.youveRejectedThisApplication':
        return 'Вы отклонили эту заявку';
      case 'common.landlordDetails':
        return 'Детали арендодателя';
      case 'common.landlordName':
        return 'Имя арендодателя';
      case 'common.downloadRentAgreement':
        return 'Скачать договор аренды';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Принять '),
            toc('Условия и положения'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Примечание: '),
            note(
              'Пожалуйста, скачайте и ознакомьтесь с договором. Отправьте подписанный договор арендодателю через WhatsApp или email.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Примечание: '),
            note(
              'Арендодатель одобряет заявку, когда арендатор оплачивает страховой депозит, коммунальные услуги и арендную плату за первый месяц.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Договор аренды (PDF) '),
            complete('Полный договор'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Примечание: '),
            note(
              'Арендодатель одобряет заявку, когда арендатор оплачивает страховой депозит, коммунальные услуги и арендную плату за первый месяц.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'WhatsApp';
      case 'common.applicationList':
        return 'Список заявок';
      case 'common.viewDetails':
        return 'Просмотреть детали';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Главная';
      case 'common.dashboard':
        return 'Панель управления';
      case 'common.tenants':
        return 'Арендаторы';
      case 'common.maintenance':
        return 'Обслуживание';
      case 'common.maintenanceList':
        return 'Список заявок на обслуживание';
      case 'common.maintenanceReport':
        return 'Отчет об обслуживании';
      case 'common.labor':
        return 'Рабочая сила';
      case 'common.applications':
        return 'Заявки';
      case 'common.rentInvitation':
        return 'Приглашение к аренде';
      case 'common.payment':
        return 'Платеж';
      case 'common.rentPayment':
        return 'Оплата аренды';
      case 'common.depositUtilityPayment':
        return 'Оплата депозита и коммунальных услуг';
      case 'common.refundRequest':
        return 'Запрос на возврат';
      case 'common.withdrawRequest':
        return 'Запрос на вывод средств';
      case 'common.myProperty':
        return 'Моя недвижимость';
      case 'common.myRent':
        return 'Моя аренда';
      case 'common.wishlist':
        return 'Избранное';
      case 'common.properties':
        return 'Недвижимость';
      case 'common.allProperties':
        return 'Вся недвижимость';
      case 'common.totalPropery':
        return 'Общее количество недвижимости';
      case 'common.occupied':
        return 'Занято';
      case 'common.vacant':
        return 'Свободно';
      case 'common.accounting':
        return 'Бухгалтерский учет';
      case 'common.totalIncome':
        return 'Общий доход';
      case 'common.totalExpense':
        return 'Общий расход';
      case 'common.currentBalance':
        return 'Текущий баланс';
      case 'common.totalWithdrawal':
        return 'Всего (вывод)';
      case 'common.totalProperties':
        return 'Всего объектов';
      case 'common.totalTenant':
        return 'Всего арендаторов';
      case 'common.totalRentPaid':
        return 'Всего выплачено арендной платы';
      case 'common.totalRentDue':
        return 'Всего причитается арендной платы';
      case 'common.totalApplication':
        return 'Всего заявок';
      case 'common.pendingApplication':
        return 'Ожидающие заявки';
      case 'common.processingApplication':
        return 'Обрабатываемые заявки';
      case 'common.approveApplication':
        return 'Одобренные заявки';
      case 'common.rejectApplication':
        return 'Отклоненные заявки';
      case 'common.maintenanceCost':
        return 'Стоимость обслуживания';
      case 'common.transactionSummary':
        return 'Сводка по транзакциям';
      case 'common.maintenanceRequest':
        return 'Запрос на обслуживание';
      case 'common.notifications':
        return 'Уведомления';
      case 'common.myProperties':
        return 'Мои объекты';
      case 'common.recommendationProperties':
        return 'Рекомендованные объекты';
      case 'common.laborList':
        return 'Список рабочих';
      case 'common.addLabor':
        return 'Добавить рабочего';
      case 'common.laborDetails':
        return 'Сведения о рабочем';
      case 'common.laborSalary':
        return 'Зарплата рабочего';
      case 'common.editLabor':
        return 'Редактировать рабочего';
      case 'common.addNewLabor':
        return 'Добавить нового рабочего';
      case 'common.enterAmount':
        return 'Введите сумму';
      case 'common.maintenanceDetails':
        return 'Сведения об обслуживании';
      case 'common.laborName':
        return 'Имя рабочего';
      case 'common.comment':
        return 'Комментарий';
      case 'common.image':
        return 'Изображение';
      case 'common.complete':
        return 'Завершить';
      case 'common.details':
        return 'Подробности';
      case 'common.title':
        return 'Название';
      case 'common.date':
        return 'Дата';
      case 'common.reason':
        return 'Причина';
      case 'common.edit':
        return 'Редактировать';
      case 'common.property':
        return 'Объект';
      case 'common.completeYourProfile':
        return 'Заполните свой профиль';
      case 'common.profileImage':
        return 'Изображение профиля';
      case 'common.imagePickHint':
        return 'Только изображения JPEG и PNG максимальным размером 120x120 пикселей.';
      case 'common.invoiceId':
        return 'ID счета';
      case 'common.depositAmount':
        return 'Сумма депозита';
      case 'common.landlordPhone':
        return 'Телефон арендодателя';
      case 'common.rentalAdvance':
        return 'Аренда (аванс)';
      case 'common.totalAmount':
        return 'Общая сумма';
      case 'common.rentalAmount':
        return 'Сумма аренды';
      case 'common.adminCharge':
        return 'Административная плата';
      case 'common.editAccount':
        return 'Редактировать аккаунт';
      case 'common.addNewAccount':
        return 'Добавить новый аккаунт';
      case 'common.transactionId':
        return 'ID транзакции';
      case 'common.transactionType':
        return 'Тип транзакции';
      case 'common.requestDate':
        return 'Дата запроса';
      case 'common.amount':
        return 'Сумма';
      case 'common.fee':
        return 'Комиссия';
      case 'common.paymentStatus':
        return 'Статус платежа';
      case 'common.generatedTime':
        return 'Время создания';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Это автоматически сгенерированный отчет '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'История вывода средств';
      case 'common.history':
        return 'История';
      case 'common.withdrawAmount':
        return 'Сумма вывода';
      case 'common.availableBalance':
        return 'Доступный баланс';
      case 'common.withdrawCharge':
        return 'Комиссия за вывод';
      case 'common.paymentMethod':
        return 'Способ оплаты';
      case 'common.requestSendSuccess':
        return 'Запрос отправлен успешно!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Квитанция об оплате успешно отправлена.';
      case 'common.refundReason':
        return 'Причина возврата';
      case 'common.note':
        return 'Примечание';
      case 'common.refundReceiveSuccess':
        return 'Возврат успешно получен.';
      case 'common.downloadPaymentReceipt':
        return 'Скачать квитанцию об оплате';
      case 'common.invoice':
        return 'Счет';
      case 'common.selectPropertyToSeeInvoice':
        return 'Выберите объект, чтобы увидеть номер счета...';
      case 'common.bankAccName':
        return 'Название банковского счета';
      case 'common.bankName':
        return 'Название банка';
      case 'common.bankAccNum':
        return 'Номер банковского счета';
      case 'common.thankYou':
        return 'Спасибо!';
      case 'common.basicInfo':
        return 'Основная информация';
      case 'common.descriptionPricing':
        return 'Описание и цены';
      case 'common.contact':
        return 'Контакт';
      case 'common.photos':
        return 'Фотографии';
      case 'common.successfullySubmitted':
        return 'Успешно отправлено!';
      case 'common.editProperty':
        return 'Редактировать объект';
      case 'common.addNewProperty':
        return 'Добавить новый объект';
      case 'common.propertyManageRequestSuccess':
        return 'Ваше объявление отправлено на рассмотрение.';
      case 'common.postAnotherProperty':
        return 'Разместить еще один объект';
      case 'common.browseYourProperty':
        return 'Просмотреть свои объекты';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Шаг '),
                step,
                const TextSpan(text: ' из '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Что бы вы хотели разместить?';
      case 'common.category':
        return 'Категория';
      case 'common.invalidCategory':
        return 'Неверная категория';
      case 'common.unitNumber':
        return 'Номер квартиры';
      case 'common.sqft':
        return 'кв. футов';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Размер объекта должен быть больше нуля';
      case 'common.whatAreTheFacility':
        return 'Какие удобства?';
      case 'common.whatAreTheAmenity':
        return 'Какие удобства?';
      case 'common.parkingLot':
        return 'Парковка';
      case 'common.houseType':
        return 'Тип дома';
      case 'common.value':
        return 'Значение';
      case 'common.unitLotSize':
        return 'Размер участка / участка';
      case 'common.landSize':
        return 'Размер земли';
      case 'common.acres':
        return 'акр(ов)';
      case 'common.roomSize':
        return 'Размер комнаты';
      case 'common.askTenantPreference':
        return 'Какие у вас предпочтения по арендаторам';
      case 'common.couple':
        return 'Пара';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Опишите ${propertyType}';
      case 'common.adTitle':
        return 'Название объявления';
      case 'common.minimumRentalPeriod':
        return 'Минимальный срок аренды';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Номер';
      case 'common.hideOrDisplayEmail':
        return 'Скрыть или отобразить адрес электронной почты';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Спасибо за размещение на ${appName}!';
      case 'common.propertyList':
        return 'Список объектов';
      case 'common.newInviteRent':
        return 'Новое приглашение на аренду';
      case 'common.rentAgreement':
        return 'Договор аренды';
      case 'common.rentDetails':
        return 'Детали аренды';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Примечание: '),
            note('Пожалуйста, подождите, пока арендатор примет приглашение.'),
          ],
        );
      case 'common.rent':
        return 'Аренда';
      case 'common.editTenant':
        return 'Редактировать арендатора';
      case 'common.addNewTenant':
        return 'Добавить нового арендатора';
      case 'common.shareInstallLink':
        return 'Поделиться ссылкой на установку';
      case 'common.tenantList':
        return 'Список арендаторов';
      case 'common.editMaintenanceRequest':
        return 'Редактировать запрос на обслуживание';
      case 'common.addNewMaintenance':
        return 'Добавить новое обслуживание';
      case 'common.landlordId':
        return 'ID арендодателя';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Примечание '),
            note(
              'Ваш договор находится на рассмотрении. Пожалуйста, подождите, пока арендодатель одобрит вашу аренду.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Редактировать отзыв';
      case 'common.writeAReview':
        return 'Написать отзыв';
      case 'common.selectRating':
        return 'Выберите рейтинг';
      case 'common.enterYourOpinion':
        return 'Введите свое мнение';
      case 'common.askToEnterReviewMsg':
        return 'Пожалуйста, введите сообщение отзыва';
      case 'common.pressBackAgainToExit':
        return 'Нажмите назад еще раз, чтобы выйти.';
      case 'common.selectPaymentMethod':
        return 'Выберите способ оплаты';
      case 'common.filter':
        return 'Фильтр';
      case 'common.perMonth':
        return '/1 месяц';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Поиск чего угодно в ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Что-то пошло не так, попробуйте снова';
      case 'exceptions.noNidPassport':
        return 'Изображение NID/Паспорта не предоставлено.';
      case 'exceptions.noRentPropertyFound':
        return 'Не найдено арендной недвижимости для этого арендатора.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Недвижимость не найдена!\nПожалуйста, попробуйте с другими ключевыми словами';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'План подписки не найден!\nПожалуйста, обновите страницу и попробуйте снова.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Недействительная информация о ${dataType}! Пожалуйста, обновите страницу и попробуйте снова.';
      case 'exceptions.invalidDownloadUrl':
        return 'Недействительный URL загрузки!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) =>
            'Не удалось сохранить файл! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => 'Ошибка открытия файла! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Информация о транспортном средстве не предоставлена.';
      case 'exceptions.yourApplicationRejected':
        return 'Ваша заявка была отклонена';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Заявка не найдена!\n${subject} будет отображаться здесь, когда будет доступно.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Ваша заявка';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Заявка арендатора';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Недвижимость не найдена!\nПожалуйста, попробуйте добавить недвижимость, чтобы увидеть ее здесь.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Рекомендованные объекты не найдены\nПожалуйста, попробуйте позже.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Недвижимость недоступна\nПожалуйста, попробуйте позже.';
      case 'exceptions.noImageProvided':
        return 'Изображение не предоставлено';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Не найдено ${status} обслуживания.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Обслуживание не найдено! Вы можете создать запрос на обслуживание, чтобы увидеть его здесь.';
      case 'exceptions.noDepositFound':
        return 'Залог не найден!\nПожалуйста, вы сможете увидеть залоги, когда они будут доступны';
      case 'exceptions.noRentPaymentFound':
        return 'Платеж за аренду не найден!\nПожалуйста, вы сможете увидеть платежи за аренду, когда они будут доступны';
      case 'exceptions.transactionSummaryApiException':
        return 'Не удалось получить сводку по транзакциям.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Запрос не найден!\nПожалуйста, попробуйте создать запрос на вывод, чтобы увидеть его здесь.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Этот запрос на вывод не был одобрен!.';
      case 'exceptions.nonZeroError':
        return 'Пожалуйста, введите действительную сумму больше нуля.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Сумма должна быть не менее ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Сумма не должна превышать ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Пожалуйста, сначала выберите способ оплаты.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Не найдено ${status} запроса на возврат!\nВы можете увидеть запрос на возврат здесь, когда он будет доступен.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Запрос на возврат не найден!\nВы можете создать запрос на возврат, чтобы увидеть его здесь.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Арендатор одобрит возврат, когда получит деньги обратно';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Мы рассмотрим запрос на возврат и одобрим его в течение 24 часов.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) =>
            'Пожалуйста, выберите количество ${value}';
      case 'exceptions.invalidDateRange':
        return 'Неверный диапазон дат.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) => '${value} должно быть больше нуля.';
      case 'exceptions.editProperty.rentalChange':
        return 'Арендная плата меняется. Она должна быть действительной (эффективной) только для арендного платежа за следующий месяц.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Ваша недвижимость уже сдана в аренду арендатору. Невозможно удалить ее, пока не удалите арендатора.';
      case 'exceptions.editProperty.alreayRented':
        return 'Эта недвижимость уже сдана в аренду. Пожалуйста, попробуйте позже.\nИли вы можете связаться с арендодателем для получения дополнительной информации.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Приглашение на аренду не найдено!\nПожалуйста, попробуйте создать приглашение на аренду, чтобы увидеть его здесь.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Приглашение на аренду не найдено!\nВы можете увидеть приглашение на аренду здесь, когда оно будет доступно.';
      case 'exceptions.notenantFoundList':
        return 'Нет арендаторов!\nПожалуйста, попробуйте добавить арендатора, чтобы увидеть его здесь.';
      case 'exceptions.noFeaturesProvided':
        return 'Функции не предоставлены.';
      case 'exceptions.noNotificationFound':
        return 'Уведомлений нет.\nВы можете увидеть свои уведомления здесь, когда они будут доступны.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Вы уверены, что хотите выйти?';
      case 'prompt.application.rejectTitle':
        return 'Почему вы отклоняете эту заявку?';
      case 'prompt.application.applicationSent.successfully':
        return 'Заявка успешно отправлена!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Вы можете увидеть эту заявку в списке своих заявок';
      case 'prompt.labor.delete.title':
        return 'Удалить рабочего?';
      case 'prompt.labor.delete.description':
        return 'Вы уверены, что хотите удалить этого рабочего?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Почему этот запрос отклоняется?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Вы уверены, что обрабатываете этот запрос на обслуживание?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Работа завершена?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Удалить способ вывода?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Вы уверены, что хотите удалить этот способ вывода?';
      case 'prompt.unsavedChanges.title':
        return 'Вы уверены, что хотите вернуться?';
      case 'prompt.unsavedChanges.message':
        return 'Измененные поля не будут сохранены!';
      case 'prompt.property.delete.title':
        return 'Удалить объект?';
      case 'prompt.property.delete.message':
        return 'Вы уверены, что хотите удалить этот объект?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Вы уверены, что хотите одобрить эту аренду?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Убедитесь, что вы ознакомились с договором, подписанным арендатором.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Вы уверены, что хотите принять это приглашение?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Убедитесь, что вы загрузили PDF-файл договора!';
      case 'prompt.sessionExpired.title':
        return 'Сессия истекла';
      case 'prompt.sessionExpired.message':
        return 'Срок действия вашей сессии истек. Пожалуйста, войдите снова';
      case 'prompt.sessionExpired.action':
        return 'Войти';
      case 'prompt.noInternet.title':
        return 'Нет подключения к Интернету';
      case 'prompt.noInternet.message':
        return 'Пожалуйста, проверьте подключение к сети Wi-Fi или мобильной сети и попробуйте снова';
      case 'prompt.noInternet.action':
        return 'Попробовать снова';
      case 'prompt.permissionHandler.title':
        return 'Требуется разрешение!';
      case 'prompt.permissionHandler.message':
        return 'Вам необходимо предоставить разрешения в настройках приложения. Хотите открыть настройки сейчас?';
      case 'prompt.imagePicker.title':
        return 'Выберите вариант';
      case 'prompt.imagePicker.gallery':
        return 'Галерея';
      case 'prompt.imagePicker.camera':
        return 'Камера';
      case 'prompt.verificationDialog.title':
        return 'Подтвердите свой адрес электронной почты';
      case 'prompt.verificationDialog.message':
        return 'Мы отправили код подтверждения на адрес электронной почты';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} на ${email}';
      case 'prompt.notification.clearTitle':
        return 'Очистить уведомления?';
      case 'prompt.notification.clearMessage':
        return 'Вы уверены, что хотите очистить все уведомления?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Введите ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Пожалуйста, введите ваше ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Введите ваш ${_root.common.email}';
      case 'form.email.errors.required':
        return 'Пожалуйста, введите ваш адрес ${_root.common.email}';
      case 'form.email.errors.invalid':
        return '⦸ Неверный Email, Пожалуйста, попробуйте снова';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Пожалуйста, введите ваш ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Пароль должен содержать не менее ${count} символов!';
      case 'form.confirmPassword.label':
        return 'Подтвердите ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Пожалуйста, введите ваш ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return 'Подтверждение пароля не совпадает!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Пожалуйста, введите ваш ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Номер дома и название улицы';
      case 'form.address1.errors.required':
        return 'Пожалуйста, введите ваш ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Квартира, люкс, блок и т.д.';
      case 'form.address2.errors.required':
        return 'Пожалуйста, введите ваш ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Введите ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Пожалуйста, введите ваш ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Введите название ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Пожалуйста, введите название вашего ${_root.common.city}.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Введите название ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Пожалуйста, введите название вашего ${_root.common.state}.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Выберите ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Пожалуйста, выберите вашу ${_root.common.country}';
      case 'form.otp.errors.required':
        return 'Пожалуйста, введите OTP.';
      case 'form.otp.errors.invalid':
        return 'Пожалуйста, введите корректный OTP.';
      case 'form.title.label':
        return 'Название';
      case 'form.title.hint':
        return 'Введите название';
      case 'form.title.errors.required':
        return 'Пожалуйста, введите название';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Выберите ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Пожалуйста, выберите ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Причина';
      case 'form.reason.hint':
        return 'Введите причину';
      case 'form.reason.errors.required':
        return 'Пожалуйста, введите причину';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Выберите ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Пожалуйста, выберите ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Загрузите ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Пожалуйста, выберите ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Введите ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Пожалуйста, введите ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Выберите ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Пожалуйста, выберите ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Введите ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Пожалуйста, введите ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Пожалуйста, введите корректное @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Выберите ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Пожалуйста, выберите ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Пожалуйста, выберите корректное @form.anyDropdown.label';
      case 'action.next':
        return 'Далее';
      case 'action.getStarted':
        return 'Начать';
      case 'action.skip':
        return 'Пропустить';
      case 'action.select':
        return 'Выбрать';
      case 'action.save':
        return 'Сохранить';
      case 'action.signIn':
        return 'Войти';
      case 'action.signUp':
        return 'Зарегистрироваться';
      case 'action.kContinue':
        return 'Продолжить';
      case 'action.clearAll':
        return 'Очистить все';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Отправить';
      case 'action.pay':
        return 'Оплатить';
      case 'action.remove':
        return 'Удалить';
      case 'action.goBack':
        return 'Вернуться';
      case 'action.buyNow':
        return 'Купить сейчас';
      case 'action.no':
        return 'Нет';
      case 'action.open':
        return 'Открыть';
      case 'action.addProperty':
        return 'Добавить объект';
      case 'action.process':
        return 'Обработать';
      case 'action.approve':
        return 'Одобрить';
      case 'action.reject':
        return 'Отклонить';
      case 'action.viewRent':
        return 'Посмотреть аренду';
      case 'action.openNavigationMenu':
        return 'Открыть меню навигации';
      case 'action.seeAll':
        return 'Посмотреть все';
      case 'action.update':
        return 'Обновить';
      case 'action.printTransaction':
        return 'Распечатать транзакцию';
      case 'action.payoutRequest':
        return 'Запрос на выплату';
      case 'action.addNew':
        return '+ Добавить новый';
      case 'action.sendRequest':
        return 'Отправить запрос';
      case 'action.print':
        return 'Распечатать';
      case 'action.requestForRefund':
        return 'Запрос на возврат';
      case 'action.previous':
        return 'Предыдущий';
      case 'action.delete':
        return 'Удалить';
      case 'action.applyProperty':
        return 'Подать заявку на объект';
      case 'action.viewApplication':
        return 'Посмотреть заявку';
      case 'action.inviteTenant':
        return 'Пригласить арендатора';
      case 'action.inviteRent':
        return 'Пригласить на аренду';
      case 'action.cancel':
        return 'Отменить';
      case 'action.accept':
        return 'Принять';
      case 'action.submit':
        return 'Отправить';
      case 'action.yes':
        return 'Да';
      case 'action.okay':
        return 'Окей';
      case 'action.confirm':
        return 'Подтвердить';
      case 'action.apply':
        return 'Применить';
      case 'action.reset':
        return 'Сбросить';
      case 'action.retry':
        return 'Повторить';
      case 'action.viewAll':
        return 'Посмотреть все';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Найдите свою недвижимость';
      case 'pages.onboard.onboardData.data1.description':
        return 'Мы сделали поиск места, которое подходит вашей жизни, легким — будь то комната, квартира или дом.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Квартира в городе';
      case 'pages.onboard.onboardData.data2.description':
        return 'Мы экономим ваше время, быстро подбирая для вас идеальную недвижимость, пока она не исчезла, чтобы вы могли наслаждаться своим новым домом, или разместите свою собственную бесплатно.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Ваш комфортный дом';
      case 'pages.onboard.onboardData.data3.description':
        return 'Если вы ищете место для жизни, взгляните на наши дома в аренду. У нас есть широкий выбор домов для вас на выбор по всей стране.';
      case 'pages.signIn.title':
        return 'С возвращением';
      case 'pages.signIn.subtitle':
        return 'Войдите сейчас, чтобы начать удивительное путешествие.';
      case 'pages.signIn.extra.rememberMe':
        return 'Запомнить меня';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Нет учетной записи? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Забыли пароль';
      case 'pages.forgotPassword.subtitle':
        return 'Введите свой адрес электронной почты, чтобы восстановить свой пароль.';
      case 'pages.otpVerification.title':
        return 'Верификация';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4-значный пин-код был отправлен на ваш адрес электронной почты. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Код будет отправлен через ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Отправить код повторно'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Сброс пароля';
      case 'pages.resetPassword.subtitle':
        return 'Сбросьте свой пароль для восстановления и войдите в свою учетную запись';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Изменено успешно!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Войдите со своим новым паролем.\nПеренаправляем вас на страницу входа...';
      case 'pages.signUp.title':
        return 'Создать учетную запись';
      case 'pages.signUp.subtitle':
        return 'Зарегистрируйтесь сейчас, чтобы начать удивительное путешествие';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Есть учетная запись? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Кто вы?';
      case 'pages.welcome.subtitle':
        return 'Пожалуйста, выберите опцию ниже.';
      case 'pages.welcome.extra.landlordTag':
        return 'Управляйте своей собственной недвижимостью';
      case 'pages.welcome.extra.tenantTag':
        return 'Войдите в свою учетную запись арендатора';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Уведомления';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Сообщение...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Почему вы ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Напишите причину';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Пожалуйста, укажите причину отмены аренды';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Оффлайн-платеж';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Примечание к платежу (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Введите текст...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Сумма оплаты: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Имя владельца счета';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Номер счета';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Код Swift';
      case 'pages.offlinePayment.extra.branch':
        return 'Отделение';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Выберите файлы формата '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' или '),
            fileType('DOC'),
            const TextSpan(text: '. Размер файла '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Посмотреть счет';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Мы рассмотрим платеж и одобрим его в течение 24 часов.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Попробовать снова';
      case 'pages.paymentStatus.fail.title':
        return 'Ой! Платеж не удался';
      case 'pages.paymentStatus.fail.description':
        return 'Ваша транзакция не удалась из-за некоторой технической ошибки.';
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
            const TextSpan(text: 'Особенности '),
            fa('(Удобства и услуги)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Выберите период аренды';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Написать отзыв';
      case 'pages.search.appbarTitle':
        return 'Поиск';
      case 'pages.search.extra.hint':
        return 'Поиск участков, квартир, комнат...';
      case 'pages.search.extra.noRecentSearch':
        return 'У вас нет недавних поисков.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Выберите свой план';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Платеж за подписку успешно выполнен.\nТеперь вы можете получить доступ к функциям подписки.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Общая стоимость обслуживания: '),
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
        return 'Вся недвижимость';
      case 'enums.propertyStatus.pending':
        return 'В ожидании';
      case 'enums.propertyStatus.active':
        return 'Активный';
      case 'enums.propertyStatus.inactive':
        return 'Неактивный';
      case 'enums.propertyStatus.rejected':
        return 'Отклонено';
      case 'enums.propertyType.apartmentCondominium':
        return 'Квартира/Кондоминиум';
      case 'enums.propertyType.house':
        return 'Дом';
      case 'enums.propertyType.commercialProperty':
        return 'Коммерческая недвижимость';
      case 'enums.propertyType.land':
        return 'Земля';
      case 'enums.propertyType.room':
        return 'Комната';
      case 'enums.applicationStatus.all':
        return 'Все';
      case 'enums.applicationStatus.pending':
        return 'В ожидании';
      case 'enums.applicationStatus.processing':
        return 'В обработке';
      case 'enums.applicationStatus.approved':
        return 'Одобрено';
      case 'enums.applicationStatus.rejected':
        return 'Отклонено';
      case 'enums.myRentStatus.pending':
        return 'В ожидании';
      case 'enums.myRentStatus.processing':
        return 'В обработке';
      case 'enums.myRentStatus.active':
        return 'Активный';
      case 'enums.myRentStatus.expired':
        return 'Истек';
      case 'enums.myRentStatus.cancelled':
        return 'Отменено';
      case 'enums.maintenanceStatus.pending':
        return 'В ожидании';
      case 'enums.maintenanceStatus.processing':
        return 'В обработке';
      case 'enums.maintenanceStatus.rejected':
        return 'Отклонено';
      case 'enums.maintenanceStatus.completed':
        return 'Завершено';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Частное лицо (индивидуальный)';
      case 'enums.tenantProfileType.company':
        return 'Компания';
      case 'enums.tenantType.newTenant':
        return 'Новый арендатор';
      case 'enums.tenantType.activeTenant':
        return 'Активный арендатор';
      case 'enums.tenantType.expiredTenant':
        return 'Истекший арендатор';
      case 'enums.paymentStatus.all':
        return 'Все';
      case 'enums.paymentStatus.pending':
        return 'В ожидании';
      case 'enums.paymentStatus.paid':
        return 'Оплачено';
      case 'enums.paymentStatus.unpaid':
        return 'Не оплачено';
      case 'enums.paymentStatus.rejected':
        return 'Отклонено';
      case 'enums.paymentStatus.refund':
        return 'Возврат';
      case 'enums.paymentOptions.onlinePayment':
        return 'Онлайн-платеж';
      case 'enums.paymentOptions.offlinePayment':
        return 'Оффлайн-платеж';
      case 'enums.paymentType.securityDeposit':
        return 'Залог';
      case 'enums.paymentType.rentPayment':
        return 'Платеж за аренду';
      case 'enums.paymentType.subscription':
        return 'Подписка';
      case 'enums.gender.male':
        return 'Мужской';
      case 'enums.gender.female':
        return 'Женский';
      case 'enums.gender.other':
        return 'Другой';
      case 'enums.ecRelation.wife':
        return 'Жена';
      case 'enums.ecRelation.parent':
        return 'Родитель';
      case 'enums.ecRelation.friend':
        return 'Друг';
      case 'enums.ecRelation.brother':
        return 'Брат';
      case 'enums.ecRelation.sister':
        return 'Сестра';
      case 'enums.ecRelation.child':
        return 'Ребенок';
      case 'enums.vehicleType.car':
        return 'Автомобиль';
      case 'enums.vehicleType.motorcycles':
        return 'Мотоциклы';
      case 'enums.vehicleType.lorry':
        return 'Грузовик';
      case 'enums.sortBy.lowToHigh':
        return 'От низкого к высокому';
      case 'enums.sortBy.highToLow':
        return 'От высокого к низкому';
      case 'enums.residentialType.flat':
        return 'Квартира';
      case 'enums.residentialType.apartment':
        return 'Апартаменты';
      case 'enums.residentialType.condominium':
        return 'Кондоминиум';
      case 'enums.residentialType.serviceResidence':
        return 'Резиденция с обслуживанием';
      case 'enums.residentialType.studio':
        return 'Студия';
      case 'enums.residentialType.duplex':
        return 'Дуплекс';
      case 'enums.residentialType.townhouseCondo':
        return 'Таунхаус/Кондо';
      case 'enums.residentialType.others':
        return 'Другое';
      case 'enums.floorRange.high':
        return 'Высокий';
      case 'enums.floorRange.medium':
        return 'Средний';
      case 'enums.floorRange.low':
        return 'Низкий';
      case 'enums.furnishings.fullyFurnished':
        return 'Полностью меблировано';
      case 'enums.furnishings.partiallyFurnished':
        return 'Частично меблировано';
      case 'enums.furnishings.notFurnished':
        return 'Не меблировано';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Офисное помещение';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Торговое помещение';
      case 'enums.commercialPropertyType.shopLot':
        return 'Торговый участок';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Склад / Фабрика';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Отель / Курорт';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Другое';
      case 'enums.landPropertyType.residential':
        return 'Жилая';
      case 'enums.landPropertyType.industrial':
        return 'Промышленная';
      case 'enums.landPropertyType.agricultural':
        return 'Сельскохозяйственная';
      case 'enums.landPropertyType.commercial':
        return 'Коммерческая';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Смешанная застройка';
      case 'enums.landPropertyType.others':
        return 'Другое';
      case 'enums.residentPropertyType.condo':
        return 'Кондо / Резиденция с обслуживанием / Пентхаус';
      case 'enums.residentPropertyType.apartment':
        return 'Квартира / Плоская';
      case 'enums.residentPropertyType.house':
        return 'Дома';
      case 'enums.residentPropertyType.shoplot':
        return 'Торговый участок';
      case 'enums.residentPropertyType.sharing':
        return 'Совместное проживание в доме / квартире';
      case 'enums.residentPropertyType.others':
        return 'Другое';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 месяцев';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 год';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 года';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 года';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 года';
      case 'enums.dropdownDateFilter.daily':
        return 'Ежедневно';
      case 'enums.dropdownDateFilter.weekly':
        return 'Еженедельно';
      case 'enums.dropdownDateFilter.monthly':
        return 'Ежемесячно';
      case 'enums.dropdownDateFilter.yearly':
        return 'Ежегодно';
      case 'enums.dropdownDateFilter.custom':
        return 'Пользовательский';
      default:
        return null;
    }
  }
}
