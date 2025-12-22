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
class TranslationsMs implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsMs({
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
             locale: AppLocale.ms,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ms>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsMs _root = this; // ignore: unused_field

  @override
  TranslationsMs $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsMs(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonMs common = _TranslationsCommonMs._(_root);
  @override
  late final _TranslationsExceptionsMs exceptions = _TranslationsExceptionsMs._(
    _root,
  );
  @override
  late final _TranslationsPromptMs prompt = _TranslationsPromptMs._(_root);
  @override
  late final _TranslationsFormMs form = _TranslationsFormMs._(_root);
  @override
  late final _TranslationsActionMs action = _TranslationsActionMs._(_root);
  @override
  late final _TranslationsPagesMs pages = _TranslationsPagesMs._(_root);
  @override
  late final _TranslationsEnumsMs enums = _TranslationsEnumsMs._(_root);
}

// Path: common
class _TranslationsCommonMs implements TranslationsCommonEn {
  _TranslationsCommonMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Bahasa';
  @override
  String get subscriptionPlan => 'Pelan Langganan';
  @override
  String get contactUs => 'Hubungi Kami';
  @override
  String get termsAndConditions => 'Terma & Syarat';
  @override
  String get aboutUs => 'Tentang Kami';
  @override
  String get logout => 'Log Keluar';
  @override
  String get editProfile => 'Edit Profil';
  @override
  String get fullName => 'Nama Penuh';
  @override
  String get email => 'Emel';
  @override
  String get mobileNumber => 'Nombor Telefon Bimbit';
  @override
  String get address => 'Alamat';
  @override
  String get postalCode => 'Kod Pos';
  @override
  String get city => 'Bandar';
  @override
  String get country => 'Negara';
  @override
  String get state => 'Negeri';
  @override
  String get password => 'Kata Laluan';
  @override
  String get forgotPassword => 'Lupa Kata Laluan';
  @override
  String get tenant => 'Penyewa';
  @override
  String get landlord => 'Pemilik Rumah';
  @override
  String get cancelRenting => 'Batalkan Sewaan';
  @override
  String get startDate => 'Tarikh Mula';
  @override
  String get endDate => 'Tarikh Tamat';
  @override
  String get fromDate => 'Daripada Tarikh';
  @override
  String get toDate => 'Hingga Tarikh';
  @override
  String get online => 'Dalam Talian';
  @override
  String get bankList => 'Senarai Bank';
  @override
  String get withdrawMethod => 'Kaedah Pengeluaran';
  @override
  String get uploadPaymentReceipt => 'Muat Naik Resit Pembayaran';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note('Pembayaran memerlukan kelulusan manual oleh pentadbir dalam masa'),
      const TextSpan(text: ' '),
      duraion('24~48 jam.'),
    ],
  );
  @override
  String get reviews => 'Ulasan';
  @override
  String get description => 'Keterangan';
  @override
  String get about => 'Mengenai';
  @override
  String get propertyTypes => 'Jenis Hartanah';
  @override
  String get features => 'Ciri-ciri';
  @override
  String get floorPlans => 'Pelan Lantai';
  @override
  String get buildingDetails => 'Maklumat Bangunan';
  @override
  String get buildingName => 'Nama Bangunan';
  @override
  String get propertyAddress => 'Alamat Hartanah';
  @override
  String get completionYear => 'Tahun Siap';
  @override
  String get lotNumber => 'Nombor Lot';
  @override
  String get residentialType => 'Jenis Residen';
  @override
  String get furnishings => 'Perabot';
  @override
  String get floorRange => 'Julat Tingkat';
  @override
  String get bedrooms => 'Bilik Tidur';
  @override
  String get bathrooms => 'Bilik Mandi';
  @override
  String get propertySize => 'Saiz Hartanah';
  @override
  String get rentalPeriod => 'Tempoh Sewa';
  @override
  String get securityDeposit => 'Deposit Keselamatan';
  @override
  String get utilityBill => 'Bil Utiliti';
  @override
  String get facilities => 'Kemudahan';
  @override
  String get amenities => 'Kemudahan';
  @override
  String get expiringReason => 'Sebab Tamat Tempoh';
  @override
  String get tenantDetails => 'Maklumat Penyewa';
  @override
  String get typeOfTenant => 'Jenis Penyewa';
  @override
  String get tenantName => 'Nama Penyewa';
  @override
  String get nidPassport => 'NID/Pasport';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID Penyewa';
  @override
  String get dateOfBirth => 'Tarikh Lahir';
  @override
  String get gender => 'Jantina';
  @override
  String get nominee => 'Penama';
  @override
  String get name => 'Nama';
  @override
  String get optional => 'Pilihan';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileMs nomineeMobile =
      _TranslationsCommonNomineeMobileMs._(_root);
  @override
  String get emergencyContact => 'Hubungan Kecemasan';
  @override
  String get relation => 'Hubungan';
  @override
  String get relationWith => '${_root.common.relation} Dengan';
  @override
  String get relationWithYou => '${_root.common.relationWith} Anda';
  @override
  String get company => 'Syarikat';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Tempat Kerja';
  @override
  String get officePhoneNo => 'Nombor Telefon Pejabat';
  @override
  String get officeMobileNo => 'Nombor Telefon Bimbit Pejabat';
  @override
  String get vehicle => 'Kenderaan';
  @override
  late final _TranslationsCommonVehiclesInfoMs vehiclesInfo =
      _TranslationsCommonVehiclesInfoMs._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Jenis';
  @override
  late final _TranslationsCommonVehicleRegistrationNoMs vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoMs._(_root);
  @override
  String get vehicleBrand => 'Jenama Kenderaan';
  @override
  String get rentProperty => 'Sewa Hartanah';
  @override
  String get propertyDetails => 'Maklumat Hartanah';
  @override
  String get propertyId => 'ID Hartanah';
  @override
  String get propertyType => 'Jenis Hartanah';
  @override
  String get propertyName => 'Nama Hartanah';
  @override
  String get paymentDetails => 'Maklumat Pembayaran';
  @override
  String get monthlyRent => 'Sewa Bulanan';
  @override
  String get thisMonthPayment => 'Pembayaran Bulan Ini';
  @override
  String get totalPaidRent => 'Jumlah Sewa Dibayar';
  @override
  String get dueRent => 'Sewa Tertunggak';
  @override
  String get rentStartDate => 'Tarikh Mula Sewa';
  @override
  String get rentEndDate => 'Tarikh Tamat Sewa';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'Perjanjian Sewa PDF';
  @override
  String get noFile => 'Tiada Fail';
  @override
  String get tenantImageOp => 'Gambar Penyewa (${_root.common.optional})';
  @override
  String get addNewVechicle => 'Tambah Kenderaan Baru';
  @override
  String get uploadNidPassport => 'Muat Naik NID/Pasport';
  @override
  String get nidPassportUploadNote =>
      'Hanya imej jenis fail akan diterima. Had fail sehingga 2.5 MB.';
  @override
  String get search => 'Carian';
  @override
  String get sortBy => 'Isih Mengikut';
  @override
  String get subscription => 'Langganan';
  @override
  String get downloading => 'Memuat Turun...';
  @override
  String get downloadSuccess => 'Fail dimuat turun dengan jayanya!';
  @override
  String get addPropertyBannerTitle => 'Ingin Menyewakan Hartanah Anda?';
  @override
  String get application => 'Permohonan';
  @override
  String get tenantHasPaidDeposit => 'Penyewa telah membayar deposit.';
  @override
  String get askProcessingRentApplication =>
      'Adakah anda pasti mahu memproses permohonan sewa hartanah ini?';
  @override
  String get dateAndTime => 'Tarikh & Masa';
  @override
  String get applicationDetails => 'Maklumat Permohonan';
  @override
  String get depositStatus => 'Status Deposit';
  @override
  String get uploadRentAgreement => 'Muat Naik Perjanjian Sewa';
  @override
  String get uploadFilePDF => 'Muat Naik Fail (PDF)';
  @override
  String get askSelectRentAgreement => 'Sila pilih fail dokumen perjanjian.';
  @override
  String get landlordRentAgreementPDF => 'Perjanjian Sewa Pemilik Rumah PDF';
  @override
  String get tenantRentAgreementPDF => 'Perjanjian Sewa Penyewa PDF';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Hanya meluluskan permohonan selepas penyewa membuat pembayaran deposit.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Sebab Penolakan';
  @override
  String get youveRejectedThisApplication =>
      'Anda telah menolak permohonan ini';
  @override
  String get landlordDetails => 'Maklumat Pemilik Rumah';
  @override
  String get landlordName => 'Nama Pemilik Rumah';
  @override
  String get downloadRentAgreement => 'Muat Turun Perjanjian Sewa';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Terima '),
      toc('Terma & Syarat'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Sila muat turun dan baca perjanjian. Sila hantar perjanjian yang ditandatangani kepada pemilik rumah melalui WhatsApp atau e-mel.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note(
        'Pemilik rumah meluluskan permohonan, apabila penyewa membayar deposit keselamatan, utiliti, dan bayaran sewa pendahuluan sebulan.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Perjanjian Sewa (PDF) '),
          complete('Perjanjian Lengkap'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota : '),
      note(
        'Pemilik rumah meluluskan permohonan, apabila penyewa membayar deposit keselamatan, utiliti, dan bayaran sewa pendahuluan sebulan.',
      ),
    ],
  );
  @override
  String get whatsapp => 'WhatsApp';
  @override
  String get applicationList => 'Senarai Permohonan';
  @override
  String get viewDetails => 'Lihat Maklumat';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Laman Utama';
  @override
  String get dashboard => 'Papan Pemuka';
  @override
  String get tenants => 'Penyewa';
  @override
  String get maintenance => 'Penyelenggaraan';
  @override
  String get maintenanceList => 'Senarai Penyelenggaraan';
  @override
  String get maintenanceReport => 'Laporan Penyelenggaraan';
  @override
  String get labor => 'Buruh';
  @override
  String get applications => 'Permohonan';
  @override
  String get rentInvitation => 'Jemputan Sewa';
  @override
  String get payment => 'Pembayaran';
  @override
  String get rentPayment => 'Bayaran Sewa';
  @override
  String get depositUtilityPayment => 'Deposit & Bayaran Utiliti';
  @override
  String get refundRequest => 'Permohonan Bayaran Balik';
  @override
  String get withdrawRequest => 'Permohonan Pengeluaran';
  @override
  String get myProperty => 'Hartanah Saya';
  @override
  String get myRent => 'Sewa Saya';
  @override
  String get wishlist => 'Senarai Keinginan';
  @override
  String get properties => 'Hartanah';
  @override
  String get allProperties => 'Semua Hartanah';
  @override
  String get totalPropery => 'Jumlah Hartanah';
  @override
  String get occupied => 'Dihuni';
  @override
  String get vacant => 'Kosong';
  @override
  String get accounting => 'Perakaunan';
  @override
  String get totalIncome => 'Jumlah Pendapatan';
  @override
  String get totalExpense => 'Jumlah Perbelanjaan';
  @override
  String get currentBalance => 'Baki Semasa';
  @override
  String get totalWithdrawal => 'Jumlah (Pengeluaran)';
  @override
  String get totalProperties => 'Jumlah Hartanah';
  @override
  String get totalTenant => 'Jumlah Penyewa';
  @override
  String get totalRentPaid => 'Jumlah Sewa Dibayar';
  @override
  String get totalRentDue => 'Jumlah Sewa Tertunggak';
  @override
  String get totalApplication => 'Jumlah Permohonan';
  @override
  String get pendingApplication => 'Permohonan Tertunggu';
  @override
  String get processingApplication => 'Permohonan Dalam Proses';
  @override
  String get approveApplication => 'Luluskan Permohonan';
  @override
  String get rejectApplication => 'Tolak Permohonan';
  @override
  String get maintenanceCost => 'Kos Penyelenggaraan';
  @override
  String get transactionSummary => 'Ringkasan Transaksi';
  @override
  String get maintenanceRequest => 'Permintaan Penyelenggaraan';
  @override
  String get notifications => 'Notifikasi';
  @override
  String get myProperties => 'Hartanah Saya';
  @override
  String get recommendationProperties => 'Cadangan Hartanah';
  @override
  String get laborList => 'Senarai Buruh';
  @override
  String get addLabor => 'Tambah Buruh';
  @override
  String get laborDetails => 'Maklumat Buruh';
  @override
  String get laborSalary => 'Gaji Buruh';
  @override
  String get editLabor => 'Edit Buruh';
  @override
  String get addNewLabor => 'Tambah Buruh Baru';
  @override
  String get enterAmount => 'Masukkan Jumlah';
  @override
  String get maintenanceDetails => 'Maklumat Penyelenggaraan';
  @override
  String get laborName => 'Nama Buruh';
  @override
  String get comment => 'Komen';
  @override
  String get image => 'Imej';
  @override
  String get complete => 'Selesai';
  @override
  String get details => 'Maklumat';
  @override
  String get title => 'Tajuk';
  @override
  String get date => 'Tarikh';
  @override
  String get reason => 'Sebab';
  @override
  String get edit => 'Edit';
  @override
  String get property => 'Hartanah';
  @override
  String get completeYourProfile => 'Lengkapkan Profil Anda';
  @override
  String get profileImage => 'Imej Profil';
  @override
  String get imagePickHint =>
      'Hanya JPEG & PNG Imej dengan saiz maksimum 120x120 piksel.';
  @override
  String get invoiceId => 'ID Invois';
  @override
  String get depositAmount => 'Jumlah Deposit';
  @override
  String get landlordPhone => 'Telefon Pemilik Rumah';
  @override
  String get rentalAdvance => 'Sewa Pendahuluan';
  @override
  String get totalAmount => 'Jumlah Keseluruhan';
  @override
  String get rentalAmount => 'Jumlah Sewa';
  @override
  String get adminCharge => 'Caj Pentadbiran';
  @override
  String get editAccount => 'Edit Akaun';
  @override
  String get addNewAccount => 'Tambah Akaun Baru';
  @override
  String get transactionId => 'ID Transaksi';
  @override
  String get transactionType => 'Jenis Transaksi';
  @override
  String get requestDate => 'Tarikh Permintaan';
  @override
  String get amount => 'Jumlah';
  @override
  String get fee => 'Yuran';
  @override
  String get paymentStatus => 'Status Pembayaran';
  @override
  String get generatedTime => 'Masa Dihasilkan';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'Ini adalah laporan yang dihasilkan oleh sistem '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Sejarah Pengeluaran';
  @override
  String get history => 'Sejarah';
  @override
  String get withdrawAmount => 'Jumlah Pengeluaran';
  @override
  String get availableBalance => 'Baki Boleh Digunakan';
  @override
  String get withdrawCharge => 'Caj Pengeluaran';
  @override
  String get paymentMethod => 'Kaedah Pembayaran';
  @override
  String get requestSendSuccess => 'Permintaan dihantar dengan jayanya!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Resit pembayaran dimuat naik dengan jayanya.';
  @override
  String get refundReason => 'Sebab Bayaran Balik';
  @override
  String get note => 'Nota';
  @override
  String get refundReceiveSuccess => 'Bayaran balik diterima dengan jayanya.';
  @override
  String get downloadPaymentReceipt => 'Muat Turun Resit Pembayaran';
  @override
  String get invoice => 'Invois';
  @override
  String get selectPropertyToSeeInvoice =>
      'Pilih hartanah untuk melihat nombor invois...';
  @override
  String get bankAccName => 'Nama Akaun Bank';
  @override
  String get bankName => 'Nama Bank';
  @override
  String get bankAccNum => 'Nombor Akaun Bank';
  @override
  String get thankYou => 'Terima Kasih!';
  @override
  String get basicInfo => 'Maklumat Asas';
  @override
  String get descriptionPricing => 'Keterangan & Harga';
  @override
  String get contact => 'Hubungi';
  @override
  String get photos => 'Foto';
  @override
  String get successfullySubmitted => 'Dihantar dengan jayanya!';
  @override
  String get editProperty => 'Edit Hartanah';
  @override
  String get addNewProperty => 'Tambah Hartanah Baru';
  @override
  String get propertyManageRequestSuccess =>
      'Iklan anda telah dihantar untuk semakan.';
  @override
  String get postAnotherProperty => 'Pos Hartanah Lain';
  @override
  String get browseYourProperty => 'Semak Hartanah Anda';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Langkah '),
      step,
      const TextSpan(text: ' daripada '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Apakah yang ingin anda pos?';
  @override
  String get category => 'Kategori';
  @override
  String get invalidCategory => 'Kategori tidak sah';
  @override
  String get unitNumber => 'Nombor Unit';
  @override
  String get sqft => 'sq.ft.';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Saiz hartanah mesti lebih besar daripada sifar';
  @override
  String get whatAreTheFacility => 'Apakah kemudahannya?';
  @override
  String get whatAreTheAmenity => 'Apakah kemudahannya?';
  @override
  String get parkingLot => 'Tempat Letak Kereta';
  @override
  String get houseType => 'Jenis Rumah';
  @override
  String get value => 'Nilai';
  @override
  String get unitLotSize => 'Saiz Unit / Lot';
  @override
  String get landSize => 'Saiz Tanah';
  @override
  String get acres => 'ekar';
  @override
  String get roomSize => 'Saiz Bilik';
  @override
  String get askTenantPreference => 'Apakah pilihan penyewa anda';
  @override
  String get couple => 'Pasangan';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Huraikan ${propertyType}';
  @override
  String get adTitle => 'Tajuk Iklan';
  @override
  String get minimumRentalPeriod => 'Tempoh Sewa Minimum';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  @override
  String get hideOrDisplayEmail => 'Sembunyikan atau paparkan alamat e-mel';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Terima kasih kerana menyiarkan di ${appName}!';
  @override
  String get propertyList => 'Senarai Hartanah';
  @override
  String get newInviteRent => 'Jemputan Sewa Baru';
  @override
  String get rentAgreement => 'Perjanjian Sewa';
  @override
  String get rentDetails => 'Maklumat Sewa';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota: '),
      note('Sila tunggu sehingga penyewa menerima jemputan.'),
    ],
  );
  @override
  String get rent => 'Sewa';
  @override
  String get editTenant => 'Edit Penyewa';
  @override
  String get addNewTenant => 'Tambah Penyewa Baru';
  @override
  String get shareInstallLink => 'Kongsi Pautan Pemasangan';
  @override
  String get tenantList => 'Senarai Penyewa';
  @override
  String get editMaintenanceRequest => 'Edit Permintaan Penyelenggaraan';
  @override
  String get addNewMaintenance => 'Tambah Penyelenggaraan Baru';
  @override
  String get landlordId => 'ID Pemilik Rumah';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Nota '),
      note(
        'Perjanjian anda sedang dikaji semula. Sila tunggu sehingga pemilik rumah meluluskan sewa anda.',
      ),
    ],
  );
  @override
  String get editReview => 'Edit Ulasan';
  @override
  String get writeAReview => 'Tulis ulasan';
  @override
  String get selectRating => 'Pilih Penilaian';
  @override
  String get enterYourOpinion => 'Masukkan Pendapat Anda';
  @override
  String get askToEnterReviewMsg => 'Sila masukkan mesej ulasan';
  @override
  String get pressBackAgainToExit => 'Tekan belakang sekali lagi untuk keluar.';
  @override
  String get selectPaymentMethod => 'Pilih Kaedah Pembayaran';
  @override
  String get filter => 'Tapis';
  @override
  String get perMonth => '/1 Bulan';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Cari apa sahaja dalam ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsMs implements TranslationsExceptionsEn {
  _TranslationsExceptionsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Terdapat ralat, sila cuba lagi';
  @override
  String get noNidPassport => 'Tiada imej NID/Pasport disediakan.';
  @override
  String get noRentPropertyFound =>
      'Tiada hartanah sewa dijumpai untuk penyewa ini.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Tiada hartanah dijumpai!\nSila cuba dengan kata kunci yang berbeza';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Tiada pelan langganan dijumpai!\nSila segar semula halaman dan cuba lagi.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Maklumat ${dataType} tidak sah! Sila segar semula halaman dan cuba lagi.';
  @override
  String get invalidDownloadUrl => 'URL muat turun tidak sah!';
  @override
  String failedToSaveFile({required String error}) =>
      'Gagal menyimpan fail! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Ralat membuka fail! ${error}';
  @override
  String get noVehicleInfoProvided => 'Tiada maklumat kenderaan diberikan.';
  @override
  String get yourApplicationRejected => 'Permohonan anda telah ditolak';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintMs
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintMs._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintMs noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintMs._(_root);
  @override
  String get noImageProvided => 'Tiada Imej Disediakan';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundMs
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundMs._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Tiada deposit keselamatan dijumpai!\nSila lihat deposit keselamatan apabila tersedia';
  @override
  String get noRentPaymentFound =>
      'Tiada bayaran sewa dijumpai!\nSila lihat bayaran sewa apabila tersedia';
  @override
  String get transactionSummaryApiException =>
      'Gagal mendapatkan ringkasan transaksi.';
  @override
  String get noWithdrawRequestFound =>
      'Tiada permintaan dijumpai!\nSila cuba buat permintaan pengeluaran untuk melihat di sini.';
  @override
  String get withdrawRequestNotApproved =>
      'Permintaan pengeluaran ini belum diluluskan!.';
  @override
  String get nonZeroError =>
      'Sila masukkan jumlah yang sah lebih besar daripada sifar.';
  @override
  String minAmountError({required String minValue}) =>
      'Jumlah mestilah sekurang-kurangnya ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Jumlah tidak boleh melebihi ${maxValue}.';
  @override
  String get selectPaymentMethodHint =>
      'Sila pilih kaedah pembayaran terlebih dahulu.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundMs
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundMs._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintMs refundRequestHint =
      _TranslationsExceptionsRefundRequestHintMs._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Sila pilih bilangan ${value}';
  @override
  String get invalidDateRange => 'Julat tarikh tidak sah.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} mestilah lebih besar daripada sifar.';
  @override
  late final _TranslationsExceptionsEditPropertyMs editProperty =
      _TranslationsExceptionsEditPropertyMs._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationMs rentInvitation =
      _TranslationsExceptionsRentInvitationMs._(_root);
  @override
  String get notenantFoundList =>
      'Tiada penyewa!\nSila cuba tambah penyewa untuk melihat di sini.';
  @override
  String get noFeaturesProvided => 'Tiada ciri-ciri disediakan.';
  @override
  String get noNotificationFound =>
      'Tiada pemberitahuan tersedia.\nAnda boleh melihat pemberitahuan anda di sini apabila tersedia.';
}

