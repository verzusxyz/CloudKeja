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
class TranslationsTh implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsTh({
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
             locale: AppLocale.th,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <th>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsTh _root = this; // ignore: unused_field

  @override
  TranslationsTh $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsTh(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonTh common = _TranslationsCommonTh._(_root);
  @override
  late final _TranslationsExceptionsTh exceptions = _TranslationsExceptionsTh._(
    _root,
  );
  @override
  late final _TranslationsPromptTh prompt = _TranslationsPromptTh._(_root);
  @override
  late final _TranslationsFormTh form = _TranslationsFormTh._(_root);
  @override
  late final _TranslationsActionTh action = _TranslationsActionTh._(_root);
  @override
  late final _TranslationsPagesTh pages = _TranslationsPagesTh._(_root);
  @override
  late final _TranslationsEnumsTh enums = _TranslationsEnumsTh._(_root);
}

// Path: common
class _TranslationsCommonTh implements TranslationsCommonEn {
  _TranslationsCommonTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get profile => 'ข้อมูลส่วนตัว';
  @override
  String get language => 'ภาษา';
  @override
  String get subscriptionPlan => 'แผนการสมัครสมาชิก';
  @override
  String get contactUs => 'ติดต่อเรา';
  @override
  String get termsAndConditions => 'ข้อกำหนดและเงื่อนไข';
  @override
  String get aboutUs => 'เกี่ยวกับเรา';
  @override
  String get logout => 'ออกจากระบบ';
  @override
  String get editProfile => 'แก้ไขข้อมูลส่วนตัว';
  @override
  String get fullName => 'ชื่อเต็ม';
  @override
  String get email => 'อีเมล';
  @override
  String get mobileNumber => 'หมายเลขโทรศัพท์มือถือ';
  @override
  String get address => 'ที่อยู่';
  @override
  String get postalCode => 'รหัสไปรษณีย์';
  @override
  String get city => 'เมือง';
  @override
  String get country => 'ประเทศ';
  @override
  String get state => 'รัฐ';
  @override
  String get password => 'รหัสผ่าน';
  @override
  String get forgotPassword => 'ลืมรหัสผ่าน';
  @override
  String get tenant => 'ผู้เช่า';
  @override
  String get landlord => 'เจ้าของที่ดิน';
  @override
  String get cancelRenting => 'ยกเลิกการเช่า';
  @override
  String get startDate => 'วันที่เริ่มต้น';
  @override
  String get endDate => 'วันที่สิ้นสุด';
  @override
  String get fromDate => 'จากวันที่';
  @override
  String get toDate => 'ถึงวันที่';
  @override
  String get online => 'ออนไลน์';
  @override
  String get bankList => 'รายการธนาคาร';
  @override
  String get withdrawMethod => 'วิธีการถอนเงิน';
  @override
  String get uploadPaymentReceipt => 'อัปโหลดใบเสร็จการชำระเงิน';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'หมายเหตุ: '),
      note('การชำระเงินต้องได้รับการอนุมัติด้วยตนเองจากผู้ดูแลระบบภายใน'),
      const TextSpan(text: ' '),
      duraion('24~48 ชั่วโมง'),
    ],
  );
  @override
  String get reviews => 'รีวิว';
  @override
  String get description => 'คำอธิบาย';
  @override
  String get about => 'เกี่ยวกับ';
  @override
  String get propertyTypes => 'ประเภทอสังหาริมทรัพย์';
  @override
  String get features => 'คุณสมบัติ';
  @override
  String get floorPlans => 'แปลนพื้น';
  @override
  String get buildingDetails => 'รายละเอียดอาคาร';
  @override
  String get buildingName => 'ชื่ออาคาร';
  @override
  String get propertyAddress => 'ที่อยู่อสังหาริมทรัพย์';
  @override
  String get completionYear => 'ปีที่สร้างเสร็จ';
  @override
  String get lotNumber => 'หมายเลขแปลง';
  @override
  String get residentialType => 'ประเภทที่อยู่อาศัย';
  @override
  String get furnishings => 'เครื่องเรือน';
  @override
  String get floorRange => 'ช่วงชั้น';
  @override
  String get bedrooms => 'ห้องนอน';
  @override
  String get bathrooms => 'ห้องน้ำ';
  @override
  String get propertySize => 'ขนาดอสังหาริมทรัพย์';
  @override
  String get rentalPeriod => 'ระยะเวลาการเช่า';
  @override
  String get securityDeposit => 'เงินมัดจำ';
  @override
  String get utilityBill => 'ค่าสาธารณูปโภค';
  @override
  String get facilities => 'สิ่งอำนวยความสะดวก';
  @override
  String get amenities => 'สิ่งอำนวยความสะดวก';
  @override
  String get expiringReason => 'เหตุผลที่หมดอายุ';
  @override
  String get tenantDetails => 'รายละเอียดผู้เช่า';
  @override
  String get typeOfTenant => 'ประเภทผู้เช่า';
  @override
  String get tenantName => 'ชื่อผู้เช่า';
  @override
  String get nidPassport => 'NID/หนังสือเดินทาง';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => 'รหัสผู้เช่า';
  @override
  String get dateOfBirth => 'วันเกิด';
  @override
  String get gender => 'เพศ';
  @override
  String get nominee => 'ผู้รับผลประโยชน์';
  @override
  String get name => 'ชื่อ';
  @override
  String get optional => 'ตัวเลือก';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileTh nomineeMobile =
      _TranslationsCommonNomineeMobileTh._(_root);
  @override
  String get emergencyContact => 'ผู้ติดต่อฉุกเฉิน';
  @override
  String get relation => 'ความสัมพันธ์';
  @override
  String get relationWith => '${_root.common.relation} กับ';
  @override
  String get relationWithYou => '${_root.common.relationWith} คุณ';
  @override
  String get company => 'บริษัท';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => 'ที่ทำงาน';
  @override
  String get officePhoneNo => 'หมายเลขโทรศัพท์สำนักงาน';
  @override
  String get officeMobileNo => 'สำนักงาน ${_root.common.mobileNumber}';
  @override
  String get vehicle => 'ยานพาหนะ';
  @override
  late final _TranslationsCommonVehiclesInfoTh vehiclesInfo =
      _TranslationsCommonVehiclesInfoTh._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} ประเภท';
  @override
  late final _TranslationsCommonVehicleRegistrationNoTh vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoTh._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} ยี่ห้อ';
  @override
  String get rentProperty => 'เช่าทรัพย์สิน';
  @override
  String get propertyDetails => 'รายละเอียดทรัพย์สิน';
  @override
  String get propertyId => 'รหัสทรัพย์สิน';
  @override
  String get propertyType => 'ประเภททรัพย์สิน';
  @override
  String get propertyName => 'ชื่อทรัพย์สิน';
  @override
  String get paymentDetails => 'รายละเอียดการชำระเงิน';
  @override
  String get monthlyRent => 'ค่าเช่ารายเดือน';
  @override
  String get thisMonthPayment => 'การชำระเงินเดือนนี้';
  @override
  String get totalPaidRent => 'ค่าเช่าที่ชำระทั้งหมด';
  @override
  String get dueRent => 'ค่าเช่าค้างชำระ';
  @override
  String get rentStartDate => 'เช่า ${_root.common.startDate}';
  @override
  String get rentEndDate => 'เช่า ${_root.common.endDate}';
  @override
  String get status => 'สถานะ';
  @override
  String get rentAgreementPdf => 'PDF สัญญาเช่า';
  @override
  String get noFile => 'ไม่มีไฟล์';
  @override
  String get tenantImageOp => 'รูปภาพผู้เช่า ${_root.common.optional}';
  @override
  String get addNewVechicle => 'เพิ่มยานพาหนะใหม่';
  @override
  String get uploadNidPassport => 'อัปโหลด NID/หนังสือเดินทาง';
  @override
  String get nidPassportUploadNote =>
      'อนุญาตเฉพาะภาพประเภทไฟล์เท่านั้น ขนาดไฟล์จำกัดไม่เกิน 2.5 MB';
  @override
  String get search => 'ค้นหา';
  @override
  String get sortBy => 'เรียงตาม';
  @override
  String get subscription => 'การสมัครสมาชิก';
  @override
  String get downloading => 'กำลังดาวน์โหลด...';
  @override
  String get downloadSuccess => 'ดาวน์โหลดไฟล์สำเร็จ!';
  @override
  String get addPropertyBannerTitle =>
      'ต้องการปล่อยเช่าทรัพย์สินของคุณหรือไม่?';
  @override
  String get application => 'แอปพลิเคชัน';
  @override
  String get tenantHasPaidDeposit => 'ผู้เช่าได้ชำระเงินมัดจำแล้ว';
  @override
  String get askProcessingRentApplication =>
      'คุณแน่ใจหรือไม่ว่าจะดำเนินการคำขอนี้สำหรับทรัพย์สินให้เช่า?';
  @override
  String get dateAndTime => 'วันและเวลา';
  @override
  String get applicationDetails => 'รายละเอียดแอปพลิเคชัน';
  @override
  String get depositStatus => 'สถานะเงินมัดจำ';
  @override
  String get uploadRentAgreement => 'อัปโหลดสัญญาเช่า';
  @override
  String get uploadFilePDF => 'อัปโหลดไฟล์ (PDF)';
  @override
  String get askSelectRentAgreement => 'โปรดเลือกไฟล์เอกสารข้อตกลง';
  @override
  String get landlordRentAgreementPDF => 'PDF สัญญาเช่าของเจ้าของบ้าน';
  @override
  String get tenantRentAgreementPDF => 'PDF สัญญาเช่าของผู้เช่า';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'หมายเหตุ: '),
          note('อนุมัติแอปพลิเคชันหลังจากผู้เช่าชำระเงินมัดจำแล้วเท่านั้น'),
        ],
      );
  @override
  String get reasonOfRejection => 'เหตุผลในการปฏิเสธ';
  @override
  String get youveRejectedThisApplication => 'คุณได้ปฏิเสธแอปพลิเคชันนี้แล้ว';
  @override
  String get landlordDetails => 'รายละเอียดเจ้าของบ้าน';
  @override
  String get landlordName => 'ชื่อเจ้าของบ้าน';
  @override
  String get downloadRentAgreement => 'ดาวน์โหลดสัญญาเช่า';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: 'ยอมรับ '),
      toc('ข้อกำหนดและเงื่อนไข'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'หมายเหตุ: '),
      note(
        'โปรดดาวน์โหลดและอ่านข้อตกลง โปรดส่งข้อตกลงที่ลงนามแล้วไปยังเจ้าของบ้านผ่าน WhatsApp หรืออีเมล',
      ),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote2({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'หมายเหตุ: '),
      note(
        'เจ้าของบ้านอนุมัติแอปพลิเคชันเมื่อผู้เช่าชำระเงินประกัน ความปลอดภัย ค่าสาธารณูปโภค และค่าเช่าล่วงหน้าหนึ่งเดือน',
      ),
    ],
  );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: 'สัญญาเช่า (PDF) '),
          complete('ข้อตกลงฉบับสมบูรณ์'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'หมายเหตุ : '),
      note(
        'เจ้าของบ้านอนุมัติแอปพลิเคชันเมื่อผู้เช่าชำระเงินประกัน ความปลอดภัย ค่าสาธารณูปโภค และค่าเช่าล่วงหน้าหนึ่งเดือน',
      ),
    ],
  );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => 'รายการแอปพลิเคชัน';
  @override
  String get viewDetails => 'ดูรายละเอียด';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => 'หน้าแรก';
  @override
  String get dashboard => 'แดชบอร์ด';
  @override
  String get tenants => 'ผู้เช่า';
  @override
  String get maintenance => 'การบำรุงรักษา';
  @override
  String get maintenanceList => 'รายการบำรุงรักษา';
  @override
  String get maintenanceReport => 'รายงานการบำรุงรักษา';
  @override
  String get labor => 'แรงงาน';
  @override
  String get applications => 'แอปพลิเคชัน';
  @override
  String get rentInvitation => 'คำเชิญเช่า';
  @override
  String get payment => 'การชำระเงิน';
  @override
  String get rentPayment => 'การชำระค่าเช่า';
  @override
  String get depositUtilityPayment => 'การชำระเงินมัดจำและค่าสาธารณูปโภค';
  @override
  String get refundRequest => 'คำขอคืนเงิน';
  @override
  String get withdrawRequest => 'คำขอถอนเงิน';
  @override
  String get myProperty => 'ทรัพย์สินของฉัน';
  @override
  String get myRent => 'ค่าเช่าของฉัน';
  @override
  String get wishlist => 'สิ่งที่อยากได้';
  @override
  String get properties => 'คุณสมบัติ';
  @override
  String get allProperties => 'คุณสมบัติทั้งหมด';
  @override
  String get totalPropery => 'ทรัพย์สินทั้งหมด';
  @override
  String get occupied => 'ถูกครอบครอง';
  @override
  String get vacant => 'ว่าง';
  @override
  String get accounting => 'บัญชี';
  @override
  String get totalIncome => 'รายได้ทั้งหมด';
  @override
  String get totalExpense => 'ค่าใช้จ่ายทั้งหมด';
  @override
  String get currentBalance => 'ยอดคงเหลือปัจจุบัน';
  @override
  String get totalWithdrawal => 'รวม (ถอน)';
  @override
  String get totalProperties => 'คุณสมบัติทั้งหมด';
  @override
  String get totalTenant => 'ผู้เช่าทั้งหมด';
  @override
  String get totalRentPaid => 'ค่าเช่าที่ชำระทั้งหมด';
  @override
  String get totalRentDue => 'ค่าเช่าค้างชำระทั้งหมด';
  @override
  String get totalApplication => 'แอปพลิเคชันทั้งหมด';
  @override
  String get pendingApplication => 'แอปพลิเคชันที่รอดำเนินการ';
  @override
  String get processingApplication => 'แอปพลิเคชันที่กำลังดำเนินการ';
  @override
  String get approveApplication => 'อนุมัติแอปพลิเคชัน';
  @override
  String get rejectApplication => 'ปฏิเสธแอปพลิเคชัน';
  @override
  String get maintenanceCost => 'ค่าบำรุงรักษา';
  @override
  String get transactionSummary => 'สรุปธุรกรรม';
  @override
  String get maintenanceRequest => 'คำขอบำรุงรักษา';
  @override
  String get notifications => 'การแจ้งเตือน';
  @override
  String get myProperties => 'คุณสมบัติของฉัน';
  @override
  String get recommendationProperties => 'คุณสมบัติแนะนำ';
  @override
  String get laborList => 'รายการแรงงาน';
  @override
  String get addLabor => 'เพิ่มแรงงาน';
  @override
  String get laborDetails => 'รายละเอียดแรงงาน';
  @override
  String get laborSalary => 'เงินเดือนแรงงาน';
  @override
  String get editLabor => 'แก้ไขแรงงาน';
  @override
  String get addNewLabor => 'เพิ่มแรงงานใหม่';
  @override
  String get enterAmount => 'ป้อนจำนวนเงิน';
  @override
  String get maintenanceDetails => 'รายละเอียดการบำรุงรักษา';
  @override
  String get laborName => 'ชื่อแรงงาน';
  @override
  String get comment => 'ความคิดเห็น';
  @override
  String get image => 'รูปภาพ';
  @override
  String get complete => 'เสร็จสมบูรณ์';
  @override
  String get details => 'รายละเอียด';
  @override
  String get title => 'ชื่อ';
  @override
  String get date => 'วันที่';
  @override
  String get reason => 'เหตุผล';
  @override
  String get edit => 'แก้ไข';
  @override
  String get property => 'ทรัพย์สิน';
  @override
  String get completeYourProfile => 'กรอกโปรไฟล์ของคุณให้สมบูรณ์';
  @override
  String get profileImage => 'รูปโปรไฟล์';
  @override
  String get imagePickHint =>
      'อนุญาตเฉพาะรูปภาพ JPEG และ PNG ขนาดสูงสุด 120x120 พิกเซล';
  @override
  String get invoiceId => 'หมายเลขใบแจ้งหนี้';
  @override
  String get depositAmount => 'จำนวนเงินมัดจำ';
  @override
  String get landlordPhone => 'โทรศัพท์เจ้าของบ้าน';
  @override
  String get rentalAdvance => 'ค่าเช่า (ล่วงหน้า)';
  @override
  String get totalAmount => 'จำนวนเงินทั้งหมด';
  @override
  String get rentalAmount => 'จำนวนเงินค่าเช่า';
  @override
  String get adminCharge => 'ค่าธรรมเนียมผู้ดูแลระบบ';
  @override
  String get editAccount => 'แก้ไขบัญชี';
  @override
  String get addNewAccount => 'เพิ่มบัญชีใหม่';
  @override
  String get transactionId => 'รหัสธุรกรรม';
  @override
  String get transactionType => 'ประเภทธุรกรรม';
  @override
  String get requestDate => 'วันที่ร้องขอ';
  @override
  String get amount => 'จำนวนเงิน';
  @override
  String get fee => 'ค่าธรรมเนียม';
  @override
  String get paymentStatus => 'สถานะการชำระเงิน';
  @override
  String get generatedTime => 'เวลาที่สร้าง';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: 'นี่คือรายงานที่สร้างขึ้นโดยระบบของ '),
      appName,
    ],
  );
  @override
  String get withdrawHistory => 'ประวัติการถอน';
  @override
  String get history => 'ประวัติ';
  @override
  String get withdrawAmount => 'จำนวนเงินที่ถอน';
  @override
  String get availableBalance => 'ยอดคงเหลือที่มีอยู่';
  @override
  String get withdrawCharge => 'ค่าธรรมเนียมการถอน';
  @override
  String get paymentMethod => 'วิธีการชำระเงิน';
  @override
  String get requestSendSuccess => 'ส่งคำขอสำเร็จ!';
  @override
  String get paymentReceiptSubmitSuccess => 'ส่งใบเสร็จการชำระเงินสำเร็จ';
  @override
  String get refundReason => 'เหตุผลในการคืนเงิน';
  @override
  String get note => 'หมายเหตุ';
  @override
  String get refundReceiveSuccess => 'รับเงินคืนสำเร็จ';
  @override
  String get downloadPaymentReceipt => 'ดาวน์โหลดใบเสร็จการชำระเงิน';
  @override
  String get invoice => 'ใบแจ้งหนี้';
  @override
  String get selectPropertyToSeeInvoice =>
      'เลือกทรัพย์สินเพื่อดูหมายเลขใบแจ้งหนี้...';
  @override
  String get bankAccName => 'ชื่อบัญชีธนาคาร';
  @override
  String get bankName => 'ชื่อธนาคาร';
  @override
  String get bankAccNum => 'หมายเลขบัญชีธนาคาร';
  @override
  String get thankYou => 'ขอบคุณ!';
  @override
  String get basicInfo => 'ข้อมูลพื้นฐาน';
  @override
  String get descriptionPricing => 'คำอธิบายและราคา';
  @override
  String get contact => 'ติดต่อ';
  @override
  String get photos => 'รูปภาพ';
  @override
  String get successfullySubmitted => 'ส่งสำเร็จ!';
  @override
  String get editProperty => 'แก้ไขทรัพย์สิน';
  @override
  String get addNewProperty => 'เพิ่มทรัพย์สินใหม่';
  @override
  String get propertyManageRequestSuccess =>
      'โฆษณาของคุณได้รับการส่งเพื่อตรวจสอบแล้ว';
  @override
  String get postAnotherProperty => 'โพสต์ทรัพย์สินอื่น';
  @override
  String get browseYourProperty => 'เรียกดูทรัพย์สินของคุณ';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'ขั้นตอน '),
      step,
      const TextSpan(text: ' จาก '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => 'คุณต้องการโพสต์อะไร?';
  @override
  String get category => 'หมวดหมู่';
  @override
  String get invalidCategory => 'หมวดหมู่ไม่ถูกต้อง';
  @override
  String get unitNumber => 'หมายเลขหน่วย';
  @override
  String get sqft => 'ตร.ฟุต';
  @override
  String get propertySizeMustBeGreaterThan0 => 'ขนาดทรัพย์สินต้องมากกว่าศูนย์';
  @override
  String get whatAreTheFacility => 'สิ่งอำนวยความสะดวกคืออะไร?';
  @override
  String get whatAreTheAmenity => 'สิ่งอำนวยความสะดวกคืออะไร?';
  @override
  String get parkingLot => 'ที่จอดรถ';
  @override
  String get houseType => 'ประเภทบ้าน';
  @override
  String get value => 'มูลค่า';
  @override
  String get unitLotSize => 'ขนาดหน่วย / ล็อต';
  @override
  String get landSize => 'ขนาดที่ดิน';
  @override
  String get acres => 'เอเคอร์';
  @override
  String get roomSize => 'ขนาดห้อง';
  @override
  String get askTenantPreference => 'ความต้องการของผู้เช่าของคุณคืออะไร';
  @override
  String get couple => 'คู่';
  @override
  String describeTheProperty({required String propertyType}) =>
      'อธิบาย ${propertyType}';
  @override
  String get adTitle => 'ชื่อโฆษณา';
  @override
  String get minimumRentalPeriod => 'ระยะเวลาการเช่าขั้นต่ำ';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} หมายเลข';
  @override
  String get hideOrDisplayEmail => 'ซ่อนหรือแสดงที่อยู่อีเมล';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      'ขอบคุณสำหรับการโพสต์บน ${appName}!';
  @override
  String get propertyList => 'รายการทรัพย์สิน';
  @override
  String get newInviteRent => 'เช่าคำเชิญใหม่';
  @override
  String get rentAgreement => 'สัญญาเช่า';
  @override
  String get rentDetails => 'รายละเอียดการเช่า';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'หมายเหตุ: '),
      note('โปรดรอให้ผู้เช่ายอมรับคำเชิญ'),
    ],
  );
  @override
  String get rent => 'เช่า';
  @override
  String get editTenant => 'แก้ไขผู้เช่า';
  @override
  String get addNewTenant => 'เพิ่มผู้เช่าใหม่';
  @override
  String get shareInstallLink => 'แชร์ลิงก์การติดตั้ง';
  @override
  String get tenantList => 'รายการผู้เช่า';
  @override
  String get editMaintenanceRequest => 'แก้ไขคำขอบำรุงรักษา';
  @override
  String get addNewMaintenance => 'เพิ่มการบำรุงรักษาใหม่';
  @override
  String get landlordId => 'รหัสเจ้าของบ้าน';
  @override
  TextSpan tenantAgrementUnderReviewNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'หมายเหตุ '),
      note(
        'ข้อตกลงของคุณอยู่ระหว่างการตรวจสอบ โปรดรอจนกว่าเจ้าของบ้านจะอนุมัติการเช่าของคุณ',
      ),
    ],
  );
  @override
  String get editReview => 'แก้ไขรีวิว';
  @override
  String get writeAReview => 'เขียนรีวิว';
  @override
  String get selectRating => 'เลือกระดับ';
  @override
  String get enterYourOpinion => 'ป้อนความคิดเห็นของคุณ';
  @override
  String get askToEnterReviewMsg => 'โปรดป้อนข้อความรีวิว';
  @override
  String get pressBackAgainToExit => 'กดกลับอีกครั้งเพื่อออก';
  @override
  String get selectPaymentMethod => 'เลือกวิธีการชำระเงิน';
  @override
  String get filter => 'ตัวกรอง';
  @override
  String get perMonth => '/1 เดือน';
  @override
  String searchHintWithAppName({required String appName}) =>
      'ค้นหาอะไรก็ได้ใน ${appName}...';
}

