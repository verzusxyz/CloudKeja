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
class TranslationsKo implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsKo({
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
             locale: AppLocale.ko,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ko>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsKo _root = this; // ignore: unused_field

  @override
  TranslationsKo $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsKo(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonKo common = _TranslationsCommonKo._(_root);
  @override
  late final _TranslationsExceptionsKo exceptions = _TranslationsExceptionsKo._(
    _root,
  );
  @override
  late final _TranslationsPromptKo prompt = _TranslationsPromptKo._(_root);
  @override
  late final _TranslationsFormKo form = _TranslationsFormKo._(_root);
  @override
  late final _TranslationsActionKo action = _TranslationsActionKo._(_root);
  @override
  late final _TranslationsPagesKo pages = _TranslationsPagesKo._(_root);
  @override
  late final _TranslationsEnumsKo enums = _TranslationsEnumsKo._(_root);
}

// Path: common
class _TranslationsCommonKo implements TranslationsCommonEn {
  _TranslationsCommonKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get profile => '프로필';
  @override
  String get language => '언어';
  @override
  String get subscriptionPlan => '구독 플랜';
  @override
  String get contactUs => '문의하기';
  @override
  String get termsAndConditions => '이용 약관';
  @override
  String get aboutUs => '회사 소개';
  @override
  String get logout => '로그아웃';
  @override
  String get editProfile => '프로필 편집';
  @override
  String get fullName => '이름';
  @override
  String get email => '이메일';
  @override
  String get mobileNumber => '휴대폰 번호';
  @override
  String get address => '주소';
  @override
  String get postalCode => '우편번호';
  @override
  String get city => '도시';
  @override
  String get country => '국가';
  @override
  String get state => '주';
  @override
  String get password => '비밀번호';
  @override
  String get forgotPassword => '비밀번호 찾기';
  @override
  String get tenant => '세입자';
  @override
  String get landlord => '집주인';
  @override
  String get cancelRenting => '임대 취소';
  @override
  String get startDate => '시작일';
  @override
  String get endDate => '종료일';
  @override
  String get fromDate => '시작일';
  @override
  String get toDate => '종료일';
  @override
  String get online => '온라인';
  @override
  String get bankList => '은행 목록';
  @override
  String get withdrawMethod => '출금 방법';
  @override
  String get uploadPaymentReceipt => '결제 영수증 업로드';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: '참고: '),
      note('결제는 관리자가 수동으로 승인해야 하며'),
      const TextSpan(text: ' '),
      duraion('24~48시간 소요됩니다.'),
    ],
  );
  @override
  String get reviews => '리뷰';
  @override
  String get description => '설명';
  @override
  String get about => '소개';
  @override
  String get propertyTypes => '부동산 종류';
  @override
  String get features => '특징';
  @override
  String get floorPlans => '평면도';
  @override
  String get buildingDetails => '건물 상세 정보';
  @override
  String get buildingName => '건물 이름';
  @override
  String get propertyAddress => '부동산 주소';
  @override
  String get completionYear => '준공 연도';
  @override
  String get lotNumber => '필지 번호';
  @override
  String get residentialType => '주거 유형';
  @override
  String get furnishings => '가구 비치 여부';
  @override
  String get floorRange => '층수 범위';
  @override
  String get bedrooms => '침실 수';
  @override
  String get bathrooms => '욕실 수';
  @override
  String get propertySize => '부동산 크기';
  @override
  String get rentalPeriod => '임대 기간';
  @override
  String get securityDeposit => '보증금';
  @override
  String get utilityBill => '공과금';
  @override
  String get facilities => '시설';
  @override
  String get amenities => '편의 시설';
  @override
  String get expiringReason => '만료 사유';
  @override
  String get tenantDetails => '세입자 정보';
  @override
  String get typeOfTenant => '세입자 유형';
  @override
  String get tenantName => '세입자 이름';
  @override
  String get nidPassport => 'NID/여권';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => '세입자 ID';
  @override
  String get dateOfBirth => '생년월일';
  @override
  String get gender => '성별';
  @override
  String get nominee => '수혜자';
  @override
  String get name => '이름';
  @override
  String get optional => '선택 사항';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileKo nomineeMobile =
      _TranslationsCommonNomineeMobileKo._(_root);
  @override
  String get emergencyContact => '비상 연락처';
  @override
  String get relation => '관계';
  @override
  String get relationWith => '${_root.common.relation} 관계';
  @override
  String get relationWithYou => '${_root.common.relationWith} 당신과의 관계';
  @override
  String get company => '회사';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => '직장';
  @override
  String get officePhoneNo => '사무실 전화번호';
  @override
  String get officeMobileNo => '사무실 ${_root.common.mobileNumber}';
  @override
  String get vehicle => '차량';
  @override
  late final _TranslationsCommonVehiclesInfoKo vehiclesInfo =
      _TranslationsCommonVehiclesInfoKo._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} 종류';
  @override
  late final _TranslationsCommonVehicleRegistrationNoKo vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoKo._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} 브랜드';
  @override
  String get rentProperty => '임대 부동산';
  @override
  String get propertyDetails => '부동산 정보';
  @override
  String get propertyId => '부동산 ID';
  @override
  String get propertyType => '부동산 종류';
  @override
  String get propertyName => '부동산 이름';
  @override
  String get paymentDetails => '결제 정보';
  @override
  String get monthlyRent => '월세';
  @override
  String get thisMonthPayment => '이번 달 결제';
  @override
  String get totalPaidRent => '총 납부 임대료';
  @override
  String get dueRent => '미납 임대료';
  @override
  String get rentStartDate => '임대 ${_root.common.startDate}';
  @override
  String get rentEndDate => '임대 ${_root.common.endDate}';
  @override
  String get status => '상태';
  @override
  String get rentAgreementPdf => '임대 계약서 PDF';
  @override
  String get noFile => '파일 없음';
  @override
  String get tenantImageOp => '세입자 이미지 (${_root.common.optional})';
  @override
  String get addNewVechicle => '새로운 차량 추가';
  @override
  String get uploadNidPassport => 'NID/여권 업로드';
  @override
  String get nidPassportUploadNote =>
      '파일 형식 이미지만 허용됩니다. 파일 크기 제한은 최대 2.5MB입니다.';
  @override
  String get search => '검색';
  @override
  String get sortBy => '정렬 기준';
  @override
  String get subscription => '구독';
  @override
  String get downloading => '다운로드 중...';
  @override
  String get downloadSuccess => '파일 다운로드 완료!';
  @override
  String get addPropertyBannerTitle => '부동산 임대를 원하시나요?';
  @override
  String get application => '신청';
  @override
  String get tenantHasPaidDeposit => '세입자가 보증금을 지불했습니다.';
  @override
  String get askProcessingRentApplication => '이 임대 부동산 요청을 처리하시겠습니까?';
  @override
  String get dateAndTime => '날짜 및 시간';
  @override
  String get applicationDetails => '신청 정보';
  @override
  String get depositStatus => '보증금 상태';
  @override
  String get uploadRentAgreement => '임대 계약서 업로드';
  @override
  String get uploadFilePDF => '파일 업로드 (PDF)';
  @override
  String get askSelectRentAgreement => '계약 문서 파일을 선택해주세요.';
  @override
  String get landlordRentAgreementPDF => '집주인 임대 계약서 PDF';
  @override
  String get tenantRentAgreementPDF => '세입자 임대 계약서 PDF';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '참고: '),
          note('세입자가 보증금을 지불한 후에만 신청을 승인하세요.'),
        ],
      );
  @override
  String get reasonOfRejection => '거절 사유';
  @override
  String get youveRejectedThisApplication => '이 신청을 거절했습니다';
  @override
  String get landlordDetails => '집주인 정보';
  @override
  String get landlordName => '집주인 이름';
  @override
  String get downloadRentAgreement => '임대 계약서 다운로드';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      toc('이용 약관'),
      const TextSpan(text: '에 동의'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '참고: '),
          note('계약서를 다운로드하여 읽어보세요. 서명된 계약서는 WhatsApp 또는 이메일을 통해 집주인에게 보내주세요.'),
        ],
      );
  @override
  TextSpan tenantAgreementSignNote2({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '참고: '),
          note('세입자가 보증금, 공과금 및 1개월 선불 임대료를 지불하면 집주인이 신청을 승인합니다.'),
        ],
      );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: '임대 계약서 (PDF) '),
          complete('계약 완료'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '참고: '),
          note('세입자가 보증금, 공과금 및 1개월 선불 임대료를 지불하면 집주인이 신청을 승인합니다.'),
        ],
      );
  @override
  String get whatsapp => 'Whatsapp';
  @override
  String get applicationList => '신청 목록';
  @override
  String get viewDetails => '상세 정보 보기';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => '홈';
  @override
  String get dashboard => '대시보드';
  @override
  String get tenants => '세입자';
  @override
  String get maintenance => '유지보수';
  @override
  String get maintenanceList => '유지보수 목록';
  @override
  String get maintenanceReport => '유지보수 보고서';
  @override
  String get labor => '인력';
  @override
  String get applications => '신청';
  @override
  String get rentInvitation => '임대 초대';
  @override
  String get payment => '결제';
  @override
  String get rentPayment => '임대료 결제';
  @override
  String get depositUtilityPayment => '보증금 및 공과금 결제';
  @override
  String get refundRequest => '환불 요청';
  @override
  String get withdrawRequest => '출금 요청';
  @override
  String get myProperty => '내 부동산';
  @override
  String get myRent => '내 임대료';
  @override
  String get wishlist => '위시리스트';
  @override
  String get properties => '부동산';
  @override
  String get allProperties => '모든 부동산';
  @override
  String get totalPropery => '총 부동산';
  @override
  String get occupied => '점유됨';
  @override
  String get vacant => '공실';
  @override
  String get accounting => '회계';
  @override
  String get totalIncome => '총 수입';
  @override
  String get totalExpense => '총 지출';
  @override
  String get currentBalance => '현재 잔액';
  @override
  String get totalWithdrawal => '총 (출금)';
  @override
  String get totalProperties => '총 부동산 수';
  @override
  String get totalTenant => '총 세입자 수';
  @override
  String get totalRentPaid => '총 납부 임대료';
  @override
  String get totalRentDue => '총 미납 임대료';
  @override
  String get totalApplication => '총 신청 수';
  @override
  String get pendingApplication => '보류 중인 신청';
  @override
  String get processingApplication => '처리 중인 신청';
  @override
  String get approveApplication => '승인 신청';
  @override
  String get rejectApplication => '거절 신청';
  @override
  String get maintenanceCost => '유지보수 비용';
  @override
  String get transactionSummary => '거래 요약';
  @override
  String get maintenanceRequest => '유지보수 요청';
  @override
  String get notifications => '알림';
  @override
  String get myProperties => '내 부동산';
  @override
  String get recommendationProperties => '추천 부동산';
  @override
  String get laborList => '인력 목록';
  @override
  String get addLabor => '인력 추가';
  @override
  String get laborDetails => '인력 정보';
  @override
  String get laborSalary => '인력 급여';
  @override
  String get editLabor => '인력 편집';
  @override
  String get addNewLabor => '새로운 인력 추가';
  @override
  String get enterAmount => '금액 입력';
  @override
  String get maintenanceDetails => '유지보수 정보';
  @override
  String get laborName => '인력 이름';
  @override
  String get comment => '댓글';
  @override
  String get image => '이미지';
  @override
  String get complete => '완료';
  @override
  String get details => '세부 정보';
  @override
  String get title => '제목';
  @override
  String get date => '날짜';
  @override
  String get reason => '사유';
  @override
  String get edit => '편집';
  @override
  String get property => '부동산';
  @override
  String get completeYourProfile => '프로필 완성';
  @override
  String get profileImage => '프로필 이미지';
  @override
  String get imagePickHint => '최대 크기 120x120 픽셀의 JPEG 및 PNG 이미지만 허용됩니다.';
  @override
  String get invoiceId => '송장 ID';
  @override
  String get depositAmount => '보증금';
  @override
  String get landlordPhone => '집주인 전화번호';
  @override
  String get rentalAdvance => '임대료 (선불)';
  @override
  String get totalAmount => '총 금액';
  @override
  String get rentalAmount => '임대료';
  @override
  String get adminCharge => '관리비';
  @override
  String get editAccount => '계정 편집';
  @override
  String get addNewAccount => '새로운 계정 추가';
  @override
  String get transactionId => '거래 ID';
  @override
  String get transactionType => '거래 유형';
  @override
  String get requestDate => '요청 날짜';
  @override
  String get amount => '금액';
  @override
  String get fee => '수수료';
  @override
  String get paymentStatus => '결제 상태';
  @override
  String get generatedTime => '생성 시간';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: '이것은 '),
      appName,
      const TextSpan(text: '의 시스템 생성 보고서입니다.'),
    ],
  );
  @override
  String get withdrawHistory => '출금 내역';
  @override
  String get history => '내역';
  @override
  String get withdrawAmount => '출금 금액';
  @override
  String get availableBalance => '사용 가능 잔액';
  @override
  String get withdrawCharge => '출금 수수료';
  @override
  String get paymentMethod => '결제 방법';
  @override
  String get requestSendSuccess => '요청이 성공적으로 전송되었습니다!';
  @override
  String get paymentReceiptSubmitSuccess => '결제 영수증이 성공적으로 제출되었습니다.';
  @override
  String get refundReason => '환불 사유';
  @override
  String get note => '참고';
  @override
  String get refundReceiveSuccess => '환불이 성공적으로 수령되었습니다.';
  @override
  String get downloadPaymentReceipt => '결제 영수증 다운로드';
  @override
  String get invoice => '송장';
  @override
  String get selectPropertyToSeeInvoice => '송장 번호를 보려면 부동산을 선택하세요...';
  @override
  String get bankAccName => '은행 계좌 이름';
  @override
  String get bankName => '은행 이름';
  @override
  String get bankAccNum => '은행 계좌 번호';
  @override
  String get thankYou => '감사합니다!';
  @override
  String get basicInfo => '기본 정보';
  @override
  String get descriptionPricing => '설명 및 가격';
  @override
  String get contact => '연락처';
  @override
  String get photos => '사진';
  @override
  String get successfullySubmitted => '성공적으로 제출되었습니다!';
  @override
  String get editProperty => '부동산 편집';
  @override
  String get addNewProperty => '새로운 부동산 추가';
  @override
  String get propertyManageRequestSuccess => '광고가 검토를 위해 제출되었습니다.';
  @override
  String get postAnotherProperty => '다른 부동산 게시';
  @override
  String get browseYourProperty => '내 부동산 보기';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: '단계 '),
      step,
      const TextSpan(text: ' / '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => '무엇을 게시하시겠습니까?';
  @override
  String get category => '카테고리';
  @override
  String get invalidCategory => '유효하지 않은 카테고리';
  @override
  String get unitNumber => '호실 번호';
  @override
  String get sqft => '평방 피트';
  @override
  String get propertySizeMustBeGreaterThan0 => '부동산 크기는 0보다 커야 합니다.';
  @override
  String get whatAreTheFacility => '시설은 무엇입니까?';
  @override
  String get whatAreTheAmenity => '편의 시설은 무엇입니까?';
  @override
  String get parkingLot => '주차장';
  @override
  String get houseType => '주택 유형';
  @override
  String get value => '가격';
  @override
  String get unitLotSize => '호실 / 필지 크기';
  @override
  String get landSize => '토지 크기';
  @override
  String get acres => '에이커';
  @override
  String get roomSize => '방 크기';
  @override
  String get askTenantPreference => '세입자 선호도는 무엇입니까?';
  @override
  String get couple => '커플';
  @override
  String describeTheProperty({required String propertyType}) =>
      '${propertyType}에 대해 설명하세요.';
  @override
  String get adTitle => '광고 제목';
  @override
  String get minimumRentalPeriod => '최소 임대 기간';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} 번호';
  @override
  String get hideOrDisplayEmail => '이메일 주소 숨기기 또는 표시';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      '${appName}에 게시해 주셔서 감사합니다!';
  @override
  String get propertyList => '부동산 목록';
  @override
  String get newInviteRent => '새로운 임대 초대';
  @override
  String get rentAgreement => '임대 계약서';
  @override
  String get rentDetails => '임대 정보';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: '참고: '),
      note('세입자가 초대를 수락할 때까지 기다리세요.'),
    ],
  );
  @override
  String get rent => '임대료';
  @override
  String get editTenant => '세입자 편집';
  @override
  String get addNewTenant => '새로운 세입자 추가';
  @override
  String get shareInstallLink => '설치 링크 공유';
  @override
  String get tenantList => '세입자 목록';
  @override
  String get editMaintenanceRequest => '유지보수 요청 편집';
  @override
  String get addNewMaintenance => '새로운 유지보수 추가';
  @override
  String get landlordId => '집주인 ID';
  @override
  TextSpan tenantAgrementUnderReviewNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '참고: '),
          note('계약서가 검토 중입니다. 집주인이 임대를 승인할 때까지 기다리세요.'),
        ],
      );
  @override
  String get editReview => '리뷰 편집';
  @override
  String get writeAReview => '리뷰 작성';
  @override
  String get selectRating => '평점 선택';
  @override
  String get enterYourOpinion => '의견을 입력하세요';
  @override
  String get askToEnterReviewMsg => '리뷰 메시지를 입력하세요';
  @override
  String get pressBackAgainToExit => '다시 뒤로 버튼을 누르면 종료됩니다.';
  @override
  String get selectPaymentMethod => '결제 방법 선택';
  @override
  String get filter => '필터';
  @override
  String get perMonth => '/ 1개월';
  @override
  String searchHintWithAppName({required String appName}) =>
      '${appName}에서 무엇이든 검색하세요...';
}