// Path: prompt
class _TranslationsPromptMs implements TranslationsPromptEn {
  _TranslationsPromptMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutMs logout = _TranslationsPromptLogoutMs._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationMs application =
      _TranslationsPromptApplicationMs._(_root);
  @override
  late final _TranslationsPromptLaborMs labor = _TranslationsPromptLaborMs._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestMs maintenanceRequest =
      _TranslationsPromptMaintenanceRequestMs._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodMs withdrawMethod =
      _TranslationsPromptWithdrawMethodMs._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesMs unsavedChanges =
      _TranslationsPromptUnsavedChangesMs._(_root);
  @override
  late final _TranslationsPromptPropertyMs property =
      _TranslationsPromptPropertyMs._(_root);
  @override
  late final _TranslationsPromptRentInvitationMs rentInvitation =
      _TranslationsPromptRentInvitationMs._(_root);
  @override
  late final _TranslationsPromptSessionExpiredMs sessionExpired =
      _TranslationsPromptSessionExpiredMs._(_root);
  @override
  late final _TranslationsPromptNoInternetMs noInternet =
      _TranslationsPromptNoInternetMs._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerMs permissionHandler =
      _TranslationsPromptPermissionHandlerMs._(_root);
  @override
  late final _TranslationsPromptImagePickerMs imagePicker =
      _TranslationsPromptImagePickerMs._(_root);
  @override
  late final _TranslationsPromptVerificationDialogMs verificationDialog =
      _TranslationsPromptVerificationDialogMs._(_root);
  @override
  late final _TranslationsPromptNotificationMs notification =
      _TranslationsPromptNotificationMs._(_root);
}