// Path: exceptions
class _TranslationsExceptionsTh implements TranslationsExceptionsEn {
  _TranslationsExceptionsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => 'มีบางอย่างผิดพลาด โปรดลองอีกครั้ง';
  @override
  String get noNidPassport => 'ไม่มีรูปภาพ NID/หนังสือเดินทางให้ไว้';
  @override
  String get noRentPropertyFound => 'ไม่พบคุณสมบัติการเช่าสำหรับผู้เช่ารายนี้';
  @override
  String get noPropertyFoundWithKeyWord =>
      'ไม่พบคุณสมบัติ!\nโปรดลองใช้คำหลักอื่น';
  @override
  String get noSubscriptionFoundRefreshPage =>
      'ไม่พบแผนการสมัครสมาชิก!\nโปรดรีเฟรชหน้าแล้วลองอีกครั้ง';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      'ข้อมูล ${dataType} ไม่ถูกต้อง! โปรดรีเฟรชหน้าแล้วลองอีกครั้ง';
  @override
  String get invalidDownloadUrl => 'URL ดาวน์โหลดไม่ถูกต้อง!';
  @override
  String failedToSaveFile({required String error}) =>
      'บันทึกไฟล์ไม่สำเร็จ! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      'ข้อผิดพลาดในการเปิดไฟล์! ${error}';
  @override
  String get noVehicleInfoProvided => 'ไม่มีข้อมูลยานพาหนะ';
  @override
  String get yourApplicationRejected => 'แอปพลิเคชันของคุณถูกปฏิเสธแล้ว';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintTh
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintTh._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintTh noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintTh._(_root);
  @override
  String get noImageProvided => 'ไม่มีรูปภาพให้';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundTh
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundTh._(
    _root,
  );
  @override
  String get noDepositFound => 'ไม่พบเงินมัดจำ!\nโปรดดูเงินมัดจำเมื่อมี';
  @override
  String get noRentPaymentFound =>
      'ไม่พบการชำระค่าเช่า!\nโปรดดูการชำระค่าเช่าเมื่อมี';
  @override
  String get transactionSummaryApiException => 'รับข้อมูลสรุปธุรกรรมล้มเหลว';
  @override
  String get noWithdrawRequestFound =>
      'ไม่พบคำขอ!\nโปรดลองสร้างคำขอถอนเพื่อดูที่นี่';
  @override
  String get withdrawRequestNotApproved => 'คำขอถอนนี้ยังไม่ได้รับการอนุมัติ!';
  @override
  String get nonZeroError => 'โปรดป้อนจำนวนเงินที่ถูกต้องมากกว่าศูนย์';
  @override
  String minAmountError({required String minValue}) =>
      'จำนวนเงินต้องมีอย่างน้อย ${minValue}';
  @override
  String maxAmountError({required String maxValue}) =>
      'จำนวนเงินต้องไม่เกิน ${maxValue}';
  @override
  String get selectPaymentMethodHint => 'โปรดเลือกวิธีการชำระเงินก่อน';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundTh
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundTh._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintTh refundRequestHint =
      _TranslationsExceptionsRefundRequestHintTh._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      'โปรดเลือกรอบของ ${value}';
  @override
  String get invalidDateRange => 'ช่วงวันที่ไม่ถูกต้อง';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} ต้องมากกว่าศูนย์';
  @override
  late final _TranslationsExceptionsEditPropertyTh editProperty =
      _TranslationsExceptionsEditPropertyTh._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationTh rentInvitation =
      _TranslationsExceptionsRentInvitationTh._(_root);
  @override
  String get notenantFoundList =>
      'ไม่มีผู้เช่า!\nโปรดลองเพิ่มผู้เช่าเพื่อดูที่นี่';
  @override
  String get noFeaturesProvided => 'ไม่มีคุณสมบัติให้';
  @override
  String get noNotificationFound =>
      'ไม่มีการแจ้งเตือน\nคุณสามารถดูการแจ้งเตือนของคุณได้ที่นี่เมื่อมี';
}

// Path: prompt
class _TranslationsPromptTh implements TranslationsPromptEn {
  _TranslationsPromptTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutTh logout = _TranslationsPromptLogoutTh._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationTh application =
      _TranslationsPromptApplicationTh._(_root);
  @override
  late final _TranslationsPromptLaborTh labor = _TranslationsPromptLaborTh._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestTh maintenanceRequest =
      _TranslationsPromptMaintenanceRequestTh._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodTh withdrawMethod =
      _TranslationsPromptWithdrawMethodTh._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesTh unsavedChanges =
      _TranslationsPromptUnsavedChangesTh._(_root);
  @override
  late final _TranslationsPromptPropertyTh property =
      _TranslationsPromptPropertyTh._(_root);
  @override
  late final _TranslationsPromptRentInvitationTh rentInvitation =
      _TranslationsPromptRentInvitationTh._(_root);
  @override
  late final _TranslationsPromptSessionExpiredTh sessionExpired =
      _TranslationsPromptSessionExpiredTh._(_root);
  @override
  late final _TranslationsPromptNoInternetTh noInternet =
      _TranslationsPromptNoInternetTh._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerTh permissionHandler =
      _TranslationsPromptPermissionHandlerTh._(_root);
  @override
  late final _TranslationsPromptImagePickerTh imagePicker =
      _TranslationsPromptImagePickerTh._(_root);
  @override
  late final _TranslationsPromptVerificationDialogTh verificationDialog =
      _TranslationsPromptVerificationDialogTh._(_root);
  @override
  late final _TranslationsPromptNotificationTh notification =
      _TranslationsPromptNotificationTh._(_root);
}

