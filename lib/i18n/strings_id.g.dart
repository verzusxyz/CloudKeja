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
class TranslationsId implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsId({
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
             locale: AppLocale.id,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <id>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsId _root = this; // ignore: unused_field

  @override
  TranslationsId $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsId(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonId common = _TranslationsCommonId._(_root);
  @override
  late final _TranslationsExceptionsId exceptions = _TranslationsExceptionsId._(
    _root,
  );
  @override
  late final _TranslationsPromptId prompt = _TranslationsPromptId._(_root);
  @override
  late final _TranslationsFormId form = _TranslationsFormId._(_root);
  @override
  late final _TranslationsActionId action = _TranslationsActionId._(_root);
  @override
  late final _TranslationsPagesId pages = _TranslationsPagesId._(_root);
  @override
  late final _TranslationsEnumsId enums = _TranslationsEnumsId._(_root);
}

// Path: common
class _TranslationsCommonId implements TranslationsCommonEn {
  _TranslationsCommonId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'Profil';
  @override
  String get language => 'Bahasa';
  @override
  String get subscriptionPlan => 'Paket Berlangganan';
  @override
  String get contactUs => 'Hubungi Kami';
  @override
  String get termsAndConditions => 'Syarat & Ketentuan';
  @override
  String get aboutUs => 'Tentang Kami';
  @override
  String get logout => 'Keluar';
  @override
  String get editProfile => 'Edit Profil';
  @override
  String get fullName => 'Nama Lengkap';
  @override
  String get email => 'Email';
  @override
  String get mobileNumber => 'Nomor Telepon';
  @override
  String get address => 'Alamat';
  @override
  String get postalCode => 'Kode Pos';
  @override
  String get city => 'Kota';
  @override
  String get country => 'Negara';
  @override
  String get state => 'Provinsi';
  @override
  String get password => 'Kata Sandi';
  @override
  String get forgotPassword => 'Lupa kata sandi';
  @override
  String get tenant => 'Penyewa';
  @override
  String get landlord => 'Pemilik';
  @override
  String get cancelRenting => 'Batalkan Sewa';
  @override
  String get startDate => 'Tanggal Mulai';
  @override
  String get endDate => 'Tanggal Selesai';
  @override
  String get fromDate => 'Dari Tanggal';
  @override
  String get toDate => 'Sampai Tanggal';
  @override
  String get online => 'Online';
  @override
  String get bankList => 'Daftar Bank';
  @override
  String get withdrawMethod => 'Metode Penarikan';
  @override
  String get uploadPaymentReceipt => 'Unggah Bukti Pembayaran';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Catatan: '),
      note('Pembayaran memerlukan persetujuan manual oleh admin dalam'),
      const TextSpan(text: ' '),
      duraion('24~48 jam.'),
    ],
  );
  @override
  String get reviews => 'Ulasan';
  @override
  String get description => 'Deskripsi';
  @override
  String get about => 'Tentang';
  @override
  String get propertyTypes => 'Jenis Properti';
  @override
  String get features => 'Fitur';
  @override
  String get floorPlans => 'Denah Lantai';
  @override
  String get buildingDetails => 'Detail Bangunan';
  @override
  String get buildingName => 'Nama Bangunan';
  @override
  String get propertyAddress => 'Alamat Properti';
  @override
  String get completionYear => 'Tahun Selesai';
  @override
  String get lotNumber => 'Nomor Lot';
  @override
  String get residentialType => 'Jenis Hunian';
  @override
  String get furnishings => 'Perabotan';
  @override
  String get floorRange => 'Rentang Lantai';
  @override
  String get bedrooms => 'Kamar Tidur';
  @override
  String get bathrooms => 'Kamar Mandi';
  @override
  String get propertySize => 'Ukuran Properti';
  @override
  String get rentalPeriod => 'Periode Sewa';
  @override
  String get securityDeposit => 'Deposit Keamanan';
  @override
  String get utilityBill => 'Tagihan Utilitas';
  @override
  String get facilities => 'Fasilitas';
  @override
  String get amenities => 'Fasilitas';
  @override
  String get expiringReason => 'Alasan Kedaluwarsa';
  @override
  String get tenantDetails => 'Detail Penyewa';
  @override
  String get typeOfTenant => 'Jenis Penyewa';
  @override
  String get tenantName => 'Nama Penyewa';
  @override
  String get nidPassport => 'NID/Paspor';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'ID Penyewa';
  @override
  String get dateOfBirth => 'Tanggal Lahir';
  @override
  String get gender => 'Jenis Kelamin';
  @override
  String get nominee => 'Nominasi';
  @override
  String get name => 'Nama';
  @override
  String get optional => 'Opsional';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileId nomineeMobile =
      _TranslationsCommonNomineeMobileId._(_root);
  @override
  String get emergencyContact => 'Kontak Darurat';
  @override
  String get relation => 'Hubungan';
  @override
  String get relationWith => '${_root.common.relation} With';
  @override
  String get relationWithYou => '${_root.common.relationWith} You';
  @override
  String get company => 'Perusahaan';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'Tempat Kerja';
  @override
  String get officePhoneNo => 'Nomor Telepon Kantor';
  @override
  String get officeMobileNo => 'Kantor ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'Kendaraan';
  @override
  late final _TranslationsCommonVehiclesInfoId vehiclesInfo =
      _TranslationsCommonVehiclesInfoId._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} Type';
  @override
  late final _TranslationsCommonVehicleRegistrationNoId vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoId._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} Brand';
  @override
  String get rentProperty => 'Sewa Properti';
  @override
  String get propertyDetails => 'Detail Properti';
  @override
  String get propertyId => 'ID Properti';
  @override
  String get propertyType => 'Jenis Properti';
  @override
  String get propertyName => 'Nama Properti';
  @override
  String get paymentDetails => 'Detail Pembayaran';
  @override
  String get monthlyRent => 'Sewa Bulanan';
  @override
  String get thisMonthPayment => 'Pembayaran Bulan Ini';
  @override
  String get totalPaidRent => 'Total Pembayaran Sewa';
  @override
  String get dueRent => 'Sewa yang Belum Dibayar';
  @override
  String get rentStartDate => 'Sewa ${_root.common.startDate}';
  @override
  String get rentEndDate => 'Sewa ${_root.common.endDate}';
  @override
  String get status => 'Status';
  @override
  String get rentAgreementPdf => 'PDF Perjanjian Sewa';
  @override
  String get noFile => 'Tidak Ada Berkas';
  @override
  String get tenantImageOp => 'Gambar Penyewa ${_root.common.optional}';
  @override
  String get addNewVechicle => 'Tambah Kendaraan Baru';
  @override
  String get uploadNidPassport => 'Unggah NID/Paspor';
  @override
  String get nidPassportUploadNote =>
      'Hanya gambar tipe file yang akan diterima. Batas ukuran file hingga 2,5 MB.';
  @override
  String get search => 'Cari';
  @override
  String get sortBy => 'Urutkan Berdasarkan';
  @override
  String get subscription => 'Langganan';
  @override
  String get downloading => 'Mengunduh...';
  @override
  String get downloadSuccess => 'Berkas berhasil diunduh!';
  @override
  String get addPropertyBannerTitle => 'Ingin Menyewakan Properti Anda?';
  @override
  String get application => 'Aplikasi';
  @override
  String get tenantHasPaidDeposit => 'Penyewa telah membayar deposit.';
  @override
  String get askProcessingRentApplication =>
      'Apakah Anda yakin memproses permintaan properti sewa ini?';
  @override
  String get dateAndTime => 'Tanggal & Waktu';
  @override
  String get applicationDetails => 'Detail Aplikasi';
  @override
  String get depositStatus => 'Status Deposit';
  @override
  String get uploadRentAgreement => 'Unggah Perjanjian Sewa';
  @override
  String get uploadFilePDF => 'Unggah Berkas (PDF)';
  @override
  String get askSelectRentAgreement =>
      'Silakan pilih berkas dokumen perjanjian.';
  @override
  String get landlordRentAgreementPDF => 'PDF Perjanjian Sewa Pemilik';
  @override
  String get tenantRentAgreementPDF => 'PDF Perjanjian Sewa Penyewa';
  @override
  TextSpan landlordApplicationApproveNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Catatan: '),
      note(
        'Hanya setujui aplikasi setelah penyewa melakukan pembayaran deposit.',
      ),
    ],
  );
  @override
  String get reasonOfRejection => 'Alasan Penolakan';
  @override
  String get youveRejectedThisApplication => 'Anda telah menolak aplikasi ini';
  @override
  String get landlordDetails => 'Detail Pemilik';
  @override
  String get landlordName => 'Nama Pemilik';
  @override
  String get downloadRentAgreement => 'Unduh Perjanjian Sewa';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'Terima '),
      toc('Syarat & Ketentuan'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Catatan: '),
      note(
        'Silakan unduh dan baca perjanjiannya. Silakan kirim perjanjian yang ditandatangani ke pemilik melalui WhatsApp atau email.',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Catatan: '),
      note(
        'Pemilik menyetujui aplikasi, saat penyewa membayar keamanan, utilitas, dan pembayaran sewa muka satu bulan.',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'Perjanjian Sewa (PDF) '),
          complete('Lengkapi Perjanjian'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Catatan : '),
      note(
        'Pemilik menyetujui aplikasi, saat penyewa membayar keamanan, utilitas, dan pembayaran sewa muka satu bulan.',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'Daftar Aplikasi';
  @override
  String get viewDetails => 'Lihat Detail';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'Beranda';
  @override
  String get dashboard => 'Dasbor';
  @override
  String get tenants => 'Penyewa';
  @override
  String get maintenance => 'Pemeliharaan';
  @override
  String get maintenanceList => 'Daftar Pemeliharaan';
  @override
  String get maintenanceReport => 'Laporan Pemeliharaan';
  @override
  String get labor => 'Tenaga Kerja';
  @override
  String get applications => 'Aplikasi';
  @override
  String get rentInvitation => 'Undangan Sewa';
  @override
  String get payment => 'Pembayaran';
  @override
  String get rentPayment => 'Pembayaran Sewa';
  @override
  String get depositUtilityPayment => 'Pembayaran Deposit & Utilitas';
  @override
  String get refundRequest => 'Permintaan Pengembalian Dana';
  @override
  String get withdrawRequest => 'Permintaan Penarikan';
  @override
  String get myProperty => 'Properti Saya';
  @override
  String get myRent => 'Sewa Saya';
  @override
  String get wishlist => 'Daftar Keinginan';
  @override
  String get properties => 'Properti';
  @override
  String get allProperties => 'Semua Properti';
  @override
  String get totalPropery => 'Total Properti';
  @override
  String get occupied => 'Terisi';
  @override
  String get vacant => 'Kosong';
  @override
  String get accounting => 'Akuntansi';
  @override
  String get totalIncome => 'Total Pendapatan';
  @override
  String get totalExpense => 'Total Pengeluaran';
  @override
  String get currentBalance => 'Saldo Saat Ini';
  @override
  String get totalWithdrawal => 'Total (Penarikan)';
  @override
  String get totalProperties => 'Total Properti';
  @override
  String get totalTenant => 'Total Penyewa';
  @override
  String get totalRentPaid => 'Total Sewa Dibayar';
  @override
  String get totalRentDue => 'Total Sewa Belum Dibayar';
  @override
  String get totalApplication => 'Total Aplikasi';
  @override
  String get pendingApplication => 'Aplikasi Tertunda';
  @override
  String get processingApplication => 'Aplikasi Diproses';
  @override
  String get approveApplication => 'Aplikasi Disetujui';
  @override
  String get rejectApplication => 'Aplikasi Ditolak';
  @override
  String get maintenanceCost => 'Biaya Pemeliharaan';
  @override
  String get transactionSummary => 'Ringkasan Transaksi';
  @override
  String get maintenanceRequest => 'Permintaan Pemeliharaan';
  @override
  String get notifications => 'Notifikasi';
  @override
  String get myProperties => 'Properti Saya';
  @override
  String get recommendationProperties => 'Rekomendasi Properti';
  @override
  String get laborList => 'Daftar Tenaga Kerja';
  @override
  String get addLabor => 'Tambah Tenaga Kerja';
  @override
  String get laborDetails => 'Detail Tenaga Kerja';
  @override
  String get laborSalary => 'Gaji Tenaga Kerja';
  @override
  String get editLabor => 'Edit Tenaga Kerja';
  @override
  String get addNewLabor => 'Tambah Tenaga Kerja Baru';
  @override
  String get enterAmount => 'Masukkan Jumlah';
  @override
  String get maintenanceDetails => 'Detail Pemeliharaan';
  @override
  String get laborName => 'Nama Tenaga Kerja';
  @override
  String get comment => 'Komentar';
  @override
  String get image => 'Gambar';
  @override
  String get complete => 'Selesai';
  @override
  String get details => 'Detail';
  @override
  String get title => 'Judul';
  @override
  String get date => 'Tanggal';
  @override
  String get reason => 'Alasan';
  @override
  String get edit => 'Edit';
  @override
  String get property => 'Properti';
  @override
  String get completeYourProfile => 'Lengkapi Profil Anda';
  @override
  String get profileImage => 'Gambar Profil';
  @override
  String get imagePickHint =>
      'Hanya Gambar JPEG & PNG dengan ukuran maksimal 120x120 piksel.';
  @override
  String get invoiceId => 'ID Faktur';
  @override
  String get depositAmount => 'Jumlah Deposit';
  @override
  String get landlordPhone => 'Telepon Pemilik';
  @override
  String get rentalAdvance => 'Sewa (Muka)';
  @override
  String get totalAmount => 'Jumlah Total';
  @override
  String get rentalAmount => 'Jumlah Sewa';
  @override
  String get adminCharge => 'Biaya Admin';
  @override
  String get editAccount => 'Edit Akun';
  @override
  String get addNewAccount => 'Tambah Akun Baru';
  @override
  String get transactionId => 'ID Transaksi';
  @override
  String get transactionType => 'Jenis Transaksi';
  @override
  String get requestDate => 'Tanggal Permintaan';
  @override
  String get amount => 'Jumlah';
  @override
  String get fee => 'Biaya';
  @override
  String get paymentStatus => 'Status Pembayaran';
  @override
  String get generatedTime => 'Waktu Dihasilkan';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(
        text: 'Ini adalah laporan yang dihasilkan oleh sistem dari ',
      ),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'Riwayat Penarikan';
  @override
  String get history => 'Riwayat';
  @override
  String get withdrawAmount => 'Jumlah Penarikan';
  @override
  String get availableBalance => 'Saldo Tersedia';
  @override
  String get withdrawCharge => 'Biaya Penarikan';
  @override
  String get paymentMethod => 'Metode Pembayaran';
  @override
  String get requestSendSuccess => 'Permintaan terkirim成功!';
  @override
  String get paymentReceiptSubmitSuccess =>
      'Bukti pembayaran berhasil diserahkan.';
  @override
  String get refundReason => 'Alasan Pengembalian Dana';
  @override
  String get note => 'Catatan';
  @override
  String get refundReceiveSuccess => 'Pengembalian dana diterima berhasil.';
  @override
  String get downloadPaymentReceipt => 'Unduh Bukti Pembayaran';
  @override
  String get invoice => 'Faktur';
  @override
  String get selectPropertyToSeeInvoice =>
      'Pilih properti untuk melihat nomor faktur...';
  @override
  String get bankAccName => 'Nama Rekening Bank';
  @override
  String get bankName => 'Nama Bank';
  @override
  String get bankAccNum => 'Nomor Rekening Bank';
  @override
  String get thankYou => 'Terima Kasih!';
  @override
  String get basicInfo => 'Informasi Dasar';
  @override
  String get descriptionPricing => 'Deskripsi & Harga';
  @override
  String get contact => 'Kontak';
  @override
  String get photos => 'Foto';
  @override
  String get successfullySubmitted => 'Berhasil diserahkan!';
  @override
  String get editProperty => 'Edit Properti';
  @override
  String get addNewProperty => 'Tambah Properti Baru';
  @override
  String get propertyManageRequestSuccess =>
      'Iklan Anda telah diserahkan untuk ditinjau.';
  @override
  String get postAnotherProperty => 'Pasang Properti Lain';
  @override
  String get browseYourProperty => 'Lihat Properti Anda';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Langkah '),
      step,
      const TextSpan(text: ' dari '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'Apa yang Ingin Anda Pasang?';
  @override
  String get category => 'Kategori';
  @override
  String get invalidCategory => 'Kategori Tidak Valid';
  @override
  String get unitNumber => 'Nomor Unit';
  @override
  String get sqft => 'kaki persegi';
  @override
  String get propertySizeMustBeGreaterThan0 =>
      'Ukuran properti harus lebih besar dari nol';
  @override
  String get whatAreTheFacility => 'Apa saja fasilitasnya?';
  @override
  String get whatAreTheAmenity => 'Apa saja fasilitasnya?';
  @override
  String get parkingLot => 'Tempat Parkir';
  @override
  String get houseType => 'Jenis Rumah';
  @override
  String get value => 'Nilai';
  @override
  String get unitLotSize => 'Ukuran Unit / Lot';
  @override
  String get landSize => 'Ukuran Tanah';
  @override
  String get acres => 'hektar';
  @override
  String get roomSize => 'Ukuran Kamar';
  @override
  String get askTenantPreference => 'Apa preferensi penyewa Anda';
  @override
  String get couple => 'Pasangan';
  @override
  String describeTheProperty({required String propertyType}) =>
      'Jelaskan ${propertyType}';
  @override
  String get adTitle => 'Judul Iklan';
  @override
  String get minimumRentalPeriod => 'Periode Sewa Minimum';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} Number';
  @override
  String get hideOrDisplayEmail => 'Sembunyikan atau tampilkan alamat email';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'Terima kasih telah memasang iklan di ${appName}!';
  @override
  String get propertyList => 'Daftar Properti';
  @override
  String get newInviteRent => 'Undangan Sewa Baru';
  @override
  String get rentAgreement => 'Perjanjian Sewa';
  @override
  String get rentDetails => 'Detail Sewa';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Catatan: '),
      note('Harap tunggu penyewa menerima undangan.'),
    ],
  );
  @override
  String get rent => 'Sewa';
  @override
  String get editTenant => 'Edit Penyewa';
  @override
  String get addNewTenant => 'Tambah Penyewa Baru';
  @override
  String get shareInstallLink => 'Bagikan Tautan Pemasangan';
  @override
  String get tenantList => 'Daftar Penyewa';
  @override
  String get editMaintenanceRequest => 'Edit Permintaan Pemeliharaan';
  @override
  String get addNewMaintenance => 'Tambah Pemeliharaan Baru';
  @override
  String get landlordId => 'ID Pemilik';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Catatan: '),
      note(
        'Perjanjian Anda sedang ditinjau. Harap tunggu hingga pemilik menyetujui sewa Anda.',
      ),
    ],
  );
  @override
  String get editReview => 'Edit Ulasan';
  @override
  String get writeAReview => 'Tulis Ulasan';
  @override
  String get selectRating => 'Pilih Peringkat';
  @override
  String get enterYourOpinion => 'Masukkan Pendapat Anda';
  @override
  String get askToEnterReviewMsg => 'Silakan masukkan pesan ulasan';
  @override
  String get pressBackAgainToExit => 'Tekan kembali lagi untuk keluar.';
  @override
  String get selectPaymentMethod => 'Pilih Metode Pembayaran';
  @override
  String get filter => 'Saring';
  @override
  String get perMonth => '/ Bulan';
  @override
  String searchHintWithAppName({required String appName}) =>
      'Cari apa pun di ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsId implements TranslationsExceptionsEn {
  _TranslationsExceptionsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'Terjadi kesalahan, silakan coba lagi';
  @override
  String get noNidPassport => 'Tidak ada gambar NID/Paspor yang diberikan.';
  @override
  String get noRentPropertyFound =>
      'Tidak ada properti sewa yang ditemukan untuk penyewa ini.';
  @override
  String get noPropertyFoundWithKeyWord =>
      'Properti tidak ditemukan!\nSilakan coba dengan kata kunci yang berbeda';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'Tidak ada paket berlangganan yang ditemukan!\nSilakan segarkan halaman dan coba lagi.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'Info ${dataType} tidak valid! Silakan segarkan halaman dan coba lagi.';
  @override
  String get invalidDownloadUrl => 'URL unduhan tidak valid!';
  @override
  String failedToSaveFile({required String error}) =>
      'Gagal menyimpan file! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'Gagal membuka file! ${error}';
  @override
  String get noVehicleInfoProvided =>
      'Tidak ada informasi kendaraan yang diberikan.';
  @override
  String get yourApplicationRejected => 'Permohonan Anda telah ditolak';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintId
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintId._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintId noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintId._(_root);
  @override
  String get noImageProvided => 'Tidak Ada Gambar yang Diberikan';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundId
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundId._(
    _root,
  );
  @override
  String get noDepositFound =>
      'Tidak ada deposit keamanan yang ditemukan!\nSilakan lihat deposit keamanan jika tersedia';
  @override
  String get noRentPaymentFound =>
      'Tidak ada pembayaran sewa yang ditemukan!\nSilakan lihat pembayaran sewa jika tersedia';
  @override
  String get transactionSummaryApiException =>
      'Gagal mendapatkan ringkasan transaksi.';
  @override
  String get noWithdrawRequestFound =>
      'Tidak ada permintaan yang ditemukan!\nSilakan coba buat permintaan penarikan untuk melihatnya di sini.';
  @override
  String get withdrawRequestNotApproved =>
      'Permintaan penarikan ini belum disetujui!.';
  @override
  String get nonZeroError =>
      'Silakan masukkan jumlah yang valid lebih besar dari nol.';
  @override
  String minAmountError({required String minValue}) =>
      'Jumlahnya harus setidaknya ${minValue}.';
  @override
  String maxAmountError({required String maxValue}) =>
      'Jumlahnya tidak boleh melebihi ${maxValue}.';
  @override
  String get selectPaymentMethodHint =>
      'Silakan pilih metode pembayaran terlebih dahulu.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundId
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundId._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintId refundRequestHint =
      _TranslationsExceptionsRefundRequestHintId._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'Silakan pilih jumlah ${value}';
  @override
  String get invalidDateRange => 'Rentang tanggal tidak valid.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} harus lebih besar dari nol.';
  @override
  late final _TranslationsExceptionsEditPropertyId editProperty =
      _TranslationsExceptionsEditPropertyId._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationId rentInvitation =
      _TranslationsExceptionsRentInvitationId._(_root);
  @override
  String get notenantFoundList =>
      'Tidak ada penyewa!\nSilakan coba tambahkan penyewa untuk melihatnya di sini.';
  @override
  String get noFeaturesProvided => 'Tidak ada fitur yang disediakan.';
  @override
  String get noNotificationFound =>
      'Tidak ada notifikasi yang tersedia.\nAnda dapat melihat notifikasi Anda di sini jika tersedia.';
}

