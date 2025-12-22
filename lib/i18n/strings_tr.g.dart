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
class TranslationsTr implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsTr({
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
             locale: AppLocale.tr,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <tr>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsTr _root = this; // ignore: unused_field

  @override
  TranslationsTr $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsTr(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonTr common = _TranslationsCommonTr._(_root);
  @override
  late final _TranslationsExceptionsTr exceptions = _TranslationsExceptionsTr._(
    _root,
  );
  @override
  late final _TranslationsPromptTr prompt = _TranslationsPromptTr._(_root);
  @override
  late final _TranslationsFormTr form = _TranslationsFormTr._(_root);
  @override
  late final _TranslationsActionTr action = _TranslationsActionTr._(_root);
  @override
  late final _TranslationsPagesTr pages = _TranslationsPagesTr._(_root);
  @override
  late final _TranslationsEnumsTr enums = _TranslationsEnumsTr._(_root);
}

// Path: common
class _TranslationsCommonTr implements TranslationsCommonEn {
  _TranslationsCommonTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Dil';
  @override
  String get subscriptionPlan => 'Abonelik Planı';
  @override
  String get contactUs => 'Bize Ulaşın';
  @override
  String get termsAndConditions => 'Şartlar ve Koşullar';
  @override
  String get aboutUs => 'Hakkımızda';
  @override
  String get logout => 'Çıkış Yap';
  @override
  String get editProfile => 'Profili Düzenle';
  @override
  String get fullName => 'Tam Ad';
  @override
  String get email => 'E-posta';
  @override
  String get mobileNumber => 'Mobil Numara';
  @override
  String get address => 'Adres';
  @override
  String get postalCode => 'Posta Kodu';
  @override
  String get city => 'Şehir';
  @override
  String get country => 'Ülke';
  @override
  String get state => 'Eyalet';
  @override
  String get password => 'Parola';
  @override
  String get forgotPassword => 'Şifremi Unuttum';
  @override
  String get tenant => 'Kiracı';
  @override
  String get landlord => 'Ev Sahibi';
  @override
  String get cancelRenting => 'Kiralamayı İptal Et';
  @override
  String get startDate => 'Başlangıç Tarihi';
  @override
  String get endDate => 'Bitiş Tarihi';
  @override
  String get fromDate => 'Başlangıç Tarihi';
  @override
  String get toDate => 'Bitiş Tarihi';
  @override
  String get online => 'Çevrimiçi';
  @override
  String get bankList => 'Banka Listesi';
  @override
  String get withdrawMethod => 'Çekim Yöntemi';
  @override
  String get uploadPaymentReceipt => 'Ödeme Makbuzu Yükle';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Not: '),
      note('Ödeme, admin tarafından manuel onay gerektirir'),
      const TextSpan(text: ' '),
      duraion('24~48 saat içinde.'),
    ],
  );
  @override
  String get reviews => 'Yorumlar';
  @override
  String get description => 'Açıklama';
  @override
  String get about => 'Hakkında';
  @override
  String get propertyTypes => 'Mülk Türleri';
  @override
  String get features => 'Özellikler';
  @override
  String get floorPlans => 'Kat Planları';
  @override
  String get buildingDetails => 'Bina Detayları';
  @override
  String get buildingName => 'Bina Adı';
  @override
  String get propertyAddress => 'Mülk Adresi';
  @override
  String get completionYear => 'Tamamlama Yılı';
  @override
  String get lotNumber => 'Parsel Numarası';
  @override
  String get residentialType => 'Konut Türü';
  @override
  String get furnishings => 'Eşya Durumu';
  @override
  String get floorRange => 'Kat Aralığı';
  @override
  String get bedrooms => 'Yatak Odası';
  @override
  String get bathrooms => 'Banyolar';
  @override
  String get propertySize => 'Mülk Büyüklüğü';
  @override
  String get rentalPeriod => 'Kiralama Süresi';
  @override
  String get securityDeposit => 'Güvenlik Depozitosu';
  @override
  String get utilityBill => 'Fatura';
  @override
  String get facilities => 'İmkanlar';
  @override
  String get amenities => 'Olanaklar';
  @override
  String get expiringReason => 'Sona Erme Nedeni';
  @override
  String get tenantDetails => 'Kiracı Detayları';
  @override
  String get typeOfTenant => 'Kiracı Türü';
  @override
  String get tenantName => 'Kiracı Adı';
  @override
  String get nidPassport => 'NID/Pasaport';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'Kiracı ID';
  @override
  String get dateOfBirth => 'Doğum Tarihi';
  @override
  String get gender => 'Cinsiyet';
  @override
  String get nominee => 'Aday';
  @override
  String get name => 'Ad';
  @override
  String get optional => 'Opsiyonel';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.nominee}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileTr nomineeMobile =
      _TranslationsCommonNomineeMobileTr._(_root);
  @override
  String get emergencyContact => 'Acil Durum İrtibatı';
  @override
  String get relation => 'İlişki';
  @override
  String get relationWith => '${_root.common.relation} With';
  @override
  String get relationWithYou => '${_root.common.relationWith} You';
  @override
  String get company => 'Şirket';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'İşyeri';
  @override
  String get officePhoneNo => 'Ofis Telefon Numarası';
  @override
  String get officeMobileNo => 'Ofis ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Araç';
  @override
  late final _TranslationsCommonVehiclesInfoTr vehiclesInfo =
      _TranslationsCommonVehiclesInfoTr._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoTr vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoTr._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Brand';
  @override
  String get rentProperty => 'Emlak Kirala';
  @override
  String get propertyDetails => 'Emlak Detayları';
  @override
  String get propertyId => 'Emlak Kimliği';
  @override
  String get propertyType => 'Emlak Türü';
  @override
  String get propertyName => 'Emlak Adı';
  @override
  String get paymentDetails => 'Ödeme Detayları';
  @override
  String get monthlyRent => 'Aylık Kira';
  @override
  String get thisMonthPayment => 'Bu Ayki Ödeme';
  @override
  String get totalPaidRent => 'Toplam Ödenen Kira';
  @override
  String get dueRent => 'Ödenmemiş Kira';
  @override
  String get rentStartDate => 'Kira ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Kira ${_root.common.endDate}';
  @override
  String get status => 'Durum';
  @override
  String get rentAgreementPdf => 'Kira Sözleşmesi PDF\'i';
  @override
  String get noFile => 'Dosya Yok';
  @override
  String get tenantImageOp => 'Kiracı Resmi ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Yeni Araç Ekle';
  @override
  String get uploadNidPassport => 'NID/Pasaport Yükle';
  @override
  String get nidPassportUploadNote =>
      'Sadece dosya türü resim kabul edilecektir. Dosya limiti 2,5 MB\'a kadar.';
  @override
  String get search => 'Ara';
  @override
  String get sortBy => 'Sırala';
  @override
  String get subscription => 'Abonelik';
  @override
  String get downloading => 'İndiriliyor...';
  @override
  String get downloadSuccess => 'Dosya başarıyla indirildi!';
  @override
  String get addPropertyBannerTitle =>
      'Mülkünüzü Kiraya Vermek mi İstiyorsunuz?';
  @override
  String get application => 'Başvuru';
  @override
  String get tenantHasPaidDeposit => 'Kiracı depozitoyu ödedi.';
  @override
  String get askProcessingRentApplication =>
      'Kira emlak için bu isteği işlediğinizden emin misiniz?';
  @override
  String get dateAndTime => 'Tarih ve Saat';
  @override
  String get applicationDetails => 'Başvuru Detayları';
  @override
  String get depositStatus => 'Depozito Durumu';
  @override
  String get uploadRentAgreement => 'Kira Sözleşmesi Yükle';
  @override
  String get uploadFilePDF => 'Dosya Yükle (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Lütfen bir sözleşme belgesi dosyası seçin.';
  @override
  String get landlordRentAgreementPDF => 'Ev Sahibi Kira Sözleşmesi PDF\'i';
  @override
  String get tenantRentAgreementPDF => 'Kiracı Kira Sözleşmesi PDF\'i';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Not: '),
      note(
        'Yalnızca kiracı depozito ödemesi yaptıktan sonra başvuruyu onaylayın.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Reddetme Nedeni';
  @override
  String get youveRejectedThisApplication => 'Bu başvuruyu reddettiniz';
  @override
  String get landlordDetails => 'Ev Sahibi Detayları';
  @override
  String get landlordName => 'Ev Sahibi Adı';
  @override
  String get downloadRentAgreement => 'Kira Sözleşmesini İndir';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      toc('Şartlar ve Koşulları'),
      const TextSpan(text: ' Kabul Et'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Not: '),
      note(
        'Lütfen sözleşmeyi indirin ve okuyun. Lütfen imzalı sözleşmeyi WhatsApp veya e-posta yoluyla ev sahibine gönderin.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Not: '),
      note(
        'Kiracı, güvenlik, fatura ve bir aylık peşin kira ödemesini yaptığında ev sahibi başvuruyu onaylar.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Kira Sözleşmesi (PDF) '),
          complete('Sözleşmeyi Tamamla'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Not : '),
      note(
        'Kiracı, güvenlik, fatura ve bir aylık peşin kira ödemesini yaptığında ev sahibi başvuruyu onaylar.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Başvuru Listesi';
  @override
  String get viewDetails => 'Detayları Görüntüle';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Ana Sayfa';
  @override
  String get dashboard => 'Gösterge Paneli';
  @override
  String get tenants => 'Kiracılar';
  @override
  String get maintenance => 'Bakım';
  @override
  String get maintenanceList => 'Bakım Listesi';
  @override
  String get maintenanceReport => 'Bakım Raporu';
  @override
  String get labor => 'İşçilik';
  @override
  String get applications => 'Başvurular';
  @override
  String get rentInvitation => 'Kira Daveti';
  @override
  String get payment => 'Ödeme';
  @override
  String get rentPayment => 'Kira Ödemesi';
  @override
  String get depositUtilityPayment => 'Depozito ve Fatura Ödemesi';
  @override
  String get refundRequest => 'Geri Ödeme İsteği';
  @override
  String get withdrawRequest => 'Para Çekme İsteği';
  @override
  String get myProperty => 'Mülküm';
  @override
  String get myRent => 'Kiram';
  @override
  String get wishlist => 'İstek Listesi';
  @override
  String get properties => 'Emlaklar';
  @override
  String get allProperties => 'Tüm Emlaklar';
  @override
  String get totalPropery => 'Toplam Emlak';
  @override
  String get occupied => 'Dolu';
  @override
  String get vacant => 'Boş';
  @override
  String get accounting => 'Muhasebe';
  @override
  String get totalIncome => 'Toplam Gelir';
  @override
  String get totalExpense => 'Toplam Gider';
  @override
  String get currentBalance => 'Mevcut Bakiye';
  @override
  String get totalWithdrawal => 'Toplam (Çekme)';
  @override
  String get totalProperties => 'Toplam Emlak';
  @override
  String get totalTenant => 'Toplam Kiracı';
  @override
  String get totalRentPaid => 'Toplam Ödenen Kira';
  @override
  String get totalRentDue => 'Toplam Ödenmemiş Kira';
  @override
  String get totalApplication => 'Toplam Başvuru';
  @override
  String get pendingApplication => 'Bekleyen Başvuru';
  @override
  String get processingApplication => 'İşlenen Başvuru';
  @override
  String get approveApplication => 'Başvuruyu Onayla';
  @override
  String get rejectApplication => 'Başvuruyu Reddet';
  @override
  String get maintenanceCost => 'Bakım Maliyeti';
  @override
  String get transactionSummary => 'İşlem Özeti';
  @override
  String get maintenanceRequest => 'Bakım Talebi';
  @override
  String get notifications => 'Bildirimler';
  @override
  String get myProperties => 'Emlaklarım';
  @override
  String get recommendationProperties => 'Öneri Emlaklar';
  @override
  String get laborList => 'İşçi Listesi';
  @override
  String get addLabor => 'İşçi Ekle';
  @override
  String get laborDetails => 'İşçi Detayları';
  @override
  String get laborSalary => 'İşçi Maaşı';
  @override
  String get editLabor => 'İşçiyi Düzenle';
  @override
  String get addNewLabor => 'Yeni İşçi Ekle';
  @override
  String get enterAmount => 'Tutar Girin';
  @override
  String get maintenanceDetails => 'Bakım Detayları';
  @override
  String get laborName => 'İşçi Adı';
  @override
  String get comment => 'Yorum';
  @override
  String get image => 'Resim';
  @override
  String get complete => 'Tamamla';
  @override
  String get details => 'Detaylar';
  @override
  String get title => 'Başlık';
  @override
  String get date => 'Tarih';
  @override
  String get reason => 'Neden';
  @override
  String get edit => 'Düzenle';
  @override
  String get property => 'Emlak';
  @override
  String get completeYourProfile => 'Profilinizi Tamamlayın';
  @override
  String get profileImage => 'Profil Resmi';
  @override
  String get imagePickHint =>
      'Maksimum 120x120 piksel boyutunda yalnızca JPEG ve PNG Resimleri.';
  @override
  String get invoiceId => 'Fatura Numarası';
  @override
  String get depositAmount => 'Depozito Tutarı';
  @override
  String get landlordPhone => 'Ev Sahibi Telefonu';
  @override
  String get rentalAdvance => 'Kira (Peşin)';
  @override
  String get totalAmount => 'Toplam Tutar';
  @override
  String get rentalAmount => 'Kira Tutarı';
  @override
  String get adminCharge => 'Yönetici Ücreti';
  @override
  String get editAccount => 'Hesabı Düzenle';
  @override
  String get addNewAccount => 'Yeni Hesap Ekle';
  @override
  String get transactionId => 'İşlem Kimliği';
  @override
  String get transactionType => 'İşlem Türü';
  @override
  String get requestDate => 'Talep Tarihi';
  @override
  String get amount => 'Tutar';
  @override
  String get fee => 'Ücret';
  @override
  String get paymentStatus => 'Ödeme Durumu';
  @override
  String get generatedTime => 'Oluşturulma Zamanı';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Bu, '),
      appName,
      const TextSpan(
        text:
            ' tarafından oluşturulan sistem tarafından oluşturulan bir rapordur',
      ),
    ],
  );
  @override
  String get withdrawHistory => 'Çekme Geçmişi';
  @override
  String get history => 'Geçmiş';
  @override
  String get withdrawAmount => 'Çekme Tutarı';
  @override
  String get availableBalance => 'Kullanılabilir Bakiye';
  @override
  String get withdrawCharge => 'Çekme Ücreti';
  @override
  String get paymentMethod => 'Ödeme Yöntemi';
  @override
  String get requestSendSuccess => 'İstek başarıyla gönderildi!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Ödeme makbuzu başarıyla gönderildi.';
  @override
  String get refundReason => 'Geri Ödeme Nedeni';
  @override
  String get note => 'Not';
  @override
  String get refundReceiveSuccess => 'Geri ödeme başarıyla alındı.';
  @override
  String get downloadPaymentReceipt => 'Ödeme Makbuzunu İndir';
  @override
  String get invoice => 'Fatura';
  @override
  String get selectPropertyToSeeInvoice =>
      'Fatura numarasını görmek için emlak seçin...';
  @override
  String get bankAccName => 'Banka Hesap Adı';
  @override
  String get bankName => 'Banka Adı';
  @override
  String get bankAccNum => 'Banka Hesap Numarası';
  @override
  String get thankYou => 'Teşekkür Ederiz!';
  @override
  String get basicInfo => 'Temel Bilgiler';
  @override
  String get descriptionPricing => 'Açıklama ve Fiyatlandırma';
  @override
  String get contact => 'İletişim';
  @override
  String get photos => 'Fotoğraflar';
  @override
  String get successfullySubmitted => 'Başarıyla Gönderildi!';
  @override
  String get editProperty => 'Emlak Düzenle';
  @override
  String get addNewProperty => 'Yeni Emlak Ekle';
  @override
  String get propertyManageRequestSuccess =>
      'İlanınız inceleme için gönderildi.';
  @override
  String get postAnotherProperty => 'Başka Bir Emlak Gönder';
  @override
  String get browseYourProperty => 'Emlakınıza Göz Atın';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Adım '),
      step,
      const TextSpan(text: ' / '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Ne Göndermek İstersiniz?';
  @override
  String get category => 'Kategori';
  @override
  String get invalidCategory => 'Geçersiz Kategori';
  @override
  String get unitNumber => 'Birim Numarası';
  @override
  String get sqft => 'm2';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Emlak boyutu sıfırdan büyük olmalıdır';
  @override
  String get whatAreTheFacility => 'Tesisler nelerdir?';
  @override
  String get whatAreTheAmenity => 'Olanaklar nelerdir?';
  @override
  String get parkingLot => 'Otopark';
  @override
  String get houseType => 'Ev türü';
  @override
  String get value => 'Değer';
  @override
  String get unitLotSize => 'Birim / Arsa Boyutu';
  @override
  String get landSize => 'Arsa Boyutu';
  @override
  String get acres => 'dönüm';
  @override
  String get roomSize => 'Oda boyutu';
  @override
  String get askTenantPreference => 'Kiracı tercihiniz nedir?';
  @override
  String get couple => 'Çift';
  @override
  String describeTheProperty({required String propertyType}) =>
      '${propertyType} açıklayın';
  @override
  String get adTitle => 'İlan Başlığı';
  @override
  String get minimumRentalPeriod => 'Minimum Kiralama Süresi';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Numarası';
  @override
  String get hideOrDisplayEmail => 'E-posta adresini gizle veya göster';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      '${appName} üzerinde ilan verdiğiniz için teşekkür ederiz!';
  @override
  String get propertyList => 'Emlak Listesi';
  @override
  String get newInviteRent => 'Yeni Kira Daveti';
  @override
  String get rentAgreement => 'Kira Sözleşmesi';
  @override
  String get rentDetails => 'Kira Detayları';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Not: '),
      note('Lütfen kiracının daveti kabul etmesini bekleyin.'),
    ],
  );
  @override
  String get rent => 'Kira';
  @override
  String get editTenant => 'Kiracıyı Düzenle';
  @override
  String get addNewTenant => 'Yeni Kiracı Ekle';
  @override
  String get shareInstallLink => 'Kurulum bağlantısını paylaş';
  @override
  String get tenantList => 'Kiracı Listesi';
  @override
  String get editMaintenanceRequest => 'Bakım Talebini Düzenle';
  @override
  String get addNewMaintenance => 'Yeni Bakım Ekle';
  @override
  String get landlordId => 'Ev Sahibi Kimliği';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Not '),
      note(
        'Sözleşmeniz inceleniyor. Lütfen ev sahibinin kiranızı onaylamasını bekleyin.',
      ),
    ],
  );
  @override
  String get editReview => 'Yorumu Düzenle';
  @override
  String get writeAReview => 'Yorum Yaz';
  @override
  String get selectRating => 'Puan Seçin';
  @override
  String get enterYourOpinion => 'Fikrinizi Girin';
  @override
  String get askToEnterReviewMsg => 'Lütfen bir yorum mesajı girin';
  @override
  String get pressBackAgainToExit => 'Çıkmak için tekrar geri basın.';
  @override
  String get selectPaymentMethod => 'Ödeme Yöntemi Seçin';
  @override
  String get filter => 'Filtre';
  @override
  String get perMonth => '/1 Ay';
  @override
  String searchHintWithAppName({required String appName}) =>
      '${appName} içinde herhangi bir şey arayın...';
}