// Path: exceptions
class _TranslationsExceptionsKo implements TranslationsExceptionsEn {
  _TranslationsExceptionsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => '오류가 발생했습니다. 다시 시도해주세요.';
  @override
  String get noNidPassport => 'NID/여권 이미지가 제공되지 않았습니다.';
  @override
  String get noRentPropertyFound => '이 세입자에 대한 임대 부동산을 찾을 수 없습니다.';
  @override
  String get noPropertyFoundWithKeyWord => '부동산을 찾을 수 없습니다!\n다른 키워드로 시도해주세요.';
  @override
  String get noSubscriptionFoundRefreshPage =>
      '구독 플랜을 찾을 수 없습니다!\n페이지를 새로고침하고 다시 시도해주세요.';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      '유효하지 않은 ${dataType} 정보입니다! 페이지를 새로고침하고 다시 시도해주세요.';
  @override
  String get invalidDownloadUrl => '유효하지 않은 다운로드 URL입니다!';
  @override
  String failedToSaveFile({required String error}) => '파일 저장에 실패했습니다! ${error}';
  @override
  String errorOpeningFile({required String error}) =>
      '파일을 여는 중 오류가 발생했습니다! ${error}';
  @override
  String get noVehicleInfoProvided => '차량 정보가 제공되지 않았습니다.';
  @override
  String get yourApplicationRejected => '신청이 거절되었습니다.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintKo
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintKo._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintKo noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintKo._(_root);
  @override
  String get noImageProvided => '이미지가 제공되지 않았습니다.';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundKo
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundKo._(
    _root,
  );
  @override
  String get noDepositFound => '보증금을 찾을 수 없습니다!\n이용 가능해지면 보증금을 확인할 수 있습니다.';
  @override
  String get noRentPaymentFound =>
      '임대료 지불을 찾을 수 없습니다!\n이용 가능해지면 임대료 지불을 확인할 수 있습니다.';
  @override
  String get transactionSummaryApiException => '거래 요약을 가져오는 데 실패했습니다.';
  @override
  String get noWithdrawRequestFound =>
      '요청을 찾을 수 없습니다!\n출금 요청을 생성하여 여기에서 확인할 수 있습니다.';
  @override
  String get withdrawRequestNotApproved => '이 출금 요청은 승인되지 않았습니다!.';
  @override
  String get nonZeroError => '0보다 큰 유효한 금액을 입력해주세요.';
  @override
  String minAmountError({required String minValue}) =>
      '금액은 최소 ${minValue} 이상이어야 합니다.';
  @override
  String maxAmountError({required String maxValue}) =>
      '금액은 ${maxValue}를 초과할 수 없습니다.';
  @override
  String get selectPaymentMethodHint => '먼저 결제 방법을 선택해주세요.';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundKo
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundKo._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintKo refundRequestHint =
      _TranslationsExceptionsRefundRequestHintKo._(_root);
  @override
  String oneToTenRequiredField({required String value}) =>
      '${value}의 개수를 선택해주세요.';
  @override
  String get invalidDateRange => '유효하지 않은 날짜 범위입니다.';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value}는 0보다 커야 합니다.';
  @override
  late final _TranslationsExceptionsEditPropertyKo editProperty =
      _TranslationsExceptionsEditPropertyKo._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationKo rentInvitation =
      _TranslationsExceptionsRentInvitationKo._(_root);
  @override
  String get notenantFoundList => '세입자가 없습니다!\n세입자를 추가하여 여기에서 확인해주세요.';
  @override
  String get noFeaturesProvided => '제공된 기능이 없습니다.';
  @override
  String get noNotificationFound => '알림이 없습니다.\n이용 가능해지면 알림을 여기에서 확인할 수 있습니다.';
}

// Path: prompt
class _TranslationsPromptKo implements TranslationsPromptEn {
  _TranslationsPromptKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutKo logout = _TranslationsPromptLogoutKo._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationKo application =
      _TranslationsPromptApplicationKo._(_root);
  @override
  late final _TranslationsPromptLaborKo labor = _TranslationsPromptLaborKo._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestKo maintenanceRequest =
      _TranslationsPromptMaintenanceRequestKo._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodKo withdrawMethod =
      _TranslationsPromptWithdrawMethodKo._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesKo unsavedChanges =
      _TranslationsPromptUnsavedChangesKo._(_root);
  @override
  late final _TranslationsPromptPropertyKo property =
      _TranslationsPromptPropertyKo._(_root);
  @override
  late final _TranslationsPromptRentInvitationKo rentInvitation =
      _TranslationsPromptRentInvitationKo._(_root);
  @override
  late final _TranslationsPromptSessionExpiredKo sessionExpired =
      _TranslationsPromptSessionExpiredKo._(_root);
  @override
  late final _TranslationsPromptNoInternetKo noInternet =
      _TranslationsPromptNoInternetKo._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerKo permissionHandler =
      _TranslationsPromptPermissionHandlerKo._(_root);
  @override
  late final _TranslationsPromptImagePickerKo imagePicker =
      _TranslationsPromptImagePickerKo._(_root);
  @override
  late final _TranslationsPromptVerificationDialogKo verificationDialog =
      _TranslationsPromptVerificationDialogKo._(_root);
  @override
  late final _TranslationsPromptNotificationKo notification =
      _TranslationsPromptNotificationKo._(_root);
}

// Path: form
class _TranslationsFormKo implements TranslationsFormEn {
  _TranslationsFormKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameKo fullName =
      _TranslationsFormFullNameKo._(_root);
  @override
  late final _TranslationsFormEmailKo email = _TranslationsFormEmailKo._(_root);
  @override
  late final _TranslationsFormPasswordKo password =
      _TranslationsFormPasswordKo._(_root);
  @override
  late final _TranslationsFormConfirmPasswordKo confirmPassword =
      _TranslationsFormConfirmPasswordKo._(_root);
  @override
  late final _TranslationsFormMobileNumberKo mobileNumber =
      _TranslationsFormMobileNumberKo._(_root);
  @override
  late final _TranslationsFormAddress1Ko address1 =
      _TranslationsFormAddress1Ko._(_root);
  @override
  late final _TranslationsFormAddress2Ko address2 =
      _TranslationsFormAddress2Ko._(_root);
  @override
  late final _TranslationsFormPostalCodeKo postalCode =
      _TranslationsFormPostalCodeKo._(_root);
  @override
  late final _TranslationsFormCityKo city = _TranslationsFormCityKo._(_root);
  @override
  late final _TranslationsFormStateKo state = _TranslationsFormStateKo._(_root);
  @override
  late final _TranslationsFormCountryKo country = _TranslationsFormCountryKo._(
    _root,
  );
  @override
  late final _TranslationsFormOtpKo otp = _TranslationsFormOtpKo._(_root);
  @override
  late final _TranslationsFormTitleKo title = _TranslationsFormTitleKo._(_root);
  @override
  late final _TranslationsFormDateKo date = _TranslationsFormDateKo._(_root);
  @override
  late final _TranslationsFormReasonKo reason = _TranslationsFormReasonKo._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodKo withdrawMethod =
      _TranslationsFormWithdrawMethodKo._(_root);
  @override
  late final _TranslationsFormFileFieldKo fileField =
      _TranslationsFormFileFieldKo._(_root);
  @override
  late final _TranslationsFormNoteKo note = _TranslationsFormNoteKo._(_root);
  @override
  late final _TranslationsFormGenderKo gender = _TranslationsFormGenderKo._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldKo anyField =
      _TranslationsFormAnyFieldKo._(_root);
  @override
  late final _TranslationsFormAnyDropdownKo anyDropdown =
      _TranslationsFormAnyDropdownKo._(_root);
}