// Path: form
class _TranslationsFormTh implements TranslationsFormEn {
  _TranslationsFormTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameTh fullName =
      _TranslationsFormFullNameTh._(_root);
  @override
  late final _TranslationsFormEmailTh email = _TranslationsFormEmailTh._(_root);
  @override
  late final _TranslationsFormPasswordTh password =
      _TranslationsFormPasswordTh._(_root);
  @override
  late final _TranslationsFormConfirmPasswordTh confirmPassword =
      _TranslationsFormConfirmPasswordTh._(_root);
  @override
  late final _TranslationsFormMobileNumberTh mobileNumber =
      _TranslationsFormMobileNumberTh._(_root);
  @override
  late final _TranslationsFormAddress1Th address1 =
      _TranslationsFormAddress1Th._(_root);
  @override
  late final _TranslationsFormAddress2Th address2 =
      _TranslationsFormAddress2Th._(_root);
  @override
  late final _TranslationsFormPostalCodeTh postalCode =
      _TranslationsFormPostalCodeTh._(_root);
  @override
  late final _TranslationsFormCityTh city = _TranslationsFormCityTh._(_root);
  @override
  late final _TranslationsFormStateTh state = _TranslationsFormStateTh._(_root);
  @override
  late final _TranslationsFormCountryTh country = _TranslationsFormCountryTh._(
    _root,
  );
  @override
  late final _TranslationsFormOtpTh otp = _TranslationsFormOtpTh._(_root);
  @override
  late final _TranslationsFormTitleTh title = _TranslationsFormTitleTh._(_root);
  @override
  late final _TranslationsFormDateTh date = _TranslationsFormDateTh._(_root);
  @override
  late final _TranslationsFormReasonTh reason = _TranslationsFormReasonTh._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodTh withdrawMethod =
      _TranslationsFormWithdrawMethodTh._(_root);
  @override
  late final _TranslationsFormFileFieldTh fileField =
      _TranslationsFormFileFieldTh._(_root);
  @override
  late final _TranslationsFormNoteTh note = _TranslationsFormNoteTh._(_root);
  @override
  late final _TranslationsFormGenderTh gender = _TranslationsFormGenderTh._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldTh anyField =
      _TranslationsFormAnyFieldTh._(_root);
  @override
  late final _TranslationsFormAnyDropdownTh anyDropdown =
      _TranslationsFormAnyDropdownTh._(_root);
}

// Path: action
class _TranslationsActionTh implements TranslationsActionEn {
  _TranslationsActionTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get next => 'ถัดไป';
  @override
  String get getStarted => 'เริ่มต้น';
  @override
  String get skip => 'ข้าม';
  @override
  String get select => 'เลือก';
  @override
  String get save => 'บันทึก';
  @override
  String get signIn => 'เข้าสู่ระบบ';
  @override
  String get signUp => 'สมัครสมาชิก';
  @override
  String get kContinue => 'ดำเนินการต่อ';
  @override
  String get clearAll => 'ลบทั้งหมด';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => 'ส่ง';
  @override
  String get pay => 'ชำระเงิน';
  @override
  String get remove => 'ลบ';
  @override
  String get goBack => 'ย้อนกลับ';
  @override
  String get buyNow => 'ซื้อเดี๋ยวนี้';
  @override
  String get no => 'ไม่';
  @override
  String get open => 'เปิด';
  @override
  String get addProperty => 'เพิ่มทรัพย์สิน';
  @override
  String get process => 'ดำเนินการ';
  @override
  String get approve => 'อนุมัติ';
  @override
  String get reject => 'ปฏิเสธ';
  @override
  String get viewRent => 'ดูค่าเช่า';
  @override
  String get openNavigationMenu => 'เปิดเมนูนำทาง';
  @override
  String get seeAll => 'ดูทั้งหมด';
  @override
  String get update => 'อัปเดต';
  @override
  String get printTransaction => 'พิมพ์รายการธุรกรรม';
  @override
  String get payoutRequest => 'คำขอจ่ายเงิน';
  @override
  String get addNew => '+ เพิ่มใหม่';
  @override
  String get sendRequest => 'ส่งคำขอ';
  @override
  String get print => 'พิมพ์';
  @override
  String get requestForRefund => 'ขอคืนเงิน';
  @override
  String get previous => 'ก่อนหน้า';
  @override
  String get delete => 'ลบ';
  @override
  String get applyProperty => 'สมัครทรัพย์สิน';
  @override
  String get viewApplication => 'ดูใบสมัคร';
  @override
  String get inviteTenant => 'เชิญผู้เช่า';
  @override
  String get inviteRent => 'เชิญเช่า';
  @override
  String get cancel => 'ยกเลิก';
  @override
  String get accept => 'ยอมรับ';
  @override
  String get submit => 'ส่ง';
  @override
  String get yes => 'ใช่';
  @override
  String get okay => 'ตกลง';
  @override
  String get confirm => 'ยืนยัน';
  @override
  String get apply => 'สมัคร';
  @override
  String get reset => 'รีเซ็ต';
  @override
  String get retry => 'ลองอีกครั้ง';
  @override
  String get viewAll => 'ดูทั้งหมด';
}

// Path: pages
class _TranslationsPagesTh implements TranslationsPagesEn {
  _TranslationsPagesTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageTh language =
      _TranslationsPagesLanguageTh._(_root);
  @override
  late final _TranslationsPagesOnboardTh onboard =
      _TranslationsPagesOnboardTh._(_root);
  @override
  late final _TranslationsPagesSignInTh signIn = _TranslationsPagesSignInTh._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordTh forgotPassword =
      _TranslationsPagesForgotPasswordTh._(_root);
  @override
  late final _TranslationsPagesOtpVerificationTh otpVerification =
      _TranslationsPagesOtpVerificationTh._(_root);
  @override
  late final _TranslationsPagesResetPasswordTh resetPassword =
      _TranslationsPagesResetPasswordTh._(_root);
  @override
  late final _TranslationsPagesSignUpTh signUp = _TranslationsPagesSignUpTh._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeTh welcome =
      _TranslationsPagesWelcomeTh._(_root);
  @override
  late final _TranslationsPagesAboutUsTh aboutUs =
      _TranslationsPagesAboutUsTh._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsTh termsAndConditions =
      _TranslationsPagesTermsAndConditionsTh._(_root);
  @override
  late final _TranslationsPagesNotificationListTh notificationList =
      _TranslationsPagesNotificationListTh._(_root);
  @override
  late final _TranslationsPagesContactUsTh contactUs =
      _TranslationsPagesContactUsTh._(_root);
  @override
  late final _TranslationsPagesCancelRentingTh cancelRenting =
      _TranslationsPagesCancelRentingTh._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsTh invoiceDetails =
      _TranslationsPagesInvoiceDetailsTh._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentTh offlinePayment =
      _TranslationsPagesOfflinePaymentTh._(_root);
  @override
  late final _TranslationsPagesPaymentStatusTh paymentStatus =
      _TranslationsPagesPaymentStatusTh._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsTh propertyDetails =
      _TranslationsPagesPropertyDetailsTh._(_root);
  @override
  late final _TranslationsPagesSearchTh search = _TranslationsPagesSearchTh._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanTh subscriptionPlan =
      _TranslationsPagesSubscriptionPlanTh._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportTh
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportTh._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsTh implements TranslationsEnumsEn {
  _TranslationsEnumsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusTh propertyStatus =
      _TranslationsEnumsPropertyStatusTh._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeTh propertyType =
      _TranslationsEnumsPropertyTypeTh._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusTh applicationStatus =
      _TranslationsEnumsApplicationStatusTh._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusTh myRentStatus =
      _TranslationsEnumsMyRentStatusTh._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusTh maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusTh._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeTh tenantProfileType =
      _TranslationsEnumsTenantProfileTypeTh._(_root);
  @override
  late final _TranslationsEnumsTenantTypeTh tenantType =
      _TranslationsEnumsTenantTypeTh._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusTh paymentStatus =
      _TranslationsEnumsPaymentStatusTh._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsTh paymentOptions =
      _TranslationsEnumsPaymentOptionsTh._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeTh paymentType =
      _TranslationsEnumsPaymentTypeTh._(_root);
  @override
  late final _TranslationsEnumsGenderTh gender = _TranslationsEnumsGenderTh._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationTh ecRelation =
      _TranslationsEnumsEcRelationTh._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeTh vehicleType =
      _TranslationsEnumsVehicleTypeTh._(_root);
  @override
  late final _TranslationsEnumsSortByTh sortBy = _TranslationsEnumsSortByTh._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeTh residentialType =
      _TranslationsEnumsResidentialTypeTh._(_root);
  @override
  late final _TranslationsEnumsFloorRangeTh floorRange =
      _TranslationsEnumsFloorRangeTh._(_root);
  @override
  late final _TranslationsEnumsFurnishingsTh furnishings =
      _TranslationsEnumsFurnishingsTh._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeTh commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeTh._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeTh landPropertyType =
      _TranslationsEnumsLandPropertyTypeTh._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeTh residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeTh._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodTh minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodTh._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterTh dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterTh._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileTh
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} Mo. No.';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoTh
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get plain => 'ข้อมูลยานพาหนะ';
  @override
  String get optional => 'ข้อมูลยานพาหนะ (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoTh
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get normal => 'หมายเลขทะเบียนรถ';
  @override
  String get short => 'ทะเบียนรถ';
  @override
  String get alt => 'ป้ายทะเบียน';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintTh
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      'ไม่พบแอปพลิเคชัน!\n${subject} จะแสดงที่นี่เมื่อมี';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsTh subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsTh._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintTh
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome =>
      'ไม่พบคุณสมบัติ!\nโปรดลองเพิ่มคุณสมบัติเพื่อดูที่นี่';
  @override
  String get tenantRecommended =>
      'ไม่พบคุณสมบัติแนะนำ\nโปรดลองอีกครั้งในภายหลัง';
  @override
  String get tenantAllProperty =>
      'คุณสมบัติไม่พร้อมใช้งาน\nโปรดลองอีกครั้งในภายหลัง';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundTh
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) => 'ไม่พบการบำรุงรักษา ${status}';
  @override
  String get tenant =>
      'ไม่พบการบำรุงรักษา! คุณสามารถสร้างคำขอบำรุงรักษาเพื่อดูที่นี่';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundTh
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      'ไม่พบคำขอคืนเงิน ${status}!\nคุณสามารถดูคำขอคืนเงินได้ที่นี่เมื่อมี';
  @override
  String get tenant =>
      'ไม่พบคำขอคืนเงิน!\nคุณสามารถสร้างคำขอคืนเงินเพื่อดูที่นี่';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintTh
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList => 'ผู้เช่าจะอนุมัติการคืนเงินเมื่อเขาได้รับเงินคืน';
  @override
  String get tenantReqSuccess =>
      'เราจะตรวจสอบคำขอคืนเงินและอนุมัติภายใน 24 ชั่วโมง';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyTh
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange =>
      'คุณสมบัติการเช่ากำลังเปลี่ยนแปลง ต้องใช้ได้ (มีผล) สำหรับการชำระค่าเช่าเดือนถัดไปเท่านั้น';
  @override
  String get deleteOnRent =>
      'ทรัพย์สินของคุณถูกเช่าโดยผู้เช่าแล้ว ไม่สามารถลบได้จนกว่าจะเอาผู้เช่าออกก่อน';
  @override
  String get alreayRented =>
      'ทรัพย์สินนี้ถูกเช่าแล้ว โปรดลองอีกครั้งในภายหลัง\nหรือคุณสามารถติดต่อเจ้าของบ้านเพื่อขอข้อมูลเพิ่มเติมได้';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationTh
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      'ไม่พบคำเชิญเช่า!\nโปรดลองสร้างคำเชิญเช่าเพื่อดูที่นี่';
  @override
  String get tenantNoRentInvitation =>
      'ไม่พบคำเชิญเช่า!\nคุณสามารถดูคำเชิญเช่าได้ที่นี่เมื่อมี';
}

// Path: prompt.logout
class _TranslationsPromptLogoutTh implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => 'คุณแน่ใจหรือไม่ที่จะออกจากระบบ';
}

// Path: prompt.application
class _TranslationsPromptApplicationTh
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'ทำไมคุณถึงปฏิเสธแอปพลิเคชันนี้?';
  @override
  late final _TranslationsPromptApplicationApplicationSentTh applicationSent =
      _TranslationsPromptApplicationApplicationSentTh._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborTh implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteTh delete =
      _TranslationsPromptLaborDeleteTh._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestTh
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => 'ทำไมคำขอนี้ถึงถูกปฏิเสธ?';
  @override
  String get processTitle => 'คุณแน่ใจหรือไม่ว่าจะดำเนินการคำขอบำรุงรักษานี้?';
  @override
  String get completeTitle => 'งานเสร็จสมบูรณ์แล้วหรือยัง?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodTh
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => 'ลบวิธีการถอน?';
  @override
  String get deleteDescription => 'คุณแน่ใจหรือไม่ที่จะลบวิธีการถอนนี้?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesTh
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'คุณแน่ใจหรือไม่ที่จะกลับไป?';
  @override
  String get message => 'ฟิลด์ที่เปลี่ยนแปลงจะไม่ถูกบันทึก!';
}

// Path: prompt.property
class _TranslationsPromptPropertyTh implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteTh delete =
      _TranslationsPromptPropertyDeleteTh._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationTh
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveTh
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveTh._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptTh tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptTh._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredTh
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'เซสชันหมดอายุ';
  @override
  String get message => 'เซสชันของคุณหมดอายุแล้ว โปรดลงชื่อเข้าใช้อีกครั้ง';
  @override
  String get action => 'ลงชื่อเข้าใช้';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetTh
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต';
  @override
  String get message =>
      'โปรดตรวจสอบการเชื่อมต่อเครือข่ายมือถือ Wi-Fi ของคุณแล้วลองอีกครั้ง';
  @override
  String get action => 'ลองอีกครั้ง';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerTh
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'ต้องได้รับอนุญาต!';
  @override
  String get message =>
      'คุณต้องให้สิทธิ์ในการตั้งค่าแอป คุณต้องการเปิดการตั้งค่าตอนนี้หรือไม่?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerTh
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'เลือกตัวเลือก';
  @override
  String get gallery => 'แกลเลอรี่';
  @override
  String get camera => 'กล้อง';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogTh
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'ยืนยันอีเมลของคุณ';
  @override
  String get message => 'เราได้ส่งอีเมลรหัสยืนยันแล้ว';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} ไปที่ ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationTh
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => 'ล้างการแจ้งเตือน?';
  @override
  String get clearMessage => 'คุณแน่ใจหรือไม่ที่จะล้างการแจ้งเตือนทั้งหมด?';
}

// Path: form.fullName
class _TranslationsFormFullNameTh implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => 'ป้อน ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsTh errors =
      _TranslationsFormFullNameErrorsTh._(_root);
}

// Path: form.email
class _TranslationsFormEmailTh implements TranslationsFormEmailEn {
  _TranslationsFormEmailTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => 'ป้อน ${_root.common.email} ของคุณ';
  @override
  late final _TranslationsFormEmailErrorsTh errors =
      _TranslationsFormEmailErrorsTh._(_root);
}