// Path: exceptions
class _TranslationsExceptionsTr implements TranslationsExceptionsEn {
  _TranslationsExceptionsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong =>
      'Bir şeyler ters gitti, lütfen tekrar deneyin';
  @override
  String get noNidPassport => 'NID/Pasaport resmi sağlanmadı.';
  @override
  String get noRentPropertyFound => 'Bu kiracı için kiralık emlak bulunamadı.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Emlak bulunamadı!\nLütfen farklı anahtar kelimelerle deneyin';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Abonelik planı bulunamadı!\nLütfen sayfayı yenileyin ve tekrar deneyin.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Geçersiz ${dataType} bilgisi! Lütfen sayfayı yenileyin ve tekrar deneyin.';
  @override
  String get invalidDownloadUrl => 'Geçersiz indirme URL\'si!';
  @override
  String failedToSaveFile({required String error}) =>
      'Dosya kaydedilemedi! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Dosya açılırken hata oluştu! ${error}';
  @override
  String get noVehicleInfoProvided => 'Araç bilgisi sağlanmadı.';
  @override
  String get yourApplicationRejected => 'Başvurunuz reddedildi';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintTr
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintTr._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintTr noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintTr._(_root);
  @override
  String get noImageProvided => 'Resim Sağlanmadı';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundTr
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundTr._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Güvenlik depozitosu bulunamadı!\nLütfen güvenlik depozitolarını mevcut olduğunda görebilirsiniz';
  @override
  String get noRentPaymentFound =>
      'Kira ödemesi bulunamadı!\nLütfen kira ödemelerini mevcut olduğunda görebilirsiniz';
  @override
  String get transactionSummaryApiException => 'İşlem özeti alınamadı.';
  @override
  String get noWithdrawRequestFound =>
      'İstek bulunamadı!\nLütfen burada görmek için bir para çekme isteği oluşturmayı deneyin.';
  @override
  String get withdrawRequestNotApproved => 'Bu para çekme isteği onaylanmadı!.';
  @override
  String get nonZeroError => 'Lütfen sıfırdan büyük geçerli bir tutar girin.';
  @override
  String minAmountError({required String minValue}) =>
      'Tutar en az ${minValue} olmalıdır.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Tutar ${maxValue} aşmamalıdır.';
  @override
  String get selectPaymentMethodHint => 'Lütfen önce bir ödeme yöntemi seçin.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundTr
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundTr._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintTr refundRequestHint =
      _TranslationsExceptionsRefundRequestHintTr._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Lütfen ${value} sayısını seçin';
  @override
  String get invalidDateRange => 'Geçersiz tarih aralığı.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} sıfırdan büyük olmalıdır.';
  @override
  late final _TranslationsExceptionsEditPropertyTr editProperty =
      _TranslationsExceptionsEditPropertyTr._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationTr rentInvitation =
      _TranslationsExceptionsRentInvitationTr._(_root);
  @override
  String get notenantFoundList =>
      'Kiracı yok!\nLütfen burada görmek için bir kiracı eklemeyi deneyin.';
  @override
  String get noFeaturesProvided => 'Özellik sağlanmadı.';
  @override
  String get noNotificationFound =>
      'Bildirim yok.\nBildirimlerinizi burada mevcut olduğunda görebilirsiniz.';
}

// Path: prompt
class _TranslationsPromptTr implements TranslationsPromptEn {
  _TranslationsPromptTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutTr logout = _TranslationsPromptLogoutTr._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationTr application =
      _TranslationsPromptApplicationTr._(_root);
  @override
  late final _TranslationsPromptLaborTr labor = _TranslationsPromptLaborTr._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestTr maintenanceRequest =
      _TranslationsPromptMaintenanceRequestTr._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodTr withdrawMethod =
      _TranslationsPromptWithdrawMethodTr._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesTr unsavedChanges =
      _TranslationsPromptUnsavedChangesTr._(_root);
  @override
  late final _TranslationsPromptPropertyTr property =
      _TranslationsPromptPropertyTr._(_root);
  @override
  late final _TranslationsPromptRentInvitationTr rentInvitation =
      _TranslationsPromptRentInvitationTr._(_root);
  @override
  late final _TranslationsPromptSessionExpiredTr sessionExpired =
      _TranslationsPromptSessionExpiredTr._(_root);
  @override
  late final _TranslationsPromptNoInternetTr noInternet =
      _TranslationsPromptNoInternetTr._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerTr permissionHandler =
      _TranslationsPromptPermissionHandlerTr._(_root);
  @override
  late final _TranslationsPromptImagePickerTr imagePicker =
      _TranslationsPromptImagePickerTr._(_root);
  @override
  late final _TranslationsPromptVerificationDialogTr verificationDialog =
      _TranslationsPromptVerificationDialogTr._(_root);
  @override
  late final _TranslationsPromptNotificationTr notification =
      _TranslationsPromptNotificationTr._(_root);
}