// Path: action
class _TranslationsActionKo implements TranslationsActionEn {
  _TranslationsActionKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get next => '다음';
  @override
  String get getStarted => '시작하기';
  @override
  String get skip => '건너뛰기';
  @override
  String get select => '선택';
  @override
  String get save => '저장';
  @override
  String get signIn => '로그인';
  @override
  String get signUp => '회원가입';
  @override
  String get kContinue => '계속';
  @override
  String get clearAll => '모두 지우기';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => '보내기';
  @override
  String get pay => '결제';
  @override
  String get remove => '삭제';
  @override
  String get goBack => '뒤로 가기';
  @override
  String get buyNow => '지금 구매';
  @override
  String get no => '아니요';
  @override
  String get open => '열기';
  @override
  String get addProperty => '부동산 추가';
  @override
  String get process => '처리';
  @override
  String get approve => '승인';
  @override
  String get reject => '거절';
  @override
  String get viewRent => '임대료 보기';
  @override
  String get openNavigationMenu => '탐색 메뉴 열기';
  @override
  String get seeAll => '모두 보기';
  @override
  String get update => '업데이트';
  @override
  String get printTransaction => '거래 내역 인쇄';
  @override
  String get payoutRequest => '지불 요청';
  @override
  String get addNew => '+ 새로 추가';
  @override
  String get sendRequest => '요청 보내기';
  @override
  String get print => '인쇄';
  @override
  String get requestForRefund => '환불 요청';
  @override
  String get previous => '이전';
  @override
  String get delete => '삭제';
  @override
  String get applyProperty => '부동산 신청';
  @override
  String get viewApplication => '신청 보기';
  @override
  String get inviteTenant => '세입자 초대';
  @override
  String get inviteRent => '임대 초대';
  @override
  String get cancel => '취소';
  @override
  String get accept => '수락';
  @override
  String get submit => '제출';
  @override
  String get yes => '예';
  @override
  String get okay => '확인';
  @override
  String get confirm => '확인';
  @override
  String get apply => '적용';
  @override
  String get reset => '초기화';
  @override
  String get retry => '다시 시도';
  @override
  String get viewAll => '전체 보기';
}

// Path: pages
class _TranslationsPagesKo implements TranslationsPagesEn {
  _TranslationsPagesKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageKo language =
      _TranslationsPagesLanguageKo._(_root);
  @override
  late final _TranslationsPagesOnboardKo onboard =
      _TranslationsPagesOnboardKo._(_root);
  @override
  late final _TranslationsPagesSignInKo signIn = _TranslationsPagesSignInKo._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordKo forgotPassword =
      _TranslationsPagesForgotPasswordKo._(_root);
  @override
  late final _TranslationsPagesOtpVerificationKo otpVerification =
      _TranslationsPagesOtpVerificationKo._(_root);
  @override
  late final _TranslationsPagesResetPasswordKo resetPassword =
      _TranslationsPagesResetPasswordKo._(_root);
  @override
  late final _TranslationsPagesSignUpKo signUp = _TranslationsPagesSignUpKo._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeKo welcome =
      _TranslationsPagesWelcomeKo._(_root);
  @override
  late final _TranslationsPagesAboutUsKo aboutUs =
      _TranslationsPagesAboutUsKo._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsKo termsAndConditions =
      _TranslationsPagesTermsAndConditionsKo._(_root);
  @override
  late final _TranslationsPagesNotificationListKo notificationList =
      _TranslationsPagesNotificationListKo._(_root);
  @override
  late final _TranslationsPagesContactUsKo contactUs =
      _TranslationsPagesContactUsKo._(_root);
  @override
  late final _TranslationsPagesCancelRentingKo cancelRenting =
      _TranslationsPagesCancelRentingKo._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsKo invoiceDetails =
      _TranslationsPagesInvoiceDetailsKo._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentKo offlinePayment =
      _TranslationsPagesOfflinePaymentKo._(_root);
  @override
  late final _TranslationsPagesPaymentStatusKo paymentStatus =
      _TranslationsPagesPaymentStatusKo._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsKo propertyDetails =
      _TranslationsPagesPropertyDetailsKo._(_root);
  @override
  late final _TranslationsPagesSearchKo search = _TranslationsPagesSearchKo._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanKo subscriptionPlan =
      _TranslationsPagesSubscriptionPlanKo._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportKo
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportKo._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsKo implements TranslationsEnumsEn {
  _TranslationsEnumsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusKo propertyStatus =
      _TranslationsEnumsPropertyStatusKo._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeKo propertyType =
      _TranslationsEnumsPropertyTypeKo._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusKo applicationStatus =
      _TranslationsEnumsApplicationStatusKo._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusKo myRentStatus =
      _TranslationsEnumsMyRentStatusKo._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusKo maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusKo._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeKo tenantProfileType =
      _TranslationsEnumsTenantProfileTypeKo._(_root);
  @override
  late final _TranslationsEnumsTenantTypeKo tenantType =
      _TranslationsEnumsTenantTypeKo._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusKo paymentStatus =
      _TranslationsEnumsPaymentStatusKo._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsKo paymentOptions =
      _TranslationsEnumsPaymentOptionsKo._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeKo paymentType =
      _TranslationsEnumsPaymentTypeKo._(_root);
  @override
  late final _TranslationsEnumsGenderKo gender = _TranslationsEnumsGenderKo._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationKo ecRelation =
      _TranslationsEnumsEcRelationKo._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeKo vehicleType =
      _TranslationsEnumsVehicleTypeKo._(_root);
  @override
  late final _TranslationsEnumsSortByKo sortBy = _TranslationsEnumsSortByKo._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeKo residentialType =
      _TranslationsEnumsResidentialTypeKo._(_root);
  @override
  late final _TranslationsEnumsFloorRangeKo floorRange =
      _TranslationsEnumsFloorRangeKo._(_root);
  @override
  late final _TranslationsEnumsFurnishingsKo furnishings =
      _TranslationsEnumsFurnishingsKo._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeKo commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeKo._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeKo landPropertyType =
      _TranslationsEnumsLandPropertyTypeKo._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeKo residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeKo._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodKo minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodKo._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterKo dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterKo._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileKo
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} 휴대폰 번호';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoKo
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get plain => '차량 정보';
  @override
  String get optional => '차량 정보 (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoKo
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get normal => '차량 등록 번호';
  @override
  String get short => '등록 번호';
  @override
  String get alt => '번호판 번호';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintKo
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      '신청을 찾을 수 없습니다!\n${subject}는 이용 가능해지면 여기에 표시됩니다.';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsKo subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsKo._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintKo
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome => '부동산을 찾을 수 없습니다!\n여기에 표시하려면 부동산을 추가해주세요.';
  @override
  String get tenantRecommended => '추천 부동산을 찾을 수 없습니다.\n나중에 다시 시도해주세요.';
  @override
  String get tenantAllProperty => '이용 가능한 부동산이 없습니다.\n나중에 다시 시도해주세요.';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundKo
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) => '${status} 유지보수를 찾을 수 없습니다.';
  @override
  String get tenant => '유지보수를 찾을 수 없습니다! 유지보수 요청을 생성하여 여기에서 확인할 수 있습니다.';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundKo
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      '${status} 환불 요청을 찾을 수 없습니다!\n이용 가능해지면 환불 요청을 여기에서 확인할 수 있습니다.';
  @override
  String get tenant => '환불 요청을 찾을 수 없습니다!\n환불 요청을 생성하여 여기에서 확인할 수 있습니다.';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintKo
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList => '세입자는 환불금을 받으면 환불을 승인합니다.';
  @override
  String get tenantReqSuccess => '환불 요청을 검토하고 24시간 이내에 승인하겠습니다.';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyKo
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange => '임대 부동산이 변경되고 있습니다. 다음 달 임대료 지불에만 유효(적용)되어야 합니다.';
  @override
  String get deleteOnRent =>
      '귀하의 부동산은 이미 세입자에게 임대되었습니다. 먼저 세입자를 삭제해야 삭제할 수 있습니다.';
  @override
  String get alreayRented =>
      '이 부동산은 이미 임대되었습니다. 나중에 다시 시도해주세요.\n또는 집주인에게 연락하여 자세한 정보를 얻을 수 있습니다.';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationKo
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation =>
      '임대 초대장을 찾을 수 없습니다!\n임대 초대장을 생성하여 여기에서 확인해주세요.';
  @override
  String get tenantNoRentInvitation =>
      '임대 초대장을 찾을 수 없습니다!\n이용 가능해지면 임대 초대장을 여기에서 확인할 수 있습니다.';
}

// Path: prompt.logout
class _TranslationsPromptLogoutKo implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => '로그아웃하시겠습니까?';
}

// Path: prompt.application
class _TranslationsPromptApplicationKo
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => '이 신청을 거절하는 이유는 무엇입니까?';
  @override
  late final _TranslationsPromptApplicationApplicationSentKo applicationSent =
      _TranslationsPromptApplicationApplicationSentKo._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborKo implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteKo delete =
      _TranslationsPromptLaborDeleteKo._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestKo
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => '이 요청이 거절된 이유는 무엇입니까?';
  @override
  String get processTitle => '이 유지보수 요청을 처리하시겠습니까?';
  @override
  String get completeTitle => '작업이 완료되었습니까?';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodKo
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => '출금 방법을 삭제하시겠습니까?';
  @override
  String get deleteDescription => '이 출금 방법을 삭제하시겠습니까?';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesKo
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '정말로 돌아가시겠습니까?';
  @override
  String get message => '변경된 필드는 저장되지 않습니다!';
}

// Path: prompt.property
class _TranslationsPromptPropertyKo implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteKo delete =
      _TranslationsPromptPropertyDeleteKo._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationKo
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveKo
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveKo._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptKo tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptKo._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredKo
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '세션이 만료되었습니다.';
  @override
  String get message => '세션이 만료되었습니다. 다시 로그인해주세요.';
  @override
  String get action => '로그인';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetKo
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '인터넷 연결이 없습니다.';
  @override
  String get message => 'Wi-Fi 또는 모바일 네트워크 연결을 확인하고 다시 시도해주세요.';
  @override
  String get action => '다시 시도';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerKo
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '권한이 필요합니다!';
  @override
  String get message => '앱 설정에서 권한을 부여해야 합니다. 지금 설정을 여시겠습니까?';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerKo
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '옵션 선택';
  @override
  String get gallery => '갤러리';
  @override
  String get camera => '카메라';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogKo
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '이메일 인증';
  @override
  String get message => '인증 코드가 포함된 이메일을 보냈습니다.';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message}（${email}）';
}

// Path: prompt.notification
class _TranslationsPromptNotificationKo
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => '알림을 삭제하시겠습니까?';
  @override
  String get clearMessage => '모든 알림을 삭제하시겠습니까?';
}

// Path: form.fullName
class _TranslationsFormFullNameKo implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => '${_root.common.fullName} 입력';
  @override
  late final _TranslationsFormFullNameErrorsKo errors =
      _TranslationsFormFullNameErrorsKo._(_root);
}

// Path: form.email
class _TranslationsFormEmailKo implements TranslationsFormEmailEn {
  _TranslationsFormEmailKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => '${_root.common.email} 입력';
  @override
  late final _TranslationsFormEmailErrorsKo errors =
      _TranslationsFormEmailErrorsKo._(_root);
}