// Path: form.password
class _TranslationsFormPasswordTh implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsTh errors =
      _TranslationsFormPasswordErrorsTh._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordTh
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'ยืนยัน ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsTh errors =
      _TranslationsFormConfirmPasswordErrorsTh._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberTh
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsTh errors =
      _TranslationsFormMobileNumberErrorsTh._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Th implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Th._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => 'หมายเลขบ้านและชื่อถนน';
  @override
  late final _TranslationsFormAddress1ErrorsTh errors =
      _TranslationsFormAddress1ErrorsTh._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Th implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Th._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => 'อพาร์ตเมนต์, ห้องชุด, หน่วย, ฯลฯ';
  @override
  late final _TranslationsFormAddress2ErrorsTh errors =
      _TranslationsFormAddress2ErrorsTh._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeTh implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => 'ป้อน ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsTh errors =
      _TranslationsFormPostalCodeErrorsTh._(_root);
}

// Path: form.city
class _TranslationsFormCityTh implements TranslationsFormCityEn {
  _TranslationsFormCityTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => 'ป้อนชื่อ ${_root.common.city}';
  @override
  late final _TranslationsFormCityErrorsTh errors =
      _TranslationsFormCityErrorsTh._(_root);
}

// Path: form.state
class _TranslationsFormStateTh implements TranslationsFormStateEn {
  _TranslationsFormStateTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => 'ป้อนชื่อ ${_root.common.state}';
  @override
  late final _TranslationsFormStateErrorsTh errors =
      _TranslationsFormStateErrorsTh._(_root);
}

// Path: form.country
class _TranslationsFormCountryTh implements TranslationsFormCountryEn {
  _TranslationsFormCountryTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => 'เลือก ${_root.common.country}';
  @override
  late final _TranslationsFormCountryErrorsTh errors =
      _TranslationsFormCountryErrorsTh._(_root);
}

// Path: form.otp
class _TranslationsFormOtpTh implements TranslationsFormOtpEn {
  _TranslationsFormOtpTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsTh errors =
      _TranslationsFormOtpErrorsTh._(_root);
}

// Path: form.title
class _TranslationsFormTitleTh implements TranslationsFormTitleEn {
  _TranslationsFormTitleTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'ชื่อ';
  @override
  String get hint => 'ป้อนชื่อ';
  @override
  late final _TranslationsFormTitleErrorsTh errors =
      _TranslationsFormTitleErrorsTh._(_root);
}

// Path: form.date
class _TranslationsFormDateTh implements TranslationsFormDateEn {
  _TranslationsFormDateTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'เลือก ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsTh errors =
      _TranslationsFormDateErrorsTh._(_root);
}

// Path: form.reason
class _TranslationsFormReasonTh implements TranslationsFormReasonEn {
  _TranslationsFormReasonTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'เหตุผล';
  @override
  String get hint => 'ป้อนเหตุผล';
  @override
  late final _TranslationsFormReasonErrorsTh errors =
      _TranslationsFormReasonErrorsTh._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodTh
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => 'เลือก ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsTh errors =
      _TranslationsFormWithdrawMethodErrorsTh._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldTh implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => 'อัปโหลด ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsTh errors =
      _TranslationsFormFileFieldErrorsTh._(_root);
}

// Path: form.note
class _TranslationsFormNoteTh implements TranslationsFormNoteEn {
  _TranslationsFormNoteTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      'ป้อน ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsTh errors =
      _TranslationsFormNoteErrorsTh._(_root);
}

// Path: form.gender
class _TranslationsFormGenderTh implements TranslationsFormGenderEn {
  _TranslationsFormGenderTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => 'เลือก ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsTh errors =
      _TranslationsFormGenderErrorsTh._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldTh implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'ป้อน ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsTh errors =
      _TranslationsFormAnyFieldErrorsTh._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownTh implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      'เลือก ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsTh errors =
      _TranslationsFormAnyDropdownErrorsTh._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageTh implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardTh implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataTh onboardData =
      _TranslationsPagesOnboardOnboardDataTh._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInTh implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'ยินดีต้อนรับกลับ';
  @override
  String get subtitle => 'เข้าสู่ระบบตอนนี้เพื่อเริ่มการเดินทางที่ยอดเยี่ยม.';
  @override
  late final _TranslationsPagesSignInExtraTh extra =
      _TranslationsPagesSignInExtraTh._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordTh
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'ลืมรหัสผ่าน';
  @override
  String get subtitle => 'กรอกที่อยู่อีเมลของคุณเพื่อกู้คืนรหัสผ่าน.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationTh
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'การยืนยันตัวตน';
  @override
  String subtitle({required String email}) =>
      'รหัส PIN 4 หลักถูกส่งไปยังที่อยู่อีเมลของคุณแล้ว ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraTh extra =
      _TranslationsPagesOtpVerificationExtraTh._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordTh
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'รีเซ็ตรหัสผ่าน';
  @override
  String get subtitle =>
      'รีเซ็ตรหัสผ่านของคุณเพื่อกู้คืนและเข้าสู่ระบบบัญชีของคุณ';
  @override
  late final _TranslationsPagesResetPasswordExtraTh extra =
      _TranslationsPagesResetPasswordExtraTh._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpTh implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'สร้างบัญชี';
  @override
  String get subtitle => 'สมัครสมาชิกตอนนี้เพื่อเริ่มการเดินทางที่ยอดเยี่ยม';
  @override
  late final _TranslationsPagesSignUpExtraTh extra =
      _TranslationsPagesSignUpExtraTh._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeTh implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'คุณคือใคร?';
  @override
  String get subtitle => 'โปรดเลือกตัวเลือกด้านล่าง.';
  @override
  late final _TranslationsPagesWelcomeExtraTh extra =
      _TranslationsPagesWelcomeExtraTh._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsTh implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsTh
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListTh
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'การแจ้งเตือน';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsTh implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraTh extra =
      _TranslationsPagesContactUsExtraTh._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingTh
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => 'ทำไมคุณถึง ${_root.common.cancelRenting}?';
  @override
  late final _TranslationsPagesCancelRentingFormTh form =
      _TranslationsPagesCancelRentingFormTh._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsTh
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentTh
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'การชำระเงินออฟไลน์';
  @override
  late final _TranslationsPagesOfflinePaymentFormTh form =
      _TranslationsPagesOfflinePaymentFormTh._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraTh extra =
      _TranslationsPagesOfflinePaymentExtraTh._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusTh
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessTh success =
      _TranslationsPagesPaymentStatusSuccessTh._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailTh fail =
      _TranslationsPagesPaymentStatusFailTh._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsTh
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraTh extra =
      _TranslationsPagesPropertyDetailsExtraTh._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchTh implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'ค้นหา';
  @override
  late final _TranslationsPagesSearchExtraTh extra =
      _TranslationsPagesSearchExtraTh._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanTh
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => 'เลือกแผนของคุณ';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraTh extra =
      _TranslationsPagesSubscriptionPlanExtraTh._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportTh
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'ค่าบำรุงรักษารวม: '),
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
class _TranslationsEnumsPropertyStatusTh
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => 'ทรัพย์สินทั้งหมด';
  @override
  String get pending => 'รอดำเนินการ';
  @override
  String get active => 'ใช้งาน';
  @override
  String get inactive => 'ไม่ใช้งาน';
  @override
  String get rejected => 'ถูกปฏิเสธ';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeTh
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => 'อพาร์ตเมนต์/คอนโดมิเนียม';
  @override
  String get house => 'บ้าน';
  @override
  String get commercialProperty => 'ทรัพย์สินเชิงพาณิชย์';
  @override
  String get land => 'ที่ดิน';
  @override
  String get room => 'ห้อง';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusTh
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'ทั้งหมด';
  @override
  String get pending => 'รอดำเนินการ';
  @override
  String get processing => 'กำลังดำเนินการ';
  @override
  String get approved => 'ได้รับการอนุมัติ';
  @override
  String get rejected => 'ถูกปฏิเสธ';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusTh
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'รอดำเนินการ';
  @override
  String get processing => 'กำลังดำเนินการ';
  @override
  String get active => 'ใช้งาน';
  @override
  String get expired => 'หมดอายุ';
  @override
  String get cancelled => 'ยกเลิก';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusTh
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get pending => 'รอดำเนินการ';
  @override
  String get processing => 'กำลังดำเนินการ';
  @override
  String get rejected => 'ถูกปฏิเสธ';
  @override
  String get completed => 'เสร็จสิ้น';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeTh
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => 'ส่วนบุคคล (บุคคล)';
  @override
  String get company => 'บริษัท';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeTh implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => 'ผู้เช่ารายใหม่';
  @override
  String get activeTenant => 'ผู้เช่าที่ใช้งาน';
  @override
  String get expiredTenant => 'ผู้เช่าที่หมดอายุ';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusTh
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get all => 'ทั้งหมด';
  @override
  String get pending => 'รอดำเนินการ';
  @override
  String get paid => 'ชำระแล้ว';
  @override
  String get unpaid => 'ยังไม่ชำระ';
  @override
  String get rejected => 'ถูกปฏิเสธ';
  @override
  String get refund => 'คืนเงิน';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsTh
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => 'การชำระเงินออนไลน์';
  @override
  String get offlinePayment => 'การชำระเงินออฟไลน์';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeTh
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => 'เงินมัดจำ';
  @override
  String get rentPayment => 'การชำระค่าเช่า';
  @override
  String get subscription => 'การสมัครสมาชิก';
}