// Path: prompt
class _TranslationsPromptId implements TranslationsPromptEn {
  _TranslationsPromptId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutId logout = _TranslationsPromptLogoutId._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationId application =
      _TranslationsPromptApplicationId._(_root);
  @override
  late final _TranslationsPromptLaborId labor = _TranslationsPromptLaborId._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestId maintenanceRequest =
      _TranslationsPromptMaintenanceRequestId._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodId withdrawMethod =
      _TranslationsPromptWithdrawMethodId._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesId unsavedChanges =
      _TranslationsPromptUnsavedChangesId._(_root);
  @override
  late final _TranslationsPromptPropertyId property =
      _TranslationsPromptPropertyId._(_root);
  @override
  late final _TranslationsPromptRentInvitationId rentInvitation =
      _TranslationsPromptRentInvitationId._(_root);
  @override
  late final _TranslationsPromptSessionExpiredId sessionExpired =
      _TranslationsPromptSessionExpiredId._(_root);
  @override
  late final _TranslationsPromptNoInternetId noInternet =
      _TranslationsPromptNoInternetId._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerId permissionHandler =
      _TranslationsPromptPermissionHandlerId._(_root);
  @override
  late final _TranslationsPromptImagePickerId imagePicker =
      _TranslationsPromptImagePickerId._(_root);
  @override
  late final _TranslationsPromptVerificationDialogId verificationDialog =
      _TranslationsPromptVerificationDialogId._(_root);
  @override
  late final _TranslationsPromptNotificationId notification =
      _TranslationsPromptNotificationId._(_root);
}