// Path: form
class _TranslationsFormMs implements TranslationsFormEn {
  _TranslationsFormMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameMs fullName =
      _TranslationsFormFullNameMs._(_root);
  @override
  late final _TranslationsFormEmailMs email = _TranslationsFormEmailMs._(_root);
  @override
  late final _TranslationsFormPasswordMs password =
      _TranslationsFormPasswordMs._(_root);
  @override
  late final _TranslationsFormConfirmPasswordMs confirmPassword =
      _TranslationsFormConfirmPasswordMs._(_root);
  @override
  late final _TranslationsFormMobileNumberMs mobileNumber =
      _TranslationsFormMobileNumberMs._(_root);
  @override
  late final _TranslationsFormAddress1Ms address1 =
      _TranslationsFormAddress1Ms._(_root);
  @override
  late final _TranslationsFormAddress2Ms address2 =
      _TranslationsFormAddress2Ms._(_root);
  @override
  late final _TranslationsFormPostalCodeMs postalCode =
      _TranslationsFormPostalCodeMs._(_root);
  @override
  late final _TranslationsFormCityMs city = _TranslationsFormCityMs._(_root);
  @override
  late final _TranslationsFormStateMs state = _TranslationsFormStateMs._(_root);
  @override
  late final _TranslationsFormCountryMs country = _TranslationsFormCountryMs._(
    _root,
  );
  @override
  late final _TranslationsFormOtpMs otp = _TranslationsFormOtpMs._(_root);
  @override
  late final _TranslationsFormTitleMs title = _TranslationsFormTitleMs._(_root);
  @override
  late final _TranslationsFormDateMs date = _TranslationsFormDateMs._(_root);
  @override
  late final _TranslationsFormReasonMs reason = _TranslationsFormReasonMs._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodMs withdrawMethod =
      _TranslationsFormWithdrawMethodMs._(_root);
  @override
  late final _TranslationsFormFileFieldMs fileField =
      _TranslationsFormFileFieldMs._(_root);
  @override
  late final _TranslationsFormNoteMs note = _TranslationsFormNoteMs._(_root);
  @override
  late final _TranslationsFormGenderMs gender = _TranslationsFormGenderMs._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldMs anyField =
      _TranslationsFormAnyFieldMs._(_root);
  @override
  late final _TranslationsFormAnyDropdownMs anyDropdown =
      _TranslationsFormAnyDropdownMs._(_root);
}

// Path: action
class _TranslationsActionMs implements TranslationsActionEn {
  _TranslationsActionMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Seterusnya';
  @override
  String get getStarted => 'Mulakan';
  @override
  String get skip => 'Langkau';
  @override
  String get select => 'Pilih';
  @override
  String get save => 'Simpan';
  @override
  String get signIn => 'Log Masuk';
  @override
  String get signUp => 'Daftar';
  @override
  String get kContinue => 'Teruskan';
  @override
  String get clearAll => 'Kosongkan Semua';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Hantar';
  @override
  String get pay => 'Bayar';
  @override
  String get remove => 'Buang';
  @override
  String get goBack => 'Kembali';
  @override
  String get buyNow => 'Beli Sekarang';
  @override
  String get no => 'Tidak';
  @override
  String get open => 'Buka';
  @override
  String get addProperty => 'Tambah Hartanah';
  @override
  String get process => 'Proses';
  @override
  String get approve => 'Luluskan';
  @override
  String get reject => 'Tolak';
  @override
  String get viewRent => 'Lihat Sewa';
  @override
  String get openNavigationMenu => 'Buka menu navigasi';
  @override
  String get seeAll => 'Lihat Semua';
  @override
  String get update => 'Kemas kini';
  @override
  String get printTransaction => 'Cetak Transaksi';
  @override
  String get payoutRequest => 'Permintaan Pembayaran';
  @override
  String get addNew => '+ Tambah Baru';
  @override
  String get sendRequest => 'Hantar Permintaan';
  @override
  String get print => 'Cetak';
  @override
  String get requestForRefund => 'Permintaan Bayaran Balik';
  @override
  String get previous => 'Sebelum';
  @override
  String get delete => 'Padam';
  @override
  String get applyProperty => 'Mohon Hartanah';
  @override
  String get viewApplication => 'Lihat Permohonan';
  @override
  String get inviteTenant => 'Jemput Penyewa';
  @override
  String get inviteRent => 'Jemput Sewa';
  @override
  String get cancel => 'Batal';
  @override
  String get accept => 'Terima';
  @override
  String get submit => 'Hantar';
  @override
  String get yes => 'Ya';
  @override
  String get okay => 'Okey';
  @override
  String get confirm => 'Sahkan';
  @override
  String get apply => 'Mohon';
  @override
  String get reset => 'Tetapkan Semula';
  @override
  String get retry => 'Cuba Lagi';
  @override
  String get viewAll => 'Lihat Semua';
}

// Path: pages
class _TranslationsPagesMs implements TranslationsPagesEn {
  _TranslationsPagesMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageMs language =
      _TranslationsPagesLanguageMs._(_root);
  @override
  late final _TranslationsPagesOnboardMs onboard =
      _TranslationsPagesOnboardMs._(_root);
  @override
  late final _TranslationsPagesSignInMs signIn = _TranslationsPagesSignInMs._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordMs forgotPassword =
      _TranslationsPagesForgotPasswordMs._(_root);
  @override
  late final _TranslationsPagesOtpVerificationMs otpVerification =
      _TranslationsPagesOtpVerificationMs._(_root);
  @override
  late final _TranslationsPagesResetPasswordMs resetPassword =
      _TranslationsPagesResetPasswordMs._(_root);
  @override
  late final _TranslationsPagesSignUpMs signUp = _TranslationsPagesSignUpMs._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeMs welcome =
      _TranslationsPagesWelcomeMs._(_root);
  @override
  late final _TranslationsPagesAboutUsMs aboutUs =
      _TranslationsPagesAboutUsMs._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsMs termsAndConditions =
      _TranslationsPagesTermsAndConditionsMs._(_root);
  @override
  late final _TranslationsPagesNotificationListMs notificationList =
      _TranslationsPagesNotificationListMs._(_root);
  @override
  late final _TranslationsPagesContactUsMs contactUs =
      _TranslationsPagesContactUsMs._(_root);
  @override
  late final _TranslationsPagesCancelRentingMs cancelRenting =
      _TranslationsPagesCancelRentingMs._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsMs invoiceDetails =
      _TranslationsPagesInvoiceDetailsMs._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentMs offlinePayment =
      _TranslationsPagesOfflinePaymentMs._(_root);
  @override
  late final _TranslationsPagesPaymentStatusMs paymentStatus =
      _TranslationsPagesPaymentStatusMs._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsMs propertyDetails =
      _TranslationsPagesPropertyDetailsMs._(_root);
  @override
  late final _TranslationsPagesSearchMs search = _TranslationsPagesSearchMs._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanMs subscriptionPlan =
      _TranslationsPagesSubscriptionPlanMs._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportMs
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportMs._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsMs implements TranslationsEnumsEn {
  _TranslationsEnumsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusMs propertyStatus =
      _TranslationsEnumsPropertyStatusMs._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeMs propertyType =
      _TranslationsEnumsPropertyTypeMs._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusMs applicationStatus =
      _TranslationsEnumsApplicationStatusMs._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusMs myRentStatus =
      _TranslationsEnumsMyRentStatusMs._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusMs maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusMs._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeMs tenantProfileType =
      _TranslationsEnumsTenantProfileTypeMs._(_root);
  @override
  late final _TranslationsEnumsTenantTypeMs tenantType =
      _TranslationsEnumsTenantTypeMs._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusMs paymentStatus =
      _TranslationsEnumsPaymentStatusMs._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsMs paymentOptions =
      _TranslationsEnumsPaymentOptionsMs._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeMs paymentType =
      _TranslationsEnumsPaymentTypeMs._(_root);
  @override
  late final _TranslationsEnumsGenderMs gender = _TranslationsEnumsGenderMs._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationMs ecRelation =
      _TranslationsEnumsEcRelationMs._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeMs vehicleType =
      _TranslationsEnumsVehicleTypeMs._(_root);
  @override
  late final _TranslationsEnumsSortByMs sortBy = _TranslationsEnumsSortByMs._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeMs residentialType =
      _TranslationsEnumsResidentialTypeMs._(_root);
  @override
  late final _TranslationsEnumsFloorRangeMs floorRange =
      _TranslationsEnumsFloorRangeMs._(_root);
  @override
  late final _TranslationsEnumsFurnishingsMs furnishings =
      _TranslationsEnumsFurnishingsMs._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeMs commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeMs._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeMs landPropertyType =
      _TranslationsEnumsLandPropertyTypeMs._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeMs residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeMs._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodMs minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodMs._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterMs dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterMs._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileMs
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} No. Tel.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoMs
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Maklumat Kenderaan';
  @override
  String get optional => 'Maklumat Kenderaan (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoMs
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Nombor Pendaftaran Kenderaan';
  @override
  String get short => 'No. Pendaftaran';
  @override
  String get alt => 'No. Plat';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintMs
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Tiada permohonan dijumpai!\n${subject} akan dipaparkan di sini apabila tersedia.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsMs subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsMs._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintMs
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Tiada hartanah dijumpai!\nSila cuba tambah hartanah untuk melihat di sini.';
  @override
  String get tenantRecommended =>
      'Tiada Hartanah yang Disyorkan dijumpai\nSila cuba lagi nanti.';
  @override
  String get tenantAllProperty =>
      'Hartanah tidak tersedia\nSila cuba lagi nanti.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundMs
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Tiada penyelenggaraan ${status} dijumpai.';
  @override
  String get tenant =>
      'Tiada penyelenggaraan dijumpai! Anda boleh membuat permintaan penyelenggaraan untuk melihatnya di sini.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundMs
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Tiada permintaan bayaran balik ${status} dijumpai!\nAnda boleh melihat permintaan bayaran balik di sini apabila tersedia.';
  @override
  String get tenant =>
      'Tiada permintaan bayaran balik dijumpai!\nAnda boleh membuat permintaan bayaran balik untuk melihatnya di sini.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintMs
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Penyewa akan meluluskan bayaran balik apabila dia mendapat semula wang tersebut';
  @override
  String get tenantReqSuccess =>
      'Kami akan menyemak permintaan Bayaran Balik & meluluskannya dalam masa 24 jam.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyMs
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Sewa hartanah sedang berubah. Ia hanya sah (berkuat kuasa) untuk pembayaran sewa bulan depan.';
  @override
  String get deleteOnRent =>
      'Hartanah anda telah disewa oleh penyewa. Tidak boleh dipadamkan sehingga anda mengeluarkan penyewa terlebih dahulu';
  @override
  String get alreayRented =>
      'Hartanah ini telah disewa. Sila cuba lagi nanti.\n Atau anda boleh menghubungi pemilik rumah untuk maklumat lanjut.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationMs
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Tiada jemputan sewa dijumpai!\nSila cuba membuat jemputan sewa untuk melihat di sini.';
  @override
  String get tenantNoRentInvitation =>
      'Tiada jemputan sewa dijumpai!\nAnda boleh melihat jemputan sewa di sini apabila tersedia.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutMs implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Adakah anda pasti untuk log keluar?';
}

// Path: prompt.application
class _TranslationsPromptApplicationMs
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Mengapa anda menolak permohonan ini?';
  @override
  late final _TranslationsPromptApplicationApplicationSentMs applicationSent =
      _TranslationsPromptApplicationApplicationSentMs._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborMs implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteMs delete =
      _TranslationsPromptLaborDeleteMs._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestMs
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Mengapa permintaan ini ditolak?';
  @override
  String get processTitle =>
      'Adakah anda pasti memproses permintaan Penyelenggaraan ini?';
  @override
  String get completeTitle => 'Adakah kerja selesai?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodMs
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Padam Kaedah Pengeluaran?';
  @override
  String get deleteDescription =>
      'Adakah anda pasti untuk memadam kaedah pengeluaran ini?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesMs
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Adakah anda pasti untuk kembali?';
  @override
  String get message => 'Medan yang telah diubah tidak akan disimpan!';
}