// Path: form.password
class _TranslationsFormPasswordKo implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsKo errors =
      _TranslationsFormPasswordErrorsKo._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordKo
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.password} 확인';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsKo errors =
      _TranslationsFormConfirmPasswordErrorsKo._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberKo
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsKo errors =
      _TranslationsFormMobileNumberErrorsKo._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Ko implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Ko._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => '번지 및 도로명';
  @override
  late final _TranslationsFormAddress1ErrorsKo errors =
      _TranslationsFormAddress1ErrorsKo._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Ko implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Ko._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => '아파트, 스위트, 호실 등';
  @override
  late final _TranslationsFormAddress2ErrorsKo errors =
      _TranslationsFormAddress2ErrorsKo._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeKo implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => '${_root.common.postalCode} 입력';
  @override
  late final _TranslationsFormPostalCodeErrorsKo errors =
      _TranslationsFormPostalCodeErrorsKo._(_root);
}

// Path: form.city
class _TranslationsFormCityKo implements TranslationsFormCityEn {
  _TranslationsFormCityKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => '${_root.common.city} 이름을 입력해주세요.';
  @override
  late final _TranslationsFormCityErrorsKo errors =
      _TranslationsFormCityErrorsKo._(_root);
}

// Path: form.state
class _TranslationsFormStateKo implements TranslationsFormStateEn {
  _TranslationsFormStateKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => '${_root.common.state} 이름을 입력해주세요.';
  @override
  late final _TranslationsFormStateErrorsKo errors =
      _TranslationsFormStateErrorsKo._(_root);
}

// Path: form.country
class _TranslationsFormCountryKo implements TranslationsFormCountryEn {
  _TranslationsFormCountryKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => '${_root.common.country}를 선택해주세요.';
  @override
  late final _TranslationsFormCountryErrorsKo errors =
      _TranslationsFormCountryErrorsKo._(_root);
}

// Path: form.otp
class _TranslationsFormOtpKo implements TranslationsFormOtpEn {
  _TranslationsFormOtpKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsKo errors =
      _TranslationsFormOtpErrorsKo._(_root);
}

// Path: form.title
class _TranslationsFormTitleKo implements TranslationsFormTitleEn {
  _TranslationsFormTitleKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '제목';
  @override
  String get hint => '제목 입력';
  @override
  late final _TranslationsFormTitleErrorsKo errors =
      _TranslationsFormTitleErrorsKo._(_root);
}

// Path: form.date
class _TranslationsFormDateKo implements TranslationsFormDateEn {
  _TranslationsFormDateKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '${_root.form.date.label(label: label)}을 선택해주세요.';
  @override
  late final _TranslationsFormDateErrorsKo errors =
      _TranslationsFormDateErrorsKo._(_root);
}

// Path: form.reason
class _TranslationsFormReasonKo implements TranslationsFormReasonEn {
  _TranslationsFormReasonKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '사유';
  @override
  String get hint => '사유 입력';
  @override
  late final _TranslationsFormReasonErrorsKo errors =
      _TranslationsFormReasonErrorsKo._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodKo
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => '${_root.common.withdrawMethod}를 선택해주세요.';
  @override
  late final _TranslationsFormWithdrawMethodErrorsKo errors =
      _TranslationsFormWithdrawMethodErrorsKo._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldKo implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => '${label} 업로드';
  @override
  late final _TranslationsFormFileFieldErrorsKo errors =
      _TranslationsFormFileFieldErrorsKo._(_root);
}

// Path: form.note
class _TranslationsFormNoteKo implements TranslationsFormNoteEn {
  _TranslationsFormNoteKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      '${_root.form.note.label(note: note)} 입력';
  @override
  late final _TranslationsFormNoteErrorsKo errors =
      _TranslationsFormNoteErrorsKo._(_root);
}

// Path: form.gender
class _TranslationsFormGenderKo implements TranslationsFormGenderEn {
  _TranslationsFormGenderKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => '${_root.common.gender}를 선택해주세요.';
  @override
  late final _TranslationsFormGenderErrorsKo errors =
      _TranslationsFormGenderErrorsKo._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldKo implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '${_root.form.anyField.label(label: label)} 입력';
  @override
  late final _TranslationsFormAnyFieldErrorsKo errors =
      _TranslationsFormAnyFieldErrorsKo._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownKo implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '${_root.form.anyDropdown.label(label: label)} 선택';
  @override
  late final _TranslationsFormAnyDropdownErrorsKo errors =
      _TranslationsFormAnyDropdownErrorsKo._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageKo implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardKo implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataKo onboardData =
      _TranslationsPagesOnboardOnboardDataKo._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInKo implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '다시 오신 것을 환영합니다';
  @override
  String get subtitle => '지금 로그인하여 멋진 여정을 시작하세요.';
  @override
  late final _TranslationsPagesSignInExtraKo extra =
      _TranslationsPagesSignInExtraKo._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordKo
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '비밀번호 찾기';
  @override
  String get subtitle => '비밀번호를 복구하려면 이메일 주소를 입력하세요.';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationKo
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '인증';
  @override
  String subtitle({required String email}) =>
      '4자리 PIN 번호가 이메일 주소로 전송되었습니다. ${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraKo extra =
      _TranslationsPagesOtpVerificationExtraKo._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordKo
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '비밀번호 재설정';
  @override
  String get subtitle => '비밀번호를 재설정하여 복구하고 계정에 로그인하세요.';
  @override
  late final _TranslationsPagesResetPasswordExtraKo extra =
      _TranslationsPagesResetPasswordExtraKo._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpKo implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '계정 만들기';
  @override
  String get subtitle => '지금 가입하여 멋진 여정을 시작하세요.';
  @override
  late final _TranslationsPagesSignUpExtraKo extra =
      _TranslationsPagesSignUpExtraKo._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeKo implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '누구십니까?';
  @override
  String get subtitle => '아래 옵션을 선택해주세요.';
  @override
  late final _TranslationsPagesWelcomeExtraKo extra =
      _TranslationsPagesWelcomeExtraKo._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsKo implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsKo
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListKo
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '알림';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsKo implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraKo extra =
      _TranslationsPagesContactUsExtraKo._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingKo
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => '왜 ${_root.common.cancelRenting} 하시나요?';
  @override
  late final _TranslationsPagesCancelRentingFormKo form =
      _TranslationsPagesCancelRentingFormKo._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsKo
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentKo
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '오프라인 결제';
  @override
  late final _TranslationsPagesOfflinePaymentFormKo form =
      _TranslationsPagesOfflinePaymentFormKo._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraKo extra =
      _TranslationsPagesOfflinePaymentExtraKo._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusKo
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessKo success =
      _TranslationsPagesPaymentStatusSuccessKo._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailKo fail =
      _TranslationsPagesPaymentStatusFailKo._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsKo
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraKo extra =
      _TranslationsPagesPropertyDetailsExtraKo._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchKo implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '검색';
  @override
  late final _TranslationsPagesSearchExtraKo extra =
      _TranslationsPagesSearchExtraKo._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanKo
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '플랜 선택';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraKo extra =
      _TranslationsPagesSubscriptionPlanExtraKo._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportKo
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: '총 유지보수 비용: '),
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
class _TranslationsEnumsPropertyStatusKo
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => '전체 부동산';
  @override
  String get pending => '보류 중';
  @override
  String get active => '활성';
  @override
  String get inactive => '비활성';
  @override
  String get rejected => '거절됨';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeKo
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => '아파트/콘도미니엄';
  @override
  String get house => '주택';
  @override
  String get commercialProperty => '상업 부동산';
  @override
  String get land => '토지';
  @override
  String get room => '방';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusKo
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get all => '전체';
  @override
  String get pending => '보류 중';
  @override
  String get processing => '처리 중';
  @override
  String get approved => '승인됨';
  @override
  String get rejected => '거절됨';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusKo
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get pending => '보류 중';
  @override
  String get processing => '처리 중';
  @override
  String get active => '활성';
  @override
  String get expired => '만료됨';
  @override
  String get cancelled => '취소됨';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusKo
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get pending => '보류 중';
  @override
  String get processing => '처리 중';
  @override
  String get rejected => '거절됨';
  @override
  String get completed => '완료됨';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeKo
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => '개인';
  @override
  String get company => '회사';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeKo implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => '신규 세입자';
  @override
  String get activeTenant => '활성 세입자';
  @override
  String get expiredTenant => '만료된 세입자';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusKo
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get all => '전체';
  @override
  String get pending => '보류 중';
  @override
  String get paid => '결제 완료';
  @override
  String get unpaid => '미결제';
  @override
  String get rejected => '거절됨';
  @override
  String get refund => '환불';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsKo
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => '온라인 결제';
  @override
  String get offlinePayment => '오프라인 결제';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeKo
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => '보증금';
  @override
  String get rentPayment => '임대료 결제';
  @override
  String get subscription => '구독';
}