// Path: form
class _TranslationsFormId implements TranslationsFormEn {
  _TranslationsFormId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameId fullName =
      _TranslationsFormFullNameId._(_root);
  @override
  late final _TranslationsFormEmailId email = _TranslationsFormEmailId._(_root);
  @override
  late final _TranslationsFormPasswordId password =
      _TranslationsFormPasswordId._(_root);
  @override
  late final _TranslationsFormConfirmPasswordId confirmPassword =
      _TranslationsFormConfirmPasswordId._(_root);
  @override
  late final _TranslationsFormMobileNumberId mobileNumber =
      _TranslationsFormMobileNumberId._(_root);
  @override
  late final _TranslationsFormAddress1Id address1 =
      _TranslationsFormAddress1Id._(_root);
  @override
  late final _TranslationsFormAddress2Id address2 =
      _TranslationsFormAddress2Id._(_root);
  @override
  late final _TranslationsFormPostalCodeId postalCode =
      _TranslationsFormPostalCodeId._(_root);
  @override
  late final _TranslationsFormCityId city = _TranslationsFormCityId._(_root);
  @override
  late final _TranslationsFormStateId state = _TranslationsFormStateId._(_root);
  @override
  late final _TranslationsFormCountryId country = _TranslationsFormCountryId._(
    _root,
  );
  @override
  late final _TranslationsFormOtpId otp = _TranslationsFormOtpId._(_root);
  @override
  late final _TranslationsFormTitleId title = _TranslationsFormTitleId._(_root);
  @override
  late final _TranslationsFormDateId date = _TranslationsFormDateId._(_root);
  @override
  late final _TranslationsFormReasonId reason = _TranslationsFormReasonId._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodId withdrawMethod =
      _TranslationsFormWithdrawMethodId._(_root);
  @override
  late final _TranslationsFormFileFieldId fileField =
      _TranslationsFormFileFieldId._(_root);
  @override
  late final _TranslationsFormNoteId note = _TranslationsFormNoteId._(_root);
  @override
  late final _TranslationsFormGenderId gender = _TranslationsFormGenderId._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldId anyField =
      _TranslationsFormAnyFieldId._(_root);
  @override
  late final _TranslationsFormAnyDropdownId anyDropdown =
      _TranslationsFormAnyDropdownId._(_root);
}

// Path: action
class _TranslationsActionId implements TranslationsActionEn {
  _TranslationsActionId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'Selanjutnya';
  @override
  String get getStarted => 'Mulai';
  @override
  String get skip => 'Lewati';
  @override
  String get select => 'Pilih';
  @override
  String get save => 'Simpan';
  @override
  String get signIn => 'Masuk';
  @override
  String get signUp => 'Daftar';
  @override
  String get kContinue => 'Lanjutkan';
  @override
  String get clearAll => 'Bersihkan Semua';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'Kirim';
  @override
  String get pay => 'Bayar';
  @override
  String get remove => 'Hapus';
  @override
  String get goBack => 'Kembali';
  @override
  String get buyNow => 'Beli Sekarang';
  @override
  String get no => 'Tidak';
  @override
  String get open => 'Buka';
  @override
  String get addProperty => 'Tambah Properti';
  @override
  String get process => 'Proses';
  @override
  String get approve => 'Setujui';
  @override
  String get reject => 'Tolak';
  @override
  String get viewRent => 'Lihat Sewa';
  @override
  String get openNavigationMenu => 'Buka menu navigasi';
  @override
  String get seeAll => 'Lihat Semua';
  @override
  String get update => 'Perbarui';
  @override
  String get printTransaction => 'Cetak Transaksi';
  @override
  String get payoutRequest => 'Permintaan Pembayaran';
  @override
  String get addNew => '+ Tambah Baru';
  @override
  String get sendRequest => 'Kirim Permintaan';
  @override
  String get print => 'Cetak';
  @override
  String get requestForRefund => 'Permintaan Pengembalian Dana';
  @override
  String get previous => 'Sebelumnya';
  @override
  String get delete => 'Hapus';
  @override
  String get applyProperty => 'Ajukan Properti';
  @override
  String get viewApplication => 'Lihat Aplikasi';
  @override
  String get inviteTenant => 'Undang Penyewa';
  @override
  String get inviteRent => 'Undang Sewa';
  @override
  String get cancel => 'Batal';
  @override
  String get accept => 'Terima';
  @override
  String get submit => 'Kirim';
  @override
  String get yes => 'Ya';
  @override
  String get okay => 'Oke';
  @override
  String get confirm => 'Konfirmasi';
  @override
  String get apply => 'Terapkan';
  @override
  String get reset => 'Reset';
  @override
  String get retry => 'Coba Lagi';
  @override
  String get viewAll => 'Lihat Semua';
}

// Path: pages
class _TranslationsPagesId implements TranslationsPagesEn {
  _TranslationsPagesId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageId language =
      _TranslationsPagesLanguageId._(_root);
  @override
  late final _TranslationsPagesOnboardId onboard =
      _TranslationsPagesOnboardId._(_root);
  @override
  late final _TranslationsPagesSignInId signIn = _TranslationsPagesSignInId._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordId forgotPassword =
      _TranslationsPagesForgotPasswordId._(_root);
  @override
  late final _TranslationsPagesOtpVerificationId otpVerification =
      _TranslationsPagesOtpVerificationId._(_root);
  @override
  late final _TranslationsPagesResetPasswordId resetPassword =
      _TranslationsPagesResetPasswordId._(_root);
  @override
  late final _TranslationsPagesSignUpId signUp = _TranslationsPagesSignUpId._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeId welcome =
      _TranslationsPagesWelcomeId._(_root);
  @override
  late final _TranslationsPagesAboutUsId aboutUs =
      _TranslationsPagesAboutUsId._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsId termsAndConditions =
      _TranslationsPagesTermsAndConditionsId._(_root);
  @override
  late final _TranslationsPagesNotificationListId notificationList =
      _TranslationsPagesNotificationListId._(_root);
  @override
  late final _TranslationsPagesContactUsId contactUs =
      _TranslationsPagesContactUsId._(_root);
  @override
  late final _TranslationsPagesCancelRentingId cancelRenting =
      _TranslationsPagesCancelRentingId._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsId invoiceDetails =
      _TranslationsPagesInvoiceDetailsId._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentId offlinePayment =
      _TranslationsPagesOfflinePaymentId._(_root);
  @override
  late final _TranslationsPagesPaymentStatusId paymentStatus =
      _TranslationsPagesPaymentStatusId._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsId propertyDetails =
      _TranslationsPagesPropertyDetailsId._(_root);
  @override
  late final _TranslationsPagesSearchId search = _TranslationsPagesSearchId._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanId subscriptionPlan =
      _TranslationsPagesSubscriptionPlanId._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportId
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportId._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsId implements TranslationsEnumsEn {
  _TranslationsEnumsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusId propertyStatus =
      _TranslationsEnumsPropertyStatusId._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeId propertyType =
      _TranslationsEnumsPropertyTypeId._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusId applicationStatus =
      _TranslationsEnumsApplicationStatusId._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusId myRentStatus =
      _TranslationsEnumsMyRentStatusId._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusId maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusId._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeId tenantProfileType =
      _TranslationsEnumsTenantProfileTypeId._(_root);
  @override
  late final _TranslationsEnumsTenantTypeId tenantType =
      _TranslationsEnumsTenantTypeId._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusId paymentStatus =
      _TranslationsEnumsPaymentStatusId._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsId paymentOptions =
      _TranslationsEnumsPaymentOptionsId._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeId paymentType =
      _TranslationsEnumsPaymentTypeId._(_root);
  @override
  late final _TranslationsEnumsGenderId gender = _TranslationsEnumsGenderId._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationId ecRelation =
      _TranslationsEnumsEcRelationId._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeId vehicleType =
      _TranslationsEnumsVehicleTypeId._(_root);
  @override
  late final _TranslationsEnumsSortById sortBy = _TranslationsEnumsSortById._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeId residentialType =
      _TranslationsEnumsResidentialTypeId._(_root);
  @override
  late final _TranslationsEnumsFloorRangeId floorRange =
      _TranslationsEnumsFloorRangeId._(_root);
  @override
  late final _TranslationsEnumsFurnishingsId furnishings =
      _TranslationsEnumsFurnishingsId._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeId commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeId._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeId landPropertyType =
      _TranslationsEnumsLandPropertyTypeId._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeId residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeId._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodId minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodId._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterId dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterId._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileId
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoId
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'Informasi Kendaraan';
  @override
  String get optional => 'Informasi Kendaraan (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoId
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'Nomor Registrasi Kendaraan';
  @override
  String get short => 'No. Registrasi';
  @override
  String get alt => 'No. Plat';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintId
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'Tidak ada permohonan yang ditemukan!\n${subject} akan ditampilkan di sini jika tersedia.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsId subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsId._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintId
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'Properti tidak ditemukan!\nSilakan coba tambahkan properti untuk melihatnya di sini.';
  @override
  String get tenantRecommended =>
      'Tidak ada Properti Rekomendasi yang ditemukan\nSilakan coba lagi nanti.';
  @override
  String get tenantAllProperty =>
      'Properti tidak tersedia\nSilakan coba lagi nanti.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundId
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Tidak ada pemeliharaan ${status} yang ditemukan.';
  @override
  String get tenant =>
      'Tidak ada pemeliharaan yang ditemukan! Anda dapat membuat permintaan pemeliharaan untuk melihatnya di sini.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundId
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'Tidak ada permintaan pengembalian dana ${status} yang ditemukan!\nAnda dapat melihat permintaan pengembalian dana di sini jika tersedia.';
  @override
  String get tenant =>
      'Tidak ada permintaan pengembalian dana yang ditemukan!\nAnda dapat membuat permintaan pengembalian dana untuk melihatnya di sini.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintId
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList =>
      'Penyewa akan menyetujui pengembalian dana ketika dia mendapatkan uang kembali';
  @override
  String get tenantReqSuccess =>
      'Kami akan meninjau permintaan Pengembalian Dana & menyetujuinya dalam 24 jam.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyId
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'Properti sewa sedang diubah. Itu harus valid (efektif) hanya untuk pembayaran sewa bulan depan.';
  @override
  String get deleteOnRent =>
      'Properti Anda sudah disewa oleh penyewa. Tidak dapat dihapus sampai hapus penyewa terlebih dahulu';
  @override
  String get alreayRented =>
      'Properti ini sudah disewa. Silakan coba lagi nanti.\nAtau Anda dapat menghubungi pemilik untuk informasi lebih lanjut.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationId
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'Tidak ada undangan sewa yang ditemukan!\nSilakan coba buat undangan sewa untuk melihatnya di sini.';
  @override
  String get tenantNoRentInvitation =>
      'Tidak ada undangan sewa yang ditemukan!\nAnda dapat melihat undangan sewa di sini jika tersedia.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutId implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'Apakah Anda yakin ingin keluar?';
}

// Path: prompt.application
class _TranslationsPromptApplicationId
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Mengapa Anda menolak aplikasi ini?';
  @override
  late final _TranslationsPromptApplicationApplicationSentId applicationSent =
      _TranslationsPromptApplicationApplicationSentId._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborId implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteId delete =
      _TranslationsPromptLaborDeleteId._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestId
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'Mengapa permintaan ini ditolak?';
  @override
  String get processTitle =>
      'Apakah Anda yakin Memproses permintaan Pemeliharaan ini?';
  @override
  String get completeTitle => 'Pekerjaan selesai?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodId
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'Hapus Metode Penarikan?';
  @override
  String get deleteDescription =>
      'Apakah Anda yakin ingin menghapus metode penarikan ini?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesId
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Apakah Anda yakin ingin kembali?';
  @override
  String get message => 'Bidang yang diubah tidak akan disimpan!';
}