// Path: prompt.property
class _TranslationsPromptPropertyMs implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteMs delete =
      _TranslationsPromptPropertyDeleteMs._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationMs
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveMs
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveMs._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptMs tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptMs._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredMs
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sesi Tamat';
  @override
  String get message => 'Sesi anda telah tamat. Sila log masuk semula';
  @override
  String get action => 'Log Masuk';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetMs
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tiada Sambungan Internet';
  @override
  String get message =>
      'Sila semak sambungan Wi-Fi atau rangkaian mudah alih anda dan cuba lagi';
  @override
  String get action => 'Cuba Lagi';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerMs
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Kebenaran diperlukan!';
  @override
  String get message =>
      'Anda perlu memberikan kebenaran dalam tetapan aplikasi. Adakah anda mahu membuka tetapan sekarang?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerMs
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pilih Pilihan';
  @override
  String get gallery => 'Galeri';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogMs
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pengesahan';
  @override
  String get message => 'Kami telah menghantar e-mel kod pengesahan';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} ke ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationMs
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Clear notificaions?';
  @override
  String get clearMessage => 'Are you sure to clear all notifications?';
}

// Path: form.fullName
class _TranslationsFormFullNameMs implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Masukkan ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsMs errors =
      _TranslationsFormFullNameErrorsMs._(_root);
}

// Path: form.email
class _TranslationsFormEmailMs implements TranslationsFormEmailEn {
  _TranslationsFormEmailMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Masukkan ${_root.common.email} anda';
  @override
  late final _TranslationsFormEmailErrorsMs errors =
      _TranslationsFormEmailErrorsMs._(_root);
}

// Path: form.password
class _TranslationsFormPasswordMs implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsMs errors =
      _TranslationsFormPasswordErrorsMs._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordMs
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Sahkan ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsMs errors =
      _TranslationsFormConfirmPasswordErrorsMs._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberMs
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsMs errors =
      _TranslationsFormMobileNumberErrorsMs._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Ms implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Ms._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Nombor rumah dan nama jalan';
  @override
  late final _TranslationsFormAddress1ErrorsMs errors =
      _TranslationsFormAddress1ErrorsMs._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Ms implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Ms._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Apartmen, suite, unit, dll';
  @override
  late final _TranslationsFormAddress2ErrorsMs errors =
      _TranslationsFormAddress2ErrorsMs._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeMs implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Masukkan ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsMs errors =
      _TranslationsFormPostalCodeErrorsMs._(_root);
}

// Path: form.city
class _TranslationsFormCityMs implements TranslationsFormCityEn {
  _TranslationsFormCityMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Masukkan nama ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsMs errors =
      _TranslationsFormCityErrorsMs._(_root);
}

// Path: form.state
class _TranslationsFormStateMs implements TranslationsFormStateEn {
  _TranslationsFormStateMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Masukkan nama ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsMs errors =
      _TranslationsFormStateErrorsMs._(_root);
}

// Path: form.country
class _TranslationsFormCountryMs implements TranslationsFormCountryEn {
  _TranslationsFormCountryMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Pilih ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsMs errors =
      _TranslationsFormCountryErrorsMs._(_root);
}

// Path: form.otp
class _TranslationsFormOtpMs implements TranslationsFormOtpEn {
  _TranslationsFormOtpMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsMs errors =
      _TranslationsFormOtpErrorsMs._(_root);
}

// Path: form.title
class _TranslationsFormTitleMs implements TranslationsFormTitleEn {
  _TranslationsFormTitleMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Tajuk';
  @override
  String get hint => 'Masukkan tajuk';
  @override
  late final _TranslationsFormTitleErrorsMs errors =
      _TranslationsFormTitleErrorsMs._(_root);
}

// Path: form.date
class _TranslationsFormDateMs implements TranslationsFormDateEn {
  _TranslationsFormDateMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Pilih ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsMs errors =
      _TranslationsFormDateErrorsMs._(_root);
}

// Path: form.reason
class _TranslationsFormReasonMs implements TranslationsFormReasonEn {
  _TranslationsFormReasonMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Sebab';
  @override
  String get hint => 'Masukkan sebab';
  @override
  late final _TranslationsFormReasonErrorsMs errors =
      _TranslationsFormReasonErrorsMs._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodMs
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Pilih ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsMs errors =
      _TranslationsFormWithdrawMethodErrorsMs._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldMs implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Muat Naik ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsMs errors =
      _TranslationsFormFileFieldErrorsMs._(_root);
}

// Path: form.note
class _TranslationsFormNoteMs implements TranslationsFormNoteEn {
  _TranslationsFormNoteMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Masukkan ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsMs errors =
      _TranslationsFormNoteErrorsMs._(_root);
}

// Path: form.gender
class _TranslationsFormGenderMs implements TranslationsFormGenderEn {
  _TranslationsFormGenderMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Pilih ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsMs errors =
      _TranslationsFormGenderErrorsMs._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldMs implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Masukkan ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsMs errors =
      _TranslationsFormAnyFieldErrorsMs._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownMs implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Pilih ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsMs errors =
      _TranslationsFormAnyDropdownErrorsMs._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageMs implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardMs implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataMs onboardData =
      _TranslationsPagesOnboardOnboardDataMs._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInMs implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Selamat Datang Kembali';
  @override
  String get subtitle =>
      'Log Masuk sekarang untuk memulakan perjalanan yang menakjubkan.';
  @override
  late final _TranslationsPagesSignInExtraMs extra =
      _TranslationsPagesSignInExtraMs._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordMs
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Lupa Kata Laluan';
  @override
  String get subtitle =>
      'Masukkan alamat Emel anda untuk mendapatkan semula kata laluan anda.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationMs
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pengesahan';
  @override
  String subtitle({required String email}) =>
      'Pin 4 digit telah dihantar ke alamat emel anda. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraMs extra =
      _TranslationsPagesOtpVerificationExtraMs._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordMs
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tetapkan Semula Kata Laluan';
  @override
  String get subtitle =>
      'Tetapkan semula kata laluan anda untuk pulih dan log masuk ke akaun anda';
  @override
  late final _TranslationsPagesResetPasswordExtraMs extra =
      _TranslationsPagesResetPasswordExtraMs._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpMs implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Cipta Akaun';
  @override
  String get subtitle =>
      'Daftar sekarang untuk memulakan perjalanan yang menakjubkan';
  @override
  late final _TranslationsPagesSignUpExtraMs extra =
      _TranslationsPagesSignUpExtraMs._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeMs implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Siapa anda?';
  @override
  String get subtitle => 'Sila pilih pilihan di bawah.';
  @override
  late final _TranslationsPagesWelcomeExtraMs extra =
      _TranslationsPagesWelcomeExtraMs._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsMs implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsMs
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListMs
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Notifikasi';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsMs implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraMs extra =
      _TranslationsPagesContactUsExtraMs._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingMs
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Mengapa anda mahu ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormMs form =
      _TranslationsPagesCancelRentingFormMs._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsMs
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Lihat Maklumat';
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentMs
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pembayaran Luar Talian';
  @override
  late final _TranslationsPagesOfflinePaymentFormMs form =
      _TranslationsPagesOfflinePaymentFormMs._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraMs extra =
      _TranslationsPagesOfflinePaymentExtraMs._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusMs
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessMs success =
      _TranslationsPagesPaymentStatusSuccessMs._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailMs fail =
      _TranslationsPagesPaymentStatusFailMs._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsMs
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraMs extra =
      _TranslationsPagesPropertyDetailsExtraMs._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchMs implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Carian';
  @override
  late final _TranslationsPagesSearchExtraMs extra =
      _TranslationsPagesSearchExtraMs._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanMs
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pilih Pelan Anda';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraMs extra =
      _TranslationsPagesSubscriptionPlanExtraMs._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportMs
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Jumlah Kos Penyelenggaraan: '),
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
class _TranslationsEnumsPropertyStatusMs
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Semua Hartanah';
  @override
  String get pending => 'Menunggu';
  @override
  String get active => 'Aktif';
  @override
  String get inactive => 'Tidak Aktif';
  @override
  String get rejected => 'Ditolak';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeMs
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Apartmen/Kondominium';
  @override
  String get house => 'Rumah';
  @override
  String get commercialProperty => 'Hartanah Komersial';
  @override
  String get land => 'Tanah';
  @override
  String get room => 'Bilik';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusMs
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Semua';
  @override
  String get pending => 'Menunggu';
  @override
  String get processing => 'Dalam Proses';
  @override
  String get approved => 'Diluluskan';
  @override
  String get rejected => 'Ditolak';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusMs
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Menunggu';
  @override
  String get processing => 'Dalam Proses';
  @override
  String get active => 'Aktif';
  @override
  String get expired => 'Tamat Tempoh';
  @override
  String get cancelled => 'Dibatalkan';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusMs
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Menunggu';
  @override
  String get processing => 'Dalam Proses';
  @override
  String get rejected => 'Ditolak';
  @override
  String get completed => 'Selesai';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeMs
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Persendirian (Individu)';
  @override
  String get company => 'Syarikat';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeMs implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Penyewa Baru';
  @override
  String get activeTenant => 'Penyewa Aktif';
  @override
  String get expiredTenant => 'Penyewa Tamat Tempoh';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusMs
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Semua';
  @override
  String get pending => 'Menunggu';
  @override
  String get paid => 'Diterima';
  @override
  String get unpaid => 'Belum Dibayar';
  @override
  String get rejected => 'Ditolak';
  @override
  String get refund => 'Bayaran Balik';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsMs
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Pembayaran Dalam Talian';
  @override
  String get offlinePayment => 'Pembayaran Luar Talian';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeMs
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Deposit Keselamatan';
  @override
  String get rentPayment => 'Bayaran Sewa';
  @override
  String get subscription => 'Langganan';
}