// Path: enums.gender
class _TranslationsEnumsGenderTh implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get male => 'ชาย';
  @override
  String get female => 'หญิง';
  @override
  String get other => 'อื่นๆ';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationTh implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get wife => 'ภรรยา';
  @override
  String get parent => 'พ่อแม่';
  @override
  String get friend => 'เพื่อน';
  @override
  String get brother => 'พี่ชาย/น้องชาย';
  @override
  String get sister => 'พี่สาว/น้องสาว';
  @override
  String get child => 'ลูก';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeTh
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get car => 'รถยนต์';
  @override
  String get motorcycles => 'จักรยานยนต์';
  @override
  String get lorry => 'รถบรรทุก';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByTh implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => 'จากต่ำไปสูง';
  @override
  String get highToLow => 'จากสูงไปต่ำ';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeTh
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get flat => 'แฟลต';
  @override
  String get apartment => 'อพาร์ตเมนต์';
  @override
  String get condominium => 'คอนโดมิเนียม';
  @override
  String get serviceResidence => 'เซอร์วิสอพาร์ตเมนต์';
  @override
  String get studio => 'สตูดิโอ';
  @override
  String get duplex => 'ดูเพล็กซ์';
  @override
  String get townhouseCondo => 'ทาวน์เฮาส์คอนโด';
  @override
  String get others => 'อื่นๆ';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeTh implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get high => 'สูง';
  @override
  String get medium => 'กลาง';
  @override
  String get low => 'ต่ำ';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsTh
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => 'ตกแต่งครบ';
  @override
  String get partiallyFurnished => 'ตกแต่งบางส่วน';
  @override
  String get notFurnished => 'ไม่ตกแต่ง';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeTh
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => 'พื้นที่สำนักงาน';
  @override
  String get retailSpace => 'พื้นที่ค้าปลีก';
  @override
  String get shopLot => 'แปลงที่ดินสำหรับร้านค้า';
  @override
  String get warehouseFactory => 'โกดัง/โรงงาน';
  @override
  String get hotelResort => 'โรงแรม/รีสอร์ท';
  @override
  String get sofo => 'โซโฟ';
  @override
  String get soho => 'โซโฮ';
  @override
  String get sovo => 'โซโว';
  @override
  String get others => 'อื่นๆ';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeTh
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get residential => 'ที่อยู่อาศัย';
  @override
  String get industrial => 'อุตสาหกรรม';
  @override
  String get agricultural => 'เกษตรกรรม';
  @override
  String get commercial => 'พาณิชยกรรม';
  @override
  String get mixedDevelopment => 'การพัฒนาผสม';
  @override
  String get others => 'อื่นๆ';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeTh
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get condo => 'คอนโด/เซอร์วิสอพาร์ตเมนต์/เพนท์เฮาส์';
  @override
  String get apartment => 'อพาร์ตเมนต์/แฟลต';
  @override
  String get house => 'บ้าน';
  @override
  String get shoplot => 'ร้านค้า';
  @override
  String get sharing => 'แชร์บ้าน/แฟลต';
  @override
  String get others => 'อื่นๆ';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodTh
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 เดือน';
  @override
  String get oneYear => '1 ปี';
  @override
  String get oneAndHalfYears => '1.5 ปี';
  @override
  String get twoYears => '2 ปี';
  @override
  String get twoAndHalfYears => '2.5 ปี';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterTh
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get daily => 'รายวัน';
  @override
  String get weekly => 'รายสัปดาห์';
  @override
  String get monthly => 'รายเดือน';
  @override
  String get yearly => 'รายปี';
  @override
  String get custom => 'กำหนดเอง';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsTh
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => 'แอปพลิเคชันของคุณ';
  @override
  String get landlord => 'แอปพลิเคชันของผู้เช่า';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentTh
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => 'ส่งแอปพลิเคชันสำเร็จ!';
  @override
  String get sucessDescription =>
      'คุณสามารถดูแอปพลิเคชันนี้ในรายการแอปพลิเคชันของคุณ';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteTh
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'ลบแรงงาน?';
  @override
  String get description => 'คุณแน่ใจหรือไม่ที่จะลบแรงงานคนนี้?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteTh
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'ลบทรัพย์สิน?';
  @override
  String get message => 'คุณแน่ใจหรือไม่ที่จะลบทรัพย์สินนี้?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveTh
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'คุณแน่ใจหรือไม่ที่จะอนุมัติการเช่านี้?';
  @override
  String get description =>
      'ตรวจสอบให้แน่ใจว่าคุณได้ตรวจสอบข้อตกลงที่ผู้เช่าลงนามแล้ว';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptTh
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'คุณแน่ใจหรือไม่ที่จะรับคำเชิญนี้?';
  @override
  String get description =>
      'ตรวจสอบให้แน่ใจว่าคุณได้ดาวน์โหลดไฟล์ PDF ข้อตกลงแล้ว!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsTh
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อน ${_root.common.fullName} ของคุณ';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsTh implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อนที่อยู่ ${_root.common.email} ของคุณ';
  @override
  String get invalid => '⦸ อีเมลไม่ถูกต้อง โปรดลองอีกครั้ง';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsTh
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อน ${_root.common.password} ของคุณ';
  @override
  String minLength({required Object count}) =>
      'รหัสผ่านต้องมีความยาวอย่างน้อย ${count} ตัวอักษร!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsTh
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อน ${_root.common.password} ของคุณ';
  @override
  String get notMatched => 'ยืนยันรหัสผ่านไม่ตรงกัน!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsTh
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อน ${_root.common.mobileNumber} ของคุณ';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsTh
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อน ${_root.form.address1.label} ของคุณ';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsTh
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อน ${_root.form.address2.label} ของคุณ';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsTh
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อน ${_root.common.postalCode} ของคุณ';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsTh implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อนชื่อ ${_root.common.city} ของคุณ';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsTh implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อนชื่อ ${_root.common.state} ของคุณ';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsTh
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดเลือก ${_root.common.country} ของคุณ';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsTh implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อน OTP';
  @override
  String get invalid => 'โปรดป้อน OTP ที่ถูกต้อง';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsTh implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อนชื่อ';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsTh implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'โปรดเลือก ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsTh
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดป้อนเหตุผล';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsTh
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดเลือก ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsTh
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => 'โปรดเลือก ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsTh implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      'โปรดป้อน ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsTh
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'โปรดเลือก ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsTh
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'โปรดป้อน ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => 'โปรดป้อน @form.anyField.label ที่ถูกต้อง';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsTh
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      'โปรดเลือก ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => 'โปรดเลือก @form.anyDropdown.label ที่ถูกต้อง';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataTh
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Th data1 =
      _TranslationsPagesOnboardOnboardDataData1Th._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Th data2 =
      _TranslationsPagesOnboardOnboardDataData2Th._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Th data3 =
      _TranslationsPagesOnboardOnboardDataData3Th._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraTh
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => 'จดจำฉัน';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: 'ยังไม่มีบัญชี? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraTh
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendTh codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendTh._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraTh
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogTh dialog =
      _TranslationsPagesResetPasswordExtraDialogTh._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraTh
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: 'มีบัญชีแล้ว? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraTh
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => 'จัดการทรัพย์สินของคุณเอง';
  @override
  String get tenantTag => 'เข้าสู่ระบบบัญชีเช่าของคุณ';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraTh
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => 'ข้อความ...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormTh
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonTh reason =
      _TranslationsPagesCancelRentingFormReasonTh._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormTh
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteTh paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteTh._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraTh
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: 'จำนวนเงินที่ชำระ: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => 'ชื่อผู้ถือบัญชี';
  @override
  String get accountNumber => 'หมายเลขบัญชี';
  @override
  String get swiftCode => 'รหัส SWIFT';
  @override
  String get branch => 'สาขา';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: 'เลือกไฟล์ในรูปแบบ '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' หรือ '),
      fileType('DOC'),
      const TextSpan(text: ' เท่านั้น ขนาดไฟล์ '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessTh
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'ดูใบแจ้งหนี้';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description =>
      'เราจะตรวจสอบการชำระเงินและอนุมัติภายใน 24 ชั่วโมง.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailTh
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => 'ลองอีกครั้ง';
  @override
  String get title => 'อุ๊บส์! การชำระเงินล้มเหลว';
  @override
  String get description =>
      'การทำรายการของคุณล้มเหลวเนื่องจากข้อผิดพลาดทางเทคนิค.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraTh
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

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
      const TextSpan(text: 'คุณสมบัติ '),
      fa('(สิ่งอำนวยความสะดวก & สิ่งอำนวยความสะดวก)'),
    ],
  );
  @override
  String get selectRentalPeriod => 'เลือกระยะเวลาเช่า';
  @override
  String get writeAReview => '+ เขียนรีวิว';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraTh
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'ค้นหาที่ดิน, แฟลต, ห้อง...';
  @override
  String get noRecentSearch => 'คุณยังไม่มีการค้นหาล่าสุด.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraTh
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      'การชำระเงินสำหรับการสมัครสมาชิกสำเร็จ.\nคุณสามารถเข้าถึงคุณสมบัติที่สมัครสมาชิกได้แล้ว.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Th
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Th._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'ค้นหาทรัพย์สินของคุณ';
  @override
  String get description =>
      'เราทำให้การหาที่พักที่เหมาะสมกับชีวิตคุณเป็นเรื่องง่าย — ไม่ว่าจะเป็นห้อง, อพาร์ตเมนต์, หรือบ้าน.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Th
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Th._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'อพาร์ตเมนต์ในเมือง';
  @override
  String get description =>
      'เราประหยัดเวลาโดยการจับคู่คุณกับทรัพย์สินที่สมบูรณ์แบบก่อนที่จะหายไป เพื่อที่คุณจะได้เพลิดเพลินกับบ้านใหม่ของคุณ หรือจดทะเบียนทรัพย์สินของคุณเองได้ฟรี.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Th
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Th._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'บ้านที่คุณสะดวกสบาย';
  @override
  String get description =>
      'หากคุณกำลังมองหาที่พัก ลองดูบ้านให้เช่าของเราที่มีหลากหลายให้เลือกจากทั่วประเทศ.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendTh
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      'รหัสจะถูกส่งใน ${minutes}:${seconds}';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('ส่งรหัสอีกครั้ง'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogTh
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'เปลี่ยนรหัสสำเร็จ!';
  @override
  String get subtitle =>
      'เข้าสู่ระบบด้วยรหัสผ่านใหม่ของคุณ.\n กำลังพาคุณไปยังหน้าล็อกอิน...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonTh
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get hint => 'เขียนเหตุผล';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsTh errors =
      _TranslationsPagesCancelRentingFormReasonErrorsTh._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteTh
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get label => 'บันทึกการชำระเงิน (${_root.common.optional})';
  @override
  String get hint => 'กรอกข้อความ...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsTh
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsTh._(this._root);

  final TranslationsTh _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'กรุณากรอกเหตุผลในการยกเลิกการเช่า';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsTh {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return 'ข้อมูลส่วนตัว';
      case 'common.language':
        return 'ภาษา';
      case 'common.subscriptionPlan':
        return 'แผนการสมัครสมาชิก';
      case 'common.contactUs':
        return 'ติดต่อเรา';
      case 'common.termsAndConditions':
        return 'ข้อกำหนดและเงื่อนไข';
      case 'common.aboutUs':
        return 'เกี่ยวกับเรา';
      case 'common.logout':
        return 'ออกจากระบบ';
      case 'common.editProfile':
        return 'แก้ไขข้อมูลส่วนตัว';
      case 'common.fullName':
        return 'ชื่อเต็ม';
      case 'common.email':
        return 'อีเมล';
      case 'common.mobileNumber':
        return 'หมายเลขโทรศัพท์มือถือ';
      case 'common.address':
        return 'ที่อยู่';
      case 'common.postalCode':
        return 'รหัสไปรษณีย์';
      case 'common.city':
        return 'เมือง';
      case 'common.country':
        return 'ประเทศ';
      case 'common.state':
        return 'รัฐ';
      case 'common.password':
        return 'รหัสผ่าน';
      case 'common.forgotPassword':
        return 'ลืมรหัสผ่าน';
      case 'common.tenant':
        return 'ผู้เช่า';
      case 'common.landlord':
        return 'เจ้าของที่ดิน';
      case 'common.cancelRenting':
        return 'ยกเลิกการเช่า';
      case 'common.startDate':
        return 'วันที่เริ่มต้น';
      case 'common.endDate':
        return 'วันที่สิ้นสุด';
      case 'common.fromDate':
        return 'จากวันที่';
      case 'common.toDate':
        return 'ถึงวันที่';
      case 'common.online':
        return 'ออนไลน์';
      case 'common.bankList':
        return 'รายการธนาคาร';
      case 'common.withdrawMethod':
        return 'วิธีการถอนเงิน';
      case 'common.uploadPaymentReceipt':
        return 'อัปโหลดใบเสร็จการชำระเงิน';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'หมายเหตุ: '),
            note('การชำระเงินต้องได้รับการอนุมัติด้วยตนเองจากผู้ดูแลระบบภายใน'),
            const TextSpan(text: ' '),
            duraion('24~48 ชั่วโมง'),
          ],
        );
      case 'common.reviews':
        return 'รีวิว';
      case 'common.description':
        return 'คำอธิบาย';
      case 'common.about':
        return 'เกี่ยวกับ';
      case 'common.propertyTypes':
        return 'ประเภทอสังหาริมทรัพย์';
      case 'common.features':
        return 'คุณสมบัติ';
      case 'common.floorPlans':
        return 'แปลนพื้น';
      case 'common.buildingDetails':
        return 'รายละเอียดอาคาร';
      case 'common.buildingName':
        return 'ชื่ออาคาร';
      case 'common.propertyAddress':
        return 'ที่อยู่อสังหาริมทรัพย์';
      case 'common.completionYear':
        return 'ปีที่สร้างเสร็จ';
      case 'common.lotNumber':
        return 'หมายเลขแปลง';
      case 'common.residentialType':
        return 'ประเภทที่อยู่อาศัย';
      case 'common.furnishings':
        return 'เครื่องเรือน';
      case 'common.floorRange':
        return 'ช่วงชั้น';
      case 'common.bedrooms':
        return 'ห้องนอน';
      case 'common.bathrooms':
        return 'ห้องน้ำ';
      case 'common.propertySize':
        return 'ขนาดอสังหาริมทรัพย์';
      case 'common.rentalPeriod':
        return 'ระยะเวลาการเช่า';
      case 'common.securityDeposit':
        return 'เงินมัดจำ';
      case 'common.utilityBill':
        return 'ค่าสาธารณูปโภค';
      case 'common.facilities':
        return 'สิ่งอำนวยความสะดวก';
      case 'common.amenities':
        return 'สิ่งอำนวยความสะดวก';
      case 'common.expiringReason':
        return 'เหตุผลที่หมดอายุ';
      case 'common.tenantDetails':
        return 'รายละเอียดผู้เช่า';
      case 'common.typeOfTenant':
        return 'ประเภทผู้เช่า';
      case 'common.tenantName':
        return 'ชื่อผู้เช่า';
      case 'common.nidPassport':
        return 'NID/หนังสือเดินทาง';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return 'รหัสผู้เช่า';
      case 'common.dateOfBirth':
        return 'วันเกิด';
      case 'common.gender':
        return 'เพศ';
      case 'common.nominee':
        return 'ผู้รับผลประโยชน์';
      case 'common.name':
        return 'ชื่อ';
      case 'common.optional':
        return 'ตัวเลือก';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} Mo. No.';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return 'ผู้ติดต่อฉุกเฉิน';
      case 'common.relation':
        return 'ความสัมพันธ์';
      case 'common.relationWith':
        return '${_root.common.relation} กับ';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} คุณ';
      case 'common.company':
        return 'บริษัท';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return 'ที่ทำงาน';
      case 'common.officePhoneNo':
        return 'หมายเลขโทรศัพท์สำนักงาน';
      case 'common.officeMobileNo':
        return 'สำนักงาน ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return 'ยานพาหนะ';
      case 'common.vehiclesInfo.plain':
        return 'ข้อมูลยานพาหนะ';
      case 'common.vehiclesInfo.optional':
        return 'ข้อมูลยานพาหนะ (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} ประเภท';
      case 'common.vehicleRegistrationNo.normal':
        return 'หมายเลขทะเบียนรถ';
      case 'common.vehicleRegistrationNo.short':
        return 'ทะเบียนรถ';
      case 'common.vehicleRegistrationNo.alt':
        return 'ป้ายทะเบียน';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} ยี่ห้อ';
      case 'common.rentProperty':
        return 'เช่าทรัพย์สิน';
      case 'common.propertyDetails':
        return 'รายละเอียดทรัพย์สิน';
      case 'common.propertyId':
        return 'รหัสทรัพย์สิน';
      case 'common.propertyType':
        return 'ประเภททรัพย์สิน';
      case 'common.propertyName':
        return 'ชื่อทรัพย์สิน';
      case 'common.paymentDetails':
        return 'รายละเอียดการชำระเงิน';
      case 'common.monthlyRent':
        return 'ค่าเช่ารายเดือน';
      case 'common.thisMonthPayment':
        return 'การชำระเงินเดือนนี้';
      case 'common.totalPaidRent':
        return 'ค่าเช่าที่ชำระทั้งหมด';
      case 'common.dueRent':
        return 'ค่าเช่าค้างชำระ';
      case 'common.rentStartDate':
        return 'เช่า ${_root.common.startDate}';
      case 'common.rentEndDate':
        return 'เช่า ${_root.common.endDate}';
      case 'common.status':
        return 'สถานะ';
      case 'common.rentAgreementPdf':
        return 'PDF สัญญาเช่า';
      case 'common.noFile':
        return 'ไม่มีไฟล์';
      case 'common.tenantImageOp':
        return 'รูปภาพผู้เช่า ${_root.common.optional}';
      case 'common.addNewVechicle':
        return 'เพิ่มยานพาหนะใหม่';
      case 'common.uploadNidPassport':
        return 'อัปโหลด NID/หนังสือเดินทาง';
      case 'common.nidPassportUploadNote':
        return 'อนุญาตเฉพาะภาพประเภทไฟล์เท่านั้น ขนาดไฟล์จำกัดไม่เกิน 2.5 MB';
      case 'common.search':
        return 'ค้นหา';
      case 'common.sortBy':
        return 'เรียงตาม';
      case 'common.subscription':
        return 'การสมัครสมาชิก';
      case 'common.downloading':
        return 'กำลังดาวน์โหลด...';
      case 'common.downloadSuccess':
        return 'ดาวน์โหลดไฟล์สำเร็จ!';
      case 'common.addPropertyBannerTitle':
        return 'ต้องการปล่อยเช่าทรัพย์สินของคุณหรือไม่?';
      case 'common.application':
        return 'แอปพลิเคชัน';
      case 'common.tenantHasPaidDeposit':
        return 'ผู้เช่าได้ชำระเงินมัดจำแล้ว';
      case 'common.askProcessingRentApplication':
        return 'คุณแน่ใจหรือไม่ว่าจะดำเนินการคำขอนี้สำหรับทรัพย์สินให้เช่า?';
      case 'common.dateAndTime':
        return 'วันและเวลา';
      case 'common.applicationDetails':
        return 'รายละเอียดแอปพลิเคชัน';
      case 'common.depositStatus':
        return 'สถานะเงินมัดจำ';
      case 'common.uploadRentAgreement':
        return 'อัปโหลดสัญญาเช่า';
      case 'common.uploadFilePDF':
        return 'อัปโหลดไฟล์ (PDF)';
      case 'common.askSelectRentAgreement':
        return 'โปรดเลือกไฟล์เอกสารข้อตกลง';
      case 'common.landlordRentAgreementPDF':
        return 'PDF สัญญาเช่าของเจ้าของบ้าน';
      case 'common.tenantRentAgreementPDF':
        return 'PDF สัญญาเช่าของผู้เช่า';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'หมายเหตุ: '),
            note('อนุมัติแอปพลิเคชันหลังจากผู้เช่าชำระเงินมัดจำแล้วเท่านั้น'),
          ],
        );
      case 'common.reasonOfRejection':
        return 'เหตุผลในการปฏิเสธ';
      case 'common.youveRejectedThisApplication':
        return 'คุณได้ปฏิเสธแอปพลิเคชันนี้แล้ว';
      case 'common.landlordDetails':
        return 'รายละเอียดเจ้าของบ้าน';
      case 'common.landlordName':
        return 'ชื่อเจ้าของบ้าน';
      case 'common.downloadRentAgreement':
        return 'ดาวน์โหลดสัญญาเช่า';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: 'ยอมรับ '),
            toc('ข้อกำหนดและเงื่อนไข'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'หมายเหตุ: '),
            note(
              'โปรดดาวน์โหลดและอ่านข้อตกลง โปรดส่งข้อตกลงที่ลงนามแล้วไปยังเจ้าของบ้านผ่าน WhatsApp หรืออีเมล',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'หมายเหตุ: '),
            note(
              'เจ้าของบ้านอนุมัติแอปพลิเคชันเมื่อผู้เช่าชำระเงินประกัน ความปลอดภัย ค่าสาธารณูปโภค และค่าเช่าล่วงหน้าหนึ่งเดือน',
            ),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: 'สัญญาเช่า (PDF) '),
            complete('ข้อตกลงฉบับสมบูรณ์'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'หมายเหตุ : '),
            note(
              'เจ้าของบ้านอนุมัติแอปพลิเคชันเมื่อผู้เช่าชำระเงินประกัน ความปลอดภัย ค่าสาธารณูปโภค และค่าเช่าล่วงหน้าหนึ่งเดือน',
            ),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return 'รายการแอปพลิเคชัน';
      case 'common.viewDetails':
        return 'ดูรายละเอียด';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return 'หน้าแรก';
      case 'common.dashboard':
        return 'แดชบอร์ด';
      case 'common.tenants':
        return 'ผู้เช่า';
      case 'common.maintenance':
        return 'การบำรุงรักษา';
      case 'common.maintenanceList':
        return 'รายการบำรุงรักษา';
      case 'common.maintenanceReport':
        return 'รายงานการบำรุงรักษา';
      case 'common.labor':
        return 'แรงงาน';
      case 'common.applications':
        return 'แอปพลิเคชัน';
      case 'common.rentInvitation':
        return 'คำเชิญเช่า';
      case 'common.payment':
        return 'การชำระเงิน';
      case 'common.rentPayment':
        return 'การชำระค่าเช่า';
      case 'common.depositUtilityPayment':
        return 'การชำระเงินมัดจำและค่าสาธารณูปโภค';
      case 'common.refundRequest':
        return 'คำขอคืนเงิน';
      case 'common.withdrawRequest':
        return 'คำขอถอนเงิน';
      case 'common.myProperty':
        return 'ทรัพย์สินของฉัน';
      case 'common.myRent':
        return 'ค่าเช่าของฉัน';
      case 'common.wishlist':
        return 'สิ่งที่อยากได้';
      case 'common.properties':
        return 'คุณสมบัติ';
      case 'common.allProperties':
        return 'คุณสมบัติทั้งหมด';
      case 'common.totalPropery':
        return 'ทรัพย์สินทั้งหมด';
      case 'common.occupied':
        return 'ถูกครอบครอง';
      case 'common.vacant':
        return 'ว่าง';
      case 'common.accounting':
        return 'บัญชี';
      case 'common.totalIncome':
        return 'รายได้ทั้งหมด';
      case 'common.totalExpense':
        return 'ค่าใช้จ่ายทั้งหมด';
      case 'common.currentBalance':
        return 'ยอดคงเหลือปัจจุบัน';
      case 'common.totalWithdrawal':
        return 'รวม (ถอน)';
      case 'common.totalProperties':
        return 'คุณสมบัติทั้งหมด';
      case 'common.totalTenant':
        return 'ผู้เช่าทั้งหมด';
      case 'common.totalRentPaid':
        return 'ค่าเช่าที่ชำระทั้งหมด';
      case 'common.totalRentDue':
        return 'ค่าเช่าค้างชำระทั้งหมด';
      case 'common.totalApplication':
        return 'แอปพลิเคชันทั้งหมด';
      case 'common.pendingApplication':
        return 'แอปพลิเคชันที่รอดำเนินการ';
      case 'common.processingApplication':
        return 'แอปพลิเคชันที่กำลังดำเนินการ';
      case 'common.approveApplication':
        return 'อนุมัติแอปพลิเคชัน';
      case 'common.rejectApplication':
        return 'ปฏิเสธแอปพลิเคชัน';
      case 'common.maintenanceCost':
        return 'ค่าบำรุงรักษา';
      case 'common.transactionSummary':
        return 'สรุปธุรกรรม';
      case 'common.maintenanceRequest':
        return 'คำขอบำรุงรักษา';
      case 'common.notifications':
        return 'การแจ้งเตือน';
      case 'common.myProperties':
        return 'คุณสมบัติของฉัน';
      case 'common.recommendationProperties':
        return 'คุณสมบัติแนะนำ';
      case 'common.laborList':
        return 'รายการแรงงาน';
      case 'common.addLabor':
        return 'เพิ่มแรงงาน';
      case 'common.laborDetails':
        return 'รายละเอียดแรงงาน';
      case 'common.laborSalary':
        return 'เงินเดือนแรงงาน';
      case 'common.editLabor':
        return 'แก้ไขแรงงาน';
      case 'common.addNewLabor':
        return 'เพิ่มแรงงานใหม่';
      case 'common.enterAmount':
        return 'ป้อนจำนวนเงิน';
      case 'common.maintenanceDetails':
        return 'รายละเอียดการบำรุงรักษา';
      case 'common.laborName':
        return 'ชื่อแรงงาน';
      case 'common.comment':
        return 'ความคิดเห็น';
      case 'common.image':
        return 'รูปภาพ';
      case 'common.complete':
        return 'เสร็จสมบูรณ์';
      case 'common.details':
        return 'รายละเอียด';
      case 'common.title':
        return 'ชื่อ';
      case 'common.date':
        return 'วันที่';
      case 'common.reason':
        return 'เหตุผล';
      case 'common.edit':
        return 'แก้ไข';
      case 'common.property':
        return 'ทรัพย์สิน';
      case 'common.completeYourProfile':
        return 'กรอกโปรไฟล์ของคุณให้สมบูรณ์';
      case 'common.profileImage':
        return 'รูปโปรไฟล์';
      case 'common.imagePickHint':
        return 'อนุญาตเฉพาะรูปภาพ JPEG และ PNG ขนาดสูงสุด 120x120 พิกเซล';
      case 'common.invoiceId':
        return 'หมายเลขใบแจ้งหนี้';
      case 'common.depositAmount':
        return 'จำนวนเงินมัดจำ';
      case 'common.landlordPhone':
        return 'โทรศัพท์เจ้าของบ้าน';
      case 'common.rentalAdvance':
        return 'ค่าเช่า (ล่วงหน้า)';
      case 'common.totalAmount':
        return 'จำนวนเงินทั้งหมด';
      case 'common.rentalAmount':
        return 'จำนวนเงินค่าเช่า';
      case 'common.adminCharge':
        return 'ค่าธรรมเนียมผู้ดูแลระบบ';
      case 'common.editAccount':
        return 'แก้ไขบัญชี';
      case 'common.addNewAccount':
        return 'เพิ่มบัญชีใหม่';
      case 'common.transactionId':
        return 'รหัสธุรกรรม';
      case 'common.transactionType':
        return 'ประเภทธุรกรรม';
      case 'common.requestDate':
        return 'วันที่ร้องขอ';
      case 'common.amount':
        return 'จำนวนเงิน';
      case 'common.fee':
        return 'ค่าธรรมเนียม';
      case 'common.paymentStatus':
        return 'สถานะการชำระเงิน';
      case 'common.generatedTime':
        return 'เวลาที่สร้าง';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: 'นี่คือรายงานที่สร้างขึ้นโดยระบบของ '),
            appName,
          ],
        );
      case 'common.withdrawHistory':
        return 'ประวัติการถอน';
      case 'common.history':
        return 'ประวัติ';
      case 'common.withdrawAmount':
        return 'จำนวนเงินที่ถอน';
      case 'common.availableBalance':
        return 'ยอดคงเหลือที่มีอยู่';
      case 'common.withdrawCharge':
        return 'ค่าธรรมเนียมการถอน';
      case 'common.paymentMethod':
        return 'วิธีการชำระเงิน';
      case 'common.requestSendSuccess':
        return 'ส่งคำขอสำเร็จ!';
      case 'common.paymentReceiptSubmitSuccess':
        return 'ส่งใบเสร็จการชำระเงินสำเร็จ';
      case 'common.refundReason':
        return 'เหตุผลในการคืนเงิน';
      case 'common.note':
        return 'หมายเหตุ';
      case 'common.refundReceiveSuccess':
        return 'รับเงินคืนสำเร็จ';
      case 'common.downloadPaymentReceipt':
        return 'ดาวน์โหลดใบเสร็จการชำระเงิน';
      case 'common.invoice':
        return 'ใบแจ้งหนี้';
      case 'common.selectPropertyToSeeInvoice':
        return 'เลือกทรัพย์สินเพื่อดูหมายเลขใบแจ้งหนี้...';
      case 'common.bankAccName':
        return 'ชื่อบัญชีธนาคาร';
      case 'common.bankName':
        return 'ชื่อธนาคาร';
      case 'common.bankAccNum':
        return 'หมายเลขบัญชีธนาคาร';
      case 'common.thankYou':
        return 'ขอบคุณ!';
      case 'common.basicInfo':
        return 'ข้อมูลพื้นฐาน';
      case 'common.descriptionPricing':
        return 'คำอธิบายและราคา';
      case 'common.contact':
        return 'ติดต่อ';
      case 'common.photos':
        return 'รูปภาพ';
      case 'common.successfullySubmitted':
        return 'ส่งสำเร็จ!';
      case 'common.editProperty':
        return 'แก้ไขทรัพย์สิน';
      case 'common.addNewProperty':
        return 'เพิ่มทรัพย์สินใหม่';
      case 'common.propertyManageRequestSuccess':
        return 'โฆษณาของคุณได้รับการส่งเพื่อตรวจสอบแล้ว';
      case 'common.postAnotherProperty':
        return 'โพสต์ทรัพย์สินอื่น';
      case 'common.browseYourProperty':
        return 'เรียกดูทรัพย์สินของคุณ';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: 'ขั้นตอน '),
                step,
                const TextSpan(text: ' จาก '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return 'คุณต้องการโพสต์อะไร?';
      case 'common.category':
        return 'หมวดหมู่';
      case 'common.invalidCategory':
        return 'หมวดหมู่ไม่ถูกต้อง';
      case 'common.unitNumber':
        return 'หมายเลขหน่วย';
      case 'common.sqft':
        return 'ตร.ฟุต';
      case 'common.propertySizeMustBeGreaterThan0':
        return 'ขนาดทรัพย์สินต้องมากกว่าศูนย์';
      case 'common.whatAreTheFacility':
        return 'สิ่งอำนวยความสะดวกคืออะไร?';
      case 'common.whatAreTheAmenity':
        return 'สิ่งอำนวยความสะดวกคืออะไร?';
      case 'common.parkingLot':
        return 'ที่จอดรถ';
      case 'common.houseType':
        return 'ประเภทบ้าน';
      case 'common.value':
        return 'มูลค่า';
      case 'common.unitLotSize':
        return 'ขนาดหน่วย / ล็อต';
      case 'common.landSize':
        return 'ขนาดที่ดิน';
      case 'common.acres':
        return 'เอเคอร์';
      case 'common.roomSize':
        return 'ขนาดห้อง';
      case 'common.askTenantPreference':
        return 'ความต้องการของผู้เช่าของคุณคืออะไร';
      case 'common.couple':
        return 'คู่';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => 'อธิบาย ${propertyType}';
      case 'common.adTitle':
        return 'ชื่อโฆษณา';
      case 'common.minimumRentalPeriod':
        return 'ระยะเวลาการเช่าขั้นต่ำ';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} หมายเลข';
      case 'common.hideOrDisplayEmail':
        return 'ซ่อนหรือแสดงที่อยู่อีเมล';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) =>
            'ขอบคุณสำหรับการโพสต์บน ${appName}!';
      case 'common.propertyList':
        return 'รายการทรัพย์สิน';
      case 'common.newInviteRent':
        return 'เช่าคำเชิญใหม่';
      case 'common.rentAgreement':
        return 'สัญญาเช่า';
      case 'common.rentDetails':
        return 'รายละเอียดการเช่า';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'หมายเหตุ: '),
            note('โปรดรอให้ผู้เช่ายอมรับคำเชิญ'),
          ],
        );
      case 'common.rent':
        return 'เช่า';
      case 'common.editTenant':
        return 'แก้ไขผู้เช่า';
      case 'common.addNewTenant':
        return 'เพิ่มผู้เช่าใหม่';
      case 'common.shareInstallLink':
        return 'แชร์ลิงก์การติดตั้ง';
      case 'common.tenantList':
        return 'รายการผู้เช่า';
      case 'common.editMaintenanceRequest':
        return 'แก้ไขคำขอบำรุงรักษา';
      case 'common.addNewMaintenance':
        return 'เพิ่มการบำรุงรักษาใหม่';
      case 'common.landlordId':
        return 'รหัสเจ้าของบ้าน';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: 'หมายเหตุ '),
            note(
              'ข้อตกลงของคุณอยู่ระหว่างการตรวจสอบ โปรดรอจนกว่าเจ้าของบ้านจะอนุมัติการเช่าของคุณ',
            ),
          ],
        );
      case 'common.editReview':
        return 'แก้ไขรีวิว';
      case 'common.writeAReview':
        return 'เขียนรีวิว';
      case 'common.selectRating':
        return 'เลือกระดับ';
      case 'common.enterYourOpinion':
        return 'ป้อนความคิดเห็นของคุณ';
      case 'common.askToEnterReviewMsg':
        return 'โปรดป้อนข้อความรีวิว';
      case 'common.pressBackAgainToExit':
        return 'กดกลับอีกครั้งเพื่อออก';
      case 'common.selectPaymentMethod':
        return 'เลือกวิธีการชำระเงิน';
      case 'common.filter':
        return 'ตัวกรอง';
      case 'common.perMonth':
        return '/1 เดือน';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => 'ค้นหาอะไรก็ได้ใน ${appName}...';
      case 'exceptions.somethingWentWrong':
        return 'มีบางอย่างผิดพลาด โปรดลองอีกครั้ง';
      case 'exceptions.noNidPassport':
        return 'ไม่มีรูปภาพ NID/หนังสือเดินทางให้ไว้';
      case 'exceptions.noRentPropertyFound':
        return 'ไม่พบคุณสมบัติการเช่าสำหรับผู้เช่ารายนี้';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return 'ไม่พบคุณสมบัติ!\nโปรดลองใช้คำหลักอื่น';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return 'ไม่พบแผนการสมัครสมาชิก!\nโปรดรีเฟรชหน้าแล้วลองอีกครั้ง';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            'ข้อมูล ${dataType} ไม่ถูกต้อง! โปรดรีเฟรชหน้าแล้วลองอีกครั้ง';
      case 'exceptions.invalidDownloadUrl':
        return 'URL ดาวน์โหลดไม่ถูกต้อง!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => 'บันทึกไฟล์ไม่สำเร็จ! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => 'ข้อผิดพลาดในการเปิดไฟล์! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return 'ไม่มีข้อมูลยานพาหนะ';
      case 'exceptions.yourApplicationRejected':
        return 'แอปพลิเคชันของคุณถูกปฏิเสธแล้ว';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            'ไม่พบแอปพลิเคชัน!\n${subject} จะแสดงที่นี่เมื่อมี';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return 'แอปพลิเคชันของคุณ';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return 'แอปพลิเคชันของผู้เช่า';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return 'ไม่พบคุณสมบัติ!\nโปรดลองเพิ่มคุณสมบัติเพื่อดูที่นี่';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return 'ไม่พบคุณสมบัติแนะนำ\nโปรดลองอีกครั้งในภายหลัง';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return 'คุณสมบัติไม่พร้อมใช้งาน\nโปรดลองอีกครั้งในภายหลัง';
      case 'exceptions.noImageProvided':
        return 'ไม่มีรูปภาพให้';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) => 'ไม่พบการบำรุงรักษา ${status}';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return 'ไม่พบการบำรุงรักษา! คุณสามารถสร้างคำขอบำรุงรักษาเพื่อดูที่นี่';
      case 'exceptions.noDepositFound':
        return 'ไม่พบเงินมัดจำ!\nโปรดดูเงินมัดจำเมื่อมี';
      case 'exceptions.noRentPaymentFound':
        return 'ไม่พบการชำระค่าเช่า!\nโปรดดูการชำระค่าเช่าเมื่อมี';
      case 'exceptions.transactionSummaryApiException':
        return 'รับข้อมูลสรุปธุรกรรมล้มเหลว';
      case 'exceptions.noWithdrawRequestFound':
        return 'ไม่พบคำขอ!\nโปรดลองสร้างคำขอถอนเพื่อดูที่นี่';
      case 'exceptions.withdrawRequestNotApproved':
        return 'คำขอถอนนี้ยังไม่ได้รับการอนุมัติ!';
      case 'exceptions.nonZeroError':
        return 'โปรดป้อนจำนวนเงินที่ถูกต้องมากกว่าศูนย์';
      case 'exceptions.minAmountError':
        return ({required String minValue}) =>
            'จำนวนเงินต้องมีอย่างน้อย ${minValue}';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) =>
            'จำนวนเงินต้องไม่เกิน ${maxValue}';
      case 'exceptions.selectPaymentMethodHint':
        return 'โปรดเลือกวิธีการชำระเงินก่อน';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            'ไม่พบคำขอคืนเงิน ${status}!\nคุณสามารถดูคำขอคืนเงินได้ที่นี่เมื่อมี';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return 'ไม่พบคำขอคืนเงิน!\nคุณสามารถสร้างคำขอคืนเงินเพื่อดูที่นี่';
      case 'exceptions.refundRequestHint.inTenantList':
        return 'ผู้เช่าจะอนุมัติการคืนเงินเมื่อเขาได้รับเงินคืน';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return 'เราจะตรวจสอบคำขอคืนเงินและอนุมัติภายใน 24 ชั่วโมง';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => 'โปรดเลือกรอบของ ${value}';
      case 'exceptions.invalidDateRange':
        return 'ช่วงวันที่ไม่ถูกต้อง';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) => '${value} ต้องมากกว่าศูนย์';
      case 'exceptions.editProperty.rentalChange':
        return 'คุณสมบัติการเช่ากำลังเปลี่ยนแปลง ต้องใช้ได้ (มีผล) สำหรับการชำระค่าเช่าเดือนถัดไปเท่านั้น';
      case 'exceptions.editProperty.deleteOnRent':
        return 'ทรัพย์สินของคุณถูกเช่าโดยผู้เช่าแล้ว ไม่สามารถลบได้จนกว่าจะเอาผู้เช่าออกก่อน';
      case 'exceptions.editProperty.alreayRented':
        return 'ทรัพย์สินนี้ถูกเช่าแล้ว โปรดลองอีกครั้งในภายหลัง\nหรือคุณสามารถติดต่อเจ้าของบ้านเพื่อขอข้อมูลเพิ่มเติมได้';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return 'ไม่พบคำเชิญเช่า!\nโปรดลองสร้างคำเชิญเช่าเพื่อดูที่นี่';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return 'ไม่พบคำเชิญเช่า!\nคุณสามารถดูคำเชิญเช่าได้ที่นี่เมื่อมี';
      case 'exceptions.notenantFoundList':
        return 'ไม่มีผู้เช่า!\nโปรดลองเพิ่มผู้เช่าเพื่อดูที่นี่';
      case 'exceptions.noFeaturesProvided':
        return 'ไม่มีคุณสมบัติให้';
      case 'exceptions.noNotificationFound':
        return 'ไม่มีการแจ้งเตือน\nคุณสามารถดูการแจ้งเตือนของคุณได้ที่นี่เมื่อมี';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return 'คุณแน่ใจหรือไม่ที่จะออกจากระบบ';
      case 'prompt.application.rejectTitle':
        return 'ทำไมคุณถึงปฏิเสธแอปพลิเคชันนี้?';
      case 'prompt.application.applicationSent.successfully':
        return 'ส่งแอปพลิเคชันสำเร็จ!';
      case 'prompt.application.applicationSent.sucessDescription':
        return 'คุณสามารถดูแอปพลิเคชันนี้ในรายการแอปพลิเคชันของคุณ';
      case 'prompt.labor.delete.title':
        return 'ลบแรงงาน?';
      case 'prompt.labor.delete.description':
        return 'คุณแน่ใจหรือไม่ที่จะลบแรงงานคนนี้?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return 'ทำไมคำขอนี้ถึงถูกปฏิเสธ?';
      case 'prompt.maintenanceRequest.processTitle':
        return 'คุณแน่ใจหรือไม่ว่าจะดำเนินการคำขอบำรุงรักษานี้?';
      case 'prompt.maintenanceRequest.completeTitle':
        return 'งานเสร็จสมบูรณ์แล้วหรือยัง?';
      case 'prompt.withdrawMethod.deleteTitle':
        return 'ลบวิธีการถอน?';
      case 'prompt.withdrawMethod.deleteDescription':
        return 'คุณแน่ใจหรือไม่ที่จะลบวิธีการถอนนี้?';
      case 'prompt.unsavedChanges.title':
        return 'คุณแน่ใจหรือไม่ที่จะกลับไป?';
      case 'prompt.unsavedChanges.message':
        return 'ฟิลด์ที่เปลี่ยนแปลงจะไม่ถูกบันทึก!';
      case 'prompt.property.delete.title':
        return 'ลบทรัพย์สิน?';
      case 'prompt.property.delete.message':
        return 'คุณแน่ใจหรือไม่ที่จะลบทรัพย์สินนี้?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return 'คุณแน่ใจหรือไม่ที่จะอนุมัติการเช่านี้?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return 'ตรวจสอบให้แน่ใจว่าคุณได้ตรวจสอบข้อตกลงที่ผู้เช่าลงนามแล้ว';
      case 'prompt.rentInvitation.tenantAccept.title':
        return 'คุณแน่ใจหรือไม่ที่จะรับคำเชิญนี้?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return 'ตรวจสอบให้แน่ใจว่าคุณได้ดาวน์โหลดไฟล์ PDF ข้อตกลงแล้ว!';
      case 'prompt.sessionExpired.title':
        return 'เซสชันหมดอายุ';
      case 'prompt.sessionExpired.message':
        return 'เซสชันของคุณหมดอายุแล้ว โปรดลงชื่อเข้าใช้อีกครั้ง';
      case 'prompt.sessionExpired.action':
        return 'ลงชื่อเข้าใช้';
      case 'prompt.noInternet.title':
        return 'ไม่มีการเชื่อมต่ออินเทอร์เน็ต';
      case 'prompt.noInternet.message':
        return 'โปรดตรวจสอบการเชื่อมต่อเครือข่ายมือถือ Wi-Fi ของคุณแล้วลองอีกครั้ง';
      case 'prompt.noInternet.action':
        return 'ลองอีกครั้ง';
      case 'prompt.permissionHandler.title':
        return 'ต้องได้รับอนุญาต!';
      case 'prompt.permissionHandler.message':
        return 'คุณต้องให้สิทธิ์ในการตั้งค่าแอป คุณต้องการเปิดการตั้งค่าตอนนี้หรือไม่?';
      case 'prompt.imagePicker.title':
        return 'เลือกตัวเลือก';
      case 'prompt.imagePicker.gallery':
        return 'แกลเลอรี่';
      case 'prompt.imagePicker.camera':
        return 'กล้อง';
      case 'prompt.verificationDialog.title':
        return 'ยืนยันอีเมลของคุณ';
      case 'prompt.verificationDialog.message':
        return 'เราได้ส่งอีเมลรหัสยืนยันแล้ว';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} ไปที่ ${email}';
      case 'prompt.notification.clearTitle':
        return 'ล้างการแจ้งเตือน?';
      case 'prompt.notification.clearMessage':
        return 'คุณแน่ใจหรือไม่ที่จะล้างการแจ้งเตือนทั้งหมด?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return 'ป้อน ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return 'โปรดป้อน ${_root.common.fullName} ของคุณ';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return 'ป้อน ${_root.common.email} ของคุณ';
      case 'form.email.errors.required':
        return 'โปรดป้อนที่อยู่ ${_root.common.email} ของคุณ';
      case 'form.email.errors.invalid':
        return '⦸ อีเมลไม่ถูกต้อง โปรดลองอีกครั้ง';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return 'โปรดป้อน ${_root.common.password} ของคุณ';
      case 'form.password.errors.minLength':
        return ({required Object count}) =>
            'รหัสผ่านต้องมีความยาวอย่างน้อย ${count} ตัวอักษร!';
      case 'form.confirmPassword.label':
        return 'ยืนยัน ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return 'โปรดป้อน ${_root.common.password} ของคุณ';
      case 'form.confirmPassword.errors.notMatched':
        return 'ยืนยันรหัสผ่านไม่ตรงกัน!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return 'โปรดป้อน ${_root.common.mobileNumber} ของคุณ';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return 'หมายเลขบ้านและชื่อถนน';
      case 'form.address1.errors.required':
        return 'โปรดป้อน ${_root.form.address1.label} ของคุณ';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return 'อพาร์ตเมนต์, ห้องชุด, หน่วย, ฯลฯ';
      case 'form.address2.errors.required':
        return 'โปรดป้อน ${_root.form.address2.label} ของคุณ';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return 'ป้อน ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return 'โปรดป้อน ${_root.common.postalCode} ของคุณ';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return 'ป้อนชื่อ ${_root.common.city}';
      case 'form.city.errors.required':
        return 'โปรดป้อนชื่อ ${_root.common.city} ของคุณ';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return 'ป้อนชื่อ ${_root.common.state}';
      case 'form.state.errors.required':
        return 'โปรดป้อนชื่อ ${_root.common.state} ของคุณ';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return 'เลือก ${_root.common.country}';
      case 'form.country.errors.required':
        return 'โปรดเลือก ${_root.common.country} ของคุณ';
      case 'form.otp.errors.required':
        return 'โปรดป้อน OTP';
      case 'form.otp.errors.invalid':
        return 'โปรดป้อน OTP ที่ถูกต้อง';
      case 'form.title.label':
        return 'ชื่อ';
      case 'form.title.hint':
        return 'ป้อนชื่อ';
      case 'form.title.errors.required':
        return 'โปรดป้อนชื่อ';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            'เลือก ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            'โปรดเลือก ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return 'เหตุผล';
      case 'form.reason.hint':
        return 'ป้อนเหตุผล';
      case 'form.reason.errors.required':
        return 'โปรดป้อนเหตุผล';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return 'เลือก ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return 'โปรดเลือก ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => 'อัปโหลด ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => 'โปรดเลือก ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            'ป้อน ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            'โปรดป้อน ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return 'เลือก ${_root.common.gender}';
      case 'form.gender.errors.required':
        return 'โปรดเลือก ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            'ป้อน ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            'โปรดป้อน ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return 'โปรดป้อน @form.anyField.label ที่ถูกต้อง';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            'เลือก ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            'โปรดเลือก ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return 'โปรดเลือก @form.anyDropdown.label ที่ถูกต้อง';
      case 'action.next':
        return 'ถัดไป';
      case 'action.getStarted':
        return 'เริ่มต้น';
      case 'action.skip':
        return 'ข้าม';
      case 'action.select':
        return 'เลือก';
      case 'action.save':
        return 'บันทึก';
      case 'action.signIn':
        return 'เข้าสู่ระบบ';
      case 'action.signUp':
        return 'สมัครสมาชิก';
      case 'action.kContinue':
        return 'ดำเนินการต่อ';
      case 'action.clearAll':
        return 'ลบทั้งหมด';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return 'ส่ง';
      case 'action.pay':
        return 'ชำระเงิน';
      case 'action.remove':
        return 'ลบ';
      case 'action.goBack':
        return 'ย้อนกลับ';
      case 'action.buyNow':
        return 'ซื้อเดี๋ยวนี้';
      case 'action.no':
        return 'ไม่';
      case 'action.open':
        return 'เปิด';
      case 'action.addProperty':
        return 'เพิ่มทรัพย์สิน';
      case 'action.process':
        return 'ดำเนินการ';
      case 'action.approve':
        return 'อนุมัติ';
      case 'action.reject':
        return 'ปฏิเสธ';
      case 'action.viewRent':
        return 'ดูค่าเช่า';
      case 'action.openNavigationMenu':
        return 'เปิดเมนูนำทาง';
      case 'action.seeAll':
        return 'ดูทั้งหมด';
      case 'action.update':
        return 'อัปเดต';
      case 'action.printTransaction':
        return 'พิมพ์รายการธุรกรรม';
      case 'action.payoutRequest':
        return 'คำขอจ่ายเงิน';
      case 'action.addNew':
        return '+ เพิ่มใหม่';
      case 'action.sendRequest':
        return 'ส่งคำขอ';
      case 'action.print':
        return 'พิมพ์';
      case 'action.requestForRefund':
        return 'ขอคืนเงิน';
      case 'action.previous':
        return 'ก่อนหน้า';
      case 'action.delete':
        return 'ลบ';
      case 'action.applyProperty':
        return 'สมัครทรัพย์สิน';
      case 'action.viewApplication':
        return 'ดูใบสมัคร';
      case 'action.inviteTenant':
        return 'เชิญผู้เช่า';
      case 'action.inviteRent':
        return 'เชิญเช่า';
      case 'action.cancel':
        return 'ยกเลิก';
      case 'action.accept':
        return 'ยอมรับ';
      case 'action.submit':
        return 'ส่ง';
      case 'action.yes':
        return 'ใช่';
      case 'action.okay':
        return 'ตกลง';
      case 'action.confirm':
        return 'ยืนยัน';
      case 'action.apply':
        return 'สมัคร';
      case 'action.reset':
        return 'รีเซ็ต';
      case 'action.retry':
        return 'ลองอีกครั้ง';
      case 'action.viewAll':
        return 'ดูทั้งหมด';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return 'ค้นหาทรัพย์สินของคุณ';
      case 'pages.onboard.onboardData.data1.description':
        return 'เราทำให้การหาที่พักที่เหมาะสมกับชีวิตคุณเป็นเรื่องง่าย — ไม่ว่าจะเป็นห้อง, อพาร์ตเมนต์, หรือบ้าน.';
      case 'pages.onboard.onboardData.data2.title':
        return 'อพาร์ตเมนต์ในเมือง';
      case 'pages.onboard.onboardData.data2.description':
        return 'เราประหยัดเวลาโดยการจับคู่คุณกับทรัพย์สินที่สมบูรณ์แบบก่อนที่จะหายไป เพื่อที่คุณจะได้เพลิดเพลินกับบ้านใหม่ของคุณ หรือจดทะเบียนทรัพย์สินของคุณเองได้ฟรี.';
      case 'pages.onboard.onboardData.data3.title':
        return 'บ้านที่คุณสะดวกสบาย';
      case 'pages.onboard.onboardData.data3.description':
        return 'หากคุณกำลังมองหาที่พัก ลองดูบ้านให้เช่าของเราที่มีหลากหลายให้เลือกจากทั่วประเทศ.';
      case 'pages.signIn.title':
        return 'ยินดีต้อนรับกลับ';
      case 'pages.signIn.subtitle':
        return 'เข้าสู่ระบบตอนนี้เพื่อเริ่มการเดินทางที่ยอดเยี่ยม.';
      case 'pages.signIn.extra.rememberMe':
        return 'จดจำฉัน';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: 'ยังไม่มีบัญชี? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return 'ลืมรหัสผ่าน';
      case 'pages.forgotPassword.subtitle':
        return 'กรอกที่อยู่อีเมลของคุณเพื่อกู้คืนรหัสผ่าน.';
      case 'pages.otpVerification.title':
        return 'การยืนยันตัวตน';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            'รหัส PIN 4 หลักถูกส่งไปยังที่อยู่อีเมลของคุณแล้ว ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            'รหัสจะถูกส่งใน ${minutes}:${seconds}';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('ส่งรหัสอีกครั้ง'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return 'รีเซ็ตรหัสผ่าน';
      case 'pages.resetPassword.subtitle':
        return 'รีเซ็ตรหัสผ่านของคุณเพื่อกู้คืนและเข้าสู่ระบบบัญชีของคุณ';
      case 'pages.resetPassword.extra.dialog.title':
        return 'เปลี่ยนรหัสสำเร็จ!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return 'เข้าสู่ระบบด้วยรหัสผ่านใหม่ของคุณ.\n กำลังพาคุณไปยังหน้าล็อกอิน...';
      case 'pages.signUp.title':
        return 'สร้างบัญชี';
      case 'pages.signUp.subtitle':
        return 'สมัครสมาชิกตอนนี้เพื่อเริ่มการเดินทางที่ยอดเยี่ยม';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: 'มีบัญชีแล้ว? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return 'คุณคือใคร?';
      case 'pages.welcome.subtitle':
        return 'โปรดเลือกตัวเลือกด้านล่าง.';
      case 'pages.welcome.extra.landlordTag':
        return 'จัดการทรัพย์สินของคุณเอง';
      case 'pages.welcome.extra.tenantTag':
        return 'เข้าสู่ระบบบัญชีเช่าของคุณ';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return 'การแจ้งเตือน';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return 'ข้อความ...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return 'ทำไมคุณถึง ${_root.common.cancelRenting}?';
      case 'pages.cancelRenting.form.reason.hint':
        return 'เขียนเหตุผล';
      case 'pages.cancelRenting.form.reason.errors.required':
        return 'กรุณากรอกเหตุผลในการยกเลิกการเช่า';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return 'การชำระเงินออฟไลน์';
      case 'pages.offlinePayment.form.paymentNote.label':
        return 'บันทึกการชำระเงิน (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return 'กรอกข้อความ...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'จำนวนเงินที่ชำระ: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return 'ชื่อผู้ถือบัญชี';
      case 'pages.offlinePayment.extra.accountNumber':
        return 'หมายเลขบัญชี';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'รหัส SWIFT';
      case 'pages.offlinePayment.extra.branch':
        return 'สาขา';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: 'เลือกไฟล์ในรูปแบบ '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' หรือ '),
            fileType('DOC'),
            const TextSpan(text: ' เท่านั้น ขนาดไฟล์ '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return 'ดูใบแจ้งหนี้';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return 'เราจะตรวจสอบการชำระเงินและอนุมัติภายใน 24 ชั่วโมง.';
      case 'pages.paymentStatus.fail.actionButton':
        return 'ลองอีกครั้ง';
      case 'pages.paymentStatus.fail.title':
        return 'อุ๊บส์! การชำระเงินล้มเหลว';
      case 'pages.paymentStatus.fail.description':
        return 'การทำรายการของคุณล้มเหลวเนื่องจากข้อผิดพลาดทางเทคนิค.';
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
            const TextSpan(text: 'คุณสมบัติ '),
            fa('(สิ่งอำนวยความสะดวก & สิ่งอำนวยความสะดวก)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return 'เลือกระยะเวลาเช่า';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ เขียนรีวิว';
      case 'pages.search.appbarTitle':
        return 'ค้นหา';
      case 'pages.search.extra.hint':
        return 'ค้นหาที่ดิน, แฟลต, ห้อง...';
      case 'pages.search.extra.noRecentSearch':
        return 'คุณยังไม่มีการค้นหาล่าสุด.';
      case 'pages.subscriptionPlan.appbarTitle':
        return 'เลือกแผนของคุณ';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return 'การชำระเงินสำหรับการสมัครสมาชิกสำเร็จ.\nคุณสามารถเข้าถึงคุณสมบัติที่สมัครสมาชิกได้แล้ว.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: 'ค่าบำรุงรักษารวม: '),
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
        return 'ทรัพย์สินทั้งหมด';
      case 'enums.propertyStatus.pending':
        return 'รอดำเนินการ';
      case 'enums.propertyStatus.active':
        return 'ใช้งาน';
      case 'enums.propertyStatus.inactive':
        return 'ไม่ใช้งาน';
      case 'enums.propertyStatus.rejected':
        return 'ถูกปฏิเสธ';
      case 'enums.propertyType.apartmentCondominium':
        return 'อพาร์ตเมนต์/คอนโดมิเนียม';
      case 'enums.propertyType.house':
        return 'บ้าน';
      case 'enums.propertyType.commercialProperty':
        return 'ทรัพย์สินเชิงพาณิชย์';
      case 'enums.propertyType.land':
        return 'ที่ดิน';
      case 'enums.propertyType.room':
        return 'ห้อง';
      case 'enums.applicationStatus.all':
        return 'ทั้งหมด';
      case 'enums.applicationStatus.pending':
        return 'รอดำเนินการ';
      case 'enums.applicationStatus.processing':
        return 'กำลังดำเนินการ';
      case 'enums.applicationStatus.approved':
        return 'ได้รับการอนุมัติ';
      case 'enums.applicationStatus.rejected':
        return 'ถูกปฏิเสธ';
      case 'enums.myRentStatus.pending':
        return 'รอดำเนินการ';
      case 'enums.myRentStatus.processing':
        return 'กำลังดำเนินการ';
      case 'enums.myRentStatus.active':
        return 'ใช้งาน';
      case 'enums.myRentStatus.expired':
        return 'หมดอายุ';
      case 'enums.myRentStatus.cancelled':
        return 'ยกเลิก';
      case 'enums.maintenanceStatus.pending':
        return 'รอดำเนินการ';
      case 'enums.maintenanceStatus.processing':
        return 'กำลังดำเนินการ';
      case 'enums.maintenanceStatus.rejected':
        return 'ถูกปฏิเสธ';
      case 'enums.maintenanceStatus.completed':
        return 'เสร็จสิ้น';
      case 'enums.tenantProfileType.privateIndividual':
        return 'ส่วนบุคคล (บุคคล)';
      case 'enums.tenantProfileType.company':
        return 'บริษัท';
      case 'enums.tenantType.newTenant':
        return 'ผู้เช่ารายใหม่';
      case 'enums.tenantType.activeTenant':
        return 'ผู้เช่าที่ใช้งาน';
      case 'enums.tenantType.expiredTenant':
        return 'ผู้เช่าที่หมดอายุ';
      case 'enums.paymentStatus.all':
        return 'ทั้งหมด';
      case 'enums.paymentStatus.pending':
        return 'รอดำเนินการ';
      case 'enums.paymentStatus.paid':
        return 'ชำระแล้ว';
      case 'enums.paymentStatus.unpaid':
        return 'ยังไม่ชำระ';
      case 'enums.paymentStatus.rejected':
        return 'ถูกปฏิเสธ';
      case 'enums.paymentStatus.refund':
        return 'คืนเงิน';
      case 'enums.paymentOptions.onlinePayment':
        return 'การชำระเงินออนไลน์';
      case 'enums.paymentOptions.offlinePayment':
        return 'การชำระเงินออฟไลน์';
      case 'enums.paymentType.securityDeposit':
        return 'เงินมัดจำ';
      case 'enums.paymentType.rentPayment':
        return 'การชำระค่าเช่า';
      case 'enums.paymentType.subscription':
        return 'การสมัครสมาชิก';
      case 'enums.gender.male':
        return 'ชาย';
      case 'enums.gender.female':
        return 'หญิง';
      case 'enums.gender.other':
        return 'อื่นๆ';
      case 'enums.ecRelation.wife':
        return 'ภรรยา';
      case 'enums.ecRelation.parent':
        return 'พ่อแม่';
      case 'enums.ecRelation.friend':
        return 'เพื่อน';
      case 'enums.ecRelation.brother':
        return 'พี่ชาย/น้องชาย';
      case 'enums.ecRelation.sister':
        return 'พี่สาว/น้องสาว';
      case 'enums.ecRelation.child':
        return 'ลูก';
      case 'enums.vehicleType.car':
        return 'รถยนต์';
      case 'enums.vehicleType.motorcycles':
        return 'จักรยานยนต์';
      case 'enums.vehicleType.lorry':
        return 'รถบรรทุก';
      case 'enums.sortBy.lowToHigh':
        return 'จากต่ำไปสูง';
      case 'enums.sortBy.highToLow':
        return 'จากสูงไปต่ำ';
      case 'enums.residentialType.flat':
        return 'แฟลต';
      case 'enums.residentialType.apartment':
        return 'อพาร์ตเมนต์';
      case 'enums.residentialType.condominium':
        return 'คอนโดมิเนียม';
      case 'enums.residentialType.serviceResidence':
        return 'เซอร์วิสอพาร์ตเมนต์';
      case 'enums.residentialType.studio':
        return 'สตูดิโอ';
      case 'enums.residentialType.duplex':
        return 'ดูเพล็กซ์';
      case 'enums.residentialType.townhouseCondo':
        return 'ทาวน์เฮาส์คอนโด';
      case 'enums.residentialType.others':
        return 'อื่นๆ';
      case 'enums.floorRange.high':
        return 'สูง';
      case 'enums.floorRange.medium':
        return 'กลาง';
      case 'enums.floorRange.low':
        return 'ต่ำ';
      case 'enums.furnishings.fullyFurnished':
        return 'ตกแต่งครบ';
      case 'enums.furnishings.partiallyFurnished':
        return 'ตกแต่งบางส่วน';
      case 'enums.furnishings.notFurnished':
        return 'ไม่ตกแต่ง';
      case 'enums.commercialPropertyType.officeSpace':
        return 'พื้นที่สำนักงาน';
      case 'enums.commercialPropertyType.retailSpace':
        return 'พื้นที่ค้าปลีก';
      case 'enums.commercialPropertyType.shopLot':
        return 'แปลงที่ดินสำหรับร้านค้า';
      case 'enums.commercialPropertyType.warehouseFactory':
        return 'โกดัง/โรงงาน';
      case 'enums.commercialPropertyType.hotelResort':
        return 'โรงแรม/รีสอร์ท';
      case 'enums.commercialPropertyType.sofo':
        return 'โซโฟ';
      case 'enums.commercialPropertyType.soho':
        return 'โซโฮ';
      case 'enums.commercialPropertyType.sovo':
        return 'โซโว';
      case 'enums.commercialPropertyType.others':
        return 'อื่นๆ';
      case 'enums.landPropertyType.residential':
        return 'ที่อยู่อาศัย';
      case 'enums.landPropertyType.industrial':
        return 'อุตสาหกรรม';
      case 'enums.landPropertyType.agricultural':
        return 'เกษตรกรรม';
      case 'enums.landPropertyType.commercial':
        return 'พาณิชยกรรม';
      case 'enums.landPropertyType.mixedDevelopment':
        return 'การพัฒนาผสม';
      case 'enums.landPropertyType.others':
        return 'อื่นๆ';
      case 'enums.residentPropertyType.condo':
        return 'คอนโด/เซอร์วิสอพาร์ตเมนต์/เพนท์เฮาส์';
      case 'enums.residentPropertyType.apartment':
        return 'อพาร์ตเมนต์/แฟลต';
      case 'enums.residentPropertyType.house':
        return 'บ้าน';
      case 'enums.residentPropertyType.shoplot':
        return 'ร้านค้า';
      case 'enums.residentPropertyType.sharing':
        return 'แชร์บ้าน/แฟลต';
      case 'enums.residentPropertyType.others':
        return 'อื่นๆ';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 เดือน';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 ปี';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1.5 ปี';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 ปี';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2.5 ปี';
      case 'enums.dropdownDateFilter.daily':
        return 'รายวัน';
      case 'enums.dropdownDateFilter.weekly':
        return 'รายสัปดาห์';
      case 'enums.dropdownDateFilter.monthly':
        return 'รายเดือน';
      case 'enums.dropdownDateFilter.yearly':
        return 'รายปี';
      case 'enums.dropdownDateFilter.custom':
        return 'กำหนดเอง';
      default:
        return null;
    }
  }
}