// Path: prompt.property
class _TranslationsPromptPropertyId implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteId delete =
      _TranslationsPromptPropertyDeleteId._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationId
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveId
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveId._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptId tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptId._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredId
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Sesi berakhir';
  @override
  String get message => 'Sesi Anda telah berakhir. Silakan masuk lagi';
  @override
  String get action => 'Masuk';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetId
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tidak Ada Koneksi Internet';
  @override
  String get message =>
      'Silakan periksa koneksi jaringan seluler Wi-Fi Anda dan coba lagi';
  @override
  String get action => 'Coba Lagi';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerId
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Izin diperlukan!';
  @override
  String get message =>
      'Anda perlu memberikan izin di pengaturan aplikasi. Apakah Anda ingin membuka pengaturannya sekarang?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerId
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Pilih Opsi';
  @override
  String get gallery => 'Galeri';
  @override
  String get camera => 'Kamera';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogId
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifikasi Email Anda';
  @override
  String get message => 'Kami telah mengirim email kode verifikasi';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} ke ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationId
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'Bersihkan notifikasi?';
  @override
  String get clearMessage =>
      'Apakah Anda yakin ingin membersihkan semua notifikasi?';
}

// Path: form.fullName
class _TranslationsFormFullNameId implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'Masukkan ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsId errors =
      _TranslationsFormFullNameErrorsId._(_root);
}

// Path: form.email
class _TranslationsFormEmailId implements TranslationsFormEmailEn {
  _TranslationsFormEmailId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'Masukkan ${_root.common.email} Anda';
  @override
  late final _TranslationsFormEmailErrorsId errors =
      _TranslationsFormEmailErrorsId._(_root);
}

// Path: form.password
class _TranslationsFormPasswordId implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsId errors =
      _TranslationsFormPasswordErrorsId._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordId
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Konfirmasi ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsId errors =
      _TranslationsFormConfirmPasswordErrorsId._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberId
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsId errors =
      _TranslationsFormMobileNumberErrorsId._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Id implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Id._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'Nomor rumah dan nama jalan';
  @override
  late final _TranslationsFormAddress1ErrorsId errors =
      _TranslationsFormAddress1ErrorsId._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Id implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Id._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'Apartemen, suite, unit, dll';
  @override
  late final _TranslationsFormAddress2ErrorsId errors =
      _TranslationsFormAddress2ErrorsId._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeId implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'Masukkan ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsId errors =
      _TranslationsFormPostalCodeErrorsId._(_root);
}

// Path: form.city
class _TranslationsFormCityId implements TranslationsFormCityEn {
  _TranslationsFormCityId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'Masukkan nama ${_root.common.city}.';
  @override
  late final _TranslationsFormCityErrorsId errors =
      _TranslationsFormCityErrorsId._(_root);
}

// Path: form.state
class _TranslationsFormStateId implements TranslationsFormStateEn {
  _TranslationsFormStateId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'Masukkan nama ${_root.common.state}.';
  @override
  late final _TranslationsFormStateErrorsId errors =
      _TranslationsFormStateErrorsId._(_root);
}

// Path: form.country
class _TranslationsFormCountryId implements TranslationsFormCountryEn {
  _TranslationsFormCountryId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'Pilih ${_root.common.country}.';
  @override
  late final _TranslationsFormCountryErrorsId errors =
      _TranslationsFormCountryErrorsId._(_root);
}

// Path: form.otp
class _TranslationsFormOtpId implements TranslationsFormOtpEn {
  _TranslationsFormOtpId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsId errors =
      _TranslationsFormOtpErrorsId._(_root);
}

// Path: form.title
class _TranslationsFormTitleId implements TranslationsFormTitleEn {
  _TranslationsFormTitleId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Judul';
  @override
  String get hint => 'Masukkan judul';
  @override
  late final _TranslationsFormTitleErrorsId errors =
      _TranslationsFormTitleErrorsId._(_root);
}

// Path: form.date
class _TranslationsFormDateId implements TranslationsFormDateEn {
  _TranslationsFormDateId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Pilih ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsId errors =
      _TranslationsFormDateErrorsId._(_root);
}

// Path: form.reason
class _TranslationsFormReasonId implements TranslationsFormReasonEn {
  _TranslationsFormReasonId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Alasan';
  @override
  String get hint => 'Masukkan alasan';
  @override
  late final _TranslationsFormReasonErrorsId errors =
      _TranslationsFormReasonErrorsId._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodId
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'Pilih ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsId errors =
      _TranslationsFormWithdrawMethodErrorsId._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldId implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'Unggah ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsId errors =
      _TranslationsFormFileFieldErrorsId._(_root);
}

// Path: form.note
class _TranslationsFormNoteId implements TranslationsFormNoteEn {
  _TranslationsFormNoteId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'Masukkan ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsId errors =
      _TranslationsFormNoteErrorsId._(_root);
}

// Path: form.gender
class _TranslationsFormGenderId implements TranslationsFormGenderEn {
  _TranslationsFormGenderId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'Pilih ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsId errors =
      _TranslationsFormGenderErrorsId._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldId implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Masukkan ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsId errors =
      _TranslationsFormAnyFieldErrorsId._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownId implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'Pilih ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsId errors =
      _TranslationsFormAnyDropdownErrorsId._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageId implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardId implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataId onboardData =
      _TranslationsPagesOnboardOnboardDataId._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInId implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Selamat Datang Kembali';
  @override
  String get subtitle =>
      'Masuk sekarang untuk memulai perjalanan yang luar biasa.';
  @override
  late final _TranslationsPagesSignInExtraId extra =
      _TranslationsPagesSignInExtraId._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordId
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Lupa kata sandi';
  @override
  String get subtitle =>
      'Masukkan Alamat email Anda untuk memulihkan kata sandi Anda.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationId
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Verifikasi';
  @override
  String subtitle({required String email}) =>
      'Pin 4 digit telah dikirim ke alamat email Anda. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraId extra =
      _TranslationsPagesOtpVerificationExtraId._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordId
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Reset kata sandi';
  @override
  String get subtitle =>
      'Reset kata sandi Anda untuk pemulihan dan masuk ke akun Anda';
  @override
  late final _TranslationsPagesResetPasswordExtraId extra =
      _TranslationsPagesResetPasswordExtraId._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpId implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Buat Akun';
  @override
  String get subtitle =>
      'Daftar sekarang untuk memulai perjalanan yang luar biasa';
  @override
  late final _TranslationsPagesSignUpExtraId extra =
      _TranslationsPagesSignUpExtraId._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeId implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Siapa kamu?';
  @override
  String get subtitle => 'Silakan pilih opsi di bawah ini.';
  @override
  late final _TranslationsPagesWelcomeExtraId extra =
      _TranslationsPagesWelcomeExtraId._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsId implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsId
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListId
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Notifikasi';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsId implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraId extra =
      _TranslationsPagesContactUsExtraId._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingId
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'Mengapa Anda ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormId form =
      _TranslationsPagesCancelRentingFormId._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsId
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentId
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pembayaran Offline';
  @override
  late final _TranslationsPagesOfflinePaymentFormId form =
      _TranslationsPagesOfflinePaymentFormId._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraId extra =
      _TranslationsPagesOfflinePaymentExtraId._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusId
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessId success =
      _TranslationsPagesPaymentStatusSuccessId._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailId fail =
      _TranslationsPagesPaymentStatusFailId._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsId
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraId extra =
      _TranslationsPagesPropertyDetailsExtraId._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchId implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Cari';
  @override
  late final _TranslationsPagesSearchExtraId extra =
      _TranslationsPagesSearchExtraId._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanId
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'Pilih Paket Anda';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraId extra =
      _TranslationsPagesSubscriptionPlanExtraId._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportId
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Total Biaya Pemeliharaan: '),
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
class _TranslationsEnumsPropertyStatusId
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'Semua Properti';
  @override
  String get pending => 'Tertunda';
  @override
  String get active => 'Aktif';
  @override
  String get inactive => 'Tidak Aktif';
  @override
  String get rejected => 'Ditolak';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeId
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'Apartemen/Kondominium';
  @override
  String get house => 'Rumah';
  @override
  String get commercialProperty => 'Properti Komersial';
  @override
  String get land => 'Tanah';
  @override
  String get room => 'Kamar';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusId
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Semua';
  @override
  String get pending => 'Tertunda';
  @override
  String get processing => 'Diproses';
  @override
  String get approved => 'Disetujui';
  @override
  String get rejected => 'Ditolak';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusId
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Tertunda';
  @override
  String get processing => 'Diproses';
  @override
  String get active => 'Aktif';
  @override
  String get expired => 'Kedaluwarsa';
  @override
  String get cancelled => 'Dibatalkan';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusId
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'Tertunda';
  @override
  String get processing => 'Diproses';
  @override
  String get rejected => 'Ditolak';
  @override
  String get completed => 'Selesai';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeId
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'Pribadi (Perorangan)';
  @override
  String get company => 'Perusahaan';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeId implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'Penyewa Baru';
  @override
  String get activeTenant => 'Penyewa Aktif';
  @override
  String get expiredTenant => 'Penyewa Kedaluwarsa';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusId
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'Semua';
  @override
  String get pending => 'Tertunda';
  @override
  String get paid => 'Dibayar';
  @override
  String get unpaid => 'Belum Dibayar';
  @override
  String get rejected => 'Ditolak';
  @override
  String get refund => 'Pengembalian Dana';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsId
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'Pembayaran Online';
  @override
  String get offlinePayment => 'Pembayaran Offline';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeId
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'Deposit Keamanan';
  @override
  String get rentPayment => 'Pembayaran Sewa';
  @override
  String get subscription => 'Langganan';
}

// Path: enums.gender
class _TranslationsEnumsGenderId implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'Pria';
  @override
  String get female => 'Wanita';
  @override
  String get other => 'Lainnya';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationId implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'Istri';
  @override
  String get parent => 'Orang Tua';
  @override
  String get friend => 'Teman';
  @override
  String get brother => 'Saudara Laki-laki';
  @override
  String get sister => 'Saudara Perempuan';
  @override
  String get child => 'Anak';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeId
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'Mobil';
  @override
  String get motorcycles => 'Sepeda Motor';
  @override
  String get lorry => 'Truk';
}