// Path: enums.gender
class _TranslationsEnumsGenderMs implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Lelaki';
  @override
  String get female => 'Perempuan';
  @override
  String get other => 'Lain-lain';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationMs implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Isteri';
  @override
  String get parent => 'Ibu bapa';
  @override
  String get friend => 'Kawan';
  @override
  String get brother => 'Abang';
  @override
  String get sister => 'Kakak';
  @override
  String get child => 'Anak';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeMs
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Kereta';
  @override
  String get motorcycles => 'Motosikal';
  @override
  String get lorry => 'Lori';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByMs implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Rendah ke Tinggi';
  @override
  String get highToLow => 'Tinggi ke Rendah';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeMs
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Flat';
  @override
  String get apartment => 'Apartmen';
  @override
  String get condominium => 'Kondominium';
  @override
  String get serviceResidence => 'Perumahan Perkhidmatan';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Dupleks';
  @override
  String get townhouseCondo => 'Kondominium Rumah Teres';
  @override
  String get others => 'Lain-lain';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeMs implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Tinggi';
  @override
  String get medium => 'Sederhana';
  @override
  String get low => 'Rendah';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsMs
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Perabot Lengkap';
  @override
  String get partiallyFurnished => 'Perabot Separa';
  @override
  String get notFurnished => 'Tidak Berperabot';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeMs
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Ruang pejabat';
  @override
  String get retailSpace => 'Ruang niaga';
  @override
  String get shopLot => 'Lot kedai';
  @override
  String get warehouseFactory => 'Gudang / Kilang';
  @override
  String get hotelResort => 'Hotel / Resort';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Lain-lain';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeMs
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Kediaman';
  @override
  String get industrial => 'Perindustrian';
  @override
  String get agricultural => 'Pertanian';
  @override
  String get commercial => 'Komersial';
  @override
  String get mixedDevelopment => 'Pembangunan Bercampur';
  @override
  String get others => 'Lain-lain';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeMs
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Kondominium / Rumah teres / Penthouse';
  @override
  String get apartment => 'Apartmen / Flat';
  @override
  String get house => 'Rumah';
  @override
  String get shoplot => 'Lot kedai';
  @override
  String get sharing => 'Berkongsi rumah / Flat';
  @override
  String get others => 'Lain-lain';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodMs
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 Bulan';
  @override
  String get oneYear => '1 Tahun';
  @override
  String get oneAndHalfYears => '1.5 Tahun';
  @override
  String get twoYears => '2 Tahun';
  @override
  String get twoAndHalfYears => '2.5 Tahun';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterMs
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'Harian';
  @override
  String get weekly => 'Mingguan';
  @override
  String get monthly => 'Bulanan';
  @override
  String get yearly => 'Tahunan';
  @override
  String get custom => 'Kustom';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsMs
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Permohonan anda';
  @override
  String get landlord => 'Permohonan penyewa';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentMs
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Permohonan dihantar dengan jayanya!';
  @override
  String get sucessDescription =>
      'Anda boleh melihat permohonan ini dalam senarai permohonan anda';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteMs
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Padam Buruh?';
  @override
  String get description => 'Adakah anda pasti untuk memadam buruh ini?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteMs
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Padam Hartanah?';
  @override
  String get message => 'Adakah anda pasti untuk memadam hartanah ini?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveMs
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Adakah anda pasti untuk meluluskan sewa ini?';
  @override
  String get description =>
      'Pastikan anda telah menyemak perjanjian yang ditandatangani oleh penyewa.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptMs
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Adakah anda pasti untuk menerima jemputan ini?';
  @override
  String get description =>
      'Pastikan anda telah memuat turun fail pdf perjanjian!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsMs
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan ${_root.common.fullName} anda';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsMs implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan alamat ${_root.common.email} anda';
  @override
  String get invalid => '⦸ Emel Tidak Sah, Sila Cuba Lagi';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsMs
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan ${_root.common.password} anda';
  @override
  String minLength({required Object count}) =>
      'Kata laluan mestilah sekurang-kurangnya ${count} aksara!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsMs
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan ${_root.common.password} anda';
  @override
  String get notMatched => 'Sahkan kata laluan tidak sepadan!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsMs
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan ${_root.common.mobileNumber} anda';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsMs
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan ${_root.form.address1.label} anda';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsMs
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan ${_root.form.address2.label} anda';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsMs
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan ${_root.common.postalCode} anda';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsMs implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan nama ${_root.common.city} anda.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsMs implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan nama ${_root.common.state} anda.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsMs
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila pilih ${_root.common.country} anda';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsMs implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan otp.';
  @override
  String get invalid => 'Sila masukkan otp yang betul.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsMs implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan tajuk';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsMs implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Sila pilih ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsMs
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan sebab';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsMs
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila pilih ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsMs
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Sila pilih ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsMs implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Sila masukkan ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsMs
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila pilih ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsMs
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Sila masukkan ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Sila masukkan @form.anyField.label yang sah';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsMs
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Sila pilih ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Sila pilih @form.anyDropdown.label yang sah';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataMs
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Ms data1 =
      _TranslationsPagesOnboardOnboardDataData1Ms._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Ms data2 =
      _TranslationsPagesOnboardOnboardDataData2Ms._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Ms data3 =
      _TranslationsPagesOnboardOnboardDataData3Ms._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraMs
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Ingat Saya';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Tidak mempunyai akaun? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraMs
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendMs codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendMs._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraMs
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogMs dialog =
      _TranslationsPagesResetPasswordExtraDialogMs._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraMs
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Sudah mempunyai akaun? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraMs
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Uruskan hartanah anda sendiri';
  @override
  String get tenantTag => 'Log masuk ke akaun sewa anda';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraMs
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Mesej...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormMs
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonMs reason =
      _TranslationsPagesCancelRentingFormReasonMs._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormMs
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteMs paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteMs._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraMs
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Jumlah Bayaran: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Nama Pemilik Akaun';
  @override
  String get accountNumber => 'Nombor Akaun';
  @override
  String get swiftCode => 'Kod Swift';
  @override
  String get branch => 'Cawangan';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pilih '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' Atau '),
      fileType('DOC'),
      const TextSpan(text: ' format fail sahaja. Saiz fail '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessMs
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Lihat Invois';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Kami akan menyemak pembayaran & meluluskannya dalam masa 24 jam.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailMs
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Cuba Lagi';
  @override
  String get title => 'Oops! Pembayaran Gagal';
  @override
  String get description =>
      'Transaksi anda telah gagal disebabkan oleh beberapa ralat teknikal.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraMs
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

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
      const TextSpan(text: 'Ciri-ciri '),
      fa('(Kemudahan & Ameniti)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Pilih Tempoh Sewa';
  @override
  String get writeAReview => '+ Tulis ulasan';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraMs
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Cari plot, flat, bilik...';
  @override
  String get noRecentSearch => 'Anda tidak mempunyai carian terkini.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraMs
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Pembayaran langganan berjaya.\nAnda boleh mengakses ciri-ciri langganan sekarang.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Ms
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Ms._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Cari Hartanah Anda';
  @override
  String get description =>
      'Kami memudahkan untuk mencari tempat yang sesuai dengan kehidupan anda - sama ada bilik, pangsapuri, atau rumah.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Ms
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Ms._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Apartmen Di Bandar';
  @override
  String get description =>
      'Kami menjimatkan masa anda dengan cepat mencocokkan anda dengan hartanah yang sempurna sebelum ia hilang supaya anda dapat menikmati rumah baru anda, atau menyenaraikan rumah anda sendiri secara percuma.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Ms
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Ms._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Rumah Keselesaan Anda';
  @override
  String get description =>
      'Jika anda mencari tempat tinggal, maka lihatlah rumah sewa kami. Kami mempunyai pelbagai jenis rumah untuk anda pilih dari seluruh negara.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendMs
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Kod dihantar dalam ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Hantar Semula Kod'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogMs
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Bertukar dengan jayanya!';
  @override
  String get subtitle =>
      'Log masuk dengan kata laluan baru anda.\n Mengalihkan anda ke Log Masuk...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonMs
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Tulis sebab';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsMs errors =
      _TranslationsPagesCancelRentingFormReasonErrorsMs._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteMs
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Nota Pembayaran (${_root.common.optional})';
  @override
  String get hint => 'Masukkan beberapa teks...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsMs
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsMs._(this._root);

  final TranslationsMs _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Sila masukkan sebab pembatalan sewa';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsMs {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Bahasa';
      case 'common.subscriptionPlan':
        return 'Pelan Langganan';
      case 'common.contactUs':
        return 'Hubungi Kami';
      case 'common.termsAndConditions':
        return 'Terma & Syarat';
      case 'common.aboutUs':
        return 'Tentang Kami';
      case 'common.logout':
        return 'Log Keluar';
      case 'common.editProfile':
        return 'Edit Profil';
      case 'common.fullName':
        return 'Nama Penuh';
      case 'common.email':
        return 'Emel';
      case 'common.mobileNumber':
        return 'Nombor Telefon Bimbit';
      case 'common.address':
        return 'Alamat';
      case 'common.postalCode':
        return 'Kod Pos';
      case 'common.city':
        return 'Bandar';
      case 'common.country':
        return 'Negara';
      case 'common.state':
        return 'Negeri';
      case 'common.password':
        return 'Kata Laluan';
      case 'common.forgotPassword':
        return 'Lupa Kata Laluan';
      case 'common.tenant':
        return 'Penyewa';
      case 'common.landlord':
        return 'Pemilik Rumah';
      case 'common.cancelRenting':
        return 'Batalkan Sewaan';
      case 'common.startDate':
        return 'Tarikh Mula';
      case 'common.endDate':
        return 'Tarikh Tamat';
      case 'common.fromDate':
        return 'Daripada Tarikh';
      case 'common.toDate':
        return 'Hingga Tarikh';
      case 'common.online':
        return 'Dalam Talian';
      case 'common.bankList':
        return 'Senarai Bank';
      case 'common.withdrawMethod':
        return 'Kaedah Pengeluaran';
      case 'common.uploadPaymentReceipt':
        return 'Muat Naik Resit Pembayaran';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Pembayaran memerlukan kelulusan manual oleh pentadbir dalam masa',
            ),
            const TextSpan(text: ' '),
            duraion('24~48 jam.'),
          ],
        );
      case 'common.reviews':
        return 'Ulasan';
      case 'common.description':
        return 'Keterangan';
      case 'common.about':
        return 'Mengenai';
      case 'common.propertyTypes':
        return 'Jenis Hartanah';
      case 'common.features':
        return 'Ciri-ciri';
      case 'common.floorPlans':
        return 'Pelan Lantai';
      case 'common.buildingDetails':
        return 'Maklumat Bangunan';
      case 'common.buildingName':
        return 'Nama Bangunan';
      case 'common.propertyAddress':
        return 'Alamat Hartanah';
      case 'common.completionYear':
        return 'Tahun Siap';
      case 'common.lotNumber':
        return 'Nombor Lot';
      case 'common.residentialType':
        return 'Jenis Residen';
      case 'common.furnishings':
        return 'Perabot';
      case 'common.floorRange':
        return 'Julat Tingkat';
      case 'common.bedrooms':
        return 'Bilik Tidur';
      case 'common.bathrooms':
        return 'Bilik Mandi';
      case 'common.propertySize':
        return 'Saiz Hartanah';
      case 'common.rentalPeriod':
        return 'Tempoh Sewa';
      case 'common.securityDeposit':
        return 'Deposit Keselamatan';
      case 'common.utilityBill':
        return 'Bil Utiliti';
      case 'common.facilities':
        return 'Kemudahan';
      case 'common.amenities':
        return 'Kemudahan';
      case 'common.expiringReason':
        return 'Sebab Tamat Tempoh';
      case 'common.tenantDetails':
        return 'Maklumat Penyewa';
      case 'common.typeOfTenant':
        return 'Jenis Penyewa';
      case 'common.tenantName':
        return 'Nama Penyewa';
      case 'common.nidPassport':
        return 'NID/Pasport';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID Penyewa';
      case 'common.dateOfBirth':
        return 'Tarikh Lahir';
      case 'common.gender':
        return 'Jantina';
      case 'common.nominee':
        return 'Penama';
      case 'common.name':
        return 'Nama';
      case 'common.optional':
        return 'Pilihan';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} No. Tel.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Hubungan Kecemasan';
      case 'common.relation':
        return 'Hubungan';
      case 'common.relationWith':
        return '${_root.common.relation} Dengan';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} Anda';
      case 'common.company':
        return 'Syarikat';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Tempat Kerja';
      case 'common.officePhoneNo':
        return 'Nombor Telefon Pejabat';
      case 'common.officeMobileNo':
        return 'Nombor Telefon Bimbit Pejabat';
      case 'common.vehicle':
        return 'Kenderaan';
      case 'common.vehiclesInfo.plain':
        return 'Maklumat Kenderaan';
      case 'common.vehiclesInfo.optional':
        return 'Maklumat Kenderaan (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Jenis';
      case 'common.vehicleRegistrationNo.normal':
        return 'Nombor Pendaftaran Kenderaan';
      case 'common.vehicleRegistrationNo.short':
        return 'No. Pendaftaran';
      case 'common.vehicleRegistrationNo.alt':
        return 'No. Plat';
      case 'common.vehicleBrand':
        return 'Jenama Kenderaan';
      case 'common.rentProperty':
        return 'Sewa Hartanah';
      case 'common.propertyDetails':
        return 'Maklumat Hartanah';
      case 'common.propertyId':
        return 'ID Hartanah';
      case 'common.propertyType':
        return 'Jenis Hartanah';
      case 'common.propertyName':
        return 'Nama Hartanah';
      case 'common.paymentDetails':
        return 'Maklumat Pembayaran';
      case 'common.monthlyRent':
        return 'Sewa Bulanan';
      case 'common.thisMonthPayment':
        return 'Pembayaran Bulan Ini';
      case 'common.totalPaidRent':
        return 'Jumlah Sewa Dibayar';
      case 'common.dueRent':
        return 'Sewa Tertunggak';
      case 'common.rentStartDate':
        return 'Tarikh Mula Sewa';
      case 'common.rentEndDate':
        return 'Tarikh Tamat Sewa';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'Perjanjian Sewa PDF';
      case 'common.noFile':
        return 'Tiada Fail';
      case 'common.tenantImageOp':
        return 'Gambar Penyewa (${_root.common.optional})';
      case 'common.addNewVechicle':
        return 'Tambah Kenderaan Baru';
      case 'common.uploadNidPassport':
        return 'Muat Naik NID/Pasport';
      case 'common.nidPassportUploadNote':
        return 'Hanya imej jenis fail akan diterima. Had fail sehingga 2.5 MB.';
      case 'common.search':
        return 'Carian';
      case 'common.sortBy':
        return 'Isih Mengikut';
      case 'common.subscription':
        return 'Langganan';
      case 'common.downloading':
        return 'Memuat Turun...';
      case 'common.downloadSuccess':
        return 'Fail dimuat turun dengan jayanya!';
      case 'common.addPropertyBannerTitle':
        return 'Ingin Menyewakan Hartanah Anda?';
      case 'common.application':
        return 'Permohonan';
      case 'common.tenantHasPaidDeposit':
        return 'Penyewa telah membayar deposit.';
      case 'common.askProcessingRentApplication':
        return 'Adakah anda pasti mahu memproses permohonan sewa hartanah ini?';
      case 'common.dateAndTime':
        return 'Tarikh & Masa';
      case 'common.applicationDetails':
        return 'Maklumat Permohonan';
      case 'common.depositStatus':
        return 'Status Deposit';
      case 'common.uploadRentAgreement':
        return 'Muat Naik Perjanjian Sewa';
      case 'common.uploadFilePDF':
        return 'Muat Naik Fail (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Sila pilih fail dokumen perjanjian.';
      case 'common.landlordRentAgreementPDF':
        return 'Perjanjian Sewa Pemilik Rumah PDF';
      case 'common.tenantRentAgreementPDF':
        return 'Perjanjian Sewa Penyewa PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Hanya meluluskan permohonan selepas penyewa membuat pembayaran deposit.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Sebab Penolakan';
      case 'common.youveRejectedThisApplication':
        return 'Anda telah menolak permohonan ini';
      case 'common.landlordDetails':
        return 'Maklumat Pemilik Rumah';
      case 'common.landlordName':
        return 'Nama Pemilik Rumah';
      case 'common.downloadRentAgreement':
        return 'Muat Turun Perjanjian Sewa';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Terima '),
            toc('Terma & Syarat'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Sila muat turun dan baca perjanjian. Sila hantar perjanjian yang ditandatangani kepada pemilik rumah melalui WhatsApp atau e-mel.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note(
              'Pemilik rumah meluluskan permohonan, apabila penyewa membayar deposit keselamatan, utiliti, dan bayaran sewa pendahuluan sebulan.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Perjanjian Sewa (PDF) '),
            complete('Perjanjian Lengkap'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota : '),
            note(
              'Pemilik rumah meluluskan permohonan, apabila penyewa membayar deposit keselamatan, utiliti, dan bayaran sewa pendahuluan sebulan.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'WhatsApp';
      case 'common.applicationList':
        return 'Senarai Permohonan';
      case 'common.viewDetails':
        return 'Lihat Maklumat';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Laman Utama';
      case 'common.dashboard':
        return 'Papan Pemuka';
      case 'common.tenants':
        return 'Penyewa';
      case 'common.maintenance':
        return 'Penyelenggaraan';
      case 'common.maintenanceList':
        return 'Senarai Penyelenggaraan';
      case 'common.maintenanceReport':
        return 'Laporan Penyelenggaraan';
      case 'common.labor':
        return 'Buruh';
      case 'common.applications':
        return 'Permohonan';
      case 'common.rentInvitation':
        return 'Jemputan Sewa';
      case 'common.payment':
        return 'Pembayaran';
      case 'common.rentPayment':
        return 'Bayaran Sewa';
      case 'common.depositUtilityPayment':
        return 'Deposit & Bayaran Utiliti';
      case 'common.refundRequest':
        return 'Permohonan Bayaran Balik';
      case 'common.withdrawRequest':
        return 'Permohonan Pengeluaran';
      case 'common.myProperty':
        return 'Hartanah Saya';
      case 'common.myRent':
        return 'Sewa Saya';
      case 'common.wishlist':
        return 'Senarai Keinginan';
      case 'common.properties':
        return 'Hartanah';
      case 'common.allProperties':
        return 'Semua Hartanah';
      case 'common.totalPropery':
        return 'Jumlah Hartanah';
      case 'common.occupied':
        return 'Dihuni';
      case 'common.vacant':
        return 'Kosong';
      case 'common.accounting':
        return 'Perakaunan';
      case 'common.totalIncome':
        return 'Jumlah Pendapatan';
      case 'common.totalExpense':
        return 'Jumlah Perbelanjaan';
      case 'common.currentBalance':
        return 'Baki Semasa';
      case 'common.totalWithdrawal':
        return 'Jumlah (Pengeluaran)';
      case 'common.totalProperties':
        return 'Jumlah Hartanah';
      case 'common.totalTenant':
        return 'Jumlah Penyewa';
      case 'common.totalRentPaid':
        return 'Jumlah Sewa Dibayar';
      case 'common.totalRentDue':
        return 'Jumlah Sewa Tertunggak';
      case 'common.totalApplication':
        return 'Jumlah Permohonan';
      case 'common.pendingApplication':
        return 'Permohonan Tertunggu';
      case 'common.processingApplication':
        return 'Permohonan Dalam Proses';
      case 'common.approveApplication':
        return 'Luluskan Permohonan';
      case 'common.rejectApplication':
        return 'Tolak Permohonan';
      case 'common.maintenanceCost':
        return 'Kos Penyelenggaraan';
      case 'common.transactionSummary':
        return 'Ringkasan Transaksi';
      case 'common.maintenanceRequest':
        return 'Permintaan Penyelenggaraan';
      case 'common.notifications':
        return 'Notifikasi';
      case 'common.myProperties':
        return 'Hartanah Saya';
      case 'common.recommendationProperties':
        return 'Cadangan Hartanah';
      case 'common.laborList':
        return 'Senarai Buruh';
      case 'common.addLabor':
        return 'Tambah Buruh';
      case 'common.laborDetails':
        return 'Maklumat Buruh';
      case 'common.laborSalary':
        return 'Gaji Buruh';
      case 'common.editLabor':
        return 'Edit Buruh';
      case 'common.addNewLabor':
        return 'Tambah Buruh Baru';
      case 'common.enterAmount':
        return 'Masukkan Jumlah';
      case 'common.maintenanceDetails':
        return 'Maklumat Penyelenggaraan';
      case 'common.laborName':
        return 'Nama Buruh';
      case 'common.comment':
        return 'Komen';
      case 'common.image':
        return 'Imej';
      case 'common.complete':
        return 'Selesai';
      case 'common.details':
        return 'Maklumat';
      case 'common.title':
        return 'Tajuk';
      case 'common.date':
        return 'Tarikh';
      case 'common.reason':
        return 'Sebab';
      case 'common.edit':
        return 'Edit';
      case 'common.property':
        return 'Hartanah';
      case 'common.completeYourProfile':
        return 'Lengkapkan Profil Anda';
      case 'common.profileImage':
        return 'Imej Profil';
      case 'common.imagePickHint':
        return 'Hanya JPEG & PNG Imej dengan saiz maksimum 120x120 piksel.';
      case 'common.invoiceId':
        return 'ID Invois';
      case 'common.depositAmount':
        return 'Jumlah Deposit';
      case 'common.landlordPhone':
        return 'Telefon Pemilik Rumah';
      case 'common.rentalAdvance':
        return 'Sewa Pendahuluan';
      case 'common.totalAmount':
        return 'Jumlah Keseluruhan';
      case 'common.rentalAmount':
        return 'Jumlah Sewa';
      case 'common.adminCharge':
        return 'Caj Pentadbiran';
      case 'common.editAccount':
        return 'Edit Akaun';
      case 'common.addNewAccount':
        return 'Tambah Akaun Baru';
      case 'common.transactionId':
        return 'ID Transaksi';
      case 'common.transactionType':
        return 'Jenis Transaksi';
      case 'common.requestDate':
        return 'Tarikh Permintaan';
      case 'common.amount':
        return 'Jumlah';
      case 'common.fee':
        return 'Yuran';
      case 'common.paymentStatus':
        return 'Status Pembayaran';
      case 'common.generatedTime':
        return 'Masa Dihasilkan';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text: 'Ini adalah laporan yang dihasilkan oleh sistem ',
            ),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Sejarah Pengeluaran';
      case 'common.history':
        return 'Sejarah';
      case 'common.withdrawAmount':
        return 'Jumlah Pengeluaran';
      case 'common.availableBalance':
        return 'Baki Boleh Digunakan';
      case 'common.withdrawCharge':
        return 'Caj Pengeluaran';
      case 'common.paymentMethod':
        return 'Kaedah Pembayaran';
      case 'common.requestSendSuccess':
        return 'Permintaan dihantar dengan jayanya!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Resit pembayaran dimuat naik dengan jayanya.';
      case 'common.refundReason':
        return 'Sebab Bayaran Balik';
      case 'common.note':
        return 'Nota';
      case 'common.refundReceiveSuccess':
        return 'Bayaran balik diterima dengan jayanya.';
      case 'common.downloadPaymentReceipt':
        return 'Muat Turun Resit Pembayaran';
      case 'common.invoice':
        return 'Invois';
      case 'common.selectPropertyToSeeInvoice':
        return 'Pilih hartanah untuk melihat nombor invois...';
      case 'common.bankAccName':
        return 'Nama Akaun Bank';
      case 'common.bankName':
        return 'Nama Bank';
      case 'common.bankAccNum':
        return 'Nombor Akaun Bank';
      case 'common.thankYou':
        return 'Terima Kasih!';
      case 'common.basicInfo':
        return 'Maklumat Asas';
      case 'common.descriptionPricing':
        return 'Keterangan & Harga';
      case 'common.contact':
        return 'Hubungi';
      case 'common.photos':
        return 'Foto';
      case 'common.successfullySubmitted':
        return 'Dihantar dengan jayanya!';
      case 'common.editProperty':
        return 'Edit Hartanah';
      case 'common.addNewProperty':
        return 'Tambah Hartanah Baru';
      case 'common.propertyManageRequestSuccess':
        return 'Iklan anda telah dihantar untuk semakan.';
      case 'common.postAnotherProperty':
        return 'Pos Hartanah Lain';
      case 'common.browseYourProperty':
        return 'Semak Hartanah Anda';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Langkah '),
                step,
                const TextSpan(text: ' daripada '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Apakah yang ingin anda pos?';
      case 'common.category':
        return 'Kategori';
      case 'common.invalidCategory':
        return 'Kategori tidak sah';
      case 'common.unitNumber':
        return 'Nombor Unit';
      case 'common.sqft':
        return 'sq.ft.';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Saiz hartanah mesti lebih besar daripada sifar';
      case 'common.whatAreTheFacility':
        return 'Apakah kemudahannya?';
      case 'common.whatAreTheAmenity':
        return 'Apakah kemudahannya?';
      case 'common.parkingLot':
        return 'Tempat Letak Kereta';
      case 'common.houseType':
        return 'Jenis Rumah';
      case 'common.value':
        return 'Nilai';
      case 'common.unitLotSize':
        return 'Saiz Unit / Lot';
      case 'common.landSize':
        return 'Saiz Tanah';
      case 'common.acres':
        return 'ekar';
      case 'common.roomSize':
        return 'Saiz Bilik';
      case 'common.askTenantPreference':
        return 'Apakah pilihan penyewa anda';
      case 'common.couple':
        return 'Pasangan';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Huraikan ${propertyType}';
      case 'common.adTitle':
        return 'Tajuk Iklan';
      case 'common.minimumRentalPeriod':
        return 'Tempoh Sewa Minimum';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Sembunyikan atau paparkan alamat e-mel';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Terima kasih kerana menyiarkan di ${appName}!';
      case 'common.propertyList':
        return 'Senarai Hartanah';
      case 'common.newInviteRent':
        return 'Jemputan Sewa Baru';
      case 'common.rentAgreement':
        return 'Perjanjian Sewa';
      case 'common.rentDetails':
        return 'Maklumat Sewa';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota: '),
            note('Sila tunggu sehingga penyewa menerima jemputan.'),
          ],
        );
      case 'common.rent':
        return 'Sewa';
      case 'common.editTenant':
        return 'Edit Penyewa';
      case 'common.addNewTenant':
        return 'Tambah Penyewa Baru';
      case 'common.shareInstallLink':
        return 'Kongsi Pautan Pemasangan';
      case 'common.tenantList':
        return 'Senarai Penyewa';
      case 'common.editMaintenanceRequest':
        return 'Edit Permintaan Penyelenggaraan';
      case 'common.addNewMaintenance':
        return 'Tambah Penyelenggaraan Baru';
      case 'common.landlordId':
        return 'ID Pemilik Rumah';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Nota '),
            note(
              'Perjanjian anda sedang dikaji semula. Sila tunggu sehingga pemilik rumah meluluskan sewa anda.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Edit Ulasan';
      case 'common.writeAReview':
        return 'Tulis ulasan';
      case 'common.selectRating':
        return 'Pilih Penilaian';
      case 'common.enterYourOpinion':
        return 'Masukkan Pendapat Anda';
      case 'common.askToEnterReviewMsg':
        return 'Sila masukkan mesej ulasan';
      case 'common.pressBackAgainToExit':
        return 'Tekan belakang sekali lagi untuk keluar.';
      case 'common.selectPaymentMethod':
        return 'Pilih Kaedah Pembayaran';
      case 'common.filter':
        return 'Tapis';
      case 'common.perMonth':
        return '/1 Bulan';
      case 'common.searchHintWithAppName':
        return ({required String appName}) =>
            'Cari apa sahaja dalam ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Terdapat ralat, sila cuba lagi';
      case 'exceptions.noNidPassport':
        return 'Tiada imej NID/Pasport disediakan.';
      case 'exceptions.noRentPropertyFound':
        return 'Tiada hartanah sewa dijumpai untuk penyewa ini.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Tiada hartanah dijumpai!\nSila cuba dengan kata kunci yang berbeza';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Tiada pelan langganan dijumpai!\nSila segar semula halaman dan cuba lagi.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Maklumat ${dataType} tidak sah! Sila segar semula halaman dan cuba lagi.';
      case 'exceptions.invalidDownloadUrl':
        return 'URL muat turun tidak sah!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => 'Gagal menyimpan fail! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => 'Ralat membuka fail! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Tiada maklumat kenderaan diberikan.';
      case 'exceptions.yourApplicationRejected':
        return 'Permohonan anda telah ditolak';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Tiada permohonan dijumpai!\n${subject} akan dipaparkan di sini apabila tersedia.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Permohonan anda';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Permohonan penyewa';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Tiada hartanah dijumpai!\nSila cuba tambah hartanah untuk melihat di sini.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Tiada Hartanah yang Disyorkan dijumpai\nSila cuba lagi nanti.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Hartanah tidak tersedia\nSila cuba lagi nanti.';
      case 'exceptions.noImageProvided':
        return 'Tiada Imej Disediakan';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Tiada penyelenggaraan ${status} dijumpai.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Tiada penyelenggaraan dijumpai! Anda boleh membuat permintaan penyelenggaraan untuk melihatnya di sini.';
      case 'exceptions.noDepositFound':
        return 'Tiada deposit keselamatan dijumpai!\nSila lihat deposit keselamatan apabila tersedia';
      case 'exceptions.noRentPaymentFound':
        return 'Tiada bayaran sewa dijumpai!\nSila lihat bayaran sewa apabila tersedia';
      case 'exceptions.transactionSummaryApiException':
        return 'Gagal mendapatkan ringkasan transaksi.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Tiada permintaan dijumpai!\nSila cuba buat permintaan pengeluaran untuk melihat di sini.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Permintaan pengeluaran ini belum diluluskan!.';
      case 'exceptions.nonZeroError':
        return 'Sila masukkan jumlah yang sah lebih besar daripada sifar.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Jumlah mestilah sekurang-kurangnya ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Jumlah tidak boleh melebihi ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Sila pilih kaedah pembayaran terlebih dahulu.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Tiada permintaan bayaran balik ${status} dijumpai!\nAnda boleh melihat permintaan bayaran balik di sini apabila tersedia.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Tiada permintaan bayaran balik dijumpai!\nAnda boleh membuat permintaan bayaran balik untuk melihatnya di sini.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Penyewa akan meluluskan bayaran balik apabila dia mendapat semula wang tersebut';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Kami akan menyemak permintaan Bayaran Balik & meluluskannya dalam masa 24 jam.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Sila pilih bilangan ${value}';
      case 'exceptions.invalidDateRange':
        return 'Julat tarikh tidak sah.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} mestilah lebih besar daripada sifar.';
      case 'exceptions.editProperty.rentalChange':
        return 'Sewa hartanah sedang berubah. Ia hanya sah (berkuat kuasa) untuk pembayaran sewa bulan depan.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Hartanah anda telah disewa oleh penyewa. Tidak boleh dipadamkan sehingga anda mengeluarkan penyewa terlebih dahulu';
      case 'exceptions.editProperty.alreayRented':
        return 'Hartanah ini telah disewa. Sila cuba lagi nanti.\n Atau anda boleh menghubungi pemilik rumah untuk maklumat lanjut.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Tiada jemputan sewa dijumpai!\nSila cuba membuat jemputan sewa untuk melihat di sini.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Tiada jemputan sewa dijumpai!\nAnda boleh melihat jemputan sewa di sini apabila tersedia.';
      case 'exceptions.notenantFoundList':
        return 'Tiada penyewa!\nSila cuba tambah penyewa untuk melihat di sini.';
      case 'exceptions.noFeaturesProvided':
        return 'Tiada ciri-ciri disediakan.';
      case 'exceptions.noNotificationFound':
        return 'Tiada pemberitahuan tersedia.\nAnda boleh melihat pemberitahuan anda di sini apabila tersedia.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Adakah anda pasti untuk log keluar?';
      case 'prompt.application.rejectTitle':
        return 'Mengapa anda menolak permohonan ini?';
      case 'prompt.application.applicationSent.successfully':
        return 'Permohonan dihantar dengan jayanya!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Anda boleh melihat permohonan ini dalam senarai permohonan anda';
      case 'prompt.labor.delete.title':
        return 'Padam Buruh?';
      case 'prompt.labor.delete.description':
        return 'Adakah anda pasti untuk memadam buruh ini?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Mengapa permintaan ini ditolak?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Adakah anda pasti memproses permintaan Penyelenggaraan ini?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Adakah kerja selesai?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Padam Kaedah Pengeluaran?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Adakah anda pasti untuk memadam kaedah pengeluaran ini?';
      case 'prompt.unsavedChanges.title':
        return 'Adakah anda pasti untuk kembali?';
      case 'prompt.unsavedChanges.message':
        return 'Medan yang telah diubah tidak akan disimpan!';
      case 'prompt.property.delete.title':
        return 'Padam Hartanah?';
      case 'prompt.property.delete.message':
        return 'Adakah anda pasti untuk memadam hartanah ini?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Adakah anda pasti untuk meluluskan sewa ini?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Pastikan anda telah menyemak perjanjian yang ditandatangani oleh penyewa.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Adakah anda pasti untuk menerima jemputan ini?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Pastikan anda telah memuat turun fail pdf perjanjian!';
      case 'prompt.sessionExpired.title':
        return 'Sesi Tamat';
      case 'prompt.sessionExpired.message':
        return 'Sesi anda telah tamat. Sila log masuk semula';
      case 'prompt.sessionExpired.action':
        return 'Log Masuk';
      case 'prompt.noInternet.title':
        return 'Tiada Sambungan Internet';
      case 'prompt.noInternet.message':
        return 'Sila semak sambungan Wi-Fi atau rangkaian mudah alih anda dan cuba lagi';
      case 'prompt.noInternet.action':
        return 'Cuba Lagi';
      case 'prompt.permissionHandler.title':
        return 'Kebenaran diperlukan!';
      case 'prompt.permissionHandler.message':
        return 'Anda perlu memberikan kebenaran dalam tetapan aplikasi. Adakah anda mahu membuka tetapan sekarang?';
      case 'prompt.imagePicker.title':
        return 'Pilih Pilihan';
      case 'prompt.imagePicker.gallery':
        return 'Galeri';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Pengesahan';
      case 'prompt.verificationDialog.message':
        return 'Kami telah menghantar e-mel kod pengesahan';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} ke ${email}';
      case 'prompt.notification.clearTitle':
        return 'Clear notificaions?';
      case 'prompt.notification.clearMessage':
        return 'Are you sure to clear all notifications?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Masukkan ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Sila masukkan ${_root.common.fullName} anda';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Masukkan ${_root.common.email} anda';
      case 'form.email.errors.required':
        return 'Sila masukkan alamat ${_root.common.email} anda';
      case 'form.email.errors.invalid':
        return '⦸ Emel Tidak Sah, Sila Cuba Lagi';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Sila masukkan ${_root.common.password} anda';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Kata laluan mestilah sekurang-kurangnya ${count} aksara!';
      case 'form.confirmPassword.label':
        return 'Sahkan ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Sila masukkan ${_root.common.password} anda';
      case 'form.confirmPassword.errors.notMatched':
        return 'Sahkan kata laluan tidak sepadan!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Sila masukkan ${_root.common.mobileNumber} anda';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Nombor rumah dan nama jalan';
      case 'form.address1.errors.required':
        return 'Sila masukkan ${_root.form.address1.label} anda';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Apartmen, suite, unit, dll';
      case 'form.address2.errors.required':
        return 'Sila masukkan ${_root.form.address2.label} anda';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Masukkan ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Sila masukkan ${_root.common.postalCode} anda';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Masukkan nama ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Sila masukkan nama ${_root.common.city} anda.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Masukkan nama ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Sila masukkan nama ${_root.common.state} anda.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Pilih ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Sila pilih ${_root.common.country} anda';
      case 'form.otp.errors.required':
        return 'Sila masukkan otp.';
      case 'form.otp.errors.invalid':
        return 'Sila masukkan otp yang betul.';
      case 'form.title.label':
        return 'Tajuk';
      case 'form.title.hint':
        return 'Masukkan tajuk';
      case 'form.title.errors.required':
        return 'Sila masukkan tajuk';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Pilih ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Sila pilih ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Sebab';
      case 'form.reason.hint':
        return 'Masukkan sebab';
      case 'form.reason.errors.required':
        return 'Sila masukkan sebab';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Pilih ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Sila pilih ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Muat Naik ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Sila pilih ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Masukkan ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Sila masukkan ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Pilih ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Sila pilih ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Masukkan ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Sila masukkan ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Sila masukkan @form.anyField.label yang sah';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Pilih ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Sila pilih ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Sila pilih @form.anyDropdown.label yang sah';
      case 'action.next':
        return 'Seterusnya';
      case 'action.getStarted':
        return 'Mulakan';
      case 'action.skip':
        return 'Langkau';
      case 'action.select':
        return 'Pilih';
      case 'action.save':
        return 'Simpan';
      case 'action.signIn':
        return 'Log Masuk';
      case 'action.signUp':
        return 'Daftar';
      case 'action.kContinue':
        return 'Teruskan';
      case 'action.clearAll':
        return 'Kosongkan Semua';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Hantar';
      case 'action.pay':
        return 'Bayar';
      case 'action.remove':
        return 'Buang';
      case 'action.goBack':
        return 'Kembali';
      case 'action.buyNow':
        return 'Beli Sekarang';
      case 'action.no':
        return 'Tidak';
      case 'action.open':
        return 'Buka';
      case 'action.addProperty':
        return 'Tambah Hartanah';
      case 'action.process':
        return 'Proses';
      case 'action.approve':
        return 'Luluskan';
      case 'action.reject':
        return 'Tolak';
      case 'action.viewRent':
        return 'Lihat Sewa';
      case 'action.openNavigationMenu':
        return 'Buka menu navigasi';
      case 'action.seeAll':
        return 'Lihat Semua';
      case 'action.update':
        return 'Kemas kini';
      case 'action.printTransaction':
        return 'Cetak Transaksi';
      case 'action.payoutRequest':
        return 'Permintaan Pembayaran';
      case 'action.addNew':
        return '+ Tambah Baru';
      case 'action.sendRequest':
        return 'Hantar Permintaan';
      case 'action.print':
        return 'Cetak';
      case 'action.requestForRefund':
        return 'Permintaan Bayaran Balik';
      case 'action.previous':
        return 'Sebelum';
      case 'action.delete':
        return 'Padam';
      case 'action.applyProperty':
        return 'Mohon Hartanah';
      case 'action.viewApplication':
        return 'Lihat Permohonan';
      case 'action.inviteTenant':
        return 'Jemput Penyewa';
      case 'action.inviteRent':
        return 'Jemput Sewa';
      case 'action.cancel':
        return 'Batal';
      case 'action.accept':
        return 'Terima';
      case 'action.submit':
        return 'Hantar';
      case 'action.yes':
        return 'Ya';
      case 'action.okay':
        return 'Okey';
      case 'action.confirm':
        return 'Sahkan';
      case 'action.apply':
        return 'Mohon';
      case 'action.reset':
        return 'Tetapkan Semula';
      case 'action.retry':
        return 'Cuba Lagi';
      case 'action.viewAll':
        return 'Lihat Semua';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Cari Hartanah Anda';
      case 'pages.onboard.onboardData.data1.description':
        return 'Kami memudahkan untuk mencari tempat yang sesuai dengan kehidupan anda - sama ada bilik, pangsapuri, atau rumah.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Apartmen Di Bandar';
      case 'pages.onboard.onboardData.data2.description':
        return 'Kami menjimatkan masa anda dengan cepat mencocokkan anda dengan hartanah yang sempurna sebelum ia hilang supaya anda dapat menikmati rumah baru anda, atau menyenaraikan rumah anda sendiri secara percuma.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Rumah Keselesaan Anda';
      case 'pages.onboard.onboardData.data3.description':
        return 'Jika anda mencari tempat tinggal, maka lihatlah rumah sewa kami. Kami mempunyai pelbagai jenis rumah untuk anda pilih dari seluruh negara.';
      case 'pages.signIn.title':
        return 'Selamat Datang Kembali';
      case 'pages.signIn.subtitle':
        return 'Log Masuk sekarang untuk memulakan perjalanan yang menakjubkan.';
      case 'pages.signIn.extra.rememberMe':
        return 'Ingat Saya';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Tidak mempunyai akaun? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Lupa Kata Laluan';
      case 'pages.forgotPassword.subtitle':
        return 'Masukkan alamat Emel anda untuk mendapatkan semula kata laluan anda.';
      case 'pages.otpVerification.title':
        return 'Pengesahan';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Pin 4 digit telah dihantar ke alamat emel anda. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Kod dihantar dalam ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Hantar Semula Kod'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Tetapkan Semula Kata Laluan';
      case 'pages.resetPassword.subtitle':
        return 'Tetapkan semula kata laluan anda untuk pulih dan log masuk ke akaun anda';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Bertukar dengan jayanya!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Log masuk dengan kata laluan baru anda.\n Mengalihkan anda ke Log Masuk...';
      case 'pages.signUp.title':
        return 'Cipta Akaun';
      case 'pages.signUp.subtitle':
        return 'Daftar sekarang untuk memulakan perjalanan yang menakjubkan';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Sudah mempunyai akaun? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Siapa anda?';
      case 'pages.welcome.subtitle':
        return 'Sila pilih pilihan di bawah.';
      case 'pages.welcome.extra.landlordTag':
        return 'Uruskan hartanah anda sendiri';
      case 'pages.welcome.extra.tenantTag':
        return 'Log masuk ke akaun sewa anda';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Notifikasi';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Mesej...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Mengapa anda mahu ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Tulis sebab';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Sila masukkan sebab pembatalan sewa';
      case 'pages.invoiceDetails.appbarTitle':
        return 'Lihat Maklumat';
      case 'pages.offlinePayment.appbarTitle':
        return 'Pembayaran Luar Talian';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Nota Pembayaran (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Masukkan beberapa teks...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Jumlah Bayaran: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Nama Pemilik Akaun';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Nombor Akaun';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Kod Swift';
      case 'pages.offlinePayment.extra.branch':
        return 'Cawangan';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Pilih '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' Atau '),
            fileType('DOC'),
            const TextSpan(text: ' format fail sahaja. Saiz fail '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Lihat Invois';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Kami akan menyemak pembayaran & meluluskannya dalam masa 24 jam.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Cuba Lagi';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Pembayaran Gagal';
      case 'pages.paymentStatus.fail.description':
        return 'Transaksi anda telah gagal disebabkan oleh beberapa ralat teknikal.';
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
            const TextSpan(text: 'Ciri-ciri '),
            fa('(Kemudahan & Ameniti)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Pilih Tempoh Sewa';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Tulis ulasan';
      case 'pages.search.appbarTitle':
        return 'Carian';
      case 'pages.search.extra.hint':
        return 'Cari plot, flat, bilik...';
      case 'pages.search.extra.noRecentSearch':
        return 'Anda tidak mempunyai carian terkini.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Pilih Pelan Anda';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Pembayaran langganan berjaya.\nAnda boleh mengakses ciri-ciri langganan sekarang.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Jumlah Kos Penyelenggaraan: '),
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
        return 'Semua Hartanah';
      case 'enums.propertyStatus.pending':
        return 'Menunggu';
      case 'enums.propertyStatus.active':
        return 'Aktif';
      case 'enums.propertyStatus.inactive':
        return 'Tidak Aktif';
      case 'enums.propertyStatus.rejected':
        return 'Ditolak';
      case 'enums.propertyType.apartmentCondominium':
        return 'Apartmen/Kondominium';
      case 'enums.propertyType.house':
        return 'Rumah';
      case 'enums.propertyType.commercialProperty':
        return 'Hartanah Komersial';
      case 'enums.propertyType.land':
        return 'Tanah';
      case 'enums.propertyType.room':
        return 'Bilik';
      case 'enums.applicationStatus.all':
        return 'Semua';
      case 'enums.applicationStatus.pending':
        return 'Menunggu';
      case 'enums.applicationStatus.processing':
        return 'Dalam Proses';
      case 'enums.applicationStatus.approved':
        return 'Diluluskan';
      case 'enums.applicationStatus.rejected':
        return 'Ditolak';
      case 'enums.myRentStatus.pending':
        return 'Menunggu';
      case 'enums.myRentStatus.processing':
        return 'Dalam Proses';
      case 'enums.myRentStatus.active':
        return 'Aktif';
      case 'enums.myRentStatus.expired':
        return 'Tamat Tempoh';
      case 'enums.myRentStatus.cancelled':
        return 'Dibatalkan';
      case 'enums.maintenanceStatus.pending':
        return 'Menunggu';
      case 'enums.maintenanceStatus.processing':
        return 'Dalam Proses';
      case 'enums.maintenanceStatus.rejected':
        return 'Ditolak';
      case 'enums.maintenanceStatus.completed':
        return 'Selesai';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Persendirian (Individu)';
      case 'enums.tenantProfileType.company':
        return 'Syarikat';
      case 'enums.tenantType.newTenant':
        return 'Penyewa Baru';
      case 'enums.tenantType.activeTenant':
        return 'Penyewa Aktif';
      case 'enums.tenantType.expiredTenant':
        return 'Penyewa Tamat Tempoh';
      case 'enums.paymentStatus.all':
        return 'Semua';
      case 'enums.paymentStatus.pending':
        return 'Menunggu';
      case 'enums.paymentStatus.paid':
        return 'Diterima';
      case 'enums.paymentStatus.unpaid':
        return 'Belum Dibayar';
      case 'enums.paymentStatus.rejected':
        return 'Ditolak';
      case 'enums.paymentStatus.refund':
        return 'Bayaran Balik';
      case 'enums.paymentOptions.onlinePayment':
        return 'Pembayaran Dalam Talian';
      case 'enums.paymentOptions.offlinePayment':
        return 'Pembayaran Luar Talian';
      case 'enums.paymentType.securityDeposit':
        return 'Deposit Keselamatan';
      case 'enums.paymentType.rentPayment':
        return 'Bayaran Sewa';
      case 'enums.paymentType.subscription':
        return 'Langganan';
      case 'enums.gender.male':
        return 'Lelaki';
      case 'enums.gender.female':
        return 'Perempuan';
      case 'enums.gender.other':
        return 'Lain-lain';
      case 'enums.ecRelation.wife':
        return 'Isteri';
      case 'enums.ecRelation.parent':
        return 'Ibu bapa';
      case 'enums.ecRelation.friend':
        return 'Kawan';
      case 'enums.ecRelation.brother':
        return 'Abang';
      case 'enums.ecRelation.sister':
        return 'Kakak';
      case 'enums.ecRelation.child':
        return 'Anak';
      case 'enums.vehicleType.car':
        return 'Kereta';
      case 'enums.vehicleType.motorcycles':
        return 'Motosikal';
      case 'enums.vehicleType.lorry':
        return 'Lori';
      case 'enums.sortBy.lowToHigh':
        return 'Rendah ke Tinggi';
      case 'enums.sortBy.highToLow':
        return 'Tinggi ke Rendah';
      case 'enums.residentialType.flat':
        return 'Flat';
      case 'enums.residentialType.apartment':
        return 'Apartmen';
      case 'enums.residentialType.condominium':
        return 'Kondominium';
      case 'enums.residentialType.serviceResidence':
        return 'Perumahan Perkhidmatan';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Dupleks';
      case 'enums.residentialType.townhouseCondo':
        return 'Kondominium Rumah Teres';
      case 'enums.residentialType.others':
        return 'Lain-lain';
      case 'enums.floorRange.high':
        return 'Tinggi';
      case 'enums.floorRange.medium':
        return 'Sederhana';
      case 'enums.floorRange.low':
        return 'Rendah';
      case 'enums.furnishings.fullyFurnished':
        return 'Perabot Lengkap';
      case 'enums.furnishings.partiallyFurnished':
        return 'Perabot Separa';
      case 'enums.furnishings.notFurnished':
        return 'Tidak Berperabot';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Ruang pejabat';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Ruang niaga';
      case 'enums.commercialPropertyType.shopLot':
        return 'Lot kedai';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Gudang / Kilang';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Resort';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Lain-lain';
      case 'enums.landPropertyType.residential':
        return 'Kediaman';
      case 'enums.landPropertyType.industrial':
        return 'Perindustrian';
      case 'enums.landPropertyType.agricultural':
        return 'Pertanian';
      case 'enums.landPropertyType.commercial':
        return 'Komersial';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Pembangunan Bercampur';
      case 'enums.landPropertyType.others':
        return 'Lain-lain';
      case 'enums.residentPropertyType.condo':
        return 'Kondominium / Rumah teres / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Apartmen / Flat';
      case 'enums.residentPropertyType.house':
        return 'Rumah';
      case 'enums.residentPropertyType.shoplot':
        return 'Lot kedai';
      case 'enums.residentPropertyType.sharing':
        return 'Berkongsi rumah / Flat';
      case 'enums.residentPropertyType.others':
        return 'Lain-lain';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 Bulan';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 Tahun';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1.5 Tahun';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 Tahun';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2.5 Tahun';
      case 'enums.dropdownDateFilter.daily':
        return 'Harian';
      case 'enums.dropdownDateFilter.weekly':
        return 'Mingguan';
      case 'enums.dropdownDateFilter.monthly':
        return 'Bulanan';
      case 'enums.dropdownDateFilter.yearly':
        return 'Tahunan';
      case 'enums.dropdownDateFilter.custom':
        return 'Kustom';
      default:
        return null;
    }
  }
}