// Path: form
class _TranslationsFormTr implements TranslationsFormEn {
  _TranslationsFormTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameTr fullName =
      _TranslationsFormFullNameTr._(_root);
  @override
  late final _TranslationsFormEmailTr email = _TranslationsFormEmailTr._(_root);
  @override
  late final _TranslationsFormPasswordTr password =
      _TranslationsFormPasswordTr._(_root);
  @override
  late final _TranslationsFormConfirmPasswordTr confirmPassword =
      _TranslationsFormConfirmPasswordTr._(_root);
  @override
  late final _TranslationsFormMobileNumberTr mobileNumber =
      _TranslationsFormMobileNumberTr._(_root);
  @override
  late final _TranslationsFormAddress1Tr address1 =
      _TranslationsFormAddress1Tr._(_root);
  @override
  late final _TranslationsFormAddress2Tr address2 =
      _TranslationsFormAddress2Tr._(_root);
  @override
  late final _TranslationsFormPostalCodeTr postalCode =
      _TranslationsFormPostalCodeTr._(_root);
  @override
  late final _TranslationsFormCityTr city = _TranslationsFormCityTr._(_root);
  @override
  late final _TranslationsFormStateTr state = _TranslationsFormStateTr._(_root);
  @override
  late final _TranslationsFormCountryTr country = _TranslationsFormCountryTr._(
    _root,
  );
  @override
  late final _TranslationsFormOtpTr otp = _TranslationsFormOtpTr._(_root);
  @override
  late final _TranslationsFormTitleTr title = _TranslationsFormTitleTr._(_root);
  @override
  late final _TranslationsFormDateTr date = _TranslationsFormDateTr._(_root);
  @override
  late final _TranslationsFormReasonTr reason = _TranslationsFormReasonTr._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodTr withdrawMethod =
      _TranslationsFormWithdrawMethodTr._(_root);
  @override
  late final _TranslationsFormFileFieldTr fileField =
      _TranslationsFormFileFieldTr._(_root);
  @override
  late final _TranslationsFormNoteTr note = _TranslationsFormNoteTr._(_root);
  @override
  late final _TranslationsFormGenderTr gender = _TranslationsFormGenderTr._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldTr anyField =
      _TranslationsFormAnyFieldTr._(_root);
  @override
  late final _TranslationsFormAnyDropdownTr anyDropdown =
      _TranslationsFormAnyDropdownTr._(_root);
}

// Path: action
class _TranslationsActionTr implements TranslationsActionEn {
  _TranslationsActionTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Sonraki';
  @override
  String get getStarted => 'Başlayın';
  @override
  String get skip => 'Geç';
  @override
  String get select => 'Seç';
  @override
  String get save => 'Kaydet';
  @override
  String get signIn => 'Giriş Yap';
  @override
  String get signUp => 'Kaydol';
  @override
  String get kContinue => 'Devam Et';
  @override
  String get clearAll => 'Tümünü Temizle';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Gönder';
  @override
  String get pay => 'Öde';
  @override
  String get remove => 'Kaldır';
  @override
  String get goBack => 'Geri Git';
  @override
  String get buyNow => 'Şimdi Satın Al';
  @override
  String get no => 'Hayır';
  @override
  String get open => 'Aç';
  @override
  String get addProperty => 'Emlak Ekle';
  @override
  String get process => 'İşle';
  @override
  String get approve => 'Onayla';
  @override
  String get reject => 'Reddet';
  @override
  String get viewRent => 'Kirayı Görüntüle';
  @override
  String get openNavigationMenu => 'Gezinti menüsünü aç';
  @override
  String get seeAll => 'Tümünü Gör';
  @override
  String get update => 'Güncelle';
  @override
  String get printTransaction => 'İşlemi Yazdır';
  @override
  String get payoutRequest => 'Ödeme İsteği';
  @override
  String get addNew => '+ Yeni Ekle';
  @override
  String get sendRequest => 'İstek Gönder';
  @override
  String get print => 'Yazdır';
  @override
  String get requestForRefund => 'Geri Ödeme İsteği';
  @override
  String get previous => 'Önceki';
  @override
  String get delete => 'Sil';
  @override
  String get applyProperty => 'Emlak Başvurusu';
  @override
  String get viewApplication => 'Başvuruyu Görüntüle';
  @override
  String get inviteTenant => 'Kiracı Davet Et';
  @override
  String get inviteRent => 'Kira Davet Et';
  @override
  String get cancel => 'İptal';
  @override
  String get accept => 'Kabul Et';
  @override
  String get submit => 'Gönder';
  @override
  String get yes => 'Evet';
  @override
  String get okay => 'Tamam';
  @override
  String get confirm => 'Onayla';
  @override
  String get apply => 'Uygula';
  @override
  String get reset => 'Sıfırla';
  @override
  String get retry => 'Tekrar Dene';
  @override
  String get viewAll => 'Tümunu Gör';
}

// Path: pages
class _TranslationsPagesTr implements TranslationsPagesEn {
  _TranslationsPagesTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageTr language =
      _TranslationsPagesLanguageTr._(_root);
  @override
  late final _TranslationsPagesOnboardTr onboard =
      _TranslationsPagesOnboardTr._(_root);
  @override
  late final _TranslationsPagesSignInTr signIn = _TranslationsPagesSignInTr._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordTr forgotPassword =
      _TranslationsPagesForgotPasswordTr._(_root);
  @override
  late final _TranslationsPagesOtpVerificationTr otpVerification =
      _TranslationsPagesOtpVerificationTr._(_root);
  @override
  late final _TranslationsPagesResetPasswordTr resetPassword =
      _TranslationsPagesResetPasswordTr._(_root);
  @override
  late final _TranslationsPagesSignUpTr signUp = _TranslationsPagesSignUpTr._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeTr welcome =
      _TranslationsPagesWelcomeTr._(_root);
  @override
  late final _TranslationsPagesAboutUsTr aboutUs =
      _TranslationsPagesAboutUsTr._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsTr termsAndConditions =
      _TranslationsPagesTermsAndConditionsTr._(_root);
  @override
  late final _TranslationsPagesNotificationListTr notificationList =
      _TranslationsPagesNotificationListTr._(_root);
  @override
  late final _TranslationsPagesContactUsTr contactUs =
      _TranslationsPagesContactUsTr._(_root);
  @override
  late final _TranslationsPagesCancelRentingTr cancelRenting =
      _TranslationsPagesCancelRentingTr._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsTr invoiceDetails =
      _TranslationsPagesInvoiceDetailsTr._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentTr offlinePayment =
      _TranslationsPagesOfflinePaymentTr._(_root);
  @override
  late final _TranslationsPagesPaymentStatusTr paymentStatus =
      _TranslationsPagesPaymentStatusTr._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsTr propertyDetails =
      _TranslationsPagesPropertyDetailsTr._(_root);
  @override
  late final _TranslationsPagesSearchTr search = _TranslationsPagesSearchTr._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanTr subscriptionPlan =
      _TranslationsPagesSubscriptionPlanTr._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportTr
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportTr._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsTr implements TranslationsEnumsEn {
  _TranslationsEnumsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusTr propertyStatus =
      _TranslationsEnumsPropertyStatusTr._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeTr propertyType =
      _TranslationsEnumsPropertyTypeTr._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusTr applicationStatus =
      _TranslationsEnumsApplicationStatusTr._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusTr myRentStatus =
      _TranslationsEnumsMyRentStatusTr._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusTr maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusTr._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeTr tenantProfileType =
      _TranslationsEnumsTenantProfileTypeTr._(_root);
  @override
  late final _TranslationsEnumsTenantTypeTr tenantType =
      _TranslationsEnumsTenantTypeTr._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusTr paymentStatus =
      _TranslationsEnumsPaymentStatusTr._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsTr paymentOptions =
      _TranslationsEnumsPaymentOptionsTr._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeTr paymentType =
      _TranslationsEnumsPaymentTypeTr._(_root);
  @override
  late final _TranslationsEnumsGenderTr gender = _TranslationsEnumsGenderTr._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationTr ecRelation =
      _TranslationsEnumsEcRelationTr._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeTr vehicleType =
      _TranslationsEnumsVehicleTypeTr._(_root);
  @override
  late final _TranslationsEnumsSortByTr sortBy = _TranslationsEnumsSortByTr._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeTr residentialType =
      _TranslationsEnumsResidentialTypeTr._(_root);
  @override
  late final _TranslationsEnumsFloorRangeTr floorRange =
      _TranslationsEnumsFloorRangeTr._(_root);
  @override
  late final _TranslationsEnumsFurnishingsTr furnishings =
      _TranslationsEnumsFurnishingsTr._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeTr commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeTr._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeTr landPropertyType =
      _TranslationsEnumsLandPropertyTypeTr._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeTr residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeTr._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodTr minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodTr._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterTr dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterTr._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileTr
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoTr
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Araç Bilgileri';
  @override
  String get optional => 'Araç Bilgileri (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoTr
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Araç Tescil Numarası';
  @override
  String get short => 'Tescil Numarası';
  @override
  String get alt => 'Plaka Numarası';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintTr
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Başvuru bulunamadı!\n${subject} burada mevcut olduğunda görüntülenecektir.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsTr subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsTr._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintTr
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Emlak bulunamadı!\nLütfen burada görmek için bir emlak eklemeyi deneyin.';
  @override
  String get tenantRecommended =>
      'Önerilen Emlak Bulunamadı\nLütfen daha sonra tekrar deneyin.';
  @override
  String get tenantAllProperty =>
      'Emlaklar mevcut değil\nLütfen daha sonra tekrar deneyin.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundTr
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Hiçbir ${status} bakım bulunamadı.';
  @override
  String get tenant =>
      'Bakım bulunamadı! Burada görmek için bakım talebi oluşturabilirsiniz.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundTr
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Hiçbir ${status} geri ödeme isteği bulunamadı!\nBurada mevcut olduğunda geri ödeme isteğini görebilirsiniz.';
  @override
  String get tenant =>
      'Geri ödeme isteği bulunamadı!\nBurada görmek için geri ödeme isteği oluşturabilirsiniz.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintTr
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Kiracı, parayı geri aldığında geri ödemeyi onaylayacaktır';
  @override
  String get tenantReqSuccess =>
      'Geri ödeme isteğini inceleyeceğiz ve 24 saat içinde onaylayacağız.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyTr
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Kiralık emlak değişiyor. Yalnızca gelecek ayın kira ödemesi için geçerli (etkili) olmalıdır.';
  @override
  String get deleteOnRent =>
      'Emlakınız zaten kiracı tarafından kiralanmış. Önce kiracıyı kaldırmadan silemezsiniz';
  @override
  String get alreayRented =>
      'Bu emlak zaten kiralandı. Lütfen daha sonra tekrar deneyin.\nVeya daha fazla bilgi için ev sahibiyle iletişime geçebilirsiniz.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationTr
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Kira daveti bulunamadı!\nLütfen burada görmek için bir kira daveti oluşturmayı deneyin.';
  @override
  String get tenantNoRentInvitation =>
      'Kira daveti bulunamadı!\nKira davetini burada mevcut olduğunda görebilirsiniz.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutTr implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Çıkış yapmak istediğinizden emin misiniz?';
}

// Path: prompt.application
class _TranslationsPromptApplicationTr
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Bu başvuruyu neden reddediyorsunuz?';
  @override
  late final _TranslationsPromptApplicationApplicationSentTr applicationSent =
      _TranslationsPromptApplicationApplicationSentTr._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborTr implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteTr delete =
      _TranslationsPromptLaborDeleteTr._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestTr
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Bu istek neden reddediliyor?';
  @override
  String get processTitle => 'Bu Bakım isteğini işlediğinizden emin misiniz?';
  @override
  String get completeTitle => 'İş tamamlandı mı?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodTr
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Para Çekme Yöntemini Sil?';
  @override
  String get deleteDescription =>
      'Bu para çekme yöntemini silmek istediğinizden emin misiniz?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesTr
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Geri dönmek istediğinizden emin misiniz?';
  @override
  String get message => 'Değiştirilen alanlar kaydedilmeyecek!';
}

// Path: prompt.property
class _TranslationsPromptPropertyTr implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteTr delete =
      _TranslationsPromptPropertyDeleteTr._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationTr
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveTr
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveTr._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptTr tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptTr._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredTr
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Oturum sona erdi';
  @override
  String get message => 'Oturumunuz sona erdi. Lütfen tekrar giriş yapın';
  @override
  String get action => 'Giriş Yap';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetTr
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'İnternet Bağlantısı Yok';
  @override
  String get message =>
      'Lütfen Wi-Fi mobil ağ bağlantınızı kontrol edin ve tekrar deneyin';
  @override
  String get action => 'Tekrar Dene';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerTr
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'İzin Gerekli!';
  @override
  String get message =>
      'Uygulama ayarlarından izin vermeniz gerekiyor. Şimdi ayarları açmak ister misiniz?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerTr
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Seçenek Seçin';
  @override
  String get gallery => 'Galeri';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogTr
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'E-postanızı Doğrulayın';
  @override
  String get message => 'Bir doğrulama kodu e-postası gönderdik';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} ${email} adresine';
}