// Path: enums.sortBy
class _TranslationsEnumsSortById implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortById._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'Rendah ke Tinggi';
  @override
  String get highToLow => 'Tinggi ke Rendah';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeId
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'Flat';
  @override
  String get apartment => 'Apartemen';
  @override
  String get condominium => 'Kondominium';
  @override
  String get serviceResidence => 'Hunian Servis';
  @override
  String get studio => 'Studio';
  @override
  String get duplex => 'Dupleks';
  @override
  String get townhouseCondo => 'Kondominium Townhouse';
  @override
  String get others => 'Lainnya';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeId implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'Tinggi';
  @override
  String get medium => 'Menengah';
  @override
  String get low => 'Rendah';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsId
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'Berperabotan Lengkap';
  @override
  String get partiallyFurnished => 'Berperabotan Sebagian';
  @override
  String get notFurnished => 'Tidak Berperabotan';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeId
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'Ruang Kantor';
  @override
  String get retailSpace => 'Ruang Ritel';
  @override
  String get shopLot => 'Lot Toko';
  @override
  String get warehouseFactory => 'Gudang / Pabrik';
  @override
  String get hotelResort => 'Hotel / Resor';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => 'Lainnya';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeId
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'Perumahan';
  @override
  String get industrial => 'Industri';
  @override
  String get agricultural => 'Pertanian';
  @override
  String get commercial => 'Komersial';
  @override
  String get mixedDevelopment => 'Pengembangan Campuran';
  @override
  String get others => 'Lainnya';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeId
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'Kondominium / Hunian Servis / Penthouse';
  @override
  String get apartment => 'Apartemen / Flat';
  @override
  String get house => 'Rumah';
  @override
  String get shoplot => 'Ruko';
  @override
  String get sharing => 'Berbagi Rumah / Flat';
  @override
  String get others => 'Lainnya';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodId
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 Bulan';
  @override
  String get oneYear => '1 Tahun';
  @override
  String get oneAndHalfYears => '1,5 Tahun';
  @override
  String get twoYears => '2 Tahun';
  @override
  String get twoAndHalfYears => '2,5 Tahun';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterId
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterId._(this._root);

  final TranslationsId _root; // ignore: unused_field

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
class _TranslationsExceptionsNoApplicationFoundHintSubjectsId
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'Permohonan Anda';
  @override
  String get landlord => 'Permohan penyewa';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentId
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'Aplikasi berhasil dikirim!';
  @override
  String get sucessDescription =>
      'Anda dapat melihat aplikasi ini di daftar aplikasi Anda';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteId
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Hapus Tenaga Kerja?';
  @override
  String get description =>
      'Apakah Anda yakin ingin menghapus tenaga kerja ini?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteId
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Hapus Properti?';
  @override
  String get message => 'Apakah Anda yakin ingin menghapus properti ini?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveId
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Apakah Anda yakin ingin menyetujui sewa ini?';
  @override
  String get description =>
      'Pastikan Anda telah meninjau perjanjian yang ditandatangani oleh penyewa.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptId
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Apakah Anda yakin ingin menerima undangan ini?';
  @override
  String get description =>
      'Pastikan Anda telah mengunduh berkas pdf perjanjian!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsId
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan ${_root.common.fullName} Anda';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsId implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan alamat ${_root.common.email} Anda';
  @override
  String get invalid => '⦸ Email Tidak Valid, Silakan Coba Lagi';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsId
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan ${_root.common.password} Anda';
  @override
  String minLength({required Object count}) =>
      'Kata sandi harus minimal ${count} karakter!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsId
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan ${_root.common.password} Anda';
  @override
  String get notMatched => 'Konfirmasi kata sandi tidak cocok!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsId
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan ${_root.common.mobileNumber} Anda';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsId
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan ${_root.form.address1.label} Anda';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsId
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan ${_root.form.address2.label} Anda';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsId
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan ${_root.common.postalCode} Anda';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsId implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan nama ${_root.common.city}.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsId implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan nama ${_root.common.state}.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsId
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan pilih ${_root.common.country} Anda';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsId implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan otp.';
  @override
  String get invalid => 'Silakan masukkan otp yang benar.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsId implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan judul';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsId implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Silakan pilih ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsId
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan alasan';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsId
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan pilih ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsId
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'Silakan pilih ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsId implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'Silakan masukkan ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsId
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan pilih ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsId
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Silakan masukkan ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'Silakan masukkan @form.anyField.label yang valid';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsId
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'Silakan pilih ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'Silakan pilih @form.anyDropdown.label yang valid';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataId
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Id data1 =
      _TranslationsPagesOnboardOnboardDataData1Id._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Id data2 =
      _TranslationsPagesOnboardOnboardDataData2Id._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Id data3 =
      _TranslationsPagesOnboardOnboardDataData3Id._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraId
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'Ingat Saya';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'Tidak punya akun? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraId
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendId codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendId._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraId
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogId dialog =
      _TranslationsPagesResetPasswordExtraDialogId._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraId
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'Sudah punya akun? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraId
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'Kelola properti Anda sendiri';
  @override
  String get tenantTag => 'Masuk ke akun sewa Anda';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraId
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'Pesan...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormId
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonId reason =
      _TranslationsPagesCancelRentingFormReasonId._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormId
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteId paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteId._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraId
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'Jumlah Pembayaran: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'Nama Pemegang Rekening';
  @override
  String get accountNumber => 'Nomor Rekening';
  @override
  String get swiftCode => 'Kode Swift';
  @override
  String get branch => 'Cabang';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'Pilih format berkas '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' Atau '),
      fileType('DOC'),
      const TextSpan(text: ' saja. Ukuran berkas '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessId
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Lihat Faktur';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'Kami akan meninjau pembayaran dan menyetujuinya dalam 24 jam.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailId
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'Coba Lagi';
  @override
  String get title => 'Oops! Pembayaran Gagal';
  @override
  String get description =>
      'Transaksi Anda gagal karena beberapa kesalahan teknis.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraId
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

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
      const TextSpan(text: 'Fitur '),
      fa('(Fasilitas & Amenitas)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'Pilih Periode Sewa';
  @override
  String get writeAReview => '+ Tulis ulasan';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraId
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Cari plot, flat, kamar...';
  @override
  String get noRecentSearch => 'Anda tidak memiliki pencarian terbaru.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraId
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'Pembayaran langganan berhasil.\nAnda dapat mengakses fitur berlangganan sekarang.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Id
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Id._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Temukan Properti Anda';
  @override
  String get description =>
      'Kami telah mempermudah untuk menemukan tempat yang sesuai dengan hidup Anda — baik itu kamar, apartemen, atau rumah.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Id
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Id._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Apartemen di Kota';
  @override
  String get description =>
      'Kami menghemat waktu Anda dengan cepat mencocokkan Anda dengan properti yang sempurna sebelum hilang sehingga Anda dapat menikmati rumah baru Anda, atau mendaftarkan properti Anda sendiri secara gratis.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Id
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Id._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Rumah Nyaman Anda';
  @override
  String get description =>
      'Jika Anda mencari tempat tinggal, lihat rumah-rumah yang kami sewakan. Kami memiliki berbagai macam rumah untuk Anda pilih di seluruh negeri.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendId
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'Kode dikirim dalam ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('Kirim ulang kode'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogId
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Berhasil diubah!';
  @override
  String get subtitle =>
      'Masuk dengan kata sandi baru Anda.\n Mengarahkan Anda ke Masuk...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonId
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'Tulis alasan';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsId errors =
      _TranslationsPagesCancelRentingFormReasonErrorsId._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteId
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'Catatan Pembayaran (${_root.common.optional})';
  @override
  String get hint => 'Masukkan beberapa teks...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsId
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsId._(this._root);

  final TranslationsId _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'Silakan masukkan alasan pembatalan sewa';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsId {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'Profil';
      case 'common.language':
        return 'Bahasa';
      case 'common.subscriptionPlan':
        return 'Paket Berlangganan';
      case 'common.contactUs':
        return 'Hubungi Kami';
      case 'common.termsAndConditions':
        return 'Syarat & Ketentuan';
      case 'common.aboutUs':
        return 'Tentang Kami';
      case 'common.logout':
        return 'Keluar';
      case 'common.editProfile':
        return 'Edit Profil';
      case 'common.fullName':
        return 'Nama Lengkap';
      case 'common.email':
        return 'Email';
      case 'common.mobileNumber':
        return 'Nomor Telepon';
      case 'common.address':
        return 'Alamat';
      case 'common.postalCode':
        return 'Kode Pos';
      case 'common.city':
        return 'Kota';
      case 'common.country':
        return 'Negara';
      case 'common.state':
        return 'Provinsi';
      case 'common.password':
        return 'Kata Sandi';
      case 'common.forgotPassword':
        return 'Lupa kata sandi';
      case 'common.tenant':
        return 'Penyewa';
      case 'common.landlord':
        return 'Pemilik';
      case 'common.cancelRenting':
        return 'Batalkan Sewa';
      case 'common.startDate':
        return 'Tanggal Mulai';
      case 'common.endDate':
        return 'Tanggal Selesai';
      case 'common.fromDate':
        return 'Dari Tanggal';
      case 'common.toDate':
        return 'Sampai Tanggal';
      case 'common.online':
        return 'Online';
      case 'common.bankList':
        return 'Daftar Bank';
      case 'common.withdrawMethod':
        return 'Metode Penarikan';
      case 'common.uploadPaymentReceipt':
        return 'Unggah Bukti Pembayaran';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Catatan: '),
            note('Pembayaran memerlukan persetujuan manual oleh admin dalam'),
            const TextSpan(text: ' '),
            duraion('24~48 jam.'),
          ],
        );
      case 'common.reviews':
        return 'Ulasan';
      case 'common.description':
        return 'Deskripsi';
      case 'common.about':
        return 'Tentang';
      case 'common.propertyTypes':
        return 'Jenis Properti';
      case 'common.features':
        return 'Fitur';
      case 'common.floorPlans':
        return 'Denah Lantai';
      case 'common.buildingDetails':
        return 'Detail Bangunan';
      case 'common.buildingName':
        return 'Nama Bangunan';
      case 'common.propertyAddress':
        return 'Alamat Properti';
      case 'common.completionYear':
        return 'Tahun Selesai';
      case 'common.lotNumber':
        return 'Nomor Lot';
      case 'common.residentialType':
        return 'Jenis Hunian';
      case 'common.furnishings':
        return 'Perabotan';
      case 'common.floorRange':
        return 'Rentang Lantai';
      case 'common.bedrooms':
        return 'Kamar Tidur';
      case 'common.bathrooms':
        return 'Kamar Mandi';
      case 'common.propertySize':
        return 'Ukuran Properti';
      case 'common.rentalPeriod':
        return 'Periode Sewa';
      case 'common.securityDeposit':
        return 'Deposit Keamanan';
      case 'common.utilityBill':
        return 'Tagihan Utilitas';
      case 'common.facilities':
        return 'Fasilitas';
      case 'common.amenities':
        return 'Fasilitas';
      case 'common.expiringReason':
        return 'Alasan Kedaluwarsa';
      case 'common.tenantDetails':
        return 'Detail Penyewa';
      case 'common.typeOfTenant':
        return 'Jenis Penyewa';
      case 'common.tenantName':
        return 'Nama Penyewa';
      case 'common.nidPassport':
        return 'NID/Paspor';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'ID Penyewa';
      case 'common.dateOfBirth':
        return 'Tanggal Lahir';
      case 'common.gender':
        return 'Jenis Kelamin';
      case 'common.nominee':
        return 'Nominasi';
      case 'common.name':
        return 'Nama';
      case 'common.optional':
        return 'Opsional';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'Kontak Darurat';
      case 'common.relation':
        return 'Hubungan';
      case 'common.relationWith':
        return '${_root.common.relation} With';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} You';
      case 'common.company':
        return 'Perusahaan';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'Tempat Kerja';
      case 'common.officePhoneNo':
        return 'Nomor Telepon Kantor';
      case 'common.officeMobileNo':
        return 'Kantor ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'Kendaraan';
      case 'common.vehiclesInfo.plain':
        return 'Informasi Kendaraan';
      case 'common.vehiclesInfo.optional':
        return 'Informasi Kendaraan (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} Type';
      case 'common.vehicleRegistrationNo.normal':
        return 'Nomor Registrasi Kendaraan';
      case 'common.vehicleRegistrationNo.short':
        return 'No. Registrasi';
      case 'common.vehicleRegistrationNo.alt':
        return 'No. Plat';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} Brand';
      case 'common.rentProperty':
        return 'Sewa Properti';
      case 'common.propertyDetails':
        return 'Detail Properti';
      case 'common.propertyId':
        return 'ID Properti';
      case 'common.propertyType':
        return 'Jenis Properti';
      case 'common.propertyName':
        return 'Nama Properti';
      case 'common.paymentDetails':
        return 'Detail Pembayaran';
      case 'common.monthlyRent':
        return 'Sewa Bulanan';
      case 'common.thisMonthPayment':
        return 'Pembayaran Bulan Ini';
      case 'common.totalPaidRent':
        return 'Total Pembayaran Sewa';
      case 'common.dueRent':
        return 'Sewa yang Belum Dibayar';
      case 'common.rentStartDate':
        return 'Sewa ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'Sewa ${_root.common.endDate}';
      case 'common.status':
        return 'Status';
      case 'common.rentAgreementPdf':
        return 'PDF Perjanjian Sewa';
      case 'common.noFile':
        return 'Tidak Ada Berkas';
      case 'common.tenantImageOp':
        return 'Gambar Penyewa ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'Tambah Kendaraan Baru';
      case 'common.uploadNidPassport':
        return 'Unggah NID/Paspor';
      case 'common.nidPassportUploadNote':
        return 'Hanya gambar tipe file yang akan diterima. Batas ukuran file hingga 2,5 MB.';
      case 'common.search':
        return 'Cari';
      case 'common.sortBy':
        return 'Urutkan Berdasarkan';
      case 'common.subscription':
        return 'Langganan';
      case 'common.downloading':
        return 'Mengunduh...';
      case 'common.downloadSuccess':
        return 'Berkas berhasil diunduh!';
      case 'common.addPropertyBannerTitle':
        return 'Ingin Menyewakan Properti Anda?';
      case 'common.application':
        return 'Aplikasi';
      case 'common.tenantHasPaidDeposit':
        return 'Penyewa telah membayar deposit.';
      case 'common.askProcessingRentApplication':
        return 'Apakah Anda yakin memproses permintaan properti sewa ini?';
      case 'common.dateAndTime':
        return 'Tanggal & Waktu';
      case 'common.applicationDetails':
        return 'Detail Aplikasi';
      case 'common.depositStatus':
        return 'Status Deposit';
      case 'common.uploadRentAgreement':
        return 'Unggah Perjanjian Sewa';
      case 'common.uploadFilePDF':
        return 'Unggah Berkas (PDF)';
      case 'common.askSelectRentAgreement':
        return 'Silakan pilih berkas dokumen perjanjian.';
      case 'common.landlordRentAgreementPDF':
        return 'PDF Perjanjian Sewa Pemilik';
      case 'common.tenantRentAgreementPDF':
        return 'PDF Perjanjian Sewa Penyewa';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Catatan: '),
            note(
              'Hanya setujui aplikasi setelah penyewa melakukan pembayaran deposit.',
            ),
          ],
        );
      case 'common.reasonOfRejection':
        return 'Alasan Penolakan';
      case 'common.youveRejectedThisApplication':
        return 'Anda telah menolak aplikasi ini';
      case 'common.landlordDetails':
        return 'Detail Pemilik';
      case 'common.landlordName':
        return 'Nama Pemilik';
      case 'common.downloadRentAgreement':
        return 'Unduh Perjanjian Sewa';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'Terima '),
            toc('Syarat & Ketentuan'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Catatan: '),
            note(
              'Silakan unduh dan baca perjanjiannya. Silakan kirim perjanjian yang ditandatangani ke pemilik melalui WhatsApp atau email.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Catatan: '),
            note(
              'Pemilik menyetujui aplikasi, saat penyewa membayar keamanan, utilitas, dan pembayaran sewa muka satu bulan.',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'Perjanjian Sewa (PDF) '),
            complete('Lengkapi Perjanjian'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Catatan : '),
            note(
              'Pemilik menyetujui aplikasi, saat penyewa membayar keamanan, utilitas, dan pembayaran sewa muka satu bulan.',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'Daftar Aplikasi';
      case 'common.viewDetails':
        return 'Lihat Detail';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'Beranda';
      case 'common.dashboard':
        return 'Dasbor';
      case 'common.tenants':
        return 'Penyewa';
      case 'common.maintenance':
        return 'Pemeliharaan';
      case 'common.maintenanceList':
        return 'Daftar Pemeliharaan';
      case 'common.maintenanceReport':
        return 'Laporan Pemeliharaan';
      case 'common.labor':
        return 'Tenaga Kerja';
      case 'common.applications':
        return 'Aplikasi';
      case 'common.rentInvitation':
        return 'Undangan Sewa';
      case 'common.payment':
        return 'Pembayaran';
      case 'common.rentPayment':
        return 'Pembayaran Sewa';
      case 'common.depositUtilityPayment':
        return 'Pembayaran Deposit & Utilitas';
      case 'common.refundRequest':
        return 'Permintaan Pengembalian Dana';
      case 'common.withdrawRequest':
        return 'Permintaan Penarikan';
      case 'common.myProperty':
        return 'Properti Saya';
      case 'common.myRent':
        return 'Sewa Saya';
      case 'common.wishlist':
        return 'Daftar Keinginan';
      case 'common.properties':
        return 'Properti';
      case 'common.allProperties':
        return 'Semua Properti';
      case 'common.totalPropery':
        return 'Total Properti';
      case 'common.occupied':
        return 'Terisi';
      case 'common.vacant':
        return 'Kosong';
      case 'common.accounting':
        return 'Akuntansi';
      case 'common.totalIncome':
        return 'Total Pendapatan';
      case 'common.totalExpense':
        return 'Total Pengeluaran';
      case 'common.currentBalance':
        return 'Saldo Saat Ini';
      case 'common.totalWithdrawal':
        return 'Total (Penarikan)';
      case 'common.totalProperties':
        return 'Total Properti';
      case 'common.totalTenant':
        return 'Total Penyewa';
      case 'common.totalRentPaid':
        return 'Total Sewa Dibayar';
      case 'common.totalRentDue':
        return 'Total Sewa Belum Dibayar';
      case 'common.totalApplication':
        return 'Total Aplikasi';
      case 'common.pendingApplication':
        return 'Aplikasi Tertunda';
      case 'common.processingApplication':
        return 'Aplikasi Diproses';
      case 'common.approveApplication':
        return 'Aplikasi Disetujui';
      case 'common.rejectApplication':
        return 'Aplikasi Ditolak';
      case 'common.maintenanceCost':
        return 'Biaya Pemeliharaan';
      case 'common.transactionSummary':
        return 'Ringkasan Transaksi';
      case 'common.maintenanceRequest':
        return 'Permintaan Pemeliharaan';
      case 'common.notifications':
        return 'Notifikasi';
      case 'common.myProperties':
        return 'Properti Saya';
      case 'common.recommendationProperties':
        return 'Rekomendasi Properti';
      case 'common.laborList':
        return 'Daftar Tenaga Kerja';
      case 'common.addLabor':
        return 'Tambah Tenaga Kerja';
      case 'common.laborDetails':
        return 'Detail Tenaga Kerja';
      case 'common.laborSalary':
        return 'Gaji Tenaga Kerja';
      case 'common.editLabor':
        return 'Edit Tenaga Kerja';
      case 'common.addNewLabor':
        return 'Tambah Tenaga Kerja Baru';
      case 'common.enterAmount':
        return 'Masukkan Jumlah';
      case 'common.maintenanceDetails':
        return 'Detail Pemeliharaan';
      case 'common.laborName':
        return 'Nama Tenaga Kerja';
      case 'common.comment':
        return 'Komentar';
      case 'common.image':
        return 'Gambar';
      case 'common.complete':
        return 'Selesai';
      case 'common.details':
        return 'Detail';
      case 'common.title':
        return 'Judul';
      case 'common.date':
        return 'Tanggal';
      case 'common.reason':
        return 'Alasan';
      case 'common.edit':
        return 'Edit';
      case 'common.property':
        return 'Properti';
      case 'common.completeYourProfile':
        return 'Lengkapi Profil Anda';
      case 'common.profileImage':
        return 'Gambar Profil';
      case 'common.imagePickHint':
        return 'Hanya Gambar JPEG & PNG dengan ukuran maksimal 120x120 piksel.';
      case 'common.invoiceId':
        return 'ID Faktur';
      case 'common.depositAmount':
        return 'Jumlah Deposit';
      case 'common.landlordPhone':
        return 'Telepon Pemilik';
      case 'common.rentalAdvance':
        return 'Sewa (Muka)';
      case 'common.totalAmount':
        return 'Jumlah Total';
      case 'common.rentalAmount':
        return 'Jumlah Sewa';
      case 'common.adminCharge':
        return 'Biaya Admin';
      case 'common.editAccount':
        return 'Edit Akun';
      case 'common.addNewAccount':
        return 'Tambah Akun Baru';
      case 'common.transactionId':
        return 'ID Transaksi';
      case 'common.transactionType':
        return 'Jenis Transaksi';
      case 'common.requestDate':
        return 'Tanggal Permintaan';
      case 'common.amount':
        return 'Jumlah';
      case 'common.fee':
        return 'Biaya';
      case 'common.paymentStatus':
        return 'Status Pembayaran';
      case 'common.generatedTime':
        return 'Waktu Dihasilkan';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(
              text: 'Ini adalah laporan yang dihasilkan oleh sistem dari ',
            ),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'Riwayat Penarikan';
      case 'common.history':
        return 'Riwayat';
      case 'common.withdrawAmount':
        return 'Jumlah Penarikan';
      case 'common.availableBalance':
        return 'Saldo Tersedia';
      case 'common.withdrawCharge':
        return 'Biaya Penarikan';
      case 'common.paymentMethod':
        return 'Metode Pembayaran';
      case 'common.requestSendSuccess':
        return 'Permintaan terkirim成功!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'Bukti pembayaran berhasil diserahkan.';
      case 'common.refundReason':
        return 'Alasan Pengembalian Dana';
      case 'common.note':
        return 'Catatan';
      case 'common.refundReceiveSuccess':
        return 'Pengembalian dana diterima berhasil.';
      case 'common.downloadPaymentReceipt':
        return 'Unduh Bukti Pembayaran';
      case 'common.invoice':
        return 'Faktur';
      case 'common.selectPropertyToSeeInvoice':
        return 'Pilih properti untuk melihat nomor faktur...';
      case 'common.bankAccName':
        return 'Nama Rekening Bank';
      case 'common.bankName':
        return 'Nama Bank';
      case 'common.bankAccNum':
        return 'Nomor Rekening Bank';
      case 'common.thankYou':
        return 'Terima Kasih!';
      case 'common.basicInfo':
        return 'Informasi Dasar';
      case 'common.descriptionPricing':
        return 'Deskripsi & Harga';
      case 'common.contact':
        return 'Kontak';
      case 'common.photos':
        return 'Foto';
      case 'common.successfullySubmitted':
        return 'Berhasil diserahkan!';
      case 'common.editProperty':
        return 'Edit Properti';
      case 'common.addNewProperty':
        return 'Tambah Properti Baru';
      case 'common.propertyManageRequestSuccess':
        return 'Iklan Anda telah diserahkan untuk ditinjau.';
      case 'common.postAnotherProperty':
        return 'Pasang Properti Lain';
      case 'common.browseYourProperty':
        return 'Lihat Properti Anda';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'Langkah '),
                step,
                const TextSpan(text: ' dari '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'Apa yang Ingin Anda Pasang?';
      case 'common.category':
        return 'Kategori';
      case 'common.invalidCategory':
        return 'Kategori Tidak Valid';
      case 'common.unitNumber':
        return 'Nomor Unit';
      case 'common.sqft':
        return 'kaki persegi';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'Ukuran properti harus lebih besar dari nol';
      case 'common.whatAreTheFacility':
        return 'Apa saja fasilitasnya?';
      case 'common.whatAreTheAmenity':
        return 'Apa saja fasilitasnya?';
      case 'common.parkingLot':
        return 'Tempat Parkir';
      case 'common.houseType':
        return 'Jenis Rumah';
      case 'common.value':
        return 'Nilai';
      case 'common.unitLotSize':
        return 'Ukuran Unit / Lot';
      case 'common.landSize':
        return 'Ukuran Tanah';
      case 'common.acres':
        return 'hektar';
      case 'common.roomSize':
        return 'Ukuran Kamar';
      case 'common.askTenantPreference':
        return 'Apa preferensi penyewa Anda';
      case 'common.couple':
        return 'Pasangan';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'Jelaskan ${propertyType}';
      case 'common.adTitle':
        return 'Judul Iklan';
      case 'common.minimumRentalPeriod':
        return 'Periode Sewa Minimum';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} Number';
      case 'common.hideOrDisplayEmail':
        return 'Sembunyikan atau tampilkan alamat email';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'Terima kasih telah memasang iklan di ${appName}!';
      case 'common.propertyList':
        return 'Daftar Properti';
      case 'common.newInviteRent':
        return 'Undangan Sewa Baru';
      case 'common.rentAgreement':
        return 'Perjanjian Sewa';
      case 'common.rentDetails':
        return 'Detail Sewa';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Catatan: '),
            note('Harap tunggu penyewa menerima undangan.'),
          ],
        );
      case 'common.rent':
        return 'Sewa';
      case 'common.editTenant':
        return 'Edit Penyewa';
      case 'common.addNewTenant':
        return 'Tambah Penyewa Baru';
      case 'common.shareInstallLink':
        return 'Bagikan Tautan Pemasangan';
      case 'common.tenantList':
        return 'Daftar Penyewa';
      case 'common.editMaintenanceRequest':
        return 'Edit Permintaan Pemeliharaan';
      case 'common.addNewMaintenance':
        return 'Tambah Pemeliharaan Baru';
      case 'common.landlordId':
        return 'ID Pemilik';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'Catatan: '),
            note(
              'Perjanjian Anda sedang ditinjau. Harap tunggu hingga pemilik menyetujui sewa Anda.',
            ),
          ],
        );
      case 'common.editReview':
        return 'Edit Ulasan';
      case 'common.writeAReview':
        return 'Tulis Ulasan';
      case 'common.selectRating':
        return 'Pilih Peringkat';
      case 'common.enterYourOpinion':
        return 'Masukkan Pendapat Anda';
      case 'common.askToEnterReviewMsg':
        return 'Silakan masukkan pesan ulasan';
      case 'common.pressBackAgainToExit':
        return 'Tekan kembali lagi untuk keluar.';
      case 'common.selectPaymentMethod':
        return 'Pilih Metode Pembayaran';
      case 'common.filter':
        return 'Saring';
      case 'common.perMonth':
        return '/ Bulan';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => 'Cari apa pun di ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'Terjadi kesalahan, silakan coba lagi';
      case 'exceptions.noNidPassport':
        return 'Tidak ada gambar NID/Paspor yang diberikan.';
      case 'exceptions.noRentPropertyFound':
        return 'Tidak ada properti sewa yang ditemukan untuk penyewa ini.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'Properti tidak ditemukan!\nSilakan coba dengan kata kunci yang berbeda';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'Tidak ada paket berlangganan yang ditemukan!\nSilakan segarkan halaman dan coba lagi.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'Info ${dataType} tidak valid! Silakan segarkan halaman dan coba lagi.';
      case 'exceptions.invalidDownloadUrl':
        return 'URL unduhan tidak valid!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => 'Gagal menyimpan file! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => 'Gagal membuka file! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'Tidak ada informasi kendaraan yang diberikan.';
      case 'exceptions.yourApplicationRejected':
        return 'Permohonan Anda telah ditolak';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'Tidak ada permohonan yang ditemukan!\n${subject} akan ditampilkan di sini jika tersedia.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'Permohonan Anda';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'Permohan penyewa';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'Properti tidak ditemukan!\nSilakan coba tambahkan properti untuk melihatnya di sini.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'Tidak ada Properti Rekomendasi yang ditemukan\nSilakan coba lagi nanti.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'Properti tidak tersedia\nSilakan coba lagi nanti.';
      case 'exceptions.noImageProvided':
        return 'Tidak Ada Gambar yang Diberikan';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) =>
            'Tidak ada pemeliharaan ${status} yang ditemukan.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'Tidak ada pemeliharaan yang ditemukan! Anda dapat membuat permintaan pemeliharaan untuk melihatnya di sini.';
      case 'exceptions.noDepositFound':
        return 'Tidak ada deposit keamanan yang ditemukan!\nSilakan lihat deposit keamanan jika tersedia';
      case 'exceptions.noRentPaymentFound':
        return 'Tidak ada pembayaran sewa yang ditemukan!\nSilakan lihat pembayaran sewa jika tersedia';
      case 'exceptions.transactionSummaryApiException':
        return 'Gagal mendapatkan ringkasan transaksi.';
      case 'exceptions.noWithdrawRequestFound':
        return 'Tidak ada permintaan yang ditemukan!\nSilakan coba buat permintaan penarikan untuk melihatnya di sini.';
      case 'exceptions.withdrawRequestNotApproved':
        return 'Permintaan penarikan ini belum disetujui!.';
      case 'exceptions.nonZeroError':
        return 'Silakan masukkan jumlah yang valid lebih besar dari nol.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'Jumlahnya harus setidaknya ${minValue}.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'Jumlahnya tidak boleh melebihi ${maxValue}.';
      case 'exceptions.selectPaymentMethodHint':
        return 'Silakan pilih metode pembayaran terlebih dahulu.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'Tidak ada permintaan pengembalian dana ${status} yang ditemukan!\nAnda dapat melihat permintaan pengembalian dana di sini jika tersedia.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'Tidak ada permintaan pengembalian dana yang ditemukan!\nAnda dapat membuat permintaan pengembalian dana untuk melihatnya di sini.';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'Penyewa akan menyetujui pengembalian dana ketika dia mendapatkan uang kembali';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'Kami akan meninjau permintaan Pengembalian Dana & menyetujuinya dalam 24 jam.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'Silakan pilih jumlah ${value}';
      case 'exceptions.invalidDateRange':
        return 'Rentang tanggal tidak valid.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) =>
            '${value} harus lebih besar dari nol.';
      case 'exceptions.editProperty.rentalChange':
        return 'Properti sewa sedang diubah. Itu harus valid (efektif) hanya untuk pembayaran sewa bulan depan.';
      case 'exceptions.editProperty.deleteOnRent':
        return 'Properti Anda sudah disewa oleh penyewa. Tidak dapat dihapus sampai hapus penyewa terlebih dahulu';
      case 'exceptions.editProperty.alreayRented':
        return 'Properti ini sudah disewa. Silakan coba lagi nanti.\nAtau Anda dapat menghubungi pemilik untuk informasi lebih lanjut.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'Tidak ada undangan sewa yang ditemukan!\nSilakan coba buat undangan sewa untuk melihatnya di sini.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'Tidak ada undangan sewa yang ditemukan!\nAnda dapat melihat undangan sewa di sini jika tersedia.';
      case 'exceptions.notenantFoundList':
        return 'Tidak ada penyewa!\nSilakan coba tambahkan penyewa untuk melihatnya di sini.';
      case 'exceptions.noFeaturesProvided':
        return 'Tidak ada fitur yang disediakan.';
      case 'exceptions.noNotificationFound':
        return 'Tidak ada notifikasi yang tersedia.\nAnda dapat melihat notifikasi Anda di sini jika tersedia.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'Apakah Anda yakin ingin keluar?';
      case 'prompt.application.rejectTitle':
        return 'Mengapa Anda menolak aplikasi ini?';
      case 'prompt.application.applicationSent.successfully':
        return 'Aplikasi berhasil dikirim!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'Anda dapat melihat aplikasi ini di daftar aplikasi Anda';
      case 'prompt.labor.delete.title':
        return 'Hapus Tenaga Kerja?';
      case 'prompt.labor.delete.description':
        return 'Apakah Anda yakin ingin menghapus tenaga kerja ini?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'Mengapa permintaan ini ditolak?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'Apakah Anda yakin Memproses permintaan Pemeliharaan ini?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'Pekerjaan selesai?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'Hapus Metode Penarikan?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'Apakah Anda yakin ingin menghapus metode penarikan ini?';
      case 'prompt.unsavedChanges.title':
        return 'Apakah Anda yakin ingin kembali?';
      case 'prompt.unsavedChanges.message':
        return 'Bidang yang diubah tidak akan disimpan!';
      case 'prompt.property.delete.title':
        return 'Hapus Properti?';
      case 'prompt.property.delete.message':
        return 'Apakah Anda yakin ingin menghapus properti ini?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'Apakah Anda yakin ingin menyetujui sewa ini?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'Pastikan Anda telah meninjau perjanjian yang ditandatangani oleh penyewa.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'Apakah Anda yakin ingin menerima undangan ini?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'Pastikan Anda telah mengunduh berkas pdf perjanjian!';
      case 'prompt.sessionExpired.title':
        return 'Sesi berakhir';
      case 'prompt.sessionExpired.message':
        return 'Sesi Anda telah berakhir. Silakan masuk lagi';
      case 'prompt.sessionExpired.action':
        return 'Masuk';
      case 'prompt.noInternet.title':
        return 'Tidak Ada Koneksi Internet';
      case 'prompt.noInternet.message':
        return 'Silakan periksa koneksi jaringan seluler Wi-Fi Anda dan coba lagi';
      case 'prompt.noInternet.action':
        return 'Coba Lagi';
      case 'prompt.permissionHandler.title':
        return 'Izin diperlukan!';
      case 'prompt.permissionHandler.message':
        return 'Anda perlu memberikan izin di pengaturan aplikasi. Apakah Anda ingin membuka pengaturannya sekarang?';
      case 'prompt.imagePicker.title':
        return 'Pilih Opsi';
      case 'prompt.imagePicker.gallery':
        return 'Galeri';
      case 'prompt.imagePicker.camera':
        return 'Kamera';
      case 'prompt.verificationDialog.title':
        return 'Verifikasi Email Anda';
      case 'prompt.verificationDialog.message':
        return 'Kami telah mengirim email kode verifikasi';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} ke ${email}';
      case 'prompt.notification.clearTitle':
        return 'Bersihkan notifikasi?';
      case 'prompt.notification.clearMessage':
        return 'Apakah Anda yakin ingin membersihkan semua notifikasi?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'Masukkan ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'Silakan masukkan ${_root.common.fullName} Anda';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'Masukkan ${_root.common.email} Anda';
      case 'form.email.errors.required':
        return 'Silakan masukkan alamat ${_root.common.email} Anda';
      case 'form.email.errors.invalid':
        return '⦸ Email Tidak Valid, Silakan Coba Lagi';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'Silakan masukkan ${_root.common.password} Anda';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'Kata sandi harus minimal ${count} karakter!';
      case 'form.confirmPassword.label':
        return 'Konfirmasi ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'Silakan masukkan ${_root.common.password} Anda';
      case 'form.confirmPassword.errors.notMatched':
        return 'Konfirmasi kata sandi tidak cocok!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'Silakan masukkan ${_root.common.mobileNumber} Anda';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'Nomor rumah dan nama jalan';
      case 'form.address1.errors.required':
        return 'Silakan masukkan ${_root.form.address1.label} Anda';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'Apartemen, suite, unit, dll';
      case 'form.address2.errors.required':
        return 'Silakan masukkan ${_root.form.address2.label} Anda';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'Masukkan ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'Silakan masukkan ${_root.common.postalCode} Anda';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'Masukkan nama ${_root.common.city}.';
      case 'form.city.errors.required':
        return 'Silakan masukkan nama ${_root.common.city}.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'Masukkan nama ${_root.common.state}.';
      case 'form.state.errors.required':
        return 'Silakan masukkan nama ${_root.common.state}.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'Pilih ${_root.common.country}.';
      case 'form.country.errors.required':
        return 'Silakan pilih ${_root.common.country} Anda';
      case 'form.otp.errors.required':
        return 'Silakan masukkan otp.';
      case 'form.otp.errors.invalid':
        return 'Silakan masukkan otp yang benar.';
      case 'form.title.label':
        return 'Judul';
      case 'form.title.hint':
        return 'Masukkan judul';
      case 'form.title.errors.required':
        return 'Silakan masukkan judul';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'Pilih ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'Silakan pilih ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'Alasan';
      case 'form.reason.hint':
        return 'Masukkan alasan';
      case 'form.reason.errors.required':
        return 'Silakan masukkan alasan';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'Pilih ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'Silakan pilih ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'Unggah ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'Silakan pilih ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'Masukkan ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'Silakan masukkan ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'Pilih ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'Silakan pilih ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'Masukkan ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'Silakan masukkan ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'Silakan masukkan @form.anyField.label yang valid';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'Pilih ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'Silakan pilih ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'Silakan pilih @form.anyDropdown.label yang valid';
      case 'action.next':
        return 'Selanjutnya';
      case 'action.getStarted':
        return 'Mulai';
      case 'action.skip':
        return 'Lewati';
      case 'action.select':
        return 'Pilih';
      case 'action.save':
        return 'Simpan';
      case 'action.signIn':
        return 'Masuk';
      case 'action.signUp':
        return 'Daftar';
      case 'action.kContinue':
        return 'Lanjutkan';
      case 'action.clearAll':
        return 'Bersihkan Semua';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'Kirim';
      case 'action.pay':
        return 'Bayar';
      case 'action.remove':
        return 'Hapus';
      case 'action.goBack':
        return 'Kembali';
      case 'action.buyNow':
        return 'Beli Sekarang';
      case 'action.no':
        return 'Tidak';
      case 'action.open':
        return 'Buka';
      case 'action.addProperty':
        return 'Tambah Properti';
      case 'action.process':
        return 'Proses';
      case 'action.approve':
        return 'Setujui';
      case 'action.reject':
        return 'Tolak';
      case 'action.viewRent':
        return 'Lihat Sewa';
      case 'action.openNavigationMenu':
        return 'Buka menu navigasi';
      case 'action.seeAll':
        return 'Lihat Semua';
      case 'action.update':
        return 'Perbarui';
      case 'action.printTransaction':
        return 'Cetak Transaksi';
      case 'action.payoutRequest':
        return 'Permintaan Pembayaran';
      case 'action.addNew':
        return '+ Tambah Baru';
      case 'action.sendRequest':
        return 'Kirim Permintaan';
      case 'action.print':
        return 'Cetak';
      case 'action.requestForRefund':
        return 'Permintaan Pengembalian Dana';
      case 'action.previous':
        return 'Sebelumnya';
      case 'action.delete':
        return 'Hapus';
      case 'action.applyProperty':
        return 'Ajukan Properti';
      case 'action.viewApplication':
        return 'Lihat Aplikasi';
      case 'action.inviteTenant':
        return 'Undang Penyewa';
      case 'action.inviteRent':
        return 'Undang Sewa';
      case 'action.cancel':
        return 'Batal';
      case 'action.accept':
        return 'Terima';
      case 'action.submit':
        return 'Kirim';
      case 'action.yes':
        return 'Ya';
      case 'action.okay':
        return 'Oke';
      case 'action.confirm':
        return 'Konfirmasi';
      case 'action.apply':
        return 'Terapkan';
      case 'action.reset':
        return 'Reset';
      case 'action.retry':
        return 'Coba Lagi';
      case 'action.viewAll':
        return 'Lihat Semua';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'Temukan Properti Anda';
      case 'pages.onboard.onboardData.data1.description':
        return 'Kami telah mempermudah untuk menemukan tempat yang sesuai dengan hidup Anda — baik itu kamar, apartemen, atau rumah.';
      case 'pages.onboard.onboardData.data2.title':
        return 'Apartemen di Kota';
      case 'pages.onboard.onboardData.data2.description':
        return 'Kami menghemat waktu Anda dengan cepat mencocokkan Anda dengan properti yang sempurna sebelum hilang sehingga Anda dapat menikmati rumah baru Anda, atau mendaftarkan properti Anda sendiri secara gratis.';
      case 'pages.onboard.onboardData.data3.title':
        return 'Rumah Nyaman Anda';
      case 'pages.onboard.onboardData.data3.description':
        return 'Jika Anda mencari tempat tinggal, lihat rumah-rumah yang kami sewakan. Kami memiliki berbagai macam rumah untuk Anda pilih di seluruh negeri.';
      case 'pages.signIn.title':
        return 'Selamat Datang Kembali';
      case 'pages.signIn.subtitle':
        return 'Masuk sekarang untuk memulai perjalanan yang luar biasa.';
      case 'pages.signIn.extra.rememberMe':
        return 'Ingat Saya';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'Tidak punya akun? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'Lupa kata sandi';
      case 'pages.forgotPassword.subtitle':
        return 'Masukkan Alamat email Anda untuk memulihkan kata sandi Anda.';
      case 'pages.otpVerification.title':
        return 'Verifikasi';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'Pin 4 digit telah dikirim ke alamat email Anda. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'Kode dikirim dalam ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('Kirim ulang kode'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'Reset kata sandi';
      case 'pages.resetPassword.subtitle':
        return 'Reset kata sandi Anda untuk pemulihan dan masuk ke akun Anda';
      case 'pages.resetPassword.extra.dialog.title':
        return 'Berhasil diubah!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'Masuk dengan kata sandi baru Anda.\n Mengarahkan Anda ke Masuk...';
      case 'pages.signUp.title':
        return 'Buat Akun';
      case 'pages.signUp.subtitle':
        return 'Daftar sekarang untuk memulai perjalanan yang luar biasa';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'Sudah punya akun? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'Siapa kamu?';
      case 'pages.welcome.subtitle':
        return 'Silakan pilih opsi di bawah ini.';
      case 'pages.welcome.extra.landlordTag':
        return 'Kelola properti Anda sendiri';
      case 'pages.welcome.extra.tenantTag':
        return 'Masuk ke akun sewa Anda';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'Notifikasi';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'Pesan...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'Mengapa Anda ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'Tulis alasan';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'Silakan masukkan alasan pembatalan sewa';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'Pembayaran Offline';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'Catatan Pembayaran (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'Masukkan beberapa teks...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Jumlah Pembayaran: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'Nama Pemegang Rekening';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'Nomor Rekening';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Kode Swift';
      case 'pages.offlinePayment.extra.branch':
        return 'Cabang';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'Pilih format berkas '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' Atau '),
            fileType('DOC'),
            const TextSpan(text: ' saja. Ukuran berkas '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'Lihat Faktur';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'Kami akan meninjau pembayaran dan menyetujuinya dalam 24 jam.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'Coba Lagi';
      case 'pages.paymentStatus.fail.title':
        return 'Oops! Pembayaran Gagal';
      case 'pages.paymentStatus.fail.description':
        return 'Transaksi Anda gagal karena beberapa kesalahan teknis.';
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
            const TextSpan(text: 'Fitur '),
            fa('(Fasilitas & Amenitas)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'Pilih Periode Sewa';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ Tulis ulasan';
      case 'pages.search.appbarTitle':
        return 'Cari';
      case 'pages.search.extra.hint':
        return 'Cari plot, flat, kamar...';
      case 'pages.search.extra.noRecentSearch':
        return 'Anda tidak memiliki pencarian terbaru.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'Pilih Paket Anda';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'Pembayaran langganan berhasil.\nAnda dapat mengakses fitur berlangganan sekarang.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'Total Biaya Pemeliharaan: '),
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
        return 'Semua Properti';
      case 'enums.propertyStatus.pending':
        return 'Tertunda';
      case 'enums.propertyStatus.active':
        return 'Aktif';
      case 'enums.propertyStatus.inactive':
        return 'Tidak Aktif';
      case 'enums.propertyStatus.rejected':
        return 'Ditolak';
      case 'enums.propertyType.apartmentCondominium':
        return 'Apartemen/Kondominium';
      case 'enums.propertyType.house':
        return 'Rumah';
      case 'enums.propertyType.commercialProperty':
        return 'Properti Komersial';
      case 'enums.propertyType.land':
        return 'Tanah';
      case 'enums.propertyType.room':
        return 'Kamar';
      case 'enums.applicationStatus.all':
        return 'Semua';
      case 'enums.applicationStatus.pending':
        return 'Tertunda';
      case 'enums.applicationStatus.processing':
        return 'Diproses';
      case 'enums.applicationStatus.approved':
        return 'Disetujui';
      case 'enums.applicationStatus.rejected':
        return 'Ditolak';
      case 'enums.myRentStatus.pending':
        return 'Tertunda';
      case 'enums.myRentStatus.processing':
        return 'Diproses';
      case 'enums.myRentStatus.active':
        return 'Aktif';
      case 'enums.myRentStatus.expired':
        return 'Kedaluwarsa';
      case 'enums.myRentStatus.cancelled':
        return 'Dibatalkan';
      case 'enums.maintenanceStatus.pending':
        return 'Tertunda';
      case 'enums.maintenanceStatus.processing':
        return 'Diproses';
      case 'enums.maintenanceStatus.rejected':
        return 'Ditolak';
      case 'enums.maintenanceStatus.completed':
        return 'Selesai';
      case 'enums.tenantProfileType.privateIndividual':
        return 'Pribadi (Perorangan)';
      case 'enums.tenantProfileType.company':
        return 'Perusahaan';
      case 'enums.tenantType.newTenant':
        return 'Penyewa Baru';
      case 'enums.tenantType.activeTenant':
        return 'Penyewa Aktif';
      case 'enums.tenantType.expiredTenant':
        return 'Penyewa Kedaluwarsa';
      case 'enums.paymentStatus.all':
        return 'Semua';
      case 'enums.paymentStatus.pending':
        return 'Tertunda';
      case 'enums.paymentStatus.paid':
        return 'Dibayar';
      case 'enums.paymentStatus.unpaid':
        return 'Belum Dibayar';
      case 'enums.paymentStatus.rejected':
        return 'Ditolak';
      case 'enums.paymentStatus.refund':
        return 'Pengembalian Dana';
      case 'enums.paymentOptions.onlinePayment':
        return 'Pembayaran Online';
      case 'enums.paymentOptions.offlinePayment':
        return 'Pembayaran Offline';
      case 'enums.paymentType.securityDeposit':
        return 'Deposit Keamanan';
      case 'enums.paymentType.rentPayment':
        return 'Pembayaran Sewa';
      case 'enums.paymentType.subscription':
        return 'Langganan';
      case 'enums.gender.male':
        return 'Pria';
      case 'enums.gender.female':
        return 'Wanita';
      case 'enums.gender.other':
        return 'Lainnya';
      case 'enums.ecRelation.wife':
        return 'Istri';
      case 'enums.ecRelation.parent':
        return 'Orang Tua';
      case 'enums.ecRelation.friend':
        return 'Teman';
      case 'enums.ecRelation.brother':
        return 'Saudara Laki-laki';
      case 'enums.ecRelation.sister':
        return 'Saudara Perempuan';
      case 'enums.ecRelation.child':
        return 'Anak';
      case 'enums.vehicleType.car':
        return 'Mobil';
      case 'enums.vehicleType.motorcycles':
        return 'Sepeda Motor';
      case 'enums.vehicleType.lorry':
        return 'Truk';
      case 'enums.sortBy.lowToHigh':
        return 'Rendah ke Tinggi';
      case 'enums.sortBy.highToLow':
        return 'Tinggi ke Rendah';
      case 'enums.residentialType.flat':
        return 'Flat';
      case 'enums.residentialType.apartment':
        return 'Apartemen';
      case 'enums.residentialType.condominium':
        return 'Kondominium';
      case 'enums.residentialType.serviceResidence':
        return 'Hunian Servis';
      case 'enums.residentialType.studio':
        return 'Studio';
      case 'enums.residentialType.duplex':
        return 'Dupleks';
      case 'enums.residentialType.townhouseCondo':
        return 'Kondominium Townhouse';
      case 'enums.residentialType.others':
        return 'Lainnya';
      case 'enums.floorRange.high':
        return 'Tinggi';
      case 'enums.floorRange.medium':
        return 'Menengah';
      case 'enums.floorRange.low':
        return 'Rendah';
      case 'enums.furnishings.fullyFurnished':
        return 'Berperabotan Lengkap';
      case 'enums.furnishings.partiallyFurnished':
        return 'Berperabotan Sebagian';
      case 'enums.furnishings.notFurnished':
        return 'Tidak Berperabotan';
      case 'enums.commercialPropertyType.officeSpace':
        return 'Ruang Kantor';
      case 'enums.commercialPropertyType.retailSpace':
        return 'Ruang Ritel';
      case 'enums.commercialPropertyType.shopLot':
        return 'Lot Toko';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'Gudang / Pabrik';
      case 'enums.commercialPropertyType.hotelResort':
        return 'Hotel / Resor';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return 'Lainnya';
      case 'enums.landPropertyType.residential':
        return 'Perumahan';
      case 'enums.landPropertyType.industrial':
        return 'Industri';
      case 'enums.landPropertyType.agricultural':
        return 'Pertanian';
      case 'enums.landPropertyType.commercial':
        return 'Komersial';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'Pengembangan Campuran';
      case 'enums.landPropertyType.others':
        return 'Lainnya';
      case 'enums.residentPropertyType.condo':
        return 'Kondominium / Hunian Servis / Penthouse';
      case 'enums.residentPropertyType.apartment':
        return 'Apartemen / Flat';
      case 'enums.residentPropertyType.house':
        return 'Rumah';
      case 'enums.residentPropertyType.shoplot':
        return 'Ruko';
      case 'enums.residentPropertyType.sharing':
        return 'Berbagi Rumah / Flat';
      case 'enums.residentPropertyType.others':
        return 'Lainnya';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 Bulan';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 Tahun';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1,5 Tahun';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 Tahun';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2,5 Tahun';
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