// Path: enums.gender
class _TranslationsEnumsGenderKo implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get male => '남성';
  @override
  String get female => '여성';
  @override
  String get other => '기타';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationKo implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get wife => '아내';
  @override
  String get parent => '부모';
  @override
  String get friend => '친구';
  @override
  String get brother => '형제';
  @override
  String get sister => '자매';
  @override
  String get child => '자녀';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeKo
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get car => '자동차';
  @override
  String get motorcycles => '오토바이';
  @override
  String get lorry => '트럭';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByKo implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => '낮음 → 높음';
  @override
  String get highToLow => '높음 → 낮음';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeKo
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get flat => '플랫';
  @override
  String get apartment => '아파트';
  @override
  String get condominium => '콘도미니엄';
  @override
  String get serviceResidence => '서비스 레지던스';
  @override
  String get studio => '스튜디오';
  @override
  String get duplex => '복층';
  @override
  String get townhouseCondo => '타운하우스 콘도';
  @override
  String get others => '기타';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeKo implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get high => '높은 층';
  @override
  String get medium => '중간 층';
  @override
  String get low => '낮은 층';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsKo
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => '완전 가구 완비';
  @override
  String get partiallyFurnished => '부분 가구 완비';
  @override
  String get notFurnished => '가구 없음';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeKo
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => '사무 공간';
  @override
  String get retailSpace => '소매 공간';
  @override
  String get shopLot => '상점';
  @override
  String get warehouseFactory => '창고 / 공장';
  @override
  String get hotelResort => '호텔 / 리조트';
  @override
  String get sofo => 'SOFO';
  @override
  String get soho => 'SOHO';
  @override
  String get sovo => 'SOVO';
  @override
  String get others => '기타';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeKo
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get residential => '주거용';
  @override
  String get industrial => '산업용';
  @override
  String get agricultural => '농업용';
  @override
  String get commercial => '상업용';
  @override
  String get mixedDevelopment => '복합 개발';
  @override
  String get others => '기타';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeKo
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get condo => '콘도 / 서비스 레지던스 / 펜트하우스';
  @override
  String get apartment => '아파트 / 플랫';
  @override
  String get house => '주택';
  @override
  String get shoplot => '상점';
  @override
  String get sharing => '하우스/플랫 공유';
  @override
  String get others => '기타';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodKo
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6개월';
  @override
  String get oneYear => '1년';
  @override
  String get oneAndHalfYears => '1년 반';
  @override
  String get twoYears => '2년';
  @override
  String get twoAndHalfYears => '2년 반';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterKo
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get daily => '일별';
  @override
  String get weekly => '주별';
  @override
  String get monthly => '월별';
  @override
  String get yearly => '연별';
  @override
  String get custom => '맞춤';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsKo
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => '귀하의 신청';
  @override
  String get landlord => '세입자의 신청';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentKo
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => '신청이 성공적으로 전송되었습니다!';
  @override
  String get sucessDescription => '이 신청은 신청 목록에서 확인할 수 있습니다.';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteKo
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '인력을 삭제하시겠습니까?';
  @override
  String get description => '이 인력을 삭제하시겠습니까?';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteKo
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '부동산을 삭제하시겠습니까?';
  @override
  String get message => '이 부동산을 삭제하시겠습니까?';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveKo
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '이 임대를 승인하시겠습니까?';
  @override
  String get description => '세입자가 서명한 계약서를 검토했는지 확인하세요.';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptKo
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '이 초대를 수락하시겠습니까?';
  @override
  String get description => '계약서 PDF 파일을 다운로드했는지 확인하세요!';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsKo
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.fullName}을 입력해주세요.';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsKo implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.email} 주소를 입력해주세요.';
  @override
  String get invalid => '⦸ 유효하지 않은 이메일입니다. 다시 시도해주세요.';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsKo
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.password}를 입력해주세요.';
  @override
  String minLength({required Object count}) => '비밀번호는 ${count}자 이상이어야 합니다!';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsKo
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.password}를 입력해주세요.';
  @override
  String get notMatched => '비밀번호가 일치하지 않습니다!';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsKo
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.mobileNumber}를 입력해주세요.';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsKo
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.form.address1.label}을 입력해주세요.';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsKo
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.form.address2.label}을 입력해주세요.';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsKo
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.postalCode}를 입력해주세요.';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsKo implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.city} 이름을 입력해주세요.';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsKo implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.state} 이름을 입력해주세요.';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsKo
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.country}를 선택해주세요.';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsKo implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => 'OTP를 입력해주세요.';
  @override
  String get invalid => '올바른 OTP를 입력해주세요.';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsKo implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '제목을 입력해주세요.';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsKo implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      '${_root.form.date.label(label: label)}을 선택해주세요.';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsKo
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '사유를 입력해주세요.';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsKo
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.withdrawMethod}를 선택해주세요.';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsKo
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => '${label}을 선택해주세요.';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsKo implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      '${_root.form.note.label(note: note)}을 입력해주세요.';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsKo
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '${_root.common.gender}를 선택해주세요.';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsKo
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      '${_root.form.anyField.label(label: label)}을 입력해주세요.';
  @override
  String get invalid => '@form.anyField.label을 올바르게 입력해주세요.';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsKo
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      '${_root.form.anyDropdown.label(label: label)}을 선택해주세요.';
  @override
  String get invalid => '@form.anyDropdown.label을 올바르게 선택해주세요.';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataKo
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Ko data1 =
      _TranslationsPagesOnboardOnboardDataData1Ko._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Ko data2 =
      _TranslationsPagesOnboardOnboardDataData2Ko._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Ko data3 =
      _TranslationsPagesOnboardOnboardDataData3Ko._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraKo
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => '로그인 유지';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: '계정이 없으신가요? '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}?';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraKo
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendKo codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendKo._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraKo
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogKo dialog =
      _TranslationsPagesResetPasswordExtraDialogKo._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraKo
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: '계정이 있으신가요? '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraKo
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => '자신의 부동산 관리';
  @override
  String get tenantTag => '임대 계정에 로그인';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraKo
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => '메시지...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormKo
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonKo reason =
      _TranslationsPagesCancelRentingFormReasonKo._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormKo
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteKo paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteKo._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraKo
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: '결제 금액: '),
      amount,
    ],
  );
  @override
  String get accountHolderName => '계좌 명의';
  @override
  String get accountNumber => '계좌 번호';
  @override
  String get swiftCode => 'SWIFT 코드';
  @override
  String get branch => '지점';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      fileType('JPG, PNG, PDF'),
      const TextSpan(text: ' 또는 '),
      fileType('DOC'),
      const TextSpan(text: ' 형식 파일만 선택하세요. 파일 크기 '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessKo
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => '송장 보기';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description => '결제를 검토하고 24시간 이내에 승인할 것입니다.';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailKo
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => '다시 시도';
  @override
  String get title => '죄송합니다! 결제 실패';
  @override
  String get description => '기술적인 오류로 인해 거래가 실패했습니다.';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraKo
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

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
      const TextSpan(text: '특징 '),
      fa('(시설 및 편의 시설)'),
    ],
  );
  @override
  String get selectRentalPeriod => '임대 기간 선택';
  @override
  String get writeAReview => '+ 리뷰 작성';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraKo
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get hint => '필지, 플랫, 방 등을 검색...';
  @override
  String get noRecentSearch => '최근 검색 기록이 없습니다.';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraKo
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess =>
      '구독 결제가 완료되었습니다.\n이제 구독한 기능을 이용할 수 있습니다.';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Ko
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Ko._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '부동산 찾기';
  @override
  String get description => '방, 아파트, 또는 집 등 당신의 삶에 맞는 곳을 쉽게 찾을 수 있도록 했습니다.';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Ko
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Ko._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '도심 속 아파트';
  @override
  String get description =>
      '사라지기 전에 완벽한 부동산을 빠르게 매칭하여 시간을 절약해 드립니다. 새로운 집을 즐기거나 무료로 직접 등록할 수 있습니다.';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Ko
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Ko._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '편안한 집';
  @override
  String get description =>
      '만약 살 곳을 찾고 있다면, 임대 주택을 살펴보세요. 전국 각지에서 선택할 수 있는 다양한 주택을 보유하고 있습니다.';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendKo
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      '${minutes}:${seconds} 후에 코드 전송';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) =>
      TextSpan(children: [resendCode('코드 재전송')]);
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogKo
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get title => '성공적으로 변경되었습니다!';
  @override
  String get subtitle => '새로운 비밀번호로 로그인하세요.\n로그인 페이지로 이동합니다...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonKo
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get hint => '이유를 작성하세요';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsKo errors =
      _TranslationsPagesCancelRentingFormReasonErrorsKo._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteKo
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get label => '결제 메모 (${_root.common.optional})';
  @override
  String get hint => '텍스트를 입력하세요...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsKo
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsKo._(this._root);

  final TranslationsKo _root; // ignore: unused_field

  // Translations
  @override
  String get required => '임대 취소 이유를 입력해주세요';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsKo {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return '프로필';
      case 'common.language':
        return '언어';
      case 'common.subscriptionPlan':
        return '구독 플랜';
      case 'common.contactUs':
        return '문의하기';
      case 'common.termsAndConditions':
        return '이용 약관';
      case 'common.aboutUs':
        return '회사 소개';
      case 'common.logout':
        return '로그아웃';
      case 'common.editProfile':
        return '프로필 편집';
      case 'common.fullName':
        return '이름';
      case 'common.email':
        return '이메일';
      case 'common.mobileNumber':
        return '휴대폰 번호';
      case 'common.address':
        return '주소';
      case 'common.postalCode':
        return '우편번호';
      case 'common.city':
        return '도시';
      case 'common.country':
        return '국가';
      case 'common.state':
        return '주';
      case 'common.password':
        return '비밀번호';
      case 'common.forgotPassword':
        return '비밀번호 찾기';
      case 'common.tenant':
        return '세입자';
      case 'common.landlord':
        return '집주인';
      case 'common.cancelRenting':
        return '임대 취소';
      case 'common.startDate':
        return '시작일';
      case 'common.endDate':
        return '종료일';
      case 'common.fromDate':
        return '시작일';
      case 'common.toDate':
        return '종료일';
      case 'common.online':
        return '온라인';
      case 'common.bankList':
        return '은행 목록';
      case 'common.withdrawMethod':
        return '출금 방법';
      case 'common.uploadPaymentReceipt':
        return '결제 영수증 업로드';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: '참고: '),
            note('결제는 관리자가 수동으로 승인해야 하며'),
            const TextSpan(text: ' '),
            duraion('24~48시간 소요됩니다.'),
          ],
        );
      case 'common.reviews':
        return '리뷰';
      case 'common.description':
        return '설명';
      case 'common.about':
        return '소개';
      case 'common.propertyTypes':
        return '부동산 종류';
      case 'common.features':
        return '특징';
      case 'common.floorPlans':
        return '평면도';
      case 'common.buildingDetails':
        return '건물 상세 정보';
      case 'common.buildingName':
        return '건물 이름';
      case 'common.propertyAddress':
        return '부동산 주소';
      case 'common.completionYear':
        return '준공 연도';
      case 'common.lotNumber':
        return '필지 번호';
      case 'common.residentialType':
        return '주거 유형';
      case 'common.furnishings':
        return '가구 비치 여부';
      case 'common.floorRange':
        return '층수 범위';
      case 'common.bedrooms':
        return '침실 수';
      case 'common.bathrooms':
        return '욕실 수';
      case 'common.propertySize':
        return '부동산 크기';
      case 'common.rentalPeriod':
        return '임대 기간';
      case 'common.securityDeposit':
        return '보증금';
      case 'common.utilityBill':
        return '공과금';
      case 'common.facilities':
        return '시설';
      case 'common.amenities':
        return '편의 시설';
      case 'common.expiringReason':
        return '만료 사유';
      case 'common.tenantDetails':
        return '세입자 정보';
      case 'common.typeOfTenant':
        return '세입자 유형';
      case 'common.tenantName':
        return '세입자 이름';
      case 'common.nidPassport':
        return 'NID/여권';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return '세입자 ID';
      case 'common.dateOfBirth':
        return '생년월일';
      case 'common.gender':
        return '성별';
      case 'common.nominee':
        return '수혜자';
      case 'common.name':
        return '이름';
      case 'common.optional':
        return '선택 사항';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} 휴대폰 번호';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return '비상 연락처';
      case 'common.relation':
        return '관계';
      case 'common.relationWith':
        return '${_root.common.relation} 관계';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} 당신과의 관계';
      case 'common.company':
        return '회사';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return '직장';
      case 'common.officePhoneNo':
        return '사무실 전화번호';
      case 'common.officeMobileNo':
        return '사무실 ${_root.common.mobileNumber}';
      case 'common.vehicle':
        return '차량';
      case 'common.vehiclesInfo.plain':
        return '차량 정보';
      case 'common.vehiclesInfo.optional':
        return '차량 정보 (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} 종류';
      case 'common.vehicleRegistrationNo.normal':
        return '차량 등록 번호';
      case 'common.vehicleRegistrationNo.short':
        return '등록 번호';
      case 'common.vehicleRegistrationNo.alt':
        return '번호판 번호';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} 브랜드';
      case 'common.rentProperty':
        return '임대 부동산';
      case 'common.propertyDetails':
        return '부동산 정보';
      case 'common.propertyId':
        return '부동산 ID';
      case 'common.propertyType':
        return '부동산 종류';
      case 'common.propertyName':
        return '부동산 이름';
      case 'common.paymentDetails':
        return '결제 정보';
      case 'common.monthlyRent':
        return '월세';
      case 'common.thisMonthPayment':
        return '이번 달 결제';
      case 'common.totalPaidRent':
        return '총 납부 임대료';
      case 'common.dueRent':
        return '미납 임대료';
      case 'common.rentStartDate':
        return '임대 ${_root.common.startDate}';
      case 'common.rentEndDate':
        return '임대 ${_root.common.endDate}';
      case 'common.status':
        return '상태';
      case 'common.rentAgreementPdf':
        return '임대 계약서 PDF';
      case 'common.noFile':
        return '파일 없음';
      case 'common.tenantImageOp':
        return '세입자 이미지 (${_root.common.optional})';
      case 'common.addNewVechicle':
        return '새로운 차량 추가';
      case 'common.uploadNidPassport':
        return 'NID/여권 업로드';
      case 'common.nidPassportUploadNote':
        return '파일 형식 이미지만 허용됩니다. 파일 크기 제한은 최대 2.5MB입니다.';
      case 'common.search':
        return '검색';
      case 'common.sortBy':
        return '정렬 기준';
      case 'common.subscription':
        return '구독';
      case 'common.downloading':
        return '다운로드 중...';
      case 'common.downloadSuccess':
        return '파일 다운로드 완료!';
      case 'common.addPropertyBannerTitle':
        return '부동산 임대를 원하시나요?';
      case 'common.application':
        return '신청';
      case 'common.tenantHasPaidDeposit':
        return '세입자가 보증금을 지불했습니다.';
      case 'common.askProcessingRentApplication':
        return '이 임대 부동산 요청을 처리하시겠습니까?';
      case 'common.dateAndTime':
        return '날짜 및 시간';
      case 'common.applicationDetails':
        return '신청 정보';
      case 'common.depositStatus':
        return '보증금 상태';
      case 'common.uploadRentAgreement':
        return '임대 계약서 업로드';
      case 'common.uploadFilePDF':
        return '파일 업로드 (PDF)';
      case 'common.askSelectRentAgreement':
        return '계약 문서 파일을 선택해주세요.';
      case 'common.landlordRentAgreementPDF':
        return '집주인 임대 계약서 PDF';
      case 'common.tenantRentAgreementPDF':
        return '세입자 임대 계약서 PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '참고: '),
            note('세입자가 보증금을 지불한 후에만 신청을 승인하세요.'),
          ],
        );
      case 'common.reasonOfRejection':
        return '거절 사유';
      case 'common.youveRejectedThisApplication':
        return '이 신청을 거절했습니다';
      case 'common.landlordDetails':
        return '집주인 정보';
      case 'common.landlordName':
        return '집주인 이름';
      case 'common.downloadRentAgreement':
        return '임대 계약서 다운로드';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            toc('이용 약관'),
            const TextSpan(text: '에 동의'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '참고: '),
            note(
              '계약서를 다운로드하여 읽어보세요. 서명된 계약서는 WhatsApp 또는 이메일을 통해 집주인에게 보내주세요.',
            ),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '참고: '),
            note('세입자가 보증금, 공과금 및 1개월 선불 임대료를 지불하면 집주인이 신청을 승인합니다.'),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: '임대 계약서 (PDF) '),
            complete('계약 완료'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '참고: '),
            note('세입자가 보증금, 공과금 및 1개월 선불 임대료를 지불하면 집주인이 신청을 승인합니다.'),
          ],
        );
      case 'common.whatsapp':
        return 'Whatsapp';
      case 'common.applicationList':
        return '신청 목록';
      case 'common.viewDetails':
        return '상세 정보 보기';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return '홈';
      case 'common.dashboard':
        return '대시보드';
      case 'common.tenants':
        return '세입자';
      case 'common.maintenance':
        return '유지보수';
      case 'common.maintenanceList':
        return '유지보수 목록';
      case 'common.maintenanceReport':
        return '유지보수 보고서';
      case 'common.labor':
        return '인력';
      case 'common.applications':
        return '신청';
      case 'common.rentInvitation':
        return '임대 초대';
      case 'common.payment':
        return '결제';
      case 'common.rentPayment':
        return '임대료 결제';
      case 'common.depositUtilityPayment':
        return '보증금 및 공과금 결제';
      case 'common.refundRequest':
        return '환불 요청';
      case 'common.withdrawRequest':
        return '출금 요청';
      case 'common.myProperty':
        return '내 부동산';
      case 'common.myRent':
        return '내 임대료';
      case 'common.wishlist':
        return '위시리스트';
      case 'common.properties':
        return '부동산';
      case 'common.allProperties':
        return '모든 부동산';
      case 'common.totalPropery':
        return '총 부동산';
      case 'common.occupied':
        return '점유됨';
      case 'common.vacant':
        return '공실';
      case 'common.accounting':
        return '회계';
      case 'common.totalIncome':
        return '총 수입';
      case 'common.totalExpense':
        return '총 지출';
      case 'common.currentBalance':
        return '현재 잔액';
      case 'common.totalWithdrawal':
        return '총 (출금)';
      case 'common.totalProperties':
        return '총 부동산 수';
      case 'common.totalTenant':
        return '총 세입자 수';
      case 'common.totalRentPaid':
        return '총 납부 임대료';
      case 'common.totalRentDue':
        return '총 미납 임대료';
      case 'common.totalApplication':
        return '총 신청 수';
      case 'common.pendingApplication':
        return '보류 중인 신청';
      case 'common.processingApplication':
        return '처리 중인 신청';
      case 'common.approveApplication':
        return '승인 신청';
      case 'common.rejectApplication':
        return '거절 신청';
      case 'common.maintenanceCost':
        return '유지보수 비용';
      case 'common.transactionSummary':
        return '거래 요약';
      case 'common.maintenanceRequest':
        return '유지보수 요청';
      case 'common.notifications':
        return '알림';
      case 'common.myProperties':
        return '내 부동산';
      case 'common.recommendationProperties':
        return '추천 부동산';
      case 'common.laborList':
        return '인력 목록';
      case 'common.addLabor':
        return '인력 추가';
      case 'common.laborDetails':
        return '인력 정보';
      case 'common.laborSalary':
        return '인력 급여';
      case 'common.editLabor':
        return '인력 편집';
      case 'common.addNewLabor':
        return '새로운 인력 추가';
      case 'common.enterAmount':
        return '금액 입력';
      case 'common.maintenanceDetails':
        return '유지보수 정보';
      case 'common.laborName':
        return '인력 이름';
      case 'common.comment':
        return '댓글';
      case 'common.image':
        return '이미지';
      case 'common.complete':
        return '완료';
      case 'common.details':
        return '세부 정보';
      case 'common.title':
        return '제목';
      case 'common.date':
        return '날짜';
      case 'common.reason':
        return '사유';
      case 'common.edit':
        return '편집';
      case 'common.property':
        return '부동산';
      case 'common.completeYourProfile':
        return '프로필 완성';
      case 'common.profileImage':
        return '프로필 이미지';
      case 'common.imagePickHint':
        return '최대 크기 120x120 픽셀의 JPEG 및 PNG 이미지만 허용됩니다.';
      case 'common.invoiceId':
        return '송장 ID';
      case 'common.depositAmount':
        return '보증금';
      case 'common.landlordPhone':
        return '집주인 전화번호';
      case 'common.rentalAdvance':
        return '임대료 (선불)';
      case 'common.totalAmount':
        return '총 금액';
      case 'common.rentalAmount':
        return '임대료';
      case 'common.adminCharge':
        return '관리비';
      case 'common.editAccount':
        return '계정 편집';
      case 'common.addNewAccount':
        return '새로운 계정 추가';
      case 'common.transactionId':
        return '거래 ID';
      case 'common.transactionType':
        return '거래 유형';
      case 'common.requestDate':
        return '요청 날짜';
      case 'common.amount':
        return '금액';
      case 'common.fee':
        return '수수료';
      case 'common.paymentStatus':
        return '결제 상태';
      case 'common.generatedTime':
        return '생성 시간';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: '이것은 '),
            appName,
            const TextSpan(text: '의 시스템 생성 보고서입니다.'),
          ],
        );
      case 'common.withdrawHistory':
        return '출금 내역';
      case 'common.history':
        return '내역';
      case 'common.withdrawAmount':
        return '출금 금액';
      case 'common.availableBalance':
        return '사용 가능 잔액';
      case 'common.withdrawCharge':
        return '출금 수수료';
      case 'common.paymentMethod':
        return '결제 방법';
      case 'common.requestSendSuccess':
        return '요청이 성공적으로 전송되었습니다!';
      case 'common.paymentReceiptSubmitSuccess':
        return '결제 영수증이 성공적으로 제출되었습니다.';
      case 'common.refundReason':
        return '환불 사유';
      case 'common.note':
        return '참고';
      case 'common.refundReceiveSuccess':
        return '환불이 성공적으로 수령되었습니다.';
      case 'common.downloadPaymentReceipt':
        return '결제 영수증 다운로드';
      case 'common.invoice':
        return '송장';
      case 'common.selectPropertyToSeeInvoice':
        return '송장 번호를 보려면 부동산을 선택하세요...';
      case 'common.bankAccName':
        return '은행 계좌 이름';
      case 'common.bankName':
        return '은행 이름';
      case 'common.bankAccNum':
        return '은행 계좌 번호';
      case 'common.thankYou':
        return '감사합니다!';
      case 'common.basicInfo':
        return '기본 정보';
      case 'common.descriptionPricing':
        return '설명 및 가격';
      case 'common.contact':
        return '연락처';
      case 'common.photos':
        return '사진';
      case 'common.successfullySubmitted':
        return '성공적으로 제출되었습니다!';
      case 'common.editProperty':
        return '부동산 편집';
      case 'common.addNewProperty':
        return '새로운 부동산 추가';
      case 'common.propertyManageRequestSuccess':
        return '광고가 검토를 위해 제출되었습니다.';
      case 'common.postAnotherProperty':
        return '다른 부동산 게시';
      case 'common.browseYourProperty':
        return '내 부동산 보기';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: '단계 '),
                step,
                const TextSpan(text: ' / '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return '무엇을 게시하시겠습니까?';
      case 'common.category':
        return '카테고리';
      case 'common.invalidCategory':
        return '유효하지 않은 카테고리';
      case 'common.unitNumber':
        return '호실 번호';
      case 'common.sqft':
        return '평방 피트';
      case 'common.propertySizeMustBeGreaterThan0':
        return '부동산 크기는 0보다 커야 합니다.';
      case 'common.whatAreTheFacility':
        return '시설은 무엇입니까?';
      case 'common.whatAreTheAmenity':
        return '편의 시설은 무엇입니까?';
      case 'common.parkingLot':
        return '주차장';
      case 'common.houseType':
        return '주택 유형';
      case 'common.value':
        return '가격';
      case 'common.unitLotSize':
        return '호실 / 필지 크기';
      case 'common.landSize':
        return '토지 크기';
      case 'common.acres':
        return '에이커';
      case 'common.roomSize':
        return '방 크기';
      case 'common.askTenantPreference':
        return '세입자 선호도는 무엇입니까?';
      case 'common.couple':
        return '커플';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => '${propertyType}에 대해 설명하세요.';
      case 'common.adTitle':
        return '광고 제목';
      case 'common.minimumRentalPeriod':
        return '최소 임대 기간';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} 번호';
      case 'common.hideOrDisplayEmail':
        return '이메일 주소 숨기기 또는 표시';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) => '${appName}에 게시해 주셔서 감사합니다!';
      case 'common.propertyList':
        return '부동산 목록';
      case 'common.newInviteRent':
        return '새로운 임대 초대';
      case 'common.rentAgreement':
        return '임대 계약서';
      case 'common.rentDetails':
        return '임대 정보';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '참고: '),
            note('세입자가 초대를 수락할 때까지 기다리세요.'),
          ],
        );
      case 'common.rent':
        return '임대료';
      case 'common.editTenant':
        return '세입자 편집';
      case 'common.addNewTenant':
        return '새로운 세입자 추가';
      case 'common.shareInstallLink':
        return '설치 링크 공유';
      case 'common.tenantList':
        return '세입자 목록';
      case 'common.editMaintenanceRequest':
        return '유지보수 요청 편집';
      case 'common.addNewMaintenance':
        return '새로운 유지보수 추가';
      case 'common.landlordId':
        return '집주인 ID';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '참고: '),
            note('계약서가 검토 중입니다. 집주인이 임대를 승인할 때까지 기다리세요.'),
          ],
        );
      case 'common.editReview':
        return '리뷰 편집';
      case 'common.writeAReview':
        return '리뷰 작성';
      case 'common.selectRating':
        return '평점 선택';
      case 'common.enterYourOpinion':
        return '의견을 입력하세요';
      case 'common.askToEnterReviewMsg':
        return '리뷰 메시지를 입력하세요';
      case 'common.pressBackAgainToExit':
        return '다시 뒤로 버튼을 누르면 종료됩니다.';
      case 'common.selectPaymentMethod':
        return '결제 방법 선택';
      case 'common.filter':
        return '필터';
      case 'common.perMonth':
        return '/ 1개월';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => '${appName}에서 무엇이든 검색하세요...';
      case 'exceptions.somethingWentWrong':
        return '오류가 발생했습니다. 다시 시도해주세요.';
      case 'exceptions.noNidPassport':
        return 'NID/여권 이미지가 제공되지 않았습니다.';
      case 'exceptions.noRentPropertyFound':
        return '이 세입자에 대한 임대 부동산을 찾을 수 없습니다.';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return '부동산을 찾을 수 없습니다!\n다른 키워드로 시도해주세요.';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return '구독 플랜을 찾을 수 없습니다!\n페이지를 새로고침하고 다시 시도해주세요.';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) =>
            '유효하지 않은 ${dataType} 정보입니다! 페이지를 새로고침하고 다시 시도해주세요.';
      case 'exceptions.invalidDownloadUrl':
        return '유효하지 않은 다운로드 URL입니다!';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => '파일 저장에 실패했습니다! ${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => '파일을 여는 중 오류가 발생했습니다! ${error}';
      case 'exceptions.noVehicleInfoProvided':
        return '차량 정보가 제공되지 않았습니다.';
      case 'exceptions.yourApplicationRejected':
        return '신청이 거절되었습니다.';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            '신청을 찾을 수 없습니다!\n${subject}는 이용 가능해지면 여기에 표시됩니다.';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return '귀하의 신청';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return '세입자의 신청';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return '부동산을 찾을 수 없습니다!\n여기에 표시하려면 부동산을 추가해주세요.';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return '추천 부동산을 찾을 수 없습니다.\n나중에 다시 시도해주세요.';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return '이용 가능한 부동산이 없습니다.\n나중에 다시 시도해주세요.';
      case 'exceptions.noImageProvided':
        return '이미지가 제공되지 않았습니다.';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) => '${status} 유지보수를 찾을 수 없습니다.';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return '유지보수를 찾을 수 없습니다! 유지보수 요청을 생성하여 여기에서 확인할 수 있습니다.';
      case 'exceptions.noDepositFound':
        return '보증금을 찾을 수 없습니다!\n이용 가능해지면 보증금을 확인할 수 있습니다.';
      case 'exceptions.noRentPaymentFound':
        return '임대료 지불을 찾을 수 없습니다!\n이용 가능해지면 임대료 지불을 확인할 수 있습니다.';
      case 'exceptions.transactionSummaryApiException':
        return '거래 요약을 가져오는 데 실패했습니다.';
      case 'exceptions.noWithdrawRequestFound':
        return '요청을 찾을 수 없습니다!\n출금 요청을 생성하여 여기에서 확인할 수 있습니다.';
      case 'exceptions.withdrawRequestNotApproved':
        return '이 출금 요청은 승인되지 않았습니다!.';
      case 'exceptions.nonZeroError':
        return '0보다 큰 유효한 금액을 입력해주세요.';
      case 'exceptions.minAmountError':
        return ({required String minValue}) => '금액은 최소 ${minValue} 이상이어야 합니다.';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) => '금액은 ${maxValue}를 초과할 수 없습니다.';
      case 'exceptions.selectPaymentMethodHint':
        return '먼저 결제 방법을 선택해주세요.';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            '${status} 환불 요청을 찾을 수 없습니다!\n이용 가능해지면 환불 요청을 여기에서 확인할 수 있습니다.';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return '환불 요청을 찾을 수 없습니다!\n환불 요청을 생성하여 여기에서 확인할 수 있습니다.';
      case 'exceptions.refundRequestHint.inTenantList':
        return '세입자는 환불금을 받으면 환불을 승인합니다.';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return '환불 요청을 검토하고 24시간 이내에 승인하겠습니다.';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => '${value}의 개수를 선택해주세요.';
      case 'exceptions.invalidDateRange':
        return '유효하지 않은 날짜 범위입니다.';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) => '${value}는 0보다 커야 합니다.';
      case 'exceptions.editProperty.rentalChange':
        return '임대 부동산이 변경되고 있습니다. 다음 달 임대료 지불에만 유효(적용)되어야 합니다.';
      case 'exceptions.editProperty.deleteOnRent':
        return '귀하의 부동산은 이미 세입자에게 임대되었습니다. 먼저 세입자를 삭제해야 삭제할 수 있습니다.';
      case 'exceptions.editProperty.alreayRented':
        return '이 부동산은 이미 임대되었습니다. 나중에 다시 시도해주세요.\n또는 집주인에게 연락하여 자세한 정보를 얻을 수 있습니다.';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return '임대 초대장을 찾을 수 없습니다!\n임대 초대장을 생성하여 여기에서 확인해주세요.';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return '임대 초대장을 찾을 수 없습니다!\n이용 가능해지면 임대 초대장을 여기에서 확인할 수 있습니다.';
      case 'exceptions.notenantFoundList':
        return '세입자가 없습니다!\n세입자를 추가하여 여기에서 확인해주세요.';
      case 'exceptions.noFeaturesProvided':
        return '제공된 기능이 없습니다.';
      case 'exceptions.noNotificationFound':
        return '알림이 없습니다.\n이용 가능해지면 알림을 여기에서 확인할 수 있습니다.';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return '로그아웃하시겠습니까?';
      case 'prompt.application.rejectTitle':
        return '이 신청을 거절하는 이유는 무엇입니까?';
      case 'prompt.application.applicationSent.successfully':
        return '신청이 성공적으로 전송되었습니다!';
      case 'prompt.application.applicationSent.sucessDescription':
        return '이 신청은 신청 목록에서 확인할 수 있습니다.';
      case 'prompt.labor.delete.title':
        return '인력을 삭제하시겠습니까?';
      case 'prompt.labor.delete.description':
        return '이 인력을 삭제하시겠습니까?';
      case 'prompt.maintenanceRequest.rejectTitle':
        return '이 요청이 거절된 이유는 무엇입니까?';
      case 'prompt.maintenanceRequest.processTitle':
        return '이 유지보수 요청을 처리하시겠습니까?';
      case 'prompt.maintenanceRequest.completeTitle':
        return '작업이 완료되었습니까?';
      case 'prompt.withdrawMethod.deleteTitle':
        return '출금 방법을 삭제하시겠습니까?';
      case 'prompt.withdrawMethod.deleteDescription':
        return '이 출금 방법을 삭제하시겠습니까?';
      case 'prompt.unsavedChanges.title':
        return '정말로 돌아가시겠습니까?';
      case 'prompt.unsavedChanges.message':
        return '변경된 필드는 저장되지 않습니다!';
      case 'prompt.property.delete.title':
        return '부동산을 삭제하시겠습니까?';
      case 'prompt.property.delete.message':
        return '이 부동산을 삭제하시겠습니까?';
      case 'prompt.rentInvitation.landlordApprove.title':
        return '이 임대를 승인하시겠습니까?';
      case 'prompt.rentInvitation.landlordApprove.description':
        return '세입자가 서명한 계약서를 검토했는지 확인하세요.';
      case 'prompt.rentInvitation.tenantAccept.title':
        return '이 초대를 수락하시겠습니까?';
      case 'prompt.rentInvitation.tenantAccept.description':
        return '계약서 PDF 파일을 다운로드했는지 확인하세요!';
      case 'prompt.sessionExpired.title':
        return '세션이 만료되었습니다.';
      case 'prompt.sessionExpired.message':
        return '세션이 만료되었습니다. 다시 로그인해주세요.';
      case 'prompt.sessionExpired.action':
        return '로그인';
      case 'prompt.noInternet.title':
        return '인터넷 연결이 없습니다.';
      case 'prompt.noInternet.message':
        return 'Wi-Fi 또는 모바일 네트워크 연결을 확인하고 다시 시도해주세요.';
      case 'prompt.noInternet.action':
        return '다시 시도';
      case 'prompt.permissionHandler.title':
        return '권한이 필요합니다!';
      case 'prompt.permissionHandler.message':
        return '앱 설정에서 권한을 부여해야 합니다. 지금 설정을 여시겠습니까?';
      case 'prompt.imagePicker.title':
        return '옵션 선택';
      case 'prompt.imagePicker.gallery':
        return '갤러리';
      case 'prompt.imagePicker.camera':
        return '카메라';
      case 'prompt.verificationDialog.title':
        return '이메일 인증';
      case 'prompt.verificationDialog.message':
        return '인증 코드가 포함된 이메일을 보냈습니다.';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message}（${email}）';
      case 'prompt.notification.clearTitle':
        return '알림을 삭제하시겠습니까?';
      case 'prompt.notification.clearMessage':
        return '모든 알림을 삭제하시겠습니까?';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return '${_root.common.fullName} 입력';
      case 'form.fullName.errors.required':
        return '${_root.common.fullName}을 입력해주세요.';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return '${_root.common.email} 입력';
      case 'form.email.errors.required':
        return '${_root.common.email} 주소를 입력해주세요.';
      case 'form.email.errors.invalid':
        return '⦸ 유효하지 않은 이메일입니다. 다시 시도해주세요.';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return '${_root.common.password}를 입력해주세요.';
      case 'form.password.errors.minLength':
        return ({required Object count}) => '비밀번호는 ${count}자 이상이어야 합니다!';
      case 'form.confirmPassword.label':
        return '${_root.common.password} 확인';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return '${_root.common.password}를 입력해주세요.';
      case 'form.confirmPassword.errors.notMatched':
        return '비밀번호가 일치하지 않습니다!';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return '${_root.common.mobileNumber}를 입력해주세요.';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return '번지 및 도로명';
      case 'form.address1.errors.required':
        return '${_root.form.address1.label}을 입력해주세요.';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return '아파트, 스위트, 호실 등';
      case 'form.address2.errors.required':
        return '${_root.form.address2.label}을 입력해주세요.';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return '${_root.common.postalCode} 입력';
      case 'form.postalCode.errors.required':
        return '${_root.common.postalCode}를 입력해주세요.';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return '${_root.common.city} 이름을 입력해주세요.';
      case 'form.city.errors.required':
        return '${_root.common.city} 이름을 입력해주세요.';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return '${_root.common.state} 이름을 입력해주세요.';
      case 'form.state.errors.required':
        return '${_root.common.state} 이름을 입력해주세요.';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return '${_root.common.country}를 선택해주세요.';
      case 'form.country.errors.required':
        return '${_root.common.country}를 선택해주세요.';
      case 'form.otp.errors.required':
        return 'OTP를 입력해주세요.';
      case 'form.otp.errors.invalid':
        return '올바른 OTP를 입력해주세요.';
      case 'form.title.label':
        return '제목';
      case 'form.title.hint':
        return '제목 입력';
      case 'form.title.errors.required':
        return '제목을 입력해주세요.';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            '${_root.form.date.label(label: label)}을 선택해주세요.';
      case 'form.date.errors.required':
        return ({required String label}) =>
            '${_root.form.date.label(label: label)}을 선택해주세요.';
      case 'form.reason.label':
        return '사유';
      case 'form.reason.hint':
        return '사유 입력';
      case 'form.reason.errors.required':
        return '사유를 입력해주세요.';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return '${_root.common.withdrawMethod}를 선택해주세요.';
      case 'form.withdrawMethod.errors.required':
        return '${_root.common.withdrawMethod}를 선택해주세요.';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => '${label} 업로드';
      case 'form.fileField.errors.required':
        return ({required String label}) => '${label}을 선택해주세요.';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            '${_root.form.note.label(note: note)} 입력';
      case 'form.note.errors.required':
        return ({required String note}) =>
            '${_root.form.note.label(note: note)}을 입력해주세요.';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return '${_root.common.gender}를 선택해주세요.';
      case 'form.gender.errors.required':
        return '${_root.common.gender}를 선택해주세요.';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            '${_root.form.anyField.label(label: label)} 입력';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            '${_root.form.anyField.label(label: label)}을 입력해주세요.';
      case 'form.anyField.errors.invalid':
        return '@form.anyField.label을 올바르게 입력해주세요.';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            '${_root.form.anyDropdown.label(label: label)} 선택';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            '${_root.form.anyDropdown.label(label: label)}을 선택해주세요.';
      case 'form.anyDropdown.errors.invalid':
        return '@form.anyDropdown.label을 올바르게 선택해주세요.';
      case 'action.next':
        return '다음';
      case 'action.getStarted':
        return '시작하기';
      case 'action.skip':
        return '건너뛰기';
      case 'action.select':
        return '선택';
      case 'action.save':
        return '저장';
      case 'action.signIn':
        return '로그인';
      case 'action.signUp':
        return '회원가입';
      case 'action.kContinue':
        return '계속';
      case 'action.clearAll':
        return '모두 지우기';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return '보내기';
      case 'action.pay':
        return '결제';
      case 'action.remove':
        return '삭제';
      case 'action.goBack':
        return '뒤로 가기';
      case 'action.buyNow':
        return '지금 구매';
      case 'action.no':
        return '아니요';
      case 'action.open':
        return '열기';
      case 'action.addProperty':
        return '부동산 추가';
      case 'action.process':
        return '처리';
      case 'action.approve':
        return '승인';
      case 'action.reject':
        return '거절';
      case 'action.viewRent':
        return '임대료 보기';
      case 'action.openNavigationMenu':
        return '탐색 메뉴 열기';
      case 'action.seeAll':
        return '모두 보기';
      case 'action.update':
        return '업데이트';
      case 'action.printTransaction':
        return '거래 내역 인쇄';
      case 'action.payoutRequest':
        return '지불 요청';
      case 'action.addNew':
        return '+ 새로 추가';
      case 'action.sendRequest':
        return '요청 보내기';
      case 'action.print':
        return '인쇄';
      case 'action.requestForRefund':
        return '환불 요청';
      case 'action.previous':
        return '이전';
      case 'action.delete':
        return '삭제';
      case 'action.applyProperty':
        return '부동산 신청';
      case 'action.viewApplication':
        return '신청 보기';
      case 'action.inviteTenant':
        return '세입자 초대';
      case 'action.inviteRent':
        return '임대 초대';
      case 'action.cancel':
        return '취소';
      case 'action.accept':
        return '수락';
      case 'action.submit':
        return '제출';
      case 'action.yes':
        return '예';
      case 'action.okay':
        return '확인';
      case 'action.confirm':
        return '확인';
      case 'action.apply':
        return '적용';
      case 'action.reset':
        return '초기화';
      case 'action.retry':
        return '다시 시도';
      case 'action.viewAll':
        return '전체 보기';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return '부동산 찾기';
      case 'pages.onboard.onboardData.data1.description':
        return '방, 아파트, 또는 집 등 당신의 삶에 맞는 곳을 쉽게 찾을 수 있도록 했습니다.';
      case 'pages.onboard.onboardData.data2.title':
        return '도심 속 아파트';
      case 'pages.onboard.onboardData.data2.description':
        return '사라지기 전에 완벽한 부동산을 빠르게 매칭하여 시간을 절약해 드립니다. 새로운 집을 즐기거나 무료로 직접 등록할 수 있습니다.';
      case 'pages.onboard.onboardData.data3.title':
        return '편안한 집';
      case 'pages.onboard.onboardData.data3.description':
        return '만약 살 곳을 찾고 있다면, 임대 주택을 살펴보세요. 전국 각지에서 선택할 수 있는 다양한 주택을 보유하고 있습니다.';
      case 'pages.signIn.title':
        return '다시 오신 것을 환영합니다';
      case 'pages.signIn.subtitle':
        return '지금 로그인하여 멋진 여정을 시작하세요.';
      case 'pages.signIn.extra.rememberMe':
        return '로그인 유지';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: '계정이 없으신가요? '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}?';
      case 'pages.forgotPassword.title':
        return '비밀번호 찾기';
      case 'pages.forgotPassword.subtitle':
        return '비밀번호를 복구하려면 이메일 주소를 입력하세요.';
      case 'pages.otpVerification.title':
        return '인증';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) =>
            '4자리 PIN 번호가 이메일 주소로 전송되었습니다. ${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            '${minutes}:${seconds} 후에 코드 전송';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) =>
            TextSpan(children: [resendCode('코드 재전송')]);
      case 'pages.resetPassword.title':
        return '비밀번호 재설정';
      case 'pages.resetPassword.subtitle':
        return '비밀번호를 재설정하여 복구하고 계정에 로그인하세요.';
      case 'pages.resetPassword.extra.dialog.title':
        return '성공적으로 변경되었습니다!';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return '새로운 비밀번호로 로그인하세요.\n로그인 페이지로 이동합니다...';
      case 'pages.signUp.title':
        return '계정 만들기';
      case 'pages.signUp.subtitle':
        return '지금 가입하여 멋진 여정을 시작하세요.';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: '계정이 있으신가요? '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return '누구십니까?';
      case 'pages.welcome.subtitle':
        return '아래 옵션을 선택해주세요.';
      case 'pages.welcome.extra.landlordTag':
        return '자신의 부동산 관리';
      case 'pages.welcome.extra.tenantTag':
        return '임대 계정에 로그인';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return '알림';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return '메시지...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return '왜 ${_root.common.cancelRenting} 하시나요?';
      case 'pages.cancelRenting.form.reason.hint':
        return '이유를 작성하세요';
      case 'pages.cancelRenting.form.reason.errors.required':
        return '임대 취소 이유를 입력해주세요';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return '오프라인 결제';
      case 'pages.offlinePayment.form.paymentNote.label':
        return '결제 메모 (${_root.common.optional})';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return '텍스트를 입력하세요...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: '결제 금액: '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return '계좌 명의';
      case 'pages.offlinePayment.extra.accountNumber':
        return '계좌 번호';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'SWIFT 코드';
      case 'pages.offlinePayment.extra.branch':
        return '지점';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            fileType('JPG, PNG, PDF'),
            const TextSpan(text: ' 또는 '),
            fileType('DOC'),
            const TextSpan(text: ' 형식 파일만 선택하세요. 파일 크기 '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return '송장 보기';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return '결제를 검토하고 24시간 이내에 승인할 것입니다.';
      case 'pages.paymentStatus.fail.actionButton':
        return '다시 시도';
      case 'pages.paymentStatus.fail.title':
        return '죄송합니다! 결제 실패';
      case 'pages.paymentStatus.fail.description':
        return '기술적인 오류로 인해 거래가 실패했습니다.';
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
            const TextSpan(text: '특징 '),
            fa('(시설 및 편의 시설)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return '임대 기간 선택';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ 리뷰 작성';
      case 'pages.search.appbarTitle':
        return '검색';
      case 'pages.search.extra.hint':
        return '필지, 플랫, 방 등을 검색...';
      case 'pages.search.extra.noRecentSearch':
        return '최근 검색 기록이 없습니다.';
      case 'pages.subscriptionPlan.appbarTitle':
        return '플랜 선택';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return '구독 결제가 완료되었습니다.\n이제 구독한 기능을 이용할 수 있습니다.';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: '총 유지보수 비용: '),
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
        return '전체 부동산';
      case 'enums.propertyStatus.pending':
        return '보류 중';
      case 'enums.propertyStatus.active':
        return '활성';
      case 'enums.propertyStatus.inactive':
        return '비활성';
      case 'enums.propertyStatus.rejected':
        return '거절됨';
      case 'enums.propertyType.apartmentCondominium':
        return '아파트/콘도미니엄';
      case 'enums.propertyType.house':
        return '주택';
      case 'enums.propertyType.commercialProperty':
        return '상업 부동산';
      case 'enums.propertyType.land':
        return '토지';
      case 'enums.propertyType.room':
        return '방';
      case 'enums.applicationStatus.all':
        return '전체';
      case 'enums.applicationStatus.pending':
        return '보류 중';
      case 'enums.applicationStatus.processing':
        return '처리 중';
      case 'enums.applicationStatus.approved':
        return '승인됨';
      case 'enums.applicationStatus.rejected':
        return '거절됨';
      case 'enums.myRentStatus.pending':
        return '보류 중';
      case 'enums.myRentStatus.processing':
        return '처리 중';
      case 'enums.myRentStatus.active':
        return '활성';
      case 'enums.myRentStatus.expired':
        return '만료됨';
      case 'enums.myRentStatus.cancelled':
        return '취소됨';
      case 'enums.maintenanceStatus.pending':
        return '보류 중';
      case 'enums.maintenanceStatus.processing':
        return '처리 중';
      case 'enums.maintenanceStatus.rejected':
        return '거절됨';
      case 'enums.maintenanceStatus.completed':
        return '완료됨';
      case 'enums.tenantProfileType.privateIndividual':
        return '개인';
      case 'enums.tenantProfileType.company':
        return '회사';
      case 'enums.tenantType.newTenant':
        return '신규 세입자';
      case 'enums.tenantType.activeTenant':
        return '활성 세입자';
      case 'enums.tenantType.expiredTenant':
        return '만료된 세입자';
      case 'enums.paymentStatus.all':
        return '전체';
      case 'enums.paymentStatus.pending':
        return '보류 중';
      case 'enums.paymentStatus.paid':
        return '결제 완료';
      case 'enums.paymentStatus.unpaid':
        return '미결제';
      case 'enums.paymentStatus.rejected':
        return '거절됨';
      case 'enums.paymentStatus.refund':
        return '환불';
      case 'enums.paymentOptions.onlinePayment':
        return '온라인 결제';
      case 'enums.paymentOptions.offlinePayment':
        return '오프라인 결제';
      case 'enums.paymentType.securityDeposit':
        return '보증금';
      case 'enums.paymentType.rentPayment':
        return '임대료 결제';
      case 'enums.paymentType.subscription':
        return '구독';
      case 'enums.gender.male':
        return '남성';
      case 'enums.gender.female':
        return '여성';
      case 'enums.gender.other':
        return '기타';
      case 'enums.ecRelation.wife':
        return '아내';
      case 'enums.ecRelation.parent':
        return '부모';
      case 'enums.ecRelation.friend':
        return '친구';
      case 'enums.ecRelation.brother':
        return '형제';
      case 'enums.ecRelation.sister':
        return '자매';
      case 'enums.ecRelation.child':
        return '자녀';
      case 'enums.vehicleType.car':
        return '자동차';
      case 'enums.vehicleType.motorcycles':
        return '오토바이';
      case 'enums.vehicleType.lorry':
        return '트럭';
      case 'enums.sortBy.lowToHigh':
        return '낮음 → 높음';
      case 'enums.sortBy.highToLow':
        return '높음 → 낮음';
      case 'enums.residentialType.flat':
        return '플랫';
      case 'enums.residentialType.apartment':
        return '아파트';
      case 'enums.residentialType.condominium':
        return '콘도미니엄';
      case 'enums.residentialType.serviceResidence':
        return '서비스 레지던스';
      case 'enums.residentialType.studio':
        return '스튜디오';
      case 'enums.residentialType.duplex':
        return '복층';
      case 'enums.residentialType.townhouseCondo':
        return '타운하우스 콘도';
      case 'enums.residentialType.others':
        return '기타';
      case 'enums.floorRange.high':
        return '높은 층';
      case 'enums.floorRange.medium':
        return '중간 층';
      case 'enums.floorRange.low':
        return '낮은 층';
      case 'enums.furnishings.fullyFurnished':
        return '완전 가구 완비';
      case 'enums.furnishings.partiallyFurnished':
        return '부분 가구 완비';
      case 'enums.furnishings.notFurnished':
        return '가구 없음';
      case 'enums.commercialPropertyType.officeSpace':
        return '사무 공간';
      case 'enums.commercialPropertyType.retailSpace':
        return '소매 공간';
      case 'enums.commercialPropertyType.shopLot':
        return '상점';
      case 'enums.commercialPropertyType.warehouseFactory':
        return '창고 / 공장';
      case 'enums.commercialPropertyType.hotelResort':
        return '호텔 / 리조트';
      case 'enums.commercialPropertyType.sofo':
        return 'SOFO';
      case 'enums.commercialPropertyType.soho':
        return 'SOHO';
      case 'enums.commercialPropertyType.sovo':
        return 'SOVO';
      case 'enums.commercialPropertyType.others':
        return '기타';
      case 'enums.landPropertyType.residential':
        return '주거용';
      case 'enums.landPropertyType.industrial':
        return '산업용';
      case 'enums.landPropertyType.agricultural':
        return '농업용';
      case 'enums.landPropertyType.commercial':
        return '상업용';
      case 'enums.landPropertyType.mixedDevelopment':
        return '복합 개발';
      case 'enums.landPropertyType.others':
        return '기타';
      case 'enums.residentPropertyType.condo':
        return '콘도 / 서비스 레지던스 / 펜트하우스';
      case 'enums.residentPropertyType.apartment':
        return '아파트 / 플랫';
      case 'enums.residentPropertyType.house':
        return '주택';
      case 'enums.residentPropertyType.shoplot':
        return '상점';
      case 'enums.residentPropertyType.sharing':
        return '하우스/플랫 공유';
      case 'enums.residentPropertyType.others':
        return '기타';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6개월';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1년';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1년 반';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2년';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2년 반';
      case 'enums.dropdownDateFilter.daily':
        return '일별';
      case 'enums.dropdownDateFilter.weekly':
        return '주별';
      case 'enums.dropdownDateFilter.monthly':
        return '월별';
      case 'enums.dropdownDateFilter.yearly':
        return '연별';
      case 'enums.dropdownDateFilter.custom':
        return '맞춤';
      default:
        return null;
    }
  }
}