// Path: prompt.notification
class _TranslationsPromptNotificationTr
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Bildirimleri temizle?';
  @override
  String get clearMessage =>
      'Tüm bildirimleri temizlemek istediğinizden emin misiniz?';
}

// Path: form.fullName
class _TranslationsFormFullNameTr implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => '${_root.common.fullName} Girin';
  @override
  late final _TranslationsFormFullNameErrorsTr errors =
      _TranslationsFormFullNameErrorsTr._(_root);
}

// Path: form.email
class _TranslationsFormEmailTr implements TranslationsFormEmailEn {
  _TranslationsFormEmailTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => '${_root.common.email} adresinizi girin';
  @override
  late final _TranslationsFormEmailErrorsTr errors =
      _TranslationsFormEmailErrorsTr._(_root);
}

// Path: form.password
class _TranslationsFormPasswordTr implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsTr errors =
      _TranslationsFormPasswordErrorsTr._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordTr
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.password} Onaylayın';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsTr errors =
      _TranslationsFormConfirmPasswordErrorsTr._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberTr
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsTr errors =
      _TranslationsFormMobileNumberErrorsTr._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Tr implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Tr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Ev numarası ve sokak adı';
  @override
  late final _TranslationsFormAddress1ErrorsTr errors =
      _TranslationsFormAddress1ErrorsTr._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Tr implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Tr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Daire, süit, birim vb.';
  @override
  late final _TranslationsFormAddress2ErrorsTr errors =
      _TranslationsFormAddress2ErrorsTr._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeTr implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => '${_root.common.postalCode} Girin';
  @override
  late final _TranslationsFormPostalCodeErrorsTr errors =
      _TranslationsFormPostalCodeErrorsTr._(_root);
}

// Path: form.city
class _TranslationsFormCityTr implements TranslationsFormCityEn {
  _TranslationsFormCityTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => '${_root.common.city} adını girin.';
  @override
  late final _TranslationsFormCityErrorsTr errors =
      _TranslationsFormCityErrorsTr._(_root);
}

// Path: form.state
class _TranslationsFormStateTr implements TranslationsFormStateEn {
  _TranslationsFormStateTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => '${_root.common.state} adını girin.';
  @override
  late final _TranslationsFormStateErrorsTr errors =
      _TranslationsFormStateErrorsTr._(_root);
}

// Path: form.country
class _TranslationsFormCountryTr implements TranslationsFormCountryEn {
  _TranslationsFormCountryTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => '${_root.common.country} seçin.';
  @override
  late final _TranslationsFormCountryErrorsTr errors =
      _TranslationsFormCountryErrorsTr._(_root);
}

// Path: form.otp
class _TranslationsFormOtpTr implements TranslationsFormOtpEn {
  _TranslationsFormOtpTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsTr errors =
      _TranslationsFormOtpErrorsTr._(_root);
}

// Path: form.title
class _TranslationsFormTitleTr implements TranslationsFormTitleEn {
  _TranslationsFormTitleTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Başlık';
  @override
  String get hint => 'Başlık girin';
  @override
  late final _TranslationsFormTitleErrorsTr errors =
      _TranslationsFormTitleErrorsTr._(_root);
}

// Path: form.date
class _TranslationsFormDateTr implements TranslationsFormDateEn {
  _TranslationsFormDateTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '${_root.form.date.label(label: label)} Seçin';
  @override
  late final _TranslationsFormDateErrorsTr errors =
      _TranslationsFormDateErrorsTr._(_root);
}

// Path: form.reason
class _TranslationsFormReasonTr implements TranslationsFormReasonEn {
  _TranslationsFormReasonTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Neden';
  @override
  String get hint => 'Neden girin';
  @override
  late final _TranslationsFormReasonErrorsTr errors =
      _TranslationsFormReasonErrorsTr._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodTr
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => '${_root.common.withdrawMethod} Seçin';
  @override
  late final _TranslationsFormWithdrawMethodErrorsTr errors =
      _TranslationsFormWithdrawMethodErrorsTr._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldTr implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => '${label} Yükle';
  @override
  late final _TranslationsFormFileFieldErrorsTr errors =
      _TranslationsFormFileFieldErrorsTr._(_root);
}

// Path: form.note
class _TranslationsFormNoteTr implements TranslationsFormNoteEn {
  _TranslationsFormNoteTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      '${_root.form.note.label(note: note)} Girin';
  @override
  late final _TranslationsFormNoteErrorsTr errors =
      _TranslationsFormNoteErrorsTr._(_root);
}

// Path: form.gender
class _TranslationsFormGenderTr implements TranslationsFormGenderEn {
  _TranslationsFormGenderTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => '${_root.common.gender} Seçin';
  @override
  late final _TranslationsFormGenderErrorsTr errors =
      _TranslationsFormGenderErrorsTr._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldTr implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '${_root.form.anyField.label(label: label)} Girin';
  @override
  late final _TranslationsFormAnyFieldErrorsTr errors =
      _TranslationsFormAnyFieldErrorsTr._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownTr implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '${_root.form.anyDropdown.label(label: label)} Seçin';
  @override
  late final _TranslationsFormAnyDropdownErrorsTr errors =
      _TranslationsFormAnyDropdownErrorsTr._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageTr implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardTr implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataTr onboardData =
      _TranslationsPagesOnboardOnboardDataTr._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInTr implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tekrar Hoş Geldiniz';
  @override
  String get subtitle =>
      'Muhteşem bir yolculuğa başlamak için şimdi Giriş Yapın.';
  @override
  late final _TranslationsPagesSignInExtraTr extra =
      _TranslationsPagesSignInExtraTr._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordTr
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Şifremi unuttum';
  @override
  String get subtitle => 'Şifrenizi kurtarmak için e-posta Adresinizi girin.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationTr
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Doğrulama';
  @override
  String subtitle({required String email}) =>
      'E-posta adresinize 4 haneli bir pin gönderildi. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraTr extra =
      _TranslationsPagesOtpVerificationExtraTr._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordTr
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Şifreyi sıfırla';
  @override
  String get subtitle =>
      'Şifrenizi kurtarmak ve hesabınıza giriş yapmak için sıfırlayın';
  @override
  late final _TranslationsPagesResetPasswordExtraTr extra =
      _TranslationsPagesResetPasswordExtraTr._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpTr implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bir Hesap Oluştur';
  @override
  String get subtitle => 'Muhteşem bir yolculuğa başlamak için şimdi Kaydolun';
  @override
  late final _TranslationsPagesSignUpExtraTr extra =
      _TranslationsPagesSignUpExtraTr._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeTr implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sen kimsin?';
  @override
  String get subtitle => 'Lütfen aşağıdaki seçeneği belirtin.';
  @override
  late final _TranslationsPagesWelcomeExtraTr extra =
      _TranslationsPagesWelcomeExtraTr._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsTr implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsTr
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListTr
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Bildirimler';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsTr implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraTr extra =
      _TranslationsPagesContactUsExtraTr._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingTr
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Neden ${_root.common.cancelRenting} ediyorsunuz?';
  @override
  late final _TranslationsPagesCancelRentingFormTr form =
      _TranslationsPagesCancelRentingFormTr._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsTr
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentTr
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Çevrimdışı Ödeme';
  @override
  late final _TranslationsPagesOfflinePaymentFormTr form =
      _TranslationsPagesOfflinePaymentFormTr._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraTr extra =
      _TranslationsPagesOfflinePaymentExtraTr._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusTr
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessTr success =
      _TranslationsPagesPaymentStatusSuccessTr._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailTr fail =
      _TranslationsPagesPaymentStatusFailTr._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsTr
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraTr extra =
      _TranslationsPagesPropertyDetailsExtraTr._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchTr implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Ara';
  @override
  late final _TranslationsPagesSearchExtraTr extra =
      _TranslationsPagesSearchExtraTr._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanTr
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Planınızı Seçin';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraTr extra =
      _TranslationsPagesSubscriptionPlanExtraTr._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportTr
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Toplam Bakım Maliyeti: '),
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
class _TranslationsEnumsPropertyStatusTr
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Tüm Emlak';
  @override
  String get pending => 'Bekleyen';
  @override
  String get active => 'Aktif';
  @override
  String get inactive => 'Pasif';
  @override
  String get rejected => 'Reddedildi';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeTr
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Daire/Kondominyum';
  @override
  String get house => 'Ev';
  @override
  String get commercialProperty => 'Ticari Emlak';
  @override
  String get land => 'Arazi';
  @override
  String get room => 'Oda';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusTr
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Tümü';
  @override
  String get pending => 'Bekleyen';
  @override
  String get processing => 'İşleniyor';
  @override
  String get approved => 'Onaylandı';
  @override
  String get rejected => 'Reddedildi';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusTr
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Bekleyen';
  @override
  String get processing => 'İşleniyor';
  @override
  String get active => 'Aktif';
  @override
  String get expired => 'Süresi Doldu';
  @override
  String get cancelled => 'İptal Edildi';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusTr
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Bekleyen';
  @override
  String get processing => 'İşleniyor';
  @override
  String get rejected => 'Reddedildi';
  @override
  String get completed => 'Tamamlandı';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeTr
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Özel (Bireysel)';
  @override
  String get company => 'Şirket';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeTr implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Yeni Kiracı';
  @override
  String get activeTenant => 'Aktif Kiracı';
  @override
  String get expiredTenant => 'Süresi Dolmuş Kiracı';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusTr
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Tümü';
  @override
  String get pending => 'Bekleyen';
  @override
  String get paid => 'Ödendi';
  @override
  String get unpaid => 'Ödenmedi';
  @override
  String get rejected => 'Reddedildi';
  @override
  String get refund => 'Geri Ödeme';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsTr
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Çevrimiçi Ödeme';
  @override
  String get offlinePayment => 'Çevrimdışı Ödeme';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeTr
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Güvenlik Depozitosu';
  @override
  String get rentPayment => 'Kira Ödemesi';
  @override
  String get subscription => 'Abonelik';
}

// Path: enums.gender
class _TranslationsEnumsGenderTr implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Erkek';
  @override
  String get female => 'Kadın';
  @override
  String get other => 'Diğer';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationTr implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Eş';
  @override
  String get parent => 'Ebeveyn';
  @override
  String get friend => 'Arkadaş';
  @override
  String get brother => 'Erkek Kardeş';
  @override
  String get sister => 'Kız Kardeş';
  @override
  String get child => 'Çocuk';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeTr
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Araba';
  @override
  String get motorcycles => 'Motosiklet';
  @override
  String get lorry => 'Kamyon';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByTr implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Düşükten Yükseğe';
  @override
  String get highToLow => 'Yüksekten Düşüğe';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeTr
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Daire';
  @override
  String get apartment => 'Apartman';
  @override
  String get condominium => 'Kondominyum';
  @override
  String get serviceResidence => 'Hizmet Rezidansı';
  @override
  String get studio => 'Stüdyo';
  @override
  String get duplex => 'Dubleks';
  @override
  String get townhouseCondo => 'Townhouse Condo';
  @override
  String get others => 'Diğer';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeTr implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Yüksek';
  @override
  String get medium => 'Orta';
  @override
  String get low => 'Düşük';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsTr
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Tam Eşyalı';
  @override
  String get partiallyFurnished => 'Kısmen Eşyalı';
  @override
  String get notFurnished => 'Eşyasız';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeTr
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Ofis alanı';
  @override
  String get retailSpace => 'Perakende alanı';
  @override
  String get shopLot => 'Dükkan';
  @override
  String get warehouseFactory => 'Depo / Fabrika';
  @override
  String get hotelResort => 'Otel / Tatil Köyü';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Diğer';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeTr
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Konut';
  @override
  String get industrial => 'Endüstriyel';
  @override
  String get agricultural => 'Tarım';
  @override
  String get commercial => 'Ticari';
  @override
  String get mixedDevelopment => 'Karma Gelişim';
  @override
  String get others => 'Diğer';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeTr
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Kondo / Hizmet rezidansı / Çatı katı';
  @override
  String get apartment => 'Apartman / Daire';
  @override
  String get house => 'Evler';
  @override
  String get shoplot => 'Dükkan';
  @override
  String get sharing => 'Ev / Daire paylaşımı';
  @override
  String get others => 'Diğer';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodTr
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 Ay';
  @override
  String get oneYear => '1 Yıl';
  @override
  String get oneAndHalfYears => '1.5 Yıl';
  @override
  String get twoYears => '2 Yıl';
  @override
  String get twoAndHalfYears => '2.5 Yıl';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterTr
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Günlük';
  @override
  String get weekly => 'Haftalık';
  @override
  String get monthly => 'Aylık';
  @override
  String get yearly => 'Yıllık';
  @override
  String get custom => 'Özel';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsTr
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Başvurunuz';
  @override
  String get landlord => 'Kiracının başvurusu';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentTr
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Başvuru başarıyla gönderildi!';
  @override
  String get sucessDescription =>
      'Bu başvuruyu başvuru listenizde görebilirsiniz';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteTr
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'İşçiyi Sil?';
  @override
  String get description => 'Bu işçiyi silmek istediğinizden emin misiniz?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteTr
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Emlakı Sil?';
  @override
  String get message => 'Bu emlağı silmek istediğinizden emin misiniz?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveTr
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bu kirayı onaylamak istediğinizden emin misiniz?';
  @override
  String get description =>
      'Kiracı tarafından imzalanan sözleşmeyi incelediğinizden emin olun.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptTr
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bu daveti kabul etmek istediğinizden emin misiniz?';
  @override
  String get description => 'Sözleşme pdf dosyasını indirdiğinizden emin olun!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsTr
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.fullName} girin';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsTr implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.email} adresinizi girin';
  @override
  String get invalid => '⦸ Geçersiz E-posta, Lütfen Tekrar Deneyin';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsTr
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.password} girin';
  @override
  String minLength({required Object count}) =>
      'Şifre en az ${count} karakter olmalı!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsTr
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.password} girin';
  @override
  String get notMatched => 'Şifreler eşleşmiyor!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsTr
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.mobileNumber} girin';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsTr
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.form.address1.label} girin';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsTr
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.form.address2.label} girin';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsTr
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.postalCode} girin';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsTr implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.city} adınızı girin.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsTr implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.state} adınızı girin.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsTr
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.country} seçin';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsTr implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lütfen otp girin.';
  @override
  String get invalid => 'Lütfen doğru otp girin.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsTr implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lütfen başlık girin';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsTr implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      '${_root.form.date.label(label: label)} seçin';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsTr
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lütfen neden girin';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsTr
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.withdrawMethod} seçin';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsTr
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => '${label} seçin';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsTr implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      '${_root.form.note.label(note: note)} girin';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsTr
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.gender} seçin';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsTr
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      '${_root.form.anyField.label(label: label)} girin';
  @override
  String get invalid => 'Lütfen geçerli @form.anyField.label girin';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsTr
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      '${_root.form.anyDropdown.label(label: label)} seçin';
  @override
  String get invalid => 'Lütfen geçerli @form.anyDropdown.label seçin';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataTr
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Tr data1 =
      _TranslationsPagesOnboardOnboardDataData1Tr._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Tr data2 =
      _TranslationsPagesOnboardOnboardDataData2Tr._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Tr data3 =
      _TranslationsPagesOnboardOnboardDataData3Tr._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraTr
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Beni Hatırla';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Hesabınız yok mu? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraTr
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendTr codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendTr._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraTr
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogTr dialog =
      _TranslationsPagesResetPasswordExtraDialogTr._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraTr
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Zaten bir hesabınız var mı? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraTr
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Kendi mülklerinizi yönetin';
  @override
  String get tenantTag => 'Kiralama hesabınıza giriş yapın';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraTr
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Mesaj...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormTr
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonTr reason =
      _TranslationsPagesCancelRentingFormReasonTr._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormTr
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteTr paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteTr._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraTr
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Ödenecek Tutar: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Hesap Sahibi Adı';
  @override
  String get accountNumber => 'Hesap Numarası';
  @override
  String get swiftCode => 'Swift Kodu';
  @override
  String get branch => 'Şube';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Yalnızca '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' Veya '),
      fileType('DOC'),
      const TextSpan(text: ' biçimindeki dosyaları seçin. Dosya boyutu '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessTr
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Faturayı Görüntüle';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Ödemeyi inceleyeceğiz ve 24 saat içinde onaylayacağız.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailTr
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Tekrar Dene';
  @override
  String get title => 'Oops! Ödeme Başarısız';
  @override
  String get description =>
      'İşleminiz bazı teknik hatalar nedeniyle başarısız oldu.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraTr
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

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
      const TextSpan(text: 'Özellikler '),
      fa('(Tesisler ve Olanaklar)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Kiralama Süresini Seçin';
  @override
  String get writeAReview => '+ Yorum Yaz';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraTr
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Arsalar, daireler, odalar arayın...';
  @override
  String get noRecentSearch => 'Son aramalarınız yok.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraTr
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Abonelik ödemesi başarılı.\nArtık abone olunan özelliklere erişebilirsiniz.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Tr
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Tr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Emlakınızı Bulun';
  @override
  String get description =>
      'Yaşamınıza uygun bir yer bulmayı çok kolaylaştırdık - ister bir oda, ister bir daire, ister bir ev olsun.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Tr
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Tr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Şehirdeki Daire';
  @override
  String get description =>
      'Kaybolmadan önce sizi mükemmel mülkle hızlı bir şekilde eşleştirerek zamandan tasarruf ediyoruz, böylece yeni evinizin keyfini çıkarabilir veya kendi evinizi ücretsiz olarak listeleyebilirsiniz.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Tr
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Tr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Konforlu Eviniz';
  @override
  String get description =>
      'Yaşamak için bir yer arıyorsanız, kiralık evlerimize bir göz atın. Ülkenin her yerinden seçebileceğiniz çok çeşitli evlerimiz var.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendTr
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Kod ${minutes}:${seconds} içinde gönderildi';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Kodu tekrar gönder'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogTr
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Başarıyla değiştirildi!';
  @override
  String get subtitle =>
      'Yeni şifrenizle giriş yapın.\nGiriş Yap\'a yönlendiriliyorsunuz...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonTr
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Nedenini yazın';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsTr errors =
      _TranslationsPagesCancelRentingFormReasonErrorsTr._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteTr
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Ödeme Notu (${_root.common.optional})';
  @override
  String get hint => 'Bir şeyler yazın...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsTr
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsTr._(this._root);

  final TranslationsTr _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Lütfen kira iptali nedenini girin';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsTr {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Dil';
      case 'common.subscriptionPlan':
        return 'Abonelik Planı';
      case 'common.contactUs':
        return 'Bize Ulaşın';
      case 'common.termsAndConditions':
        return 'Şartlar ve Koşullar';
      case 'common.aboutUs':
        return 'Hakkımızda';
      case 'common.logout':
        return 'Çıkış Yap';
      case 'common.editProfile':
        return 'Profili Düzenle';
      case 'common.fullName':
        return 'Tam Ad';
      case 'common.email':
        return 'E-posta';
      case 'common.mobileNumber':
        return 'Mobil Numara';
      case 'common.address':
        return 'Adres';
      case 'common.postalCode':
        return 'Posta Kodu';
      case 'common.city':
        return 'Şehir';
      case 'common.country':
        return 'Ülke';
      case 'common.state':
        return 'Eyalet';
      case 'common.password':
        return 'Parola';
      case 'common.forgotPassword':
        return 'Şifremi Unuttum';
      case 'common.tenant':
        return 'Kiracı';
      case 'common.landlord':
        return 'Ev Sahibi';
      case 'common.cancelRenting':
        return 'Kiralamayı İptal Et';
      case 'common.startDate':
        return 'Başlangıç Tarihi';
      case 'common.endDate':
        return 'Bitiş Tarihi';
      case 'common.fromDate':
        return 'Başlangıç Tarihi';
      case 'common.toDate':
        return 'Bitiş Tarihi';
      case 'common.online':
        return 'Çevrimiçi';
      case 'common.bankList':
        return 'Banka Listesi';
      case 'common.withdrawMethod':
        return 'Çekim Yöntemi';
      case 'common.uploadPaymentReceipt':
        return 'Ödeme Makbuzu Yükle';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Not: '),
            note('Ödeme, admin tarafından manuel onay gerektirir'),
            const TextSpan(text: ' '),
            duraion('24~48 saat içinde.'),
          ],
        );
      case 'common.reviews':
        return 'Yorumlar';
      case 'common.description':
        return 'Açıklama';
      case 'common.about':
        return 'Hakkında';
      case 'common.propertyTypes':
        return 'Mülk Türleri';
      case 'common.features':
        return 'Özellikler';
      case 'common.floorPlans':
        return 'Kat Planları';
      case 'common.buildingDetails':
        return 'Bina Detayları';
      case 'common.buildingName':
        return 'Bina Adı';
      case 'common.propertyAddress':
        return 'Mülk Adresi';
      case 'common.completionYear':
        return 'Tamamlama Yılı';
      case 'common.lotNumber':
        return 'Parsel Numarası';
      case 'common.residentialType':
        return 'Konut Türü';
      case 'common.furnishings':
        return 'Eşya Durumu';
      case 'common.floorRange':
        return 'Kat Aralığı';
      case 'common.bedrooms':
        return 'Yatak Odası';
      case 'common.bathrooms':
        return 'Banyolar';
      case 'common.propertySize':
        return 'Mülk Büyüklüğü';
      case 'common.rentalPeriod':
        return 'Kiralama Süresi';
      case 'common.securityDeposit':
        return 'Güvenlik Depozitosu';
      case 'common.utilityBill':
        return 'Fatura';
      case 'common.facilities':
        return 'İmkanlar';
      case 'common.amenities':
        return 'Olanaklar';
      case 'common.expiringReason':
        return 'Sona Erme Nedeni';
      case 'common.tenantDetails':
        return 'Kiracı Detayları';
      case 'common.typeOfTenant':
        return 'Kiracı Türü';
      case 'common.tenantName':
        return 'Kiracı Adı';
      case 'common.nidPassport':
        return 'NID/Pasaport';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'Kiracı ID';
      case 'common.dateOfBirth':
        return 'Doğum Tarihi';
      case 'common.gender':
        return 'Cinsiyet';
      case 'common.nominee':
        return 'Aday';
      case 'common.name':
        return 'Ad';
      case 'common.optional':
        return 'Opsiyonel';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.nominee}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Acil Durum İrtibatı';
      case 'common.relation':
        return 'İlişki';
      case 'common.relationWith':
        return '${_root.common.relation} With';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} You';
      case 'common.company':
        return 'Şirket';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'İşyeri';
      case 'common.officePhoneNo':
        return 'Ofis Telefon Numarası';
      case 'common.officeMobileNo':
        return 'Ofis ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Araç';
      case 'common.vehiclesInfo.plain':
        return 'Araç Bilgileri';
      case 'common.vehiclesInfo.optional':
        return 'Araç Bilgileri (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Araç Tescil Numarası';
      case 'common.vehicleRegistrationNo.short':
        return 'Tescil Numarası';
      case 'common.vehicleRegistrationNo.alt':
        return 'Plaka Numarası';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Brand';
      case 'common.rentProperty':
        return 'Emlak Kirala';
      case 'common.propertyDetails':
        return 'Emlak Detayları';
      case 'common.propertyId':
        return 'Emlak Kimliği';
      case 'common.propertyType':
        return 'Emlak Türü';
      case 'common.propertyName':
        return 'Emlak Adı';
      case 'common.paymentDetails':
        return 'Ödeme Detayları';
      case 'common.monthlyRent':
        return 'Aylık Kira';
      case 'common.thisMonthPayment':
        return 'Bu Ayki Ödeme';
      case 'common.totalPaidRent':
        return 'Toplam Ödenen Kira';
      case 'common.dueRent':
        return 'Ödenmemiş Kira';
      case 'common.rentStartDate':
        return 'Kira ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Kira ${_root.common.endDate}';
      case 'common.status':
        return 'Durum';
      case 'common.rentAgreementPdf':
        return 'Kira Sözleşmesi PDF\'i';
      case 'common.noFile':
        return 'Dosya Yok';
      case 'common.tenantImageOp':
        return 'Kiracı Resmi ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Yeni Araç Ekle';
      case 'common.uploadNidPassport':
        return 'NID/Pasaport Yükle';
      case 'common.nidPassportUploadNote':
        return 'Sadece dosya türü resim kabul edilecektir. Dosya limiti 2,5 MB\'a kadar.';
      case 'common.search':
        return 'Ara';
      case 'common.sortBy':
        return 'Sırala';
      case 'common.subscription':
        return 'Abonelik';
      case 'common.downloading':
        return 'İndiriliyor...';
      case 'common.downloadSuccess':
        return 'Dosya başarıyla indirildi!';
      case 'common.addPropertyBannerTitle':
        return 'Mülkünüzü Kiraya Vermek mi İstiyorsunuz?';
      case 'common.application':
        return 'Başvuru';
      case 'common.tenantHasPaidDeposit':
        return 'Kiracı depozitoyu ödedi.';
      case 'common.askProcessingRentApplication':
        return 'Kira emlak için bu isteği işlediğinizden emin misiniz?';
      case 'common.dateAndTime':
        return 'Tarih ve Saat';
      case 'common.applicationDetails':
        return 'Başvuru Detayları';
      case 'common.depositStatus':
        return 'Depozito Durumu';
      case 'common.uploadRentAgreement':
        return 'Kira Sözleşmesi Yükle';
      case 'common.uploadFilePDF':
        return 'Dosya Yükle (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Lütfen bir sözleşme belgesi dosyası seçin.';
      case 'common.landlordRentAgreementPDF':
        return 'Ev Sahibi Kira Sözleşmesi PDF\'i';
      case 'common.tenantRentAgreementPDF':
        return 'Kiracı Kira Sözleşmesi PDF\'i';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Not: '),
            note(
              'Yalnızca kiracı depozito ödemesi yaptıktan sonra başvuruyu onaylayın.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Reddetme Nedeni';
      case 'common.youveRejectedThisApplication':
        return 'Bu başvuruyu reddettiniz';
      case 'common.landlordDetails':
        return 'Ev Sahibi Detayları';
      case 'common.landlordName':
        return 'Ev Sahibi Adı';
      case 'common.downloadRentAgreement':
        return 'Kira Sözleşmesini İndir';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            toc('Şartlar ve Koşulları'),
            const TextSpan(text: ' Kabul Et'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Not: '),
            note(
              'Lütfen sözleşmeyi indirin ve okuyun. Lütfen imzalı sözleşmeyi WhatsApp veya e-posta yoluyla ev sahibine gönderin.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Not: '),
            note(
              'Kiracı, güvenlik, fatura ve bir aylık peşin kira ödemesini yaptığında ev sahibi başvuruyu onaylar.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Kira Sözleşmesi (PDF) '),
            complete('Sözleşmeyi Tamamla'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Not : '),
            note(
              'Kiracı, güvenlik, fatura ve bir aylık peşin kira ödemesini yaptığında ev sahibi başvuruyu onaylar.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Başvuru Listesi';
      case 'common.viewDetails':
        return 'Detayları Görüntüle';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Ana Sayfa';
      case 'common.dashboard':
        return 'Gösterge Paneli';
      case 'common.tenants':
        return 'Kiracılar';
      case 'common.maintenance':
        return 'Bakım';
      case 'common.maintenanceList':
        return 'Bakım Listesi';
      case 'common.maintenanceReport':
        return 'Bakım Raporu';
      case 'common.labor':
        return 'İşçilik';
      case 'common.applications':
        return 'Başvurular';
      case 'common.rentInvitation':
        return 'Kira Daveti';
      case 'common.payment':
        return 'Ödeme';
      case 'common.rentPayment':
        return 'Kira Ödemesi';
      case 'common.depositUtilityPayment':
        return 'Depozito ve Fatura Ödemesi';
      case 'common.refundRequest':
        return 'Geri Ödeme İsteği';
      case 'common.withdrawRequest':
        return 'Para Çekme İsteği';
      case 'common.myProperty':
        return 'Mülküm';
      case 'common.myRent':
        return 'Kiram';
      case 'common.wishlist':
        return 'İstek Listesi';
      case 'common.properties':
        return 'Emlaklar';
      case 'common.allProperties':
        return 'Tüm Emlaklar';
      case 'common.totalPropery':
        return 'Toplam Emlak';
      case 'common.occupied':
        return 'Dolu';
      case 'common.vacant':
        return 'Boş';
      case 'common.accounting':
        return 'Muhasebe';
      case 'common.totalIncome':
        return 'Toplam Gelir';
      case 'common.totalExpense':
        return 'Toplam Gider';
      case 'common.currentBalance':
        return 'Mevcut Bakiye';
      case 'common.totalWithdrawal':
        return 'Toplam (Çekme)';
      case 'common.totalProperties':
        return 'Toplam Emlak';
      case 'common.totalTenant':
        return 'Toplam Kiracı';
      case 'common.totalRentPaid':
        return 'Toplam Ödenen Kira';
      case 'common.totalRentDue':
        return 'Toplam Ödenmemiş Kira';
      case 'common.totalApplication':
        return 'Toplam Başvuru';
      case 'common.pendingApplication':
        return 'Bekleyen Başvuru';
      case 'common.processingApplication':
        return 'İşlenen Başvuru';
      case 'common.approveApplication':
        return 'Başvuruyu Onayla';
      case 'common.rejectApplication':
        return 'Başvuruyu Reddet';
      case 'common.maintenanceCost':
        return 'Bakım Maliyeti';
      case 'common.transactionSummary':
        return 'İşlem Özeti';
      case 'common.maintenanceRequest':
        return 'Bakım Talebi';
      case 'common.notifications':
        return 'Bildirimler';
      case 'common.myProperties':
        return 'Emlaklarım';
      case 'common.recommendationProperties':
        return 'Öneri Emlaklar';
      case 'common.laborList':
        return 'İşçi Listesi';
      case 'common.addLabor':
        return 'İşçi Ekle';
      case 'common.laborDetails':
        return 'İşçi Detayları';
      case 'common.laborSalary':
        return 'İşçi Maaşı';
      case 'common.editLabor':
        return 'İşçiyi Düzenle';
      case 'common.addNewLabor':
        return 'Yeni İşçi Ekle';
      case 'common.enterAmount':
        return 'Tutar Girin';
      case 'common.maintenanceDetails':
        return 'Bakım Detayları';
      case 'common.laborName':
        return 'İşçi Adı';
      case 'common.comment':
        return 'Yorum';
      case 'common.image':
        return 'Resim';
      case 'common.complete':
        return 'Tamamla';
      case 'common.details':
        return 'Detaylar';
      case 'common.title':
        return 'Başlık';
      case 'common.date':
        return 'Tarih';
      case 'common.reason':
        return 'Neden';
      case 'common.edit':
        return 'Düzenle';
      case 'common.property':
        return 'Emlak';
      case 'common.completeYourProfile':
        return 'Profilinizi Tamamlayın';
      case 'common.profileImage':
        return 'Profil Resmi';
      case 'common.imagePickHint':
        return 'Maksimum 120x120 piksel boyutunda yalnızca JPEG ve PNG Resimleri.';
      case 'common.invoiceId':
        return 'Fatura Numarası';
      case 'common.depositAmount':
        return 'Depozito Tutarı';
      case 'common.landlordPhone':
        return 'Ev Sahibi Telefonu';
      case 'common.rentalAdvance':
        return 'Kira (Peşin)';
      case 'common.totalAmount':
        return 'Toplam Tutar';
      case 'common.rentalAmount':
        return 'Kira Tutarı';
      case 'common.adminCharge':
        return 'Yönetici Ücreti';
      case 'common.editAccount':
        return 'Hesabı Düzenle';
      case 'common.addNewAccount':
        return 'Yeni Hesap Ekle';
      case 'common.transactionId':
        return 'İşlem Kimliği';
      case 'common.transactionType':
        return 'İşlem Türü';
      case 'common.requestDate':
        return 'Talep Tarihi';
      case 'common.amount':
        return 'Tutar';
      case 'common.fee':
        return 'Ücret';
      case 'common.paymentStatus':
        return 'Ödeme Durumu';
      case 'common.generatedTime':
        return 'Oluşturulma Zamanı';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'Bu, '),
            appName,
            const TextSpan(
              text:
                  ' tarafından oluşturulan sistem tarafından oluşturulan bir rapordur',
            ),
          ],
        );
      case 'common.withdrawHistory':
        return 'Çekme Geçmişi';
      case 'common.history':
        return 'Geçmiş';
      case 'common.withdrawAmount':
        return 'Çekme Tutarı';
      case 'common.availableBalance':
        return 'Kullanılabilir Bakiye';
      case 'common.withdrawCharge':
        return 'Çekme Ücreti';
      case 'common.paymentMethod':
        return 'Ödeme Yöntemi';
      case 'common.requestSendSuccess':
        return 'İstek başarıyla gönderildi!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Ödeme makbuzu başarıyla gönderildi.';
      case 'common.refundReason':
        return 'Geri Ödeme Nedeni';
      case 'common.note':
        return 'Not';
      case 'common.refundReceiveSuccess':
        return 'Geri ödeme başarıyla alındı.';
      case 'common.downloadPaymentReceipt':
        return 'Ödeme Makbuzunu İndir';
      case 'common.invoice':
        return 'Fatura';
      case 'common.selectPropertyToSeeInvoice':
        return 'Fatura numarasını görmek için emlak seçin...';
      case 'common.bankAccName':
        return 'Banka Hesap Adı';
      case 'common.bankName':
        return 'Banka Adı';
      case 'common.bankAccNum':
        return 'Banka Hesap Numarası';
      case 'common.thankYou':
        return 'Teşekkür Ederiz!';
      case 'common.basicInfo':
        return 'Temel Bilgiler';
      case 'common.descriptionPricing':
        return 'Açıklama ve Fiyatlandırma';
      case 'common.contact':
        return 'İletişim';
      case 'common.photos':
        return 'Fotoğraflar';
      case 'common.successfullySubmitted':
        return 'Başarıyla Gönderildi!';
      case 'common.editProperty':
        return 'Emlak Düzenle';
      case 'common.addNewProperty':
        return 'Yeni Emlak Ekle';
      case 'common.propertyManageRequestSuccess':
        return 'İlanınız inceleme için gönderildi.';
      case 'common.postAnotherProperty':
        return 'Başka Bir Emlak Gönder';
      case 'common.browseYourProperty':
        return 'Emlakınıza Göz Atın';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Adım '),
                step,
                const TextSpan(text: ' / '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Ne Göndermek İstersiniz?';
      case 'common.category':
        return 'Kategori';
      case 'common.invalidCategory':
        return 'Geçersiz Kategori';
      case 'common.unitNumber':
        return 'Birim Numarası';
      case 'common.sqft':
        return 'm2';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Emlak boyutu sıfırdan büyük olmalıdır';
      case 'common.whatAreTheFacility':
        return 'Tesisler nelerdir?';
      case 'common.whatAreTheAmenity':
        return 'Olanaklar nelerdir?';
      case 'common.parkingLot':
        return 'Otopark';
      case 'common.houseType':
        return 'Ev türü';
      case 'common.value':
        return 'Değer';
      case 'common.unitLotSize':
        return 'Birim / Arsa Boyutu';
      case 'common.landSize':
        return 'Arsa Boyutu';
      case 'common.acres':
        return 'dönüm';
      case 'common.roomSize':
        return 'Oda boyutu';
      case 'common.askTenantPreference':
        return 'Kiracı tercihiniz nedir?';
      case 'common.couple':
        return 'Çift';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => '${propertyType} açıklayın';
      case 'common.adTitle':
        return 'İlan Başlığı';
      case 'common.minimumRentalPeriod':
        return 'Minimum Kiralama Süresi';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Numarası';
      case 'common.hideOrDisplayEmail':
        return 'E-posta adresini gizle veya göster';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            '${appName} üzerinde ilan verdiğiniz için teşekkür ederiz!';
      case 'common.propertyList':
        return 'Emlak Listesi';
      case 'common.newInviteRent':
        return 'Yeni Kira Daveti';
      case 'common.rentAgreement':
        return 'Kira Sözleşmesi';
      case 'common.rentDetails':
        return 'Kira Detayları';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Not: '),
            note('Lütfen kiracının daveti kabul etmesini bekleyin.'),
          ],
        );
      case 'common.rent':
        return 'Kira';
      case 'common.editTenant':
        return 'Kiracıyı Düzenle';
      case 'common.addNewTenant':
        return 'Yeni Kiracı Ekle';
      case 'common.shareInstallLink':
        return 'Kurulum bağlantısını paylaş';
      case 'common.tenantList':
        return 'Kiracı Listesi';
      case 'common.editMaintenanceRequest':
        return 'Bakım Talebini Düzenle';
      case 'common.addNewMaintenance':
        return 'Yeni Bakım Ekle';
      case 'common.landlordId':
        return 'Ev Sahibi Kimliği';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Not '),
            note(
              'Sözleşmeniz inceleniyor. Lütfen ev sahibinin kiranızı onaylamasını bekleyin.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Yorumu Düzenle';
      case 'common.writeAReview':
        return 'Yorum Yaz';
      case 'common.selectRating':
        return 'Puan Seçin';
      case 'common.enterYourOpinion':
        return 'Fikrinizi Girin';
      case 'common.askToEnterReviewMsg':
        return 'Lütfen bir yorum mesajı girin';
      case 'common.pressBackAgainToExit':
        return 'Çıkmak için tekrar geri basın.';
      case 'common.selectPaymentMethod':
        return 'Ödeme Yöntemi Seçin';
      case 'common.filter':
        return 'Filtre';
      case 'common.perMonth':
        return '/1 Ay';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            '${appName} içinde herhangi bir şey arayın...';
      case 'exceptions.somethingWentWrong':
        return 'Bir şeyler ters gitti, lütfen tekrar deneyin';
      case 'exceptions.noNidPassport':
        return 'NID/Pasaport resmi sağlanmadı.';
      case 'exceptions.noRentPropertyFound':
        return 'Bu kiracı için kiralık emlak bulunamadı.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Emlak bulunamadı!\nLütfen farklı anahtar kelimelerle deneyin';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Abonelik planı bulunamadı!\nLütfen sayfayı yenileyin ve tekrar deneyin.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Geçersiz ${dataType} bilgisi! Lütfen sayfayı yenileyin ve tekrar deneyin.';
      case 'exceptions.invalidDownloadUrl':
        return 'Geçersiz indirme URL\'si!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => 'Dosya kaydedilemedi! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) =>
            'Dosya açılırken hata oluştu! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Araç bilgisi sağlanmadı.';
      case 'exceptions.yourApplicationRejected':
        return 'Başvurunuz reddedildi';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Başvuru bulunamadı!\n${subject} burada mevcut olduğunda görüntülenecektir.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Başvurunuz';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Kiracının başvurusu';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Emlak bulunamadı!\nLütfen burada görmek için bir emlak eklemeyi deneyin.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Önerilen Emlak Bulunamadı\nLütfen daha sonra tekrar deneyin.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Emlaklar mevcut değil\nLütfen daha sonra tekrar deneyin.';
      case 'exceptions.noImageProvided':
        return 'Resim Sağlanmadı';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Hiçbir ${status} bakım bulunamadı.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Bakım bulunamadı! Burada görmek için bakım talebi oluşturabilirsiniz.';
      case 'exceptions.noDepositFound':
        return 'Güvenlik depozitosu bulunamadı!\nLütfen güvenlik depozitolarını mevcut olduğunda görebilirsiniz';
      case 'exceptions.noRentPaymentFound':
        return 'Kira ödemesi bulunamadı!\nLütfen kira ödemelerini mevcut olduğunda görebilirsiniz';
      case 'exceptions.transactionSummaryApiException':
        return 'İşlem özeti alınamadı.';
      case 'exceptions.noWithdrawRequestFound':
        return 'İstek bulunamadı!\nLütfen burada görmek için bir para çekme isteği oluşturmayı deneyin.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Bu para çekme isteği onaylanmadı!.';
      case 'exceptions.nonZeroError':
        return 'Lütfen sıfırdan büyük geçerli bir tutar girin.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Tutar en az ${minValue} olmalıdır.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) => 'Tutar ${maxValue} aşmamalıdır.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Lütfen önce bir ödeme yöntemi seçin.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Hiçbir ${status} geri ödeme isteği bulunamadı!\nBurada mevcut olduğunda geri ödeme isteğini görebilirsiniz.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Geri ödeme isteği bulunamadı!\nBurada görmek için geri ödeme isteği oluşturabilirsiniz.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Kiracı, parayı geri aldığında geri ödemeyi onaylayacaktır';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Geri ödeme isteğini inceleyeceğiz ve 24 saat içinde onaylayacağız.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Lütfen ${value} sayısını seçin';
      case 'exceptions.invalidDateRange':
        return 'Geçersiz tarih aralığı.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} sıfırdan büyük olmalıdır.';
      case 'exceptions.editProperty.rentalChange':
        return 'Kiralık emlak değişiyor. Yalnızca gelecek ayın kira ödemesi için geçerli (etkili) olmalıdır.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Emlakınız zaten kiracı tarafından kiralanmış. Önce kiracıyı kaldırmadan silemezsiniz';
      case 'exceptions.editProperty.alreayRented':
        return 'Bu emlak zaten kiralandı. Lütfen daha sonra tekrar deneyin.\nVeya daha fazla bilgi için ev sahibiyle iletişime geçebilirsiniz.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Kira daveti bulunamadı!\nLütfen burada görmek için bir kira daveti oluşturmayı deneyin.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Kira daveti bulunamadı!\nKira davetini burada mevcut olduğunda görebilirsiniz.';
      case 'exceptions.notenantFoundList':
        return 'Kiracı yok!\nLütfen burada görmek için bir kiracı eklemeyi deneyin.';
      case 'exceptions.noFeaturesProvided':
        return 'Özellik sağlanmadı.';
      case 'exceptions.noNotificationFound':
        return 'Bildirim yok.\nBildirimlerinizi burada mevcut olduğunda görebilirsiniz.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Çıkış yapmak istediğinizden emin misiniz?';
      case 'prompt.application.rejectTitle':
        return 'Bu başvuruyu neden reddediyorsunuz?';
      case 'prompt.application.applicationSent.successfully':
        return 'Başvuru başarıyla gönderildi!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Bu başvuruyu başvuru listenizde görebilirsiniz';
      case 'prompt.labor.delete.title':
        return 'İşçiyi Sil?';
      case 'prompt.labor.delete.description':
        return 'Bu işçiyi silmek istediğinizden emin misiniz?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Bu istek neden reddediliyor?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Bu Bakım isteğini işlediğinizden emin misiniz?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'İş tamamlandı mı?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Para Çekme Yöntemini Sil?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Bu para çekme yöntemini silmek istediğinizden emin misiniz?';
      case 'prompt.unsavedChanges.title':
        return 'Geri dönmek istediğinizden emin misiniz?';
      case 'prompt.unsavedChanges.message':
        return 'Değiştirilen alanlar kaydedilmeyecek!';
      case 'prompt.property.delete.title':
        return 'Emlakı Sil?';
      case 'prompt.property.delete.message':
        return 'Bu emlağı silmek istediğinizden emin misiniz?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Bu kirayı onaylamak istediğinizden emin misiniz?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Kiracı tarafından imzalanan sözleşmeyi incelediğinizden emin olun.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Bu daveti kabul etmek istediğinizden emin misiniz?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Sözleşme pdf dosyasını indirdiğinizden emin olun!';
      case 'prompt.sessionExpired.title':
        return 'Oturum sona erdi';
      case 'prompt.sessionExpired.message':
        return 'Oturumunuz sona erdi. Lütfen tekrar giriş yapın';
      case 'prompt.sessionExpired.action':
        return 'Giriş Yap';
      case 'prompt.noInternet.title':
        return 'İnternet Bağlantısı Yok';
      case 'prompt.noInternet.message':
        return 'Lütfen Wi-Fi mobil ağ bağlantınızı kontrol edin ve tekrar deneyin';
      case 'prompt.noInternet.action':
        return 'Tekrar Dene';
      case 'prompt.permissionHandler.title':
        return 'İzin Gerekli!';
      case 'prompt.permissionHandler.message':
        return 'Uygulama ayarlarından izin vermeniz gerekiyor. Şimdi ayarları açmak ister misiniz?';
      case 'prompt.imagePicker.title':
        return 'Seçenek Seçin';
      case 'prompt.imagePicker.gallery':
        return 'Galeri';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'E-postanızı Doğrulayın';
      case 'prompt.verificationDialog.message':
        return 'Bir doğrulama kodu e-postası gönderdik';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} ${email} adresine';
      case 'prompt.notification.clearTitle':
        return 'Bildirimleri temizle?';
      case 'prompt.notification.clearMessage':
        return 'Tüm bildirimleri temizlemek istediğinizden emin misiniz?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return '${_root.common.fullName} Girin';
      case 'form.fullName.errors.required':
        return '${_root.common.fullName} girin';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return '${_root.common.email} adresinizi girin';
      case 'form.email.errors.required':
        return '${_root.common.email} adresinizi girin';
      case 'form.email.errors.invalid':
        return '⦸ Geçersiz E-posta, Lütfen Tekrar Deneyin';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return '${_root.common.password} girin';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Şifre en az ${count} karakter olmalı!';
      case 'form.confirmPassword.label':
        return '${_root.common.password} Onaylayın';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return '${_root.common.password} girin';
      case 'form.confirmPassword.errors.notMatched':
        return 'Şifreler eşleşmiyor!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return '${_root.common.mobileNumber} girin';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Ev numarası ve sokak adı';
      case 'form.address1.errors.required':
        return '${_root.form.address1.label} girin';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Daire, süit, birim vb.';
      case 'form.address2.errors.required':
        return '${_root.form.address2.label} girin';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return '${_root.common.postalCode} Girin';
      case 'form.postalCode.errors.required':
        return '${_root.common.postalCode} girin';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return '${_root.common.city} adını girin.';
      case 'form.city.errors.required':
        return '${_root.common.city} adınızı girin.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return '${_root.common.state} adını girin.';
      case 'form.state.errors.required':
        return '${_root.common.state} adınızı girin.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return '${_root.common.country} seçin.';
      case 'form.country.errors.required':
        return '${_root.common.country} seçin';
      case 'form.otp.errors.required':
        return 'Lütfen otp girin.';
      case 'form.otp.errors.invalid':
        return 'Lütfen doğru otp girin.';
      case 'form.title.label':
        return 'Başlık';
      case 'form.title.hint':
        return 'Başlık girin';
      case 'form.title.errors.required':
        return 'Lütfen başlık girin';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            '${_root.form.date.label(label: label)} Seçin';
      case 'form.date.errors.required':
        return ({required String label}) =>
            '${_root.form.date.label(label: label)} seçin';
      case 'form.reason.label':
        return 'Neden';
      case 'form.reason.hint':
        return 'Neden girin';
      case 'form.reason.errors.required':
        return 'Lütfen neden girin';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return '${_root.common.withdrawMethod} Seçin';
      case 'form.withdrawMethod.errors.required':
        return '${_root.common.withdrawMethod} seçin';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => '${label} Yükle';
      case 'form.fileField.errors.required':
        return ({required String label}) => '${label} seçin';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            '${_root.form.note.label(note: note)} Girin';
      case 'form.note.errors.required':
        return ({required String note}) =>
            '${_root.form.note.label(note: note)} girin';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return '${_root.common.gender} Seçin';
      case 'form.gender.errors.required':
        return '${_root.common.gender} seçin';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            '${_root.form.anyField.label(label: label)} Girin';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            '${_root.form.anyField.label(label: label)} girin';
      case 'form.anyField.errors.invalid':
        return 'Lütfen geçerli @form.anyField.label girin';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            '${_root.form.anyDropdown.label(label: label)} Seçin';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            '${_root.form.anyDropdown.label(label: label)} seçin';
      case 'form.anyDropdown.errors.invalid':
        return 'Lütfen geçerli @form.anyDropdown.label seçin';
      case 'action.next':
        return 'Sonraki';
      case 'action.getStarted':
        return 'Başlayın';
      case 'action.skip':
        return 'Geç';
      case 'action.select':
        return 'Seç';
      case 'action.save':
        return 'Kaydet';
      case 'action.signIn':
        return 'Giriş Yap';
      case 'action.signUp':
        return 'Kaydol';
      case 'action.kContinue':
        return 'Devam Et';
      case 'action.clearAll':
        return 'Tümünü Temizle';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Gönder';
      case 'action.pay':
        return 'Öde';
      case 'action.remove':
        return 'Kaldır';
      case 'action.goBack':
        return 'Geri Git';
      case 'action.buyNow':
        return 'Şimdi Satın Al';
      case 'action.no':
        return 'Hayır';
      case 'action.open':
        return 'Aç';
      case 'action.addProperty':
        return 'Emlak Ekle';
      case 'action.process':
        return 'İşle';
      case 'action.approve':
        return 'Onayla';
      case 'action.reject':
        return 'Reddet';
      case 'action.viewRent':
        return 'Kirayı Görüntüle';
      case 'action.openNavigationMenu':
        return 'Gezinti menüsünü aç';
      case 'action.seeAll':
        return 'Tümünü Gör';
      case 'action.update':
        return 'Güncelle';
      case 'action.printTransaction':
        return 'İşlemi Yazdır';
      case 'action.payoutRequest':
        return 'Ödeme İsteği';
      case 'action.addNew':
        return '+ Yeni Ekle';
      case 'action.sendRequest':
        return 'İstek Gönder';
      case 'action.print':
        return 'Yazdır';
      case 'action.requestForRefund':
        return 'Geri Ödeme İsteği';
      case 'action.previous':
        return 'Önceki';
      case 'action.delete':
        return 'Sil';
      case 'action.applyProperty':
        return 'Emlak Başvurusu';
      case 'action.viewApplication':
        return 'Başvuruyu Görüntüle';
      case 'action.inviteTenant':
        return 'Kiracı Davet Et';
      case 'action.inviteRent':
        return 'Kira Davet Et';
      case 'action.cancel':
        return 'İptal';
      case 'action.accept':
        return 'Kabul Et';
      case 'action.submit':
        return 'Gönder';
      case 'action.yes':
        return 'Evet';
      case 'action.okay':
        return 'Tamam';
      case 'action.confirm':
        return 'Onayla';
      case 'action.apply':
        return 'Uygula';
      case 'action.reset':
        return 'Sıfırla';
      case 'action.retry':
        return 'Tekrar Dene';
      case 'action.viewAll':
        return 'Tümunu Gör';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Emlakınızı Bulun';
      case 'pages.onboard.onboardData.data1.description':
        return 'Yaşamınıza uygun bir yer bulmayı çok kolaylaştırdık - ister bir oda, ister bir daire, ister bir ev olsun.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Şehirdeki Daire';
      case 'pages.onboard.onboardData.data2.description':
        return 'Kaybolmadan önce sizi mükemmel mülkle hızlı bir şekilde eşleştirerek zamandan tasarruf ediyoruz, böylece yeni evinizin keyfini çıkarabilir veya kendi evinizi ücretsiz olarak listeleyebilirsiniz.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Konforlu Eviniz';
      case 'pages.onboard.onboardData.data3.description':
        return 'Yaşamak için bir yer arıyorsanız, kiralık evlerimize bir göz atın. Ülkenin her yerinden seçebileceğiniz çok çeşitli evlerimiz var.';
      case 'pages.signIn.title':
        return 'Tekrar Hoş Geldiniz';
      case 'pages.signIn.subtitle':
        return 'Muhteşem bir yolculuğa başlamak için şimdi Giriş Yapın.';
      case 'pages.signIn.extra.rememberMe':
        return 'Beni Hatırla';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Hesabınız yok mu? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Şifremi unuttum';
      case 'pages.forgotPassword.subtitle':
        return 'Şifrenizi kurtarmak için e-posta Adresinizi girin.';
      case 'pages.otpVerification.title':
        return 'Doğrulama';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'E-posta adresinize 4 haneli bir pin gönderildi. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Kod ${minutes}:${seconds} içinde gönderildi';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Kodu tekrar gönder'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Şifreyi sıfırla';
      case 'pages.resetPassword.subtitle':
        return 'Şifrenizi kurtarmak ve hesabınıza giriş yapmak için sıfırlayın';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Başarıyla değiştirildi!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Yeni şifrenizle giriş yapın.\nGiriş Yap\'a yönlendiriliyorsunuz...';
      case 'pages.signUp.title':
        return 'Bir Hesap Oluştur';
      case 'pages.signUp.subtitle':
        return 'Muhteşem bir yolculuğa başlamak için şimdi Kaydolun';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Zaten bir hesabınız var mı? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Sen kimsin?';
      case 'pages.welcome.subtitle':
        return 'Lütfen aşağıdaki seçeneği belirtin.';
      case 'pages.welcome.extra.landlordTag':
        return 'Kendi mülklerinizi yönetin';
      case 'pages.welcome.extra.tenantTag':
        return 'Kiralama hesabınıza giriş yapın';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Bildirimler';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Mesaj...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Neden ${_root.common.cancelRenting} ediyorsunuz?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Nedenini yazın';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Lütfen kira iptali nedenini girin';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Çevrimdışı Ödeme';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Ödeme Notu (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Bir şeyler yazın...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Ödenecek Tutar: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Hesap Sahibi Adı';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Hesap Numarası';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift Kodu';
      case 'pages.offlinePayment.extra.branch':
        return 'Şube';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Yalnızca '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' Veya '),
            fileType('DOC'),
            const TextSpan(text: ' biçimindeki dosyaları seçin. Dosya boyutu '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Faturayı Görüntüle';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Ödemeyi inceleyeceğiz ve 24 saat içinde onaylayacağız.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Tekrar Dene';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Ödeme Başarısız';
      case 'pages.paymentStatus.fail.description':
        return 'İşleminiz bazı teknik hatalar nedeniyle başarısız oldu.';
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
            const TextSpan(text: 'Özellikler '),
            fa('(Tesisler ve Olanaklar)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Kiralama Süresini Seçin';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Yorum Yaz';
      case 'pages.search.appbarTitle':
        return 'Ara';
      case 'pages.search.extra.hint':
        return 'Arsalar, daireler, odalar arayın...';
      case 'pages.search.extra.noRecentSearch':
        return 'Son aramalarınız yok.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Planınızı Seçin';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Abonelik ödemesi başarılı.\nArtık abone olunan özelliklere erişebilirsiniz.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Toplam Bakım Maliyeti: '),
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
        return 'Tüm Emlak';
      case 'enums.propertyStatus.pending':
        return 'Bekleyen';
      case 'enums.propertyStatus.active':
        return 'Aktif';
      case 'enums.propertyStatus.inactive':
        return 'Pasif';
      case 'enums.propertyStatus.rejected':
        return 'Reddedildi';
      case 'enums.propertyType.apartmentCondominium':
        return 'Daire/Kondominyum';
      case 'enums.propertyType.house':
        return 'Ev';
      case 'enums.propertyType.commercialProperty':
        return 'Ticari Emlak';
      case 'enums.propertyType.land':
        return 'Arazi';
      case 'enums.propertyType.room':
        return 'Oda';
      case 'enums.applicationStatus.all':
        return 'Tümü';
      case 'enums.applicationStatus.pending':
        return 'Bekleyen';
      case 'enums.applicationStatus.processing':
        return 'İşleniyor';
      case 'enums.applicationStatus.approved':
        return 'Onaylandı';
      case 'enums.applicationStatus.rejected':
        return 'Reddedildi';
      case 'enums.myRentStatus.pending':
        return 'Bekleyen';
      case 'enums.myRentStatus.processing':
        return 'İşleniyor';
      case 'enums.myRentStatus.active':
        return 'Aktif';
      case 'enums.myRentStatus.expired':
        return 'Süresi Doldu';
      case 'enums.myRentStatus.cancelled':
        return 'İptal Edildi';
      case 'enums.maintenanceStatus.pending':
        return 'Bekleyen';
      case 'enums.maintenanceStatus.processing':
        return 'İşleniyor';
      case 'enums.maintenanceStatus.rejected':
        return 'Reddedildi';
      case 'enums.maintenanceStatus.completed':
        return 'Tamamlandı';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Özel (Bireysel)';
      case 'enums.tenantProfileType.company':
        return 'Şirket';
      case 'enums.tenantType.newTenant':
        return 'Yeni Kiracı';
      case 'enums.tenantType.activeTenant':
        return 'Aktif Kiracı';
      case 'enums.tenantType.expiredTenant':
        return 'Süresi Dolmuş Kiracı';
      case 'enums.paymentStatus.all':
        return 'Tümü';
      case 'enums.paymentStatus.pending':
        return 'Bekleyen';
      case 'enums.paymentStatus.paid':
        return 'Ödendi';
      case 'enums.paymentStatus.unpaid':
        return 'Ödenmedi';
      case 'enums.paymentStatus.rejected':
        return 'Reddedildi';
      case 'enums.paymentStatus.refund':
        return 'Geri Ödeme';
      case 'enums.paymentOptions.onlinePayment':
        return 'Çevrimiçi Ödeme';
      case 'enums.paymentOptions.offlinePayment':
        return 'Çevrimdışı Ödeme';
      case 'enums.paymentType.securityDeposit':
        return 'Güvenlik Depozitosu';
      case 'enums.paymentType.rentPayment':
        return 'Kira Ödemesi';
      case 'enums.paymentType.subscription':
        return 'Abonelik';
      case 'enums.gender.male':
        return 'Erkek';
      case 'enums.gender.female':
        return 'Kadın';
      case 'enums.gender.other':
        return 'Diğer';
      case 'enums.ecRelation.wife':
        return 'Eş';
      case 'enums.ecRelation.parent':
        return 'Ebeveyn';
      case 'enums.ecRelation.friend':
        return 'Arkadaş';
      case 'enums.ecRelation.brother':
        return 'Erkek Kardeş';
      case 'enums.ecRelation.sister':
        return 'Kız Kardeş';
      case 'enums.ecRelation.child':
        return 'Çocuk';
      case 'enums.vehicleType.car':
        return 'Araba';
      case 'enums.vehicleType.motorcycles':
        return 'Motosiklet';
      case 'enums.vehicleType.lorry':
        return 'Kamyon';
      case 'enums.sortBy.lowToHigh':
        return 'Düşükten Yükseğe';
      case 'enums.sortBy.highToLow':
        return 'Yüksekten Düşüğe';
      case 'enums.residentialType.flat':
        return 'Daire';
      case 'enums.residentialType.apartment':
        return 'Apartman';
      case 'enums.residentialType.condominium':
        return 'Kondominyum';
      case 'enums.residentialType.serviceResidence':
        return 'Hizmet Rezidansı';
      case 'enums.residentialType.studio':
        return 'Stüdyo';
      case 'enums.residentialType.duplex':
        return 'Dubleks';
      case 'enums.residentialType.townhouseCondo':
        return 'Townhouse Condo';
      case 'enums.residentialType.others':
        return 'Diğer';
      case 'enums.floorRange.high':
        return 'Yüksek';
      case 'enums.floorRange.medium':
        return 'Orta';
      case 'enums.floorRange.low':
        return 'Düşük';
      case 'enums.furnishings.fullyFurnished':
        return 'Tam Eşyalı';
      case 'enums.furnishings.partiallyFurnished':
        return 'Kısmen Eşyalı';
      case 'enums.furnishings.notFurnished':
        return 'Eşyasız';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Ofis alanı';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Perakende alanı';
      case 'enums.commercialPropertyType.shopLot':
        return 'Dükkan';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Depo / Fabrika';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Otel / Tatil Köyü';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Diğer';
      case 'enums.landPropertyType.residential':
        return 'Konut';
      case 'enums.landPropertyType.industrial':
        return 'Endüstriyel';
      case 'enums.landPropertyType.agricultural':
        return 'Tarım';
      case 'enums.landPropertyType.commercial':
        return 'Ticari';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Karma Gelişim';
      case 'enums.landPropertyType.others':
        return 'Diğer';
      case 'enums.residentPropertyType.condo':
        return 'Kondo / Hizmet rezidansı / Çatı katı';
      case 'enums.residentPropertyType.apartment':
        return 'Apartman / Daire';
      case 'enums.residentPropertyType.house':
        return 'Evler';
      case 'enums.residentPropertyType.shoplot':
        return 'Dükkan';
      case 'enums.residentPropertyType.sharing':
        return 'Ev / Daire paylaşımı';
      case 'enums.residentPropertyType.others':
        return 'Diğer';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 Ay';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 Yıl';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1.5 Yıl';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 Yıl';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2.5 Yıl';
      case 'enums.dropdownDateFilter.daily':
        return 'Günlük';
      case 'enums.dropdownDateFilter.weekly':
        return 'Haftalık';
      case 'enums.dropdownDateFilter.monthly':
        return 'Aylık';
      case 'enums.dropdownDateFilter.yearly':
        return 'Yıllık';
      case 'enums.dropdownDateFilter.custom':
        return 'Özel';
      default:
        return null;
    }
  }
}
