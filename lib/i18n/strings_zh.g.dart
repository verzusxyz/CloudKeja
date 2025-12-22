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
class TranslationsZh implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsZh({
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
             locale: AppLocale.zh,
             overrides: overrides ?? {},
             cardinalResolver: cardinalResolver,
             ordinalResolver: ordinalResolver,
           ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <zh>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Work-in-progress flag (implements new abstract getter from BaseTranslations)
  @override
  bool get $wip => false;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsZh _root = this; // ignore: unused_field

  @override
  TranslationsZh $copyWith({
    TranslationMetadata<AppLocale, Translations>? meta,
  }) => TranslationsZh(meta: meta ?? this.$meta);

  // Translations
  @override
  late final _TranslationsCommonZh common = _TranslationsCommonZh._(_root);
  @override
  late final _TranslationsExceptionsZh exceptions = _TranslationsExceptionsZh._(
    _root,
  );
  @override
  late final _TranslationsPromptZh prompt = _TranslationsPromptZh._(_root);
  @override
  late final _TranslationsFormZh form = _TranslationsFormZh._(_root);
  @override
  late final _TranslationsActionZh action = _TranslationsActionZh._(_root);
  @override
  late final _TranslationsPagesZh pages = _TranslationsPagesZh._(_root);
  @override
  late final _TranslationsEnumsZh enums = _TranslationsEnumsZh._(_root);
}

// Path: common
class _TranslationsCommonZh implements TranslationsCommonEn {
  _TranslationsCommonZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get profile => '个人资料';
  @override
  String get language => '语言';
  @override
  String get subscriptionPlan => '订阅计划';
  @override
  String get contactUs => '联系我们';
  @override
  String get termsAndConditions => '条款与条件';
  @override
  String get aboutUs => '关于我们';
  @override
  String get logout => '登出';
  @override
  String get editProfile => '编辑个人资料';
  @override
  String get fullName => '全名';
  @override
  String get email => '电子邮件';
  @override
  String get mobileNumber => '手机号码';
  @override
  String get address => '地址';
  @override
  String get postalCode => '邮政编码';
  @override
  String get city => '城市';
  @override
  String get country => '国家';
  @override
  String get state => '省份';
  @override
  String get password => '密码';
  @override
  String get forgotPassword => '忘记密码';
  @override
  String get tenant => '租户';
  @override
  String get landlord => '房东';
  @override
  String get cancelRenting => '取消租赁';
  @override
  String get startDate => '开始日期';
  @override
  String get endDate => '结束日期';
  @override
  String get fromDate => '起始日期';
  @override
  String get toDate => '结束日期';
  @override
  String get online => '在线';
  @override
  String get bankList => '银行列表';
  @override
  String get withdrawMethod => '提款方式';
  @override
  String get uploadPaymentReceipt => '上传付款凭证';
  @override
  TextSpan offlinePaymentNote({
    required InlineSpanBuilder note,
    required InlineSpanBuilder duraion,
  }) => TextSpan(
    children: [
      const TextSpan(text: '注意： '),
      note('付款需要管理员在'),
      const TextSpan(text: ' '),
      duraion('24~48 小时内'),
      const TextSpan(text: ' '),
      note('手动审批。'),
    ],
  );
  @override
  String get reviews => '评价';
  @override
  String get description => '描述';
  @override
  String get about => '关于';
  @override
  String get propertyTypes => '物业类型';
  @override
  String get features => '特色';
  @override
  String get floorPlans => '楼层平面图';
  @override
  String get buildingDetails => '建筑详情';
  @override
  String get buildingName => '建筑名称';
  @override
  String get propertyAddress => '物业地址';
  @override
  String get completionYear => '竣工年份';
  @override
  String get lotNumber => '地段号码';
  @override
  String get residentialType => '住宅类型';
  @override
  String get furnishings => '家具';
  @override
  String get floorRange => '楼层范围';
  @override
  String get bedrooms => '卧室';
  @override
  String get bathrooms => '浴室';
  @override
  String get propertySize => '物业面积';
  @override
  String get rentalPeriod => '租赁期限';
  @override
  String get securityDeposit => '保证金';
  @override
  String get utilityBill => '水电费';
  @override
  String get facilities => '设施';
  @override
  String get amenities => '便利设施';
  @override
  String get expiringReason => '到期原因';
  @override
  String get tenantDetails => '租户详情';
  @override
  String get typeOfTenant => '租户类型';
  @override
  String get tenantName => '租户姓名';
  @override
  String get nidPassport => 'NID/护照';
  @override
  String get nidPassportId => '${_root.common.nidPassport} ID';
  @override
  String get tenantId => '租户ID';
  @override
  String get dateOfBirth => '出生日期';
  @override
  String get gender => '性别';
  @override
  String get nominee => '被提名人';
  @override
  String get name => '姓名';
  @override
  String get optional => '可选的';
  @override
  String get nomineeName => '${_root.common.nominee} ${_root.common.name}';
  @override
  String get nomineeEmail => '${_root.common.nominee} ${_root.common.email}';
  @override
  late final _TranslationsCommonNomineeMobileZh nomineeMobile =
      _TranslationsCommonNomineeMobileZh._(_root);
  @override
  String get emergencyContact => '紧急联络人';
  @override
  String get relation => '关系';
  @override
  String get relationWith => '${_root.common.relation} 与';
  @override
  String get relationWithYou => '${_root.common.relationWith} 您';
  @override
  String get company => '公司';
  @override
  String get companyName => '${_root.common.company} ${_root.common.name}';
  @override
  String get companySSMNo => '${_root.common.company} SSM No.';
  @override
  String get workplace => '工作地点';
  @override
  String get officePhoneNo => '办公室电话号码';
  @override
  String get officeMobileNo => '办公室手机号码';
  @override
  String get vehicle => '车辆';
  @override
  late final _TranslationsCommonVehiclesInfoZh vehiclesInfo =
      _TranslationsCommonVehiclesInfoZh._(_root);
  @override
  String get vehiclesType => '${_root.common.vehicle} 类型';
  @override
  late final _TranslationsCommonVehicleRegistrationNoZh vehicleRegistrationNo =
      _TranslationsCommonVehicleRegistrationNoZh._(_root);
  @override
  String get vehicleBrand => '${_root.common.vehicle} 品牌';
  @override
  String get rentProperty => '出租物业';
  @override
  String get propertyDetails => '物业详情';
  @override
  String get propertyId => '物业ID';
  @override
  String get propertyType => '物业类型';
  @override
  String get propertyName => '物业名称';
  @override
  String get paymentDetails => '付款详情';
  @override
  String get monthlyRent => '月租';
  @override
  String get thisMonthPayment => '本月付款';
  @override
  String get totalPaidRent => '已付租金总额';
  @override
  String get dueRent => '未付租金';
  @override
  String get rentStartDate => '租金 ${_root.common.startDate}';
  @override
  String get rentEndDate => '租金 ${_root.common.endDate}';
  @override
  String get status => '状态';
  @override
  String get rentAgreementPdf => '租赁协议PDF';
  @override
  String get noFile => '无文件';
  @override
  String get tenantImageOp => '租户图像 ${_root.common.optional}';
  @override
  String get addNewVechicle => '添加新车辆';
  @override
  String get uploadNidPassport => '上传 NID/护照';
  @override
  String get nidPassportUploadNote => '仅接受文件类型图像。文件限制高达 2.5 MB。';
  @override
  String get search => '搜索';
  @override
  String get sortBy => '排序方式';
  @override
  String get subscription => '订阅';
  @override
  String get downloading => '下载中...';
  @override
  String get downloadSuccess => '文件下载成功！';
  @override
  String get addPropertyBannerTitle => '想要出租您的物业？';
  @override
  String get application => '申请';
  @override
  String get tenantHasPaidDeposit => '租户已支付押金。';
  @override
  String get askProcessingRentApplication => '您确定要处理此租金物业请求吗？';
  @override
  String get dateAndTime => '日期和时间';
  @override
  String get applicationDetails => '申请详情';
  @override
  String get depositStatus => '押金状态';
  @override
  String get uploadRentAgreement => '上传租赁协议';
  @override
  String get uploadFilePDF => '上传文件（PDF）';
  @override
  String get askSelectRentAgreement => '请选择协议文件。';
  @override
  String get landlordRentAgreementPDF => '房东租赁协议PDF';
  @override
  String get tenantRentAgreementPDF => '租户租赁协议PDF';
  @override
  TextSpan landlordApplicationApproveNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '注意： '),
          note('仅在租户支付押金后才批准申请。'),
        ],
      );
  @override
  String get reasonOfRejection => '拒绝原因';
  @override
  String get youveRejectedThisApplication => '您已拒绝此申请';
  @override
  String get landlordDetails => '房东详情';
  @override
  String get landlordName => '房东姓名';
  @override
  String get downloadRentAgreement => '下载租赁协议';
  @override
  TextSpan acceptTermsConditions({required InlineSpanBuilder toc}) => TextSpan(
    children: [
      const TextSpan(text: '接受 '),
      toc('条款与条件'),
    ],
  );
  @override
  TextSpan tenantAgreementSignNote1({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '注意： '),
          note('请下载并阅读协议。请通过 WhatsApp 或电子邮件将签署的协议发送给房东。'),
        ],
      );
  @override
  TextSpan tenantAgreementSignNote2({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '注意： '),
          note('当租户支付保证金、水电费和一个月的预付租金时，房东批准申请。'),
        ],
      );
  @override
  TextSpan completeRentAgreementPdf({required InlineSpanBuilder complete}) =>
      TextSpan(
        children: [
          const TextSpan(text: '租赁协议 (PDF) '),
          complete('完整协议'),
        ],
      );
  @override
  TextSpan tenantApplicationDepositNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '注意： '),
          note('当租户支付保证金、水电费和一个月的预付租金时，房东批准申请。'),
        ],
      );
  @override
  String get whatsapp => 'WhatsApp';
  @override
  String get applicationList => '申请列表';
  @override
  String get viewDetails => '查看详情';
  @override
  String get searchHint => '${_root.common.search}...';
  @override
  String get home => '首页';
  @override
  String get dashboard => '仪表板';
  @override
  String get tenants => '租户';
  @override
  String get maintenance => '维护';
  @override
  String get maintenanceList => '维护列表';
  @override
  String get maintenanceReport => '维护报告';
  @override
  String get labor => '劳工';
  @override
  String get applications => '申请';
  @override
  String get rentInvitation => '租金邀请';
  @override
  String get payment => '付款';
  @override
  String get rentPayment => '租金支付';
  @override
  String get depositUtilityPayment => '押金和水电费支付';
  @override
  String get refundRequest => '退款请求';
  @override
  String get withdrawRequest => '提款请求';
  @override
  String get myProperty => '我的物业';
  @override
  String get myRent => '我的租金';
  @override
  String get wishlist => '收藏夹';
  @override
  String get properties => '物业';
  @override
  String get allProperties => '所有物业';
  @override
  String get totalPropery => '物业总数';
  @override
  String get occupied => '已占用';
  @override
  String get vacant => '空置';
  @override
  String get accounting => '会计';
  @override
  String get totalIncome => '总收入';
  @override
  String get totalExpense => '总支出';
  @override
  String get currentBalance => '当前余额';
  @override
  String get totalWithdrawal => '总提款';
  @override
  String get totalProperties => '物业总数';
  @override
  String get totalTenant => '租户总数';
  @override
  String get totalRentPaid => '已付租金总额';
  @override
  String get totalRentDue => '未付租金总额';
  @override
  String get totalApplication => '申请总数';
  @override
  String get pendingApplication => '待处理申请';
  @override
  String get processingApplication => '处理中申请';
  @override
  String get approveApplication => '批准申请';
  @override
  String get rejectApplication => '拒绝申请';
  @override
  String get maintenanceCost => '维护成本';
  @override
  String get transactionSummary => '交易摘要';
  @override
  String get maintenanceRequest => '维护请求';
  @override
  String get notifications => '通知';
  @override
  String get myProperties => '我的物业';
  @override
  String get recommendationProperties => '推荐物业';
  @override
  String get laborList => '劳工列表';
  @override
  String get addLabor => '添加劳工';
  @override
  String get laborDetails => '劳工详情';
  @override
  String get laborSalary => '劳工工资';
  @override
  String get editLabor => '编辑劳工';
  @override
  String get addNewLabor => '添加新劳工';
  @override
  String get enterAmount => '输入金额';
  @override
  String get maintenanceDetails => '维护详情';
  @override
  String get laborName => '劳工姓名';
  @override
  String get comment => '评论';
  @override
  String get image => '图像';
  @override
  String get complete => '完成';
  @override
  String get details => '详情';
  @override
  String get title => '标题';
  @override
  String get date => '日期';
  @override
  String get reason => '原因';
  @override
  String get edit => '编辑';
  @override
  String get property => '物业';
  @override
  String get completeYourProfile => '完善您的个人资料';
  @override
  String get profileImage => '头像';
  @override
  String get imagePickHint => '仅限 JPEG 和 PNG 图像，最大尺寸为 120x120 像素。';
  @override
  String get invoiceId => '发票ID';
  @override
  String get depositAmount => '押金金额';
  @override
  String get landlordPhone => '房东电话';
  @override
  String get rentalAdvance => '租金（预付）';
  @override
  String get totalAmount => '总金额';
  @override
  String get rentalAmount => '租金金额';
  @override
  String get adminCharge => '管理费';
  @override
  String get editAccount => '编辑帐户';
  @override
  String get addNewAccount => '添加新帐户';
  @override
  String get transactionId => '交易ID';
  @override
  String get transactionType => '交易类型';
  @override
  String get requestDate => '请求日期';
  @override
  String get amount => '金额';
  @override
  String get fee => '费用';
  @override
  String get paymentStatus => '付款状态';
  @override
  String get generatedTime => '生成时间';
  @override
  TextSpan systemGeneratedReportHint({required InlineSpan appName}) => TextSpan(
    children: [
      const TextSpan(text: '这是 '),
      appName,
      const TextSpan(text: ' 的系统生成报告'),
    ],
  );
  @override
  String get withdrawHistory => '提款历史';
  @override
  String get history => '历史记录';
  @override
  String get withdrawAmount => '提款金额';
  @override
  String get availableBalance => '可用余额';
  @override
  String get withdrawCharge => '提款费用';
  @override
  String get paymentMethod => '付款方式';
  @override
  String get requestSendSuccess => '请求发送成功！';
  @override
  String get paymentReceiptSubmitSuccess => '付款凭证提交成功。';
  @override
  String get refundReason => '退款原因';
  @override
  String get note => '注意';
  @override
  String get refundReceiveSuccess => '退款成功收到。';
  @override
  String get downloadPaymentReceipt => '下载付款凭证';
  @override
  String get invoice => '发票';
  @override
  String get selectPropertyToSeeInvoice => '选择物业以查看发票号码...';
  @override
  String get bankAccName => '银行账户名称';
  @override
  String get bankName => '银行名称';
  @override
  String get bankAccNum => '银行账号';
  @override
  String get thankYou => '谢谢您！';
  @override
  String get basicInfo => '基本信息';
  @override
  String get descriptionPricing => '描述和定价';
  @override
  String get contact => '联系方式';
  @override
  String get photos => '照片';
  @override
  String get successfullySubmitted => '成功提交！';
  @override
  String get editProperty => '编辑物业';
  @override
  String get addNewProperty => '添加新物业';
  @override
  String get propertyManageRequestSuccess => '您的广告已提交审核。';
  @override
  String get postAnotherProperty => '发布其他物业';
  @override
  String get browseYourProperty => '浏览您的物业';
  @override
  TextSpan stepIndicator({
    required InlineSpan step,
    required InlineSpan totalSteps,
  }) => TextSpan(
    children: [
      const TextSpan(text: '步骤 '),
      step,
      const TextSpan(text: ' / '),
      totalSteps,
    ],
  );
  @override
  String get whatWouldYouLikeToPost => '您想发布什么？';
  @override
  String get category => '类别';
  @override
  String get invalidCategory => '无效类别';
  @override
  String get unitNumber => '单位号码';
  @override
  String get sqft => '平方英尺';
  @override
  String get propertySizeMustBeGreaterThan0 => '物业面积应大于零';
  @override
  String get whatAreTheFacility => '有哪些设施？';
  @override
  String get whatAreTheAmenity => '有哪些便利设施？';
  @override
  String get parkingLot => '停车场';
  @override
  String get houseType => '房屋类型';
  @override
  String get value => '价值';
  @override
  String get unitLotSize => '单位/地块面积';
  @override
  String get landSize => '土地面积';
  @override
  String get acres => '英亩';
  @override
  String get roomSize => '房间大小';
  @override
  String get askTenantPreference => '您的租户偏好是什么？';
  @override
  String get couple => '情侣';
  @override
  String describeTheProperty({required String propertyType}) =>
      '描述${propertyType}';
  @override
  String get adTitle => '广告标题';
  @override
  String get minimumRentalPeriod => '最短租赁期';
  @override
  String get whatsappNumber => '${_root.common.whatsapp} 号码';
  @override
  String get hideOrDisplayEmail => '隐藏或显示电子邮件地址';
  @override
  String thankYouForPostingProperty({required String appName}) =>
      '感谢您在 ${appName} 上发布！';
  @override
  String get propertyList => '物业列表';
  @override
  String get newInviteRent => '新的租赁邀请';
  @override
  String get rentAgreement => '租赁协议';
  @override
  String get rentDetails => '租金详情';
  @override
  TextSpan landlordRentInvitationPendingNote({
    required InlineSpanBuilder note,
  }) => TextSpan(
    children: [
      const TextSpan(text: '注意： '),
      note('请等待租户接受邀请。'),
    ],
  );
  @override
  String get rent => '租金';
  @override
  String get editTenant => '编辑租户';
  @override
  String get addNewTenant => '添加新租户';
  @override
  String get shareInstallLink => '分享安装链接';
  @override
  String get tenantList => '租户列表';
  @override
  String get editMaintenanceRequest => '编辑维护请求';
  @override
  String get addNewMaintenance => '添加新维护';
  @override
  String get landlordId => '房东ID';
  @override
  TextSpan tenantAgrementUnderReviewNote({required InlineSpanBuilder note}) =>
      TextSpan(
        children: [
          const TextSpan(text: '注意 '),
          note('您的协议正在审核中。请等待房东批准您的租金。'),
        ],
      );
  @override
  String get editReview => '编辑评价';
  @override
  String get writeAReview => '写评价';
  @override
  String get selectRating => '选择评分';
  @override
  String get enterYourOpinion => '输入您的意见';
  @override
  String get askToEnterReviewMsg => '请输入评价信息';
  @override
  String get pressBackAgainToExit => '再次按返回键退出。';
  @override
  String get selectPaymentMethod => '选择付款方式';
  @override
  String get filter => '筛选';
  @override
  String get perMonth => '/月';
  @override
  String searchHintWithAppName({required String appName}) =>
      '在 ${appName} 中搜索任何内容...';
}

// Path: exceptions
class _TranslationsExceptionsZh implements TranslationsExceptionsEn {
  _TranslationsExceptionsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get somethingWentWrong => '发生了一些错误，请重试';
  @override
  String get noNidPassport => '未提供 NID/护照图像。';
  @override
  String get noRentPropertyFound => '此租户未找到出租物业。';
  @override
  String get noPropertyFoundWithKeyWord => '未找到物业！\n请尝试使用其他关键字';
  @override
  String get noSubscriptionFoundRefreshPage => '未找到订阅计划！\n请刷新页面并重试。';
  @override
  String invalidApiDataRefreshPage({required String dataType}) =>
      '无效的 ${dataType} 信息！请刷新页面并重试。';
  @override
  String get invalidDownloadUrl => '无效的下载链接！';
  @override
  String failedToSaveFile({required String error}) => '保存文件失败！${error}';
  @override
  String errorOpeningFile({required String error}) => '打开文件出错！${error}';
  @override
  String get noVehicleInfoProvided => '未提供车辆信息。';
  @override
  String get yourApplicationRejected => '您的申请已被拒绝';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintZh
  noApplicationFoundHint = _TranslationsExceptionsNoApplicationFoundHintZh._(
    _root,
  );
  @override
  late final _TranslationsExceptionsNoPropertyFoundHintZh noPropertyFoundHint =
      _TranslationsExceptionsNoPropertyFoundHintZh._(_root);
  @override
  String get noImageProvided => '未提供图像';
  @override
  late final _TranslationsExceptionsNoStatusMaintenantFoundZh
  noStatusMaintenantFound = _TranslationsExceptionsNoStatusMaintenantFoundZh._(
    _root,
  );
  @override
  String get noDepositFound => '未找到保证金！\n您可以在可用时查看保证金';
  @override
  String get noRentPaymentFound => '未找到租金付款！\n您可以在可用时查看租金付款';
  @override
  String get transactionSummaryApiException => '获取交易摘要失败。';
  @override
  String get noWithdrawRequestFound => '未找到请求！\n请尝试创建提款请求以在此处查看。';
  @override
  String get withdrawRequestNotApproved => '此提款请求未被批准！';
  @override
  String get nonZeroError => '请输入大于零的有效金额。';
  @override
  String minAmountError({required String minValue}) => '金额必须至少为 ${minValue}。';
  @override
  String maxAmountError({required String maxValue}) => '金额不得超过 ${maxValue}。';
  @override
  String get selectPaymentMethodHint => '请先选择付款方式。';
  @override
  late final _TranslationsExceptionsNoStatusRefundReqFoundZh
  noStatusRefundReqFound = _TranslationsExceptionsNoStatusRefundReqFoundZh._(
    _root,
  );
  @override
  late final _TranslationsExceptionsRefundRequestHintZh refundRequestHint =
      _TranslationsExceptionsRefundRequestHintZh._(_root);
  @override
  String oneToTenRequiredField({required String value}) => '请选择 ${value} 的数量';
  @override
  String get invalidDateRange => '无效的日期范围。';
  @override
  String valueMustBeGreaterThanZero({required String value}) =>
      '${value} 必须大于零。';
  @override
  late final _TranslationsExceptionsEditPropertyZh editProperty =
      _TranslationsExceptionsEditPropertyZh._(_root);
  @override
  late final _TranslationsExceptionsRentInvitationZh rentInvitation =
      _TranslationsExceptionsRentInvitationZh._(_root);
  @override
  String get notenantFoundList => '没有租户！\n请尝试添加租户以在此处查看。';
  @override
  String get noFeaturesProvided => '未提供任何功能。';
  @override
  String get noNotificationFound => '没有可用的通知。\n您可以在可用时在此处查看您的通知。';
}

// Path: prompt
class _TranslationsPromptZh implements TranslationsPromptEn {
  _TranslationsPromptZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLogoutZh logout = _TranslationsPromptLogoutZh._(
    _root,
  );
  @override
  late final _TranslationsPromptApplicationZh application =
      _TranslationsPromptApplicationZh._(_root);
  @override
  late final _TranslationsPromptLaborZh labor = _TranslationsPromptLaborZh._(
    _root,
  );
  @override
  late final _TranslationsPromptMaintenanceRequestZh maintenanceRequest =
      _TranslationsPromptMaintenanceRequestZh._(_root);
  @override
  late final _TranslationsPromptWithdrawMethodZh withdrawMethod =
      _TranslationsPromptWithdrawMethodZh._(_root);
  @override
  late final _TranslationsPromptUnsavedChangesZh unsavedChanges =
      _TranslationsPromptUnsavedChangesZh._(_root);
  @override
  late final _TranslationsPromptPropertyZh property =
      _TranslationsPromptPropertyZh._(_root);
  @override
  late final _TranslationsPromptRentInvitationZh rentInvitation =
      _TranslationsPromptRentInvitationZh._(_root);
  @override
  late final _TranslationsPromptSessionExpiredZh sessionExpired =
      _TranslationsPromptSessionExpiredZh._(_root);
  @override
  late final _TranslationsPromptNoInternetZh noInternet =
      _TranslationsPromptNoInternetZh._(_root);
  @override
  late final _TranslationsPromptPermissionHandlerZh permissionHandler =
      _TranslationsPromptPermissionHandlerZh._(_root);
  @override
  late final _TranslationsPromptImagePickerZh imagePicker =
      _TranslationsPromptImagePickerZh._(_root);
  @override
  late final _TranslationsPromptVerificationDialogZh verificationDialog =
      _TranslationsPromptVerificationDialogZh._(_root);
  @override
  late final _TranslationsPromptNotificationZh notification =
      _TranslationsPromptNotificationZh._(_root);
}

// Path: form
class _TranslationsFormZh implements TranslationsFormEn {
  _TranslationsFormZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormFullNameZh fullName =
      _TranslationsFormFullNameZh._(_root);
  @override
  late final _TranslationsFormEmailZh email = _TranslationsFormEmailZh._(_root);
  @override
  late final _TranslationsFormPasswordZh password =
      _TranslationsFormPasswordZh._(_root);
  @override
  late final _TranslationsFormConfirmPasswordZh confirmPassword =
      _TranslationsFormConfirmPasswordZh._(_root);
  @override
  late final _TranslationsFormMobileNumberZh mobileNumber =
      _TranslationsFormMobileNumberZh._(_root);
  @override
  late final _TranslationsFormAddress1Zh address1 =
      _TranslationsFormAddress1Zh._(_root);
  @override
  late final _TranslationsFormAddress2Zh address2 =
      _TranslationsFormAddress2Zh._(_root);
  @override
  late final _TranslationsFormPostalCodeZh postalCode =
      _TranslationsFormPostalCodeZh._(_root);
  @override
  late final _TranslationsFormCityZh city = _TranslationsFormCityZh._(_root);
  @override
  late final _TranslationsFormStateZh state = _TranslationsFormStateZh._(_root);
  @override
  late final _TranslationsFormCountryZh country = _TranslationsFormCountryZh._(
    _root,
  );
  @override
  late final _TranslationsFormOtpZh otp = _TranslationsFormOtpZh._(_root);
  @override
  late final _TranslationsFormTitleZh title = _TranslationsFormTitleZh._(_root);
  @override
  late final _TranslationsFormDateZh date = _TranslationsFormDateZh._(_root);
  @override
  late final _TranslationsFormReasonZh reason = _TranslationsFormReasonZh._(
    _root,
  );
  @override
  late final _TranslationsFormWithdrawMethodZh withdrawMethod =
      _TranslationsFormWithdrawMethodZh._(_root);
  @override
  late final _TranslationsFormFileFieldZh fileField =
      _TranslationsFormFileFieldZh._(_root);
  @override
  late final _TranslationsFormNoteZh note = _TranslationsFormNoteZh._(_root);
  @override
  late final _TranslationsFormGenderZh gender = _TranslationsFormGenderZh._(
    _root,
  );
  @override
  late final _TranslationsFormAnyFieldZh anyField =
      _TranslationsFormAnyFieldZh._(_root);
  @override
  late final _TranslationsFormAnyDropdownZh anyDropdown =
      _TranslationsFormAnyDropdownZh._(_root);
}

// Path: action
class _TranslationsActionZh implements TranslationsActionEn {
  _TranslationsActionZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get next => '下一步';
  @override
  String get getStarted => '开始';
  @override
  String get skip => '跳过';
  @override
  String get select => '选择';
  @override
  String get save => '保存';
  @override
  String get signIn => '登录';
  @override
  String get signUp => '注册';
  @override
  String get kContinue => '继续';
  @override
  String get clearAll => '全部清除';
  @override
  String get cancelRenting => _root.common.cancelRenting;
  @override
  String get send => '发送';
  @override
  String get pay => '支付';
  @override
  String get remove => '移除';
  @override
  String get goBack => '返回';
  @override
  String get buyNow => '立即购买';
  @override
  String get no => '否';
  @override
  String get open => '打开';
  @override
  String get addProperty => '添加物业';
  @override
  String get process => '处理';
  @override
  String get approve => '批准';
  @override
  String get reject => '拒绝';
  @override
  String get viewRent => '查看租金';
  @override
  String get openNavigationMenu => '打开导航菜单';
  @override
  String get seeAll => '查看全部';
  @override
  String get update => '更新';
  @override
  String get printTransaction => '打印交易';
  @override
  String get payoutRequest => '支付请求';
  @override
  String get addNew => '+ 添加新项目';
  @override
  String get sendRequest => '发送请求';
  @override
  String get print => '打印';
  @override
  String get requestForRefund => '申请退款';
  @override
  String get previous => '上一页';
  @override
  String get delete => '删除';
  @override
  String get applyProperty => '申请物业';
  @override
  String get viewApplication => '查看申请';
  @override
  String get inviteTenant => '邀请租户';
  @override
  String get inviteRent => '邀请出租';
  @override
  String get cancel => '取消';
  @override
  String get accept => '接受';
  @override
  String get submit => '提交';
  @override
  String get yes => '是';
  @override
  String get okay => '好的';
  @override
  String get confirm => '确认';
  @override
  String get apply => '应用';
  @override
  String get reset => '重置';
  @override
  String get retry => '重试';
  @override
  String get viewAll => '查看全部';
}

// Path: pages
class _TranslationsPagesZh implements TranslationsPagesEn {
  _TranslationsPagesZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesLanguageZh language =
      _TranslationsPagesLanguageZh._(_root);
  @override
  late final _TranslationsPagesOnboardZh onboard =
      _TranslationsPagesOnboardZh._(_root);
  @override
  late final _TranslationsPagesSignInZh signIn = _TranslationsPagesSignInZh._(
    _root,
  );
  @override
  late final _TranslationsPagesForgotPasswordZh forgotPassword =
      _TranslationsPagesForgotPasswordZh._(_root);
  @override
  late final _TranslationsPagesOtpVerificationZh otpVerification =
      _TranslationsPagesOtpVerificationZh._(_root);
  @override
  late final _TranslationsPagesResetPasswordZh resetPassword =
      _TranslationsPagesResetPasswordZh._(_root);
  @override
  late final _TranslationsPagesSignUpZh signUp = _TranslationsPagesSignUpZh._(
    _root,
  );
  @override
  late final _TranslationsPagesWelcomeZh welcome =
      _TranslationsPagesWelcomeZh._(_root);
  @override
  late final _TranslationsPagesAboutUsZh aboutUs =
      _TranslationsPagesAboutUsZh._(_root);
  @override
  late final _TranslationsPagesTermsAndConditionsZh termsAndConditions =
      _TranslationsPagesTermsAndConditionsZh._(_root);
  @override
  late final _TranslationsPagesNotificationListZh notificationList =
      _TranslationsPagesNotificationListZh._(_root);
  @override
  late final _TranslationsPagesContactUsZh contactUs =
      _TranslationsPagesContactUsZh._(_root);
  @override
  late final _TranslationsPagesCancelRentingZh cancelRenting =
      _TranslationsPagesCancelRentingZh._(_root);
  @override
  late final _TranslationsPagesInvoiceDetailsZh invoiceDetails =
      _TranslationsPagesInvoiceDetailsZh._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentZh offlinePayment =
      _TranslationsPagesOfflinePaymentZh._(_root);
  @override
  late final _TranslationsPagesPaymentStatusZh paymentStatus =
      _TranslationsPagesPaymentStatusZh._(_root);
  @override
  late final _TranslationsPagesPropertyDetailsZh propertyDetails =
      _TranslationsPagesPropertyDetailsZh._(_root);
  @override
  late final _TranslationsPagesSearchZh search = _TranslationsPagesSearchZh._(
    _root,
  );
  @override
  late final _TranslationsPagesSubscriptionPlanZh subscriptionPlan =
      _TranslationsPagesSubscriptionPlanZh._(_root);
  @override
  late final _TranslationsPagesLandlordMaintenanceReportZh
  landlordMaintenanceReport = _TranslationsPagesLandlordMaintenanceReportZh._(
    _root,
  );
}

// Path: enums
class _TranslationsEnumsZh implements TranslationsEnumsEn {
  _TranslationsEnumsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsEnumsPropertyStatusZh propertyStatus =
      _TranslationsEnumsPropertyStatusZh._(_root);
  @override
  late final _TranslationsEnumsPropertyTypeZh propertyType =
      _TranslationsEnumsPropertyTypeZh._(_root);
  @override
  late final _TranslationsEnumsApplicationStatusZh applicationStatus =
      _TranslationsEnumsApplicationStatusZh._(_root);
  @override
  late final _TranslationsEnumsMyRentStatusZh myRentStatus =
      _TranslationsEnumsMyRentStatusZh._(_root);
  @override
  late final _TranslationsEnumsMaintenanceStatusZh maintenanceStatus =
      _TranslationsEnumsMaintenanceStatusZh._(_root);
  @override
  late final _TranslationsEnumsTenantProfileTypeZh tenantProfileType =
      _TranslationsEnumsTenantProfileTypeZh._(_root);
  @override
  late final _TranslationsEnumsTenantTypeZh tenantType =
      _TranslationsEnumsTenantTypeZh._(_root);
  @override
  late final _TranslationsEnumsPaymentStatusZh paymentStatus =
      _TranslationsEnumsPaymentStatusZh._(_root);
  @override
  late final _TranslationsEnumsPaymentOptionsZh paymentOptions =
      _TranslationsEnumsPaymentOptionsZh._(_root);
  @override
  late final _TranslationsEnumsPaymentTypeZh paymentType =
      _TranslationsEnumsPaymentTypeZh._(_root);
  @override
  late final _TranslationsEnumsGenderZh gender = _TranslationsEnumsGenderZh._(
    _root,
  );
  @override
  late final _TranslationsEnumsEcRelationZh ecRelation =
      _TranslationsEnumsEcRelationZh._(_root);
  @override
  late final _TranslationsEnumsVehicleTypeZh vehicleType =
      _TranslationsEnumsVehicleTypeZh._(_root);
  @override
  late final _TranslationsEnumsSortByZh sortBy = _TranslationsEnumsSortByZh._(
    _root,
  );
  @override
  late final _TranslationsEnumsResidentialTypeZh residentialType =
      _TranslationsEnumsResidentialTypeZh._(_root);
  @override
  late final _TranslationsEnumsFloorRangeZh floorRange =
      _TranslationsEnumsFloorRangeZh._(_root);
  @override
  late final _TranslationsEnumsFurnishingsZh furnishings =
      _TranslationsEnumsFurnishingsZh._(_root);
  @override
  late final _TranslationsEnumsCommercialPropertyTypeZh commercialPropertyType =
      _TranslationsEnumsCommercialPropertyTypeZh._(_root);
  @override
  late final _TranslationsEnumsLandPropertyTypeZh landPropertyType =
      _TranslationsEnumsLandPropertyTypeZh._(_root);
  @override
  late final _TranslationsEnumsResidentPropertyTypeZh residentPropertyType =
      _TranslationsEnumsResidentPropertyTypeZh._(_root);
  @override
  late final _TranslationsEnumsMinimumRentalPeriodZh minimumRentalPeriod =
      _TranslationsEnumsMinimumRentalPeriodZh._(_root);
  @override
  late final _TranslationsEnumsDropdownDateFilterZh dropdownDateFilter =
      _TranslationsEnumsDropdownDateFilterZh._(_root);
}

// Path: common.nomineeMobile
class _TranslationsCommonNomineeMobileZh
    implements TranslationsCommonNomineeMobileEn {
  _TranslationsCommonNomineeMobileZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get short => '${_root.common.nominee} 手机号码';
  @override
  String get full => '${_root.common.nominee} ${_root.common.mobileNumber}';
}

// Path: common.vehiclesInfo
class _TranslationsCommonVehiclesInfoZh
    implements TranslationsCommonVehiclesInfoEn {
  _TranslationsCommonVehiclesInfoZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get plain => '车辆信息';
  @override
  String get optional => '车辆信息 (${_root.common.optional})';
}

// Path: common.vehicleRegistrationNo
class _TranslationsCommonVehicleRegistrationNoZh
    implements TranslationsCommonVehicleRegistrationNoEn {
  _TranslationsCommonVehicleRegistrationNoZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get normal => '车辆注册号码';
  @override
  String get short => '注册号码';
  @override
  String get alt => '车牌号码';
}

// Path: exceptions.noApplicationFoundHint
class _TranslationsExceptionsNoApplicationFoundHintZh
    implements TranslationsExceptionsNoApplicationFoundHintEn {
  _TranslationsExceptionsNoApplicationFoundHintZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String template({required String subject}) =>
      '未找到申请！\n${subject} 将在此处显示（如果可用）。';
  @override
  late final _TranslationsExceptionsNoApplicationFoundHintSubjectsZh subjects =
      _TranslationsExceptionsNoApplicationFoundHintSubjectsZh._(_root);
}

// Path: exceptions.noPropertyFoundHint
class _TranslationsExceptionsNoPropertyFoundHintZh
    implements TranslationsExceptionsNoPropertyFoundHintEn {
  _TranslationsExceptionsNoPropertyFoundHintZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get landlordHome => '未找到物业！\n请尝试添加物业以在此处查看。';
  @override
  String get tenantRecommended => '未找到推荐物业\n请稍后重试。';
  @override
  String get tenantAllProperty => '物业不可用\n请稍后重试。';
}

// Path: exceptions.noStatusMaintenantFound
class _TranslationsExceptionsNoStatusMaintenantFoundZh
    implements TranslationsExceptionsNoStatusMaintenantFoundEn {
  _TranslationsExceptionsNoStatusMaintenantFoundZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) => '未找到 ${status} 维护记录。';
  @override
  String get tenant => '未找到维护记录！您可以创建维护请求以在此处查看。';
}

// Path: exceptions.noStatusRefundReqFound
class _TranslationsExceptionsNoStatusRefundReqFoundZh
    implements TranslationsExceptionsNoStatusRefundReqFoundEn {
  _TranslationsExceptionsNoStatusRefundReqFoundZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String landlord({required Object status}) =>
      '未找到 ${status} 退款请求！\n您可以在可用时在此处查看退款请求。';
  @override
  String get tenant => '未找到退款请求！\n您可以创建退款请求以在此处查看。';
}

// Path: exceptions.refundRequestHint
class _TranslationsExceptionsRefundRequestHintZh
    implements TranslationsExceptionsRefundRequestHintEn {
  _TranslationsExceptionsRefundRequestHintZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get inTenantList => '租户在收到退款后将批准退款';
  @override
  String get tenantReqSuccess => '我们将审核退款请求并在 24 小时内批准。';
}

// Path: exceptions.editProperty
class _TranslationsExceptionsEditPropertyZh
    implements TranslationsExceptionsEditPropertyEn {
  _TranslationsExceptionsEditPropertyZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get rentalChange => '租赁物业正在更改。它必须仅对下个月的租金支付有效（生效）。';
  @override
  String get deleteOnRent => '您的物业已被租户租用。在移除租户之前无法删除它';
  @override
  String get alreayRented => '此物业已被出租。请稍后重试。\n或者您可以联系房东了解更多信息。';
}

// Path: exceptions.rentInvitation
class _TranslationsExceptionsRentInvitationZh
    implements TranslationsExceptionsRentInvitationEn {
  _TranslationsExceptionsRentInvitationZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get landlordNoRentInvitation => '未找到租赁邀请！\n请尝试创建租赁邀请以在此处查看。';
  @override
  String get tenantNoRentInvitation => '未找到租赁邀请！\n您可以在可用时在此处查看租赁邀请。';
}

// Path: prompt.logout
class _TranslationsPromptLogoutZh implements TranslationsPromptLogoutEn {
  _TranslationsPromptLogoutZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => _root.common.logout;
  @override
  String get message => '您确定要登出吗？';
}

// Path: prompt.application
class _TranslationsPromptApplicationZh
    implements TranslationsPromptApplicationEn {
  _TranslationsPromptApplicationZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => '您为什么要拒绝此申请？';
  @override
  late final _TranslationsPromptApplicationApplicationSentZh applicationSent =
      _TranslationsPromptApplicationApplicationSentZh._(_root);
}

// Path: prompt.labor
class _TranslationsPromptLaborZh implements TranslationsPromptLaborEn {
  _TranslationsPromptLaborZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptLaborDeleteZh delete =
      _TranslationsPromptLaborDeleteZh._(_root);
}

// Path: prompt.maintenanceRequest
class _TranslationsPromptMaintenanceRequestZh
    implements TranslationsPromptMaintenanceRequestEn {
  _TranslationsPromptMaintenanceRequestZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get rejectTitle => '您为什么拒绝此请求？';
  @override
  String get processTitle => '您确定要处理此维护请求吗？';
  @override
  String get completeTitle => '工作完成了吗？';
}

// Path: prompt.withdrawMethod
class _TranslationsPromptWithdrawMethodZh
    implements TranslationsPromptWithdrawMethodEn {
  _TranslationsPromptWithdrawMethodZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get deleteTitle => '删除提款方式？';
  @override
  String get deleteDescription => '您确定要删除此提款方式吗？';
}

// Path: prompt.unsavedChanges
class _TranslationsPromptUnsavedChangesZh
    implements TranslationsPromptUnsavedChangesEn {
  _TranslationsPromptUnsavedChangesZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '您确定要返回吗？';
  @override
  String get message => '已更改的字段将不会被保存！';
}

// Path: prompt.property
class _TranslationsPromptPropertyZh implements TranslationsPromptPropertyEn {
  _TranslationsPromptPropertyZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptPropertyDeleteZh delete =
      _TranslationsPromptPropertyDeleteZh._(_root);
}

// Path: prompt.rentInvitation
class _TranslationsPromptRentInvitationZh
    implements TranslationsPromptRentInvitationEn {
  _TranslationsPromptRentInvitationZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPromptRentInvitationLandlordApproveZh
  landlordApprove = _TranslationsPromptRentInvitationLandlordApproveZh._(_root);
  @override
  late final _TranslationsPromptRentInvitationTenantAcceptZh tenantAccept =
      _TranslationsPromptRentInvitationTenantAcceptZh._(_root);
}

// Path: prompt.sessionExpired
class _TranslationsPromptSessionExpiredZh
    implements TranslationsPromptSessionExpiredEn {
  _TranslationsPromptSessionExpiredZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '会话已过期';
  @override
  String get message => '您的会话已过期。请重新登录';
  @override
  String get action => '登录';
}

// Path: prompt.noInternet
class _TranslationsPromptNoInternetZh
    implements TranslationsPromptNoInternetEn {
  _TranslationsPromptNoInternetZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '无网络连接';
  @override
  String get message => '请检查您的Wi-Fi移动网络连接并重试';
  @override
  String get action => '重试';
}

// Path: prompt.permissionHandler
class _TranslationsPromptPermissionHandlerZh
    implements TranslationsPromptPermissionHandlerEn {
  _TranslationsPromptPermissionHandlerZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '需要权限！';
  @override
  String get message => '您需要在应用设置中授予权限。您现在要打开设置吗？';
}

// Path: prompt.imagePicker
class _TranslationsPromptImagePickerZh
    implements TranslationsPromptImagePickerEn {
  _TranslationsPromptImagePickerZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '选择选项';
  @override
  String get gallery => '相册';
  @override
  String get camera => '相机';
}

// Path: prompt.verificationDialog
class _TranslationsPromptVerificationDialogZh
    implements TranslationsPromptVerificationDialogEn {
  _TranslationsPromptVerificationDialogZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '验证您的电子邮件';
  @override
  String get message => '我们已发送一封包含验证码的电子邮件';
  @override
  String messageWithEmail({required String? email}) =>
      '${_root.prompt.verificationDialog.message} 发送到 ${email}';
}

// Path: prompt.notification
class _TranslationsPromptNotificationZh
    implements TranslationsPromptNotificationEn {
  _TranslationsPromptNotificationZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get clearTitle => '清除通知？';
  @override
  String get clearMessage => '您确定要清除所有通知吗？';
}

// Path: form.fullName
class _TranslationsFormFullNameZh implements TranslationsFormFullNameEn {
  _TranslationsFormFullNameZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.fullName;
  @override
  String get hint => '输入 ${_root.common.fullName}';
  @override
  late final _TranslationsFormFullNameErrorsZh errors =
      _TranslationsFormFullNameErrorsZh._(_root);
}

// Path: form.email
class _TranslationsFormEmailZh implements TranslationsFormEmailEn {
  _TranslationsFormEmailZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.email;
  @override
  String get hint => '输入您的 ${_root.common.email}';
  @override
  late final _TranslationsFormEmailErrorsZh errors =
      _TranslationsFormEmailErrorsZh._(_root);
}

// Path: form.password
class _TranslationsFormPasswordZh implements TranslationsFormPasswordEn {
  _TranslationsFormPasswordZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.password;
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormPasswordErrorsZh errors =
      _TranslationsFormPasswordErrorsZh._(_root);
}

// Path: form.confirmPassword
class _TranslationsFormConfirmPasswordZh
    implements TranslationsFormConfirmPasswordEn {
  _TranslationsFormConfirmPasswordZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => '确认 ${_root.common.password}';
  @override
  String get hint => '* * * * * * * *';
  @override
  late final _TranslationsFormConfirmPasswordErrorsZh errors =
      _TranslationsFormConfirmPasswordErrorsZh._(_root);
}

// Path: form.mobileNumber
class _TranslationsFormMobileNumberZh
    implements TranslationsFormMobileNumberEn {
  _TranslationsFormMobileNumberZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.mobileNumber;
  @override
  String get hint => '(+60) 555-0123';
  @override
  late final _TranslationsFormMobileNumberErrorsZh errors =
      _TranslationsFormMobileNumberErrorsZh._(_root);
}

// Path: form.address1
class _TranslationsFormAddress1Zh implements TranslationsFormAddress1En {
  _TranslationsFormAddress1Zh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 1';
  @override
  String get hint => '门牌号和街道名称';
  @override
  late final _TranslationsFormAddress1ErrorsZh errors =
      _TranslationsFormAddress1ErrorsZh._(_root);
}

// Path: form.address2
class _TranslationsFormAddress2Zh implements TranslationsFormAddress2En {
  _TranslationsFormAddress2Zh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => '${_root.common.address} 2';
  @override
  String get hint => '公寓、套房、单元等';
  @override
  late final _TranslationsFormAddress2ErrorsZh errors =
      _TranslationsFormAddress2ErrorsZh._(_root);
}

// Path: form.postalCode
class _TranslationsFormPostalCodeZh implements TranslationsFormPostalCodeEn {
  _TranslationsFormPostalCodeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.postalCode;
  @override
  String get hint => '输入 ${_root.common.postalCode}';
  @override
  late final _TranslationsFormPostalCodeErrorsZh errors =
      _TranslationsFormPostalCodeErrorsZh._(_root);
}

// Path: form.city
class _TranslationsFormCityZh implements TranslationsFormCityEn {
  _TranslationsFormCityZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.city;
  @override
  String get hint => '输入 ${_root.common.city} 名称。';
  @override
  late final _TranslationsFormCityErrorsZh errors =
      _TranslationsFormCityErrorsZh._(_root);
}

// Path: form.state
class _TranslationsFormStateZh implements TranslationsFormStateEn {
  _TranslationsFormStateZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.state;
  @override
  String get hint => '输入 ${_root.common.state} 名称。';
  @override
  late final _TranslationsFormStateErrorsZh errors =
      _TranslationsFormStateErrorsZh._(_root);
}

// Path: form.country
class _TranslationsFormCountryZh implements TranslationsFormCountryEn {
  _TranslationsFormCountryZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.country;
  @override
  String get hint => '选择 ${_root.common.country}。';
  @override
  late final _TranslationsFormCountryErrorsZh errors =
      _TranslationsFormCountryErrorsZh._(_root);
}

// Path: form.otp
class _TranslationsFormOtpZh implements TranslationsFormOtpEn {
  _TranslationsFormOtpZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsFormOtpErrorsZh errors =
      _TranslationsFormOtpErrorsZh._(_root);
}

// Path: form.title
class _TranslationsFormTitleZh implements TranslationsFormTitleEn {
  _TranslationsFormTitleZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => '标题';
  @override
  String get hint => '输入标题';
  @override
  late final _TranslationsFormTitleErrorsZh errors =
      _TranslationsFormTitleErrorsZh._(_root);
}

// Path: form.date
class _TranslationsFormDateZh implements TranslationsFormDateEn {
  _TranslationsFormDateZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '选择 ${_root.form.date.label(label: label)}';
  @override
  late final _TranslationsFormDateErrorsZh errors =
      _TranslationsFormDateErrorsZh._(_root);
}

// Path: form.reason
class _TranslationsFormReasonZh implements TranslationsFormReasonEn {
  _TranslationsFormReasonZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => '原因';
  @override
  String get hint => '输入原因';
  @override
  late final _TranslationsFormReasonErrorsZh errors =
      _TranslationsFormReasonErrorsZh._(_root);
}

// Path: form.withdrawMethod
class _TranslationsFormWithdrawMethodZh
    implements TranslationsFormWithdrawMethodEn {
  _TranslationsFormWithdrawMethodZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.withdrawMethod;
  @override
  String get hint => '选择 ${_root.common.withdrawMethod}';
  @override
  late final _TranslationsFormWithdrawMethodErrorsZh errors =
      _TranslationsFormWithdrawMethodErrorsZh._(_root);
}

// Path: form.fileField
class _TranslationsFormFileFieldZh implements TranslationsFormFileFieldEn {
  _TranslationsFormFileFieldZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) => '上传 ${label}';
  @override
  late final _TranslationsFormFileFieldErrorsZh errors =
      _TranslationsFormFileFieldErrorsZh._(_root);
}

// Path: form.note
class _TranslationsFormNoteZh implements TranslationsFormNoteEn {
  _TranslationsFormNoteZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String note}) => '${note}';
  @override
  String hint({required String note}) =>
      '输入 ${_root.form.note.label(note: note)}';
  @override
  late final _TranslationsFormNoteErrorsZh errors =
      _TranslationsFormNoteErrorsZh._(_root);
}

// Path: form.gender
class _TranslationsFormGenderZh implements TranslationsFormGenderEn {
  _TranslationsFormGenderZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => _root.common.gender;
  @override
  String get hint => '选择 ${_root.common.gender}';
  @override
  late final _TranslationsFormGenderErrorsZh errors =
      _TranslationsFormGenderErrorsZh._(_root);
}

// Path: form.anyField
class _TranslationsFormAnyFieldZh implements TranslationsFormAnyFieldEn {
  _TranslationsFormAnyFieldZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '输入 ${_root.form.anyField.label(label: label)}';
  @override
  late final _TranslationsFormAnyFieldErrorsZh errors =
      _TranslationsFormAnyFieldErrorsZh._(_root);
}

// Path: form.anyDropdown
class _TranslationsFormAnyDropdownZh implements TranslationsFormAnyDropdownEn {
  _TranslationsFormAnyDropdownZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String label({required String label}) => '${label}';
  @override
  String hint({required String label}) =>
      '选择 ${_root.form.anyDropdown.label(label: label)}';
  @override
  late final _TranslationsFormAnyDropdownErrorsZh errors =
      _TranslationsFormAnyDropdownErrorsZh._(_root);
}

// Path: pages.language
class _TranslationsPagesLanguageZh implements TranslationsPagesLanguageEn {
  _TranslationsPagesLanguageZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '${_root.action.select} ${_root.common.language}';
}

// Path: pages.onboard
class _TranslationsPagesOnboardZh implements TranslationsPagesOnboardEn {
  _TranslationsPagesOnboardZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataZh onboardData =
      _TranslationsPagesOnboardOnboardDataZh._(_root);
}

// Path: pages.signIn
class _TranslationsPagesSignInZh implements TranslationsPagesSignInEn {
  _TranslationsPagesSignInZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '欢迎回来';
  @override
  String get subtitle => '立即登录，开始一段美妙的旅程。';
  @override
  late final _TranslationsPagesSignInExtraZh extra =
      _TranslationsPagesSignInExtraZh._(_root);
}

// Path: pages.forgotPassword
class _TranslationsPagesForgotPasswordZh
    implements TranslationsPagesForgotPasswordEn {
  _TranslationsPagesForgotPasswordZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '忘记密码';
  @override
  String get subtitle => '输入您的电子邮件地址以恢复您的密码。';
}

// Path: pages.otpVerification
class _TranslationsPagesOtpVerificationZh
    implements TranslationsPagesOtpVerificationEn {
  _TranslationsPagesOtpVerificationZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '验证';
  @override
  String subtitle({required String email}) => '4 位数密码已发送到您的电子邮件地址。${email}';
  @override
  late final _TranslationsPagesOtpVerificationExtraZh extra =
      _TranslationsPagesOtpVerificationExtraZh._(_root);
}

// Path: pages.resetPassword
class _TranslationsPagesResetPasswordZh
    implements TranslationsPagesResetPasswordEn {
  _TranslationsPagesResetPasswordZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '重置密码';
  @override
  String get subtitle => '重置您的密码以恢复并登录您的帐户';
  @override
  late final _TranslationsPagesResetPasswordExtraZh extra =
      _TranslationsPagesResetPasswordExtraZh._(_root);
}

// Path: pages.signUp
class _TranslationsPagesSignUpZh implements TranslationsPagesSignUpEn {
  _TranslationsPagesSignUpZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '创建帐户';
  @override
  String get subtitle => '立即注册，开始一段美妙的旅程';
  @override
  late final _TranslationsPagesSignUpExtraZh extra =
      _TranslationsPagesSignUpExtraZh._(_root);
}

// Path: pages.welcome
class _TranslationsPagesWelcomeZh implements TranslationsPagesWelcomeEn {
  _TranslationsPagesWelcomeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '你是谁？';
  @override
  String get subtitle => '请选择以下选项。';
  @override
  late final _TranslationsPagesWelcomeExtraZh extra =
      _TranslationsPagesWelcomeExtraZh._(_root);
}

// Path: pages.aboutUs
class _TranslationsPagesAboutUsZh implements TranslationsPagesAboutUsEn {
  _TranslationsPagesAboutUsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.aboutUs;
}

// Path: pages.termsAndConditions
class _TranslationsPagesTermsAndConditionsZh
    implements TranslationsPagesTermsAndConditionsEn {
  _TranslationsPagesTermsAndConditionsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.termsAndConditions;
}

// Path: pages.notificationList
class _TranslationsPagesNotificationListZh
    implements TranslationsPagesNotificationListEn {
  _TranslationsPagesNotificationListZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '通知';
}

// Path: pages.contactUs
class _TranslationsPagesContactUsZh implements TranslationsPagesContactUsEn {
  _TranslationsPagesContactUsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.contactUs;
  @override
  late final _TranslationsPagesContactUsExtraZh extra =
      _TranslationsPagesContactUsExtraZh._(_root);
}

// Path: pages.cancelRenting
class _TranslationsPagesCancelRentingZh
    implements TranslationsPagesCancelRentingEn {
  _TranslationsPagesCancelRentingZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.cancelRenting;
  @override
  String get title => '您为什么要 ${_root.common.cancelRenting}？';
  @override
  late final _TranslationsPagesCancelRentingFormZh form =
      _TranslationsPagesCancelRentingFormZh._(_root);
}

// Path: pages.invoiceDetails
class _TranslationsPagesInvoiceDetailsZh
    implements TranslationsPagesInvoiceDetailsEn {
  _TranslationsPagesInvoiceDetailsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => _root.common.viewDetails;
}

// Path: pages.offlinePayment
class _TranslationsPagesOfflinePaymentZh
    implements TranslationsPagesOfflinePaymentEn {
  _TranslationsPagesOfflinePaymentZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '线下支付';
  @override
  late final _TranslationsPagesOfflinePaymentFormZh form =
      _TranslationsPagesOfflinePaymentFormZh._(_root);
  @override
  late final _TranslationsPagesOfflinePaymentExtraZh extra =
      _TranslationsPagesOfflinePaymentExtraZh._(_root);
}

// Path: pages.paymentStatus
class _TranslationsPagesPaymentStatusZh
    implements TranslationsPagesPaymentStatusEn {
  _TranslationsPagesPaymentStatusZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPaymentStatusSuccessZh success =
      _TranslationsPagesPaymentStatusSuccessZh._(_root);
  @override
  late final _TranslationsPagesPaymentStatusFailZh fail =
      _TranslationsPagesPaymentStatusFailZh._(_root);
}

// Path: pages.propertyDetails
class _TranslationsPagesPropertyDetailsZh
    implements TranslationsPagesPropertyDetailsEn {
  _TranslationsPagesPropertyDetailsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesPropertyDetailsExtraZh extra =
      _TranslationsPagesPropertyDetailsExtraZh._(_root);
}

// Path: pages.search
class _TranslationsPagesSearchZh implements TranslationsPagesSearchEn {
  _TranslationsPagesSearchZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '搜索';
  @override
  late final _TranslationsPagesSearchExtraZh extra =
      _TranslationsPagesSearchExtraZh._(_root);
}

// Path: pages.subscriptionPlan
class _TranslationsPagesSubscriptionPlanZh
    implements TranslationsPagesSubscriptionPlanEn {
  _TranslationsPagesSubscriptionPlanZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get appbarTitle => '选择您的计划';
  @override
  late final _TranslationsPagesSubscriptionPlanExtraZh extra =
      _TranslationsPagesSubscriptionPlanExtraZh._(_root);
}

// Path: pages.landlordMaintenanceReport
class _TranslationsPagesLandlordMaintenanceReportZh
    implements TranslationsPagesLandlordMaintenanceReportEn {
  _TranslationsPagesLandlordMaintenanceReportZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  TextSpan totalMaintenanceCost({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: '维护总成本： '),
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
class _TranslationsEnumsPropertyStatusZh
    implements TranslationsEnumsPropertyStatusEn {
  _TranslationsEnumsPropertyStatusZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get allProperty => '所有物业';
  @override
  String get pending => '待处理';
  @override
  String get active => '有效';
  @override
  String get inactive => '无效';
  @override
  String get rejected => '已拒绝';
}

// Path: enums.propertyType
class _TranslationsEnumsPropertyTypeZh
    implements TranslationsEnumsPropertyTypeEn {
  _TranslationsEnumsPropertyTypeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get apartmentCondominium => '公寓/共管公寓';
  @override
  String get house => '房屋';
  @override
  String get commercialProperty => '商业地产';
  @override
  String get land => '土地';
  @override
  String get room => '房间';
}

// Path: enums.applicationStatus
class _TranslationsEnumsApplicationStatusZh
    implements TranslationsEnumsApplicationStatusEn {
  _TranslationsEnumsApplicationStatusZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get all => '全部';
  @override
  String get pending => '待处理';
  @override
  String get processing => '处理中';
  @override
  String get approved => '已批准';
  @override
  String get rejected => '已拒绝';
}

// Path: enums.myRentStatus
class _TranslationsEnumsMyRentStatusZh
    implements TranslationsEnumsMyRentStatusEn {
  _TranslationsEnumsMyRentStatusZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get pending => '待处理';
  @override
  String get processing => '处理中';
  @override
  String get active => '有效';
  @override
  String get expired => '已过期';
  @override
  String get cancelled => '已取消';
}

// Path: enums.maintenanceStatus
class _TranslationsEnumsMaintenanceStatusZh
    implements TranslationsEnumsMaintenanceStatusEn {
  _TranslationsEnumsMaintenanceStatusZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get pending => '待处理';
  @override
  String get processing => '处理中';
  @override
  String get rejected => '已拒绝';
  @override
  String get completed => '已完成';
}

// Path: enums.tenantProfileType
class _TranslationsEnumsTenantProfileTypeZh
    implements TranslationsEnumsTenantProfileTypeEn {
  _TranslationsEnumsTenantProfileTypeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get privateIndividual => '个人';
  @override
  String get company => '公司';
}

// Path: enums.tenantType
class _TranslationsEnumsTenantTypeZh implements TranslationsEnumsTenantTypeEn {
  _TranslationsEnumsTenantTypeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get newTenant => '新租户';
  @override
  String get activeTenant => '有效租户';
  @override
  String get expiredTenant => '已过期租户';
}

// Path: enums.paymentStatus
class _TranslationsEnumsPaymentStatusZh
    implements TranslationsEnumsPaymentStatusEn {
  _TranslationsEnumsPaymentStatusZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get all => '全部';
  @override
  String get pending => '待处理';
  @override
  String get paid => '已支付';
  @override
  String get unpaid => '未支付';
  @override
  String get rejected => '已拒绝';
  @override
  String get refund => '退款';
}

// Path: enums.paymentOptions
class _TranslationsEnumsPaymentOptionsZh
    implements TranslationsEnumsPaymentOptionsEn {
  _TranslationsEnumsPaymentOptionsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get onlinePayment => '在线支付';
  @override
  String get offlinePayment => '线下支付';
}

// Path: enums.paymentType
class _TranslationsEnumsPaymentTypeZh
    implements TranslationsEnumsPaymentTypeEn {
  _TranslationsEnumsPaymentTypeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get securityDeposit => '保证金';
  @override
  String get rentPayment => '租金支付';
  @override
  String get subscription => '订阅';
}

// Path: enums.gender
class _TranslationsEnumsGenderZh implements TranslationsEnumsGenderEn {
  _TranslationsEnumsGenderZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get male => '男';
  @override
  String get female => '女';
  @override
  String get other => '其他';
}

// Path: enums.ecRelation
class _TranslationsEnumsEcRelationZh implements TranslationsEnumsEcRelationEn {
  _TranslationsEnumsEcRelationZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get wife => '妻子';
  @override
  String get parent => '父母';
  @override
  String get friend => '朋友';
  @override
  String get brother => '兄弟';
  @override
  String get sister => '姐妹';
  @override
  String get child => '子女';
}

// Path: enums.vehicleType
class _TranslationsEnumsVehicleTypeZh
    implements TranslationsEnumsVehicleTypeEn {
  _TranslationsEnumsVehicleTypeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get car => '汽车';
  @override
  String get motorcycles => '摩托车';
  @override
  String get lorry => '货车';
}

// Path: enums.sortBy
class _TranslationsEnumsSortByZh implements TranslationsEnumsSortByEn {
  _TranslationsEnumsSortByZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get lowToHigh => '从低到高';
  @override
  String get highToLow => '从高到低';
}

// Path: enums.residentialType
class _TranslationsEnumsResidentialTypeZh
    implements TranslationsEnumsResidentialTypeEn {
  _TranslationsEnumsResidentialTypeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get flat => '单元房';
  @override
  String get apartment => '公寓';
  @override
  String get condominium => '共管公寓';
  @override
  String get serviceResidence => '服务式住宅';
  @override
  String get studio => '单间公寓';
  @override
  String get duplex => '复式公寓';
  @override
  String get townhouseCondo => '联排别墅式公寓';
  @override
  String get others => '其他';
}

// Path: enums.floorRange
class _TranslationsEnumsFloorRangeZh implements TranslationsEnumsFloorRangeEn {
  _TranslationsEnumsFloorRangeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get high => '高层';
  @override
  String get medium => '中层';
  @override
  String get low => '低层';
}

// Path: enums.furnishings
class _TranslationsEnumsFurnishingsZh
    implements TranslationsEnumsFurnishingsEn {
  _TranslationsEnumsFurnishingsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get fullyFurnished => '家具齐全';
  @override
  String get partiallyFurnished => '部分家具';
  @override
  String get notFurnished => '无家具';
}

// Path: enums.commercialPropertyType
class _TranslationsEnumsCommercialPropertyTypeZh
    implements TranslationsEnumsCommercialPropertyTypeEn {
  _TranslationsEnumsCommercialPropertyTypeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get officeSpace => '办公空间';
  @override
  String get retailSpace => '零售空间';
  @override
  String get shopLot => '商铺';
  @override
  String get warehouseFactory => '仓库/工厂';
  @override
  String get hotelResort => '酒店/度假村';
  @override
  String get sofo => 'Sofo';
  @override
  String get soho => 'Soho';
  @override
  String get sovo => 'Sovo';
  @override
  String get others => '其他';
}

// Path: enums.landPropertyType
class _TranslationsEnumsLandPropertyTypeZh
    implements TranslationsEnumsLandPropertyTypeEn {
  _TranslationsEnumsLandPropertyTypeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get residential => '住宅用地';
  @override
  String get industrial => '工业用地';
  @override
  String get agricultural => '农业用地';
  @override
  String get commercial => '商业用地';
  @override
  String get mixedDevelopment => '综合开发用地';
  @override
  String get others => '其他';
}

// Path: enums.residentPropertyType
class _TranslationsEnumsResidentPropertyTypeZh
    implements TranslationsEnumsResidentPropertyTypeEn {
  _TranslationsEnumsResidentPropertyTypeZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get condo => '公寓/服务式住宅/顶层公寓';
  @override
  String get apartment => '公寓/单元房';
  @override
  String get house => '房屋';
  @override
  String get shoplot => '商铺';
  @override
  String get sharing => '合租房屋/单元房';
  @override
  String get others => '其他';
}

// Path: enums.minimumRentalPeriod
class _TranslationsEnumsMinimumRentalPeriodZh
    implements TranslationsEnumsMinimumRentalPeriodEn {
  _TranslationsEnumsMinimumRentalPeriodZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get sixMonths => '6 个月';
  @override
  String get oneYear => '1 年';
  @override
  String get oneAndHalfYears => '1.5 年';
  @override
  String get twoYears => '2 年';
  @override
  String get twoAndHalfYears => '2.5 年';
}

// Path: enums.dropdownDateFilter
class _TranslationsEnumsDropdownDateFilterZh
    implements TranslationsEnumsDropdownDateFilterEn {
  _TranslationsEnumsDropdownDateFilterZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get daily => '每日';
  @override
  String get weekly => '每周';
  @override
  String get monthly => '每月';
  @override
  String get yearly => '每年';
  @override
  String get custom => '自定义';
}

// Path: exceptions.noApplicationFoundHint.subjects
class _TranslationsExceptionsNoApplicationFoundHintSubjectsZh
    implements TranslationsExceptionsNoApplicationFoundHintSubjectsEn {
  _TranslationsExceptionsNoApplicationFoundHintSubjectsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get tenant => '您的申请';
  @override
  String get landlord => '租户的申请';
}

// Path: prompt.application.applicationSent
class _TranslationsPromptApplicationApplicationSentZh
    implements TranslationsPromptApplicationApplicationSentEn {
  _TranslationsPromptApplicationApplicationSentZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get successfully => '申请已成功发送！';
  @override
  String get sucessDescription => '您可以在您的申请列表中看到此申请';
}

// Path: prompt.labor.delete
class _TranslationsPromptLaborDeleteZh
    implements TranslationsPromptLaborDeleteEn {
  _TranslationsPromptLaborDeleteZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '删除劳工？';
  @override
  String get description => '您确定要删除此劳工吗？';
}

// Path: prompt.property.delete
class _TranslationsPromptPropertyDeleteZh
    implements TranslationsPromptPropertyDeleteEn {
  _TranslationsPromptPropertyDeleteZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '删除物业？';
  @override
  String get message => '您确定要删除此物业吗？';
}

// Path: prompt.rentInvitation.landlordApprove
class _TranslationsPromptRentInvitationLandlordApproveZh
    implements TranslationsPromptRentInvitationLandlordApproveEn {
  _TranslationsPromptRentInvitationLandlordApproveZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '您确定要批准此租金吗？';
  @override
  String get description => '请确保您已审核租户签署的协议。';
}

// Path: prompt.rentInvitation.tenantAccept
class _TranslationsPromptRentInvitationTenantAcceptZh
    implements TranslationsPromptRentInvitationTenantAcceptEn {
  _TranslationsPromptRentInvitationTenantAcceptZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '您确定要接受此邀请吗？';
  @override
  String get description => '请确保您已下载协议PDF文件！';
}

// Path: form.fullName.errors
class _TranslationsFormFullNameErrorsZh
    implements TranslationsFormFullNameErrorsEn {
  _TranslationsFormFullNameErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请输入您的 ${_root.common.fullName}';
}

// Path: form.email.errors
class _TranslationsFormEmailErrorsZh implements TranslationsFormEmailErrorsEn {
  _TranslationsFormEmailErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请输入您的 ${_root.common.email} 地址';
  @override
  String get invalid => '⦸ 无效的电子邮件，请重试';
}

// Path: form.password.errors
class _TranslationsFormPasswordErrorsZh
    implements TranslationsFormPasswordErrorsEn {
  _TranslationsFormPasswordErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请输入您的 ${_root.common.password}';
  @override
  String minLength({required Object count}) => '密码必须至少包含 ${count} 个字符！';
}

// Path: form.confirmPassword.errors
class _TranslationsFormConfirmPasswordErrorsZh
    implements TranslationsFormConfirmPasswordErrorsEn {
  _TranslationsFormConfirmPasswordErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请输入您的 ${_root.common.password}';
  @override
  String get notMatched => '确认密码不匹配！';
}

// Path: form.mobileNumber.errors
class _TranslationsFormMobileNumberErrorsZh
    implements TranslationsFormMobileNumberErrorsEn {
  _TranslationsFormMobileNumberErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请输入您的 ${_root.common.mobileNumber}';
}

// Path: form.address1.errors
class _TranslationsFormAddress1ErrorsZh
    implements TranslationsFormAddress1ErrorsEn {
  _TranslationsFormAddress1ErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请填写 ${_root.form.address1.label}';
}

// Path: form.address2.errors
class _TranslationsFormAddress2ErrorsZh
    implements TranslationsFormAddress2ErrorsEn {
  _TranslationsFormAddress2ErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请填写 ${_root.form.address2.label}';
}

// Path: form.postalCode.errors
class _TranslationsFormPostalCodeErrorsZh
    implements TranslationsFormPostalCodeErrorsEn {
  _TranslationsFormPostalCodeErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请输入您的 ${_root.common.postalCode}';
}

// Path: form.city.errors
class _TranslationsFormCityErrorsZh implements TranslationsFormCityErrorsEn {
  _TranslationsFormCityErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请输入您的 ${_root.common.city} 名称。';
}

// Path: form.state.errors
class _TranslationsFormStateErrorsZh implements TranslationsFormStateErrorsEn {
  _TranslationsFormStateErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请输入您的 ${_root.common.state} 名称。';
}

// Path: form.country.errors
class _TranslationsFormCountryErrorsZh
    implements TranslationsFormCountryErrorsEn {
  _TranslationsFormCountryErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请选择您的 ${_root.common.country}';
}

// Path: form.otp.errors
class _TranslationsFormOtpErrorsZh implements TranslationsFormOtpErrorsEn {
  _TranslationsFormOtpErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请填写验证码。';
  @override
  String get invalid => '请填写正确的验证码。';
}

// Path: form.title.errors
class _TranslationsFormTitleErrorsZh implements TranslationsFormTitleErrorsEn {
  _TranslationsFormTitleErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请填写标题';
}

// Path: form.date.errors
class _TranslationsFormDateErrorsZh implements TranslationsFormDateErrorsEn {
  _TranslationsFormDateErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      '请选择 ${_root.form.date.label(label: label)}';
}

// Path: form.reason.errors
class _TranslationsFormReasonErrorsZh
    implements TranslationsFormReasonErrorsEn {
  _TranslationsFormReasonErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请填写原因';
}

// Path: form.withdrawMethod.errors
class _TranslationsFormWithdrawMethodErrorsZh
    implements TranslationsFormWithdrawMethodErrorsEn {
  _TranslationsFormWithdrawMethodErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请选择 ${_root.common.withdrawMethod}';
}

// Path: form.fileField.errors
class _TranslationsFormFileFieldErrorsZh
    implements TranslationsFormFileFieldErrorsEn {
  _TranslationsFormFileFieldErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) => '请选择 ${label}';
}

// Path: form.note.errors
class _TranslationsFormNoteErrorsZh implements TranslationsFormNoteErrorsEn {
  _TranslationsFormNoteErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String note}) =>
      '请填写 ${_root.form.note.label(note: note)}';
}

// Path: form.gender.errors
class _TranslationsFormGenderErrorsZh
    implements TranslationsFormGenderErrorsEn {
  _TranslationsFormGenderErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请选择 ${_root.common.gender}';
}

// Path: form.anyField.errors
class _TranslationsFormAnyFieldErrorsZh
    implements TranslationsFormAnyFieldErrorsEn {
  _TranslationsFormAnyFieldErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      '请填写 ${_root.form.anyField.label(label: label)}';
  @override
  String get invalid => '请填写有效的 @form.anyField.label';
}

// Path: form.anyDropdown.errors
class _TranslationsFormAnyDropdownErrorsZh
    implements TranslationsFormAnyDropdownErrorsEn {
  _TranslationsFormAnyDropdownErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String required({required String label}) =>
      '请选择 ${_root.form.anyDropdown.label(label: label)}';
  @override
  String get invalid => '请选择有效的 @form.anyDropdown.label';
}

// Path: pages.onboard.onboardData
class _TranslationsPagesOnboardOnboardDataZh
    implements TranslationsPagesOnboardOnboardDataEn {
  _TranslationsPagesOnboardOnboardDataZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOnboardOnboardDataData1Zh data1 =
      _TranslationsPagesOnboardOnboardDataData1Zh._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData2Zh data2 =
      _TranslationsPagesOnboardOnboardDataData2Zh._(_root);
  @override
  late final _TranslationsPagesOnboardOnboardDataData3Zh data3 =
      _TranslationsPagesOnboardOnboardDataData3Zh._(_root);
}

// Path: pages.signIn.extra
class _TranslationsPagesSignInExtraZh
    implements TranslationsPagesSignInExtraEn {
  _TranslationsPagesSignInExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get rememberMe => '记住我';
  @override
  TextSpan signUpNavigator({required InlineSpanBuilder getStarted}) => TextSpan(
    children: [
      const TextSpan(text: '没有帐户？ '),
      getStarted(_root.action.getStarted),
    ],
  );
  @override
  String get forgotPassword => '${_root.common.forgotPassword}？';
}

// Path: pages.otpVerification.extra
class _TranslationsPagesOtpVerificationExtraZh
    implements TranslationsPagesOtpVerificationExtraEn {
  _TranslationsPagesOtpVerificationExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOtpVerificationExtraCodeResendZh codeResend =
      _TranslationsPagesOtpVerificationExtraCodeResendZh._(_root);
}

// Path: pages.resetPassword.extra
class _TranslationsPagesResetPasswordExtraZh
    implements TranslationsPagesResetPasswordExtraEn {
  _TranslationsPagesResetPasswordExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesResetPasswordExtraDialogZh dialog =
      _TranslationsPagesResetPasswordExtraDialogZh._(_root);
}

// Path: pages.signUp.extra
class _TranslationsPagesSignUpExtraZh
    implements TranslationsPagesSignUpExtraEn {
  _TranslationsPagesSignUpExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  TextSpan signInNavigator({required InlineSpanBuilder signIn}) => TextSpan(
    children: [
      const TextSpan(text: '已有帐户？ '),
      signIn(_root.action.signIn),
    ],
  );
}

// Path: pages.welcome.extra
class _TranslationsPagesWelcomeExtraZh
    implements TranslationsPagesWelcomeExtraEn {
  _TranslationsPagesWelcomeExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get landlordTag => '管理您自己的房产';
  @override
  String get tenantTag => '登录到您的租赁帐户';
}

// Path: pages.contactUs.extra
class _TranslationsPagesContactUsExtraZh
    implements TranslationsPagesContactUsExtraEn {
  _TranslationsPagesContactUsExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get messageHint => '留言...';
}

// Path: pages.cancelRenting.form
class _TranslationsPagesCancelRentingFormZh
    implements TranslationsPagesCancelRentingFormEn {
  _TranslationsPagesCancelRentingFormZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesCancelRentingFormReasonZh reason =
      _TranslationsPagesCancelRentingFormReasonZh._(_root);
}

// Path: pages.offlinePayment.form
class _TranslationsPagesOfflinePaymentFormZh
    implements TranslationsPagesOfflinePaymentFormEn {
  _TranslationsPagesOfflinePaymentFormZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsPagesOfflinePaymentFormPaymentNoteZh paymentNote =
      _TranslationsPagesOfflinePaymentFormPaymentNoteZh._(_root);
}

// Path: pages.offlinePayment.extra
class _TranslationsPagesOfflinePaymentExtraZh
    implements TranslationsPagesOfflinePaymentExtraEn {
  _TranslationsPagesOfflinePaymentExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  TextSpan payAmount({required InlineSpan amount}) => TextSpan(
    children: [
      const TextSpan(text: '支付金额： '),
      amount,
    ],
  );
  @override
  String get accountHolderName => '账户持有人姓名';
  @override
  String get accountNumber => '账户号码';
  @override
  String get swiftCode => 'Swift 代码';
  @override
  String get branch => '分行';
  @override
  TextSpan fileTypeHint({
    required InlineSpanBuilder fileType,
    required InlineSpanBuilder fileSize,
  }) => TextSpan(
    children: [
      const TextSpan(text: '仅选择 '),
      fileType('JPG, PNG,PDF'),
      const TextSpan(text: ' 或 '),
      fileType('DOC'),
      const TextSpan(text: ' 格式的文件。文件大小 '),
      fileSize('2000 KB'),
    ],
  );
}

// Path: pages.paymentStatus.success
class _TranslationsPagesPaymentStatusSuccessZh
    implements TranslationsPagesPaymentStatusSuccessEn {
  _TranslationsPagesPaymentStatusSuccessZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => '查看发票';
  @override
  String get title => _root.common.thankYou;
  @override
  String get description => '我们将审核付款并在 24 小时内批准。';
}

// Path: pages.paymentStatus.fail
class _TranslationsPagesPaymentStatusFailZh
    implements TranslationsPagesPaymentStatusFailEn {
  _TranslationsPagesPaymentStatusFailZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get actionButton => '重试';
  @override
  String get title => '糟糕！付款失败';
  @override
  String get description => '由于一些技术错误，您的交易失败。';
}

// Path: pages.propertyDetails.extra
class _TranslationsPagesPropertyDetailsExtraZh
    implements TranslationsPagesPropertyDetailsExtraEn {
  _TranslationsPagesPropertyDetailsExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  TextSpan landlord({required InlineSpan landlordName}) => TextSpan(
    children: [
      TextSpan(text: '${_root.common.landlord}： '),
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
      const TextSpan(text: '特色 '),
      fa('(设施与便利设施)'),
    ],
  );
  @override
  String get selectRentalPeriod => '选择租赁期';
  @override
  String get writeAReview => '+ 写评价';
}

// Path: pages.search.extra
class _TranslationsPagesSearchExtraZh
    implements TranslationsPagesSearchExtraEn {
  _TranslationsPagesSearchExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get hint => '搜索地块、公寓、房间...';
  @override
  String get noRecentSearch => '您没有最近的搜索。';
}

// Path: pages.subscriptionPlan.extra
class _TranslationsPagesSubscriptionPlanExtraZh
    implements TranslationsPagesSubscriptionPlanExtraEn {
  _TranslationsPagesSubscriptionPlanExtraZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get subscriptionPaymentSuccess => '订阅付款成功。\n您现在可以访问订阅的功能。';
}

// Path: pages.onboard.onboardData.data1
class _TranslationsPagesOnboardOnboardDataData1Zh
    implements TranslationsPagesOnboardOnboardDataData1En {
  _TranslationsPagesOnboardOnboardDataData1Zh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '寻找您的房产';
  @override
  String get description => '我们让寻找适合您生活的地方变得轻而易举——无论是房间、公寓还是房屋。';
}

// Path: pages.onboard.onboardData.data2
class _TranslationsPagesOnboardOnboardDataData2Zh
    implements TranslationsPagesOnboardOnboardDataData2En {
  _TranslationsPagesOnboardOnboardDataData2Zh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '城镇中的公寓';
  @override
  String get description =>
      '我们通过在完美的房产消失之前迅速与您匹配，从而节省您的时间，这样您就可以享受您的新家，或者免费列出您自己的房产。';
}

// Path: pages.onboard.onboardData.data3
class _TranslationsPagesOnboardOnboardDataData3Zh
    implements TranslationsPagesOnboardOnboardDataData3En {
  _TranslationsPagesOnboardOnboardDataData3Zh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '舒适的家';
  @override
  String get description => '如果您正在寻找居住的地方，请看看我们出租的房屋。我们有各种各样的房屋供您选择，遍布全国各地。';
}

// Path: pages.otpVerification.extra.codeResend
class _TranslationsPagesOtpVerificationExtraCodeResendZh
    implements TranslationsPagesOtpVerificationExtraCodeResendEn {
  _TranslationsPagesOtpVerificationExtraCodeResendZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String codeSendIn({required Object minutes, required Object seconds}) =>
      '验证码将在 ${minutes}:${seconds} 内发送';
  @override
  TextSpan resendCode({required InlineSpanBuilder resendCode}) => TextSpan(
    children: [
      const TextSpan(text: ' '),
      resendCode('重新发送验证码'),
      const TextSpan(text: ' '),
    ],
  );
}

// Path: pages.resetPassword.extra.dialog
class _TranslationsPagesResetPasswordExtraDialogZh
    implements TranslationsPagesResetPasswordExtraDialogEn {
  _TranslationsPagesResetPasswordExtraDialogZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get title => '更改成功！';
  @override
  String get subtitle => '使用您的新密码登录。\n正在将您重定向到登录...';
}

// Path: pages.cancelRenting.form.reason
class _TranslationsPagesCancelRentingFormReasonZh
    implements TranslationsPagesCancelRentingFormReasonEn {
  _TranslationsPagesCancelRentingFormReasonZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get hint => '填写原因';
  @override
  late final _TranslationsPagesCancelRentingFormReasonErrorsZh errors =
      _TranslationsPagesCancelRentingFormReasonErrorsZh._(_root);
}

// Path: pages.offlinePayment.form.paymentNote
class _TranslationsPagesOfflinePaymentFormPaymentNoteZh
    implements TranslationsPagesOfflinePaymentFormPaymentNoteEn {
  _TranslationsPagesOfflinePaymentFormPaymentNoteZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get label => '付款备注（${_root.common.optional}）';
  @override
  String get hint => '输入一些文字...';
}

// Path: pages.cancelRenting.form.reason.errors
class _TranslationsPagesCancelRentingFormReasonErrorsZh
    implements TranslationsPagesCancelRentingFormReasonErrorsEn {
  _TranslationsPagesCancelRentingFormReasonErrorsZh._(this._root);

  final TranslationsZh _root; // ignore: unused_field

  // Translations
  @override
  String get required => '请填写取消租赁的原因';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZh {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'common.profile':
        return '个人资料';
      case 'common.language':
        return '语言';
      case 'common.subscriptionPlan':
        return '订阅计划';
      case 'common.contactUs':
        return '联系我们';
      case 'common.termsAndConditions':
        return '条款与条件';
      case 'common.aboutUs':
        return '关于我们';
      case 'common.logout':
        return '登出';
      case 'common.editProfile':
        return '编辑个人资料';
      case 'common.fullName':
        return '全名';
      case 'common.email':
        return '电子邮件';
      case 'common.mobileNumber':
        return '手机号码';
      case 'common.address':
        return '地址';
      case 'common.postalCode':
        return '邮政编码';
      case 'common.city':
        return '城市';
      case 'common.country':
        return '国家';
      case 'common.state':
        return '省份';
      case 'common.password':
        return '密码';
      case 'common.forgotPassword':
        return '忘记密码';
      case 'common.tenant':
        return '租户';
      case 'common.landlord':
        return '房东';
      case 'common.cancelRenting':
        return '取消租赁';
      case 'common.startDate':
        return '开始日期';
      case 'common.endDate':
        return '结束日期';
      case 'common.fromDate':
        return '起始日期';
      case 'common.toDate':
        return '结束日期';
      case 'common.online':
        return '在线';
      case 'common.bankList':
        return '银行列表';
      case 'common.withdrawMethod':
        return '提款方式';
      case 'common.uploadPaymentReceipt':
        return '上传付款凭证';
      case 'common.offlinePaymentNote':
        return ({
          required InlineSpanBuilder note,
          required InlineSpanBuilder duraion,
        }) => TextSpan(
          children: [
            const TextSpan(text: '注意： '),
            note('付款需要管理员在'),
            const TextSpan(text: ' '),
            duraion('24~48 小时内'),
            const TextSpan(text: ' '),
            note('手动审批。'),
          ],
        );
      case 'common.reviews':
        return '评价';
      case 'common.description':
        return '描述';
      case 'common.about':
        return '关于';
      case 'common.propertyTypes':
        return '物业类型';
      case 'common.features':
        return '特色';
      case 'common.floorPlans':
        return '楼层平面图';
      case 'common.buildingDetails':
        return '建筑详情';
      case 'common.buildingName':
        return '建筑名称';
      case 'common.propertyAddress':
        return '物业地址';
      case 'common.completionYear':
        return '竣工年份';
      case 'common.lotNumber':
        return '地段号码';
      case 'common.residentialType':
        return '住宅类型';
      case 'common.furnishings':
        return '家具';
      case 'common.floorRange':
        return '楼层范围';
      case 'common.bedrooms':
        return '卧室';
      case 'common.bathrooms':
        return '浴室';
      case 'common.propertySize':
        return '物业面积';
      case 'common.rentalPeriod':
        return '租赁期限';
      case 'common.securityDeposit':
        return '保证金';
      case 'common.utilityBill':
        return '水电费';
      case 'common.facilities':
        return '设施';
      case 'common.amenities':
        return '便利设施';
      case 'common.expiringReason':
        return '到期原因';
      case 'common.tenantDetails':
        return '租户详情';
      case 'common.typeOfTenant':
        return '租户类型';
      case 'common.tenantName':
        return '租户姓名';
      case 'common.nidPassport':
        return 'NID/护照';
      case 'common.nidPassportId':
        return '${_root.common.nidPassport} ID';
      case 'common.tenantId':
        return '租户ID';
      case 'common.dateOfBirth':
        return '出生日期';
      case 'common.gender':
        return '性别';
      case 'common.nominee':
        return '被提名人';
      case 'common.name':
        return '姓名';
      case 'common.optional':
        return '可选的';
      case 'common.nomineeName':
        return '${_root.common.nominee} ${_root.common.name}';
      case 'common.nomineeEmail':
        return '${_root.common.nominee} ${_root.common.email}';
      case 'common.nomineeMobile.short':
        return '${_root.common.nominee} 手机号码';
      case 'common.nomineeMobile.full':
        return '${_root.common.nominee} ${_root.common.mobileNumber}';
      case 'common.emergencyContact':
        return '紧急联络人';
      case 'common.relation':
        return '关系';
      case 'common.relationWith':
        return '${_root.common.relation} 与';
      case 'common.relationWithYou':
        return '${_root.common.relationWith} 您';
      case 'common.company':
        return '公司';
      case 'common.companyName':
        return '${_root.common.company} ${_root.common.name}';
      case 'common.companySSMNo':
        return '${_root.common.company} SSM No.';
      case 'common.workplace':
        return '工作地点';
      case 'common.officePhoneNo':
        return '办公室电话号码';
      case 'common.officeMobileNo':
        return '办公室手机号码';
      case 'common.vehicle':
        return '车辆';
      case 'common.vehiclesInfo.plain':
        return '车辆信息';
      case 'common.vehiclesInfo.optional':
        return '车辆信息 (${_root.common.optional})';
      case 'common.vehiclesType':
        return '${_root.common.vehicle} 类型';
      case 'common.vehicleRegistrationNo.normal':
        return '车辆注册号码';
      case 'common.vehicleRegistrationNo.short':
        return '注册号码';
      case 'common.vehicleRegistrationNo.alt':
        return '车牌号码';
      case 'common.vehicleBrand':
        return '${_root.common.vehicle} 品牌';
      case 'common.rentProperty':
        return '出租物业';
      case 'common.propertyDetails':
        return '物业详情';
      case 'common.propertyId':
        return '物业ID';
      case 'common.propertyType':
        return '物业类型';
      case 'common.propertyName':
        return '物业名称';
      case 'common.paymentDetails':
        return '付款详情';
      case 'common.monthlyRent':
        return '月租';
      case 'common.thisMonthPayment':
        return '本月付款';
      case 'common.totalPaidRent':
        return '已付租金总额';
      case 'common.dueRent':
        return '未付租金';
      case 'common.rentStartDate':
        return '租金 ${_root.common.startDate}';
      case 'common.rentEndDate':
        return '租金 ${_root.common.endDate}';
      case 'common.status':
        return '状态';
      case 'common.rentAgreementPdf':
        return '租赁协议PDF';
      case 'common.noFile':
        return '无文件';
      case 'common.tenantImageOp':
        return '租户图像 ${_root.common.optional}';
      case 'common.addNewVechicle':
        return '添加新车辆';
      case 'common.uploadNidPassport':
        return '上传 NID/护照';
      case 'common.nidPassportUploadNote':
        return '仅接受文件类型图像。文件限制高达 2.5 MB。';
      case 'common.search':
        return '搜索';
      case 'common.sortBy':
        return '排序方式';
      case 'common.subscription':
        return '订阅';
      case 'common.downloading':
        return '下载中...';
      case 'common.downloadSuccess':
        return '文件下载成功！';
      case 'common.addPropertyBannerTitle':
        return '想要出租您的物业？';
      case 'common.application':
        return '申请';
      case 'common.tenantHasPaidDeposit':
        return '租户已支付押金。';
      case 'common.askProcessingRentApplication':
        return '您确定要处理此租金物业请求吗？';
      case 'common.dateAndTime':
        return '日期和时间';
      case 'common.applicationDetails':
        return '申请详情';
      case 'common.depositStatus':
        return '押金状态';
      case 'common.uploadRentAgreement':
        return '上传租赁协议';
      case 'common.uploadFilePDF':
        return '上传文件（PDF）';
      case 'common.askSelectRentAgreement':
        return '请选择协议文件。';
      case 'common.landlordRentAgreementPDF':
        return '房东租赁协议PDF';
      case 'common.tenantRentAgreementPDF':
        return '租户租赁协议PDF';
      case 'common.landlordApplicationApproveNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '注意： '),
            note('仅在租户支付押金后才批准申请。'),
          ],
        );
      case 'common.reasonOfRejection':
        return '拒绝原因';
      case 'common.youveRejectedThisApplication':
        return '您已拒绝此申请';
      case 'common.landlordDetails':
        return '房东详情';
      case 'common.landlordName':
        return '房东姓名';
      case 'common.downloadRentAgreement':
        return '下载租赁协议';
      case 'common.acceptTermsConditions':
        return ({required InlineSpanBuilder toc}) => TextSpan(
          children: [
            const TextSpan(text: '接受 '),
            toc('条款与条件'),
          ],
        );
      case 'common.tenantAgreementSignNote1':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '注意： '),
            note('请下载并阅读协议。请通过 WhatsApp 或电子邮件将签署的协议发送给房东。'),
          ],
        );
      case 'common.tenantAgreementSignNote2':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '注意： '),
            note('当租户支付保证金、水电费和一个月的预付租金时，房东批准申请。'),
          ],
        );
      case 'common.completeRentAgreementPdf':
        return ({required InlineSpanBuilder complete}) => TextSpan(
          children: [
            const TextSpan(text: '租赁协议 (PDF) '),
            complete('完整协议'),
          ],
        );
      case 'common.tenantApplicationDepositNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '注意： '),
            note('当租户支付保证金、水电费和一个月的预付租金时，房东批准申请。'),
          ],
        );
      case 'common.whatsapp':
        return 'WhatsApp';
      case 'common.applicationList':
        return '申请列表';
      case 'common.viewDetails':
        return '查看详情';
      case 'common.searchHint':
        return '${_root.common.search}...';
      case 'common.home':
        return '首页';
      case 'common.dashboard':
        return '仪表板';
      case 'common.tenants':
        return '租户';
      case 'common.maintenance':
        return '维护';
      case 'common.maintenanceList':
        return '维护列表';
      case 'common.maintenanceReport':
        return '维护报告';
      case 'common.labor':
        return '劳工';
      case 'common.applications':
        return '申请';
      case 'common.rentInvitation':
        return '租金邀请';
      case 'common.payment':
        return '付款';
      case 'common.rentPayment':
        return '租金支付';
      case 'common.depositUtilityPayment':
        return '押金和水电费支付';
      case 'common.refundRequest':
        return '退款请求';
      case 'common.withdrawRequest':
        return '提款请求';
      case 'common.myProperty':
        return '我的物业';
      case 'common.myRent':
        return '我的租金';
      case 'common.wishlist':
        return '收藏夹';
      case 'common.properties':
        return '物业';
      case 'common.allProperties':
        return '所有物业';
      case 'common.totalPropery':
        return '物业总数';
      case 'common.occupied':
        return '已占用';
      case 'common.vacant':
        return '空置';
      case 'common.accounting':
        return '会计';
      case 'common.totalIncome':
        return '总收入';
      case 'common.totalExpense':
        return '总支出';
      case 'common.currentBalance':
        return '当前余额';
      case 'common.totalWithdrawal':
        return '总提款';
      case 'common.totalProperties':
        return '物业总数';
      case 'common.totalTenant':
        return '租户总数';
      case 'common.totalRentPaid':
        return '已付租金总额';
      case 'common.totalRentDue':
        return '未付租金总额';
      case 'common.totalApplication':
        return '申请总数';
      case 'common.pendingApplication':
        return '待处理申请';
      case 'common.processingApplication':
        return '处理中申请';
      case 'common.approveApplication':
        return '批准申请';
      case 'common.rejectApplication':
        return '拒绝申请';
      case 'common.maintenanceCost':
        return '维护成本';
      case 'common.transactionSummary':
        return '交易摘要';
      case 'common.maintenanceRequest':
        return '维护请求';
      case 'common.notifications':
        return '通知';
      case 'common.myProperties':
        return '我的物业';
      case 'common.recommendationProperties':
        return '推荐物业';
      case 'common.laborList':
        return '劳工列表';
      case 'common.addLabor':
        return '添加劳工';
      case 'common.laborDetails':
        return '劳工详情';
      case 'common.laborSalary':
        return '劳工工资';
      case 'common.editLabor':
        return '编辑劳工';
      case 'common.addNewLabor':
        return '添加新劳工';
      case 'common.enterAmount':
        return '输入金额';
      case 'common.maintenanceDetails':
        return '维护详情';
      case 'common.laborName':
        return '劳工姓名';
      case 'common.comment':
        return '评论';
      case 'common.image':
        return '图像';
      case 'common.complete':
        return '完成';
      case 'common.details':
        return '详情';
      case 'common.title':
        return '标题';
      case 'common.date':
        return '日期';
      case 'common.reason':
        return '原因';
      case 'common.edit':
        return '编辑';
      case 'common.property':
        return '物业';
      case 'common.completeYourProfile':
        return '完善您的个人资料';
      case 'common.profileImage':
        return '头像';
      case 'common.imagePickHint':
        return '仅限 JPEG 和 PNG 图像，最大尺寸为 120x120 像素。';
      case 'common.invoiceId':
        return '发票ID';
      case 'common.depositAmount':
        return '押金金额';
      case 'common.landlordPhone':
        return '房东电话';
      case 'common.rentalAdvance':
        return '租金（预付）';
      case 'common.totalAmount':
        return '总金额';
      case 'common.rentalAmount':
        return '租金金额';
      case 'common.adminCharge':
        return '管理费';
      case 'common.editAccount':
        return '编辑帐户';
      case 'common.addNewAccount':
        return '添加新帐户';
      case 'common.transactionId':
        return '交易ID';
      case 'common.transactionType':
        return '交易类型';
      case 'common.requestDate':
        return '请求日期';
      case 'common.amount':
        return '金额';
      case 'common.fee':
        return '费用';
      case 'common.paymentStatus':
        return '付款状态';
      case 'common.generatedTime':
        return '生成时间';
      case 'common.systemGeneratedReportHint':
        return ({required InlineSpan appName}) => TextSpan(
          children: [
            const TextSpan(text: '这是 '),
            appName,
            const TextSpan(text: ' 的系统生成报告'),
          ],
        );
      case 'common.withdrawHistory':
        return '提款历史';
      case 'common.history':
        return '历史记录';
      case 'common.withdrawAmount':
        return '提款金额';
      case 'common.availableBalance':
        return '可用余额';
      case 'common.withdrawCharge':
        return '提款费用';
      case 'common.paymentMethod':
        return '付款方式';
      case 'common.requestSendSuccess':
        return '请求发送成功！';
      case 'common.paymentReceiptSubmitSuccess':
        return '付款凭证提交成功。';
      case 'common.refundReason':
        return '退款原因';
      case 'common.note':
        return '注意';
      case 'common.refundReceiveSuccess':
        return '退款成功收到。';
      case 'common.downloadPaymentReceipt':
        return '下载付款凭证';
      case 'common.invoice':
        return '发票';
      case 'common.selectPropertyToSeeInvoice':
        return '选择物业以查看发票号码...';
      case 'common.bankAccName':
        return '银行账户名称';
      case 'common.bankName':
        return '银行名称';
      case 'common.bankAccNum':
        return '银行账号';
      case 'common.thankYou':
        return '谢谢您！';
      case 'common.basicInfo':
        return '基本信息';
      case 'common.descriptionPricing':
        return '描述和定价';
      case 'common.contact':
        return '联系方式';
      case 'common.photos':
        return '照片';
      case 'common.successfullySubmitted':
        return '成功提交！';
      case 'common.editProperty':
        return '编辑物业';
      case 'common.addNewProperty':
        return '添加新物业';
      case 'common.propertyManageRequestSuccess':
        return '您的广告已提交审核。';
      case 'common.postAnotherProperty':
        return '发布其他物业';
      case 'common.browseYourProperty':
        return '浏览您的物业';
      case 'common.stepIndicator':
        return ({required InlineSpan step, required InlineSpan totalSteps}) =>
            TextSpan(
              children: [
                const TextSpan(text: '步骤 '),
                step,
                const TextSpan(text: ' / '),
                totalSteps,
              ],
            );
      case 'common.whatWouldYouLikeToPost':
        return '您想发布什么？';
      case 'common.category':
        return '类别';
      case 'common.invalidCategory':
        return '无效类别';
      case 'common.unitNumber':
        return '单位号码';
      case 'common.sqft':
        return '平方英尺';
      case 'common.propertySizeMustBeGreaterThan0':
        return '物业面积应大于零';
      case 'common.whatAreTheFacility':
        return '有哪些设施？';
      case 'common.whatAreTheAmenity':
        return '有哪些便利设施？';
      case 'common.parkingLot':
        return '停车场';
      case 'common.houseType':
        return '房屋类型';
      case 'common.value':
        return '价值';
      case 'common.unitLotSize':
        return '单位/地块面积';
      case 'common.landSize':
        return '土地面积';
      case 'common.acres':
        return '英亩';
      case 'common.roomSize':
        return '房间大小';
      case 'common.askTenantPreference':
        return '您的租户偏好是什么？';
      case 'common.couple':
        return '情侣';
      case 'common.describeTheProperty':
        return ({required String propertyType}) => '描述${propertyType}';
      case 'common.adTitle':
        return '广告标题';
      case 'common.minimumRentalPeriod':
        return '最短租赁期';
      case 'common.whatsappNumber':
        return '${_root.common.whatsapp} 号码';
      case 'common.hideOrDisplayEmail':
        return '隐藏或显示电子邮件地址';
      case 'common.thankYouForPostingProperty':
        return ({required String appName}) => '感谢您在 ${appName} 上发布！';
      case 'common.propertyList':
        return '物业列表';
      case 'common.newInviteRent':
        return '新的租赁邀请';
      case 'common.rentAgreement':
        return '租赁协议';
      case 'common.rentDetails':
        return '租金详情';
      case 'common.landlordRentInvitationPendingNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '注意： '),
            note('请等待租户接受邀请。'),
          ],
        );
      case 'common.rent':
        return '租金';
      case 'common.editTenant':
        return '编辑租户';
      case 'common.addNewTenant':
        return '添加新租户';
      case 'common.shareInstallLink':
        return '分享安装链接';
      case 'common.tenantList':
        return '租户列表';
      case 'common.editMaintenanceRequest':
        return '编辑维护请求';
      case 'common.addNewMaintenance':
        return '添加新维护';
      case 'common.landlordId':
        return '房东ID';
      case 'common.tenantAgrementUnderReviewNote':
        return ({required InlineSpanBuilder note}) => TextSpan(
          children: [
            const TextSpan(text: '注意 '),
            note('您的协议正在审核中。请等待房东批准您的租金。'),
          ],
        );
      case 'common.editReview':
        return '编辑评价';
      case 'common.writeAReview':
        return '写评价';
      case 'common.selectRating':
        return '选择评分';
      case 'common.enterYourOpinion':
        return '输入您的意见';
      case 'common.askToEnterReviewMsg':
        return '请输入评价信息';
      case 'common.pressBackAgainToExit':
        return '再次按返回键退出。';
      case 'common.selectPaymentMethod':
        return '选择付款方式';
      case 'common.filter':
        return '筛选';
      case 'common.perMonth':
        return '/月';
      case 'common.searchHintWithAppName':
        return ({required String appName}) => '在 ${appName} 中搜索任何内容...';
      case 'exceptions.somethingWentWrong':
        return '发生了一些错误，请重试';
      case 'exceptions.noNidPassport':
        return '未提供 NID/护照图像。';
      case 'exceptions.noRentPropertyFound':
        return '此租户未找到出租物业。';
      case 'exceptions.noPropertyFoundWithKeyWord':
        return '未找到物业！\n请尝试使用其他关键字';
      case 'exceptions.noSubscriptionFoundRefreshPage':
        return '未找到订阅计划！\n请刷新页面并重试。';
      case 'exceptions.invalidApiDataRefreshPage':
        return ({required String dataType}) => '无效的 ${dataType} 信息！请刷新页面并重试。';
      case 'exceptions.invalidDownloadUrl':
        return '无效的下载链接！';
      case 'exceptions.failedToSaveFile':
        return ({required String error}) => '保存文件失败！${error}';
      case 'exceptions.errorOpeningFile':
        return ({required String error}) => '打开文件出错！${error}';
      case 'exceptions.noVehicleInfoProvided':
        return '未提供车辆信息。';
      case 'exceptions.yourApplicationRejected':
        return '您的申请已被拒绝';
      case 'exceptions.noApplicationFoundHint.template':
        return ({required String subject}) =>
            '未找到申请！\n${subject} 将在此处显示（如果可用）。';
      case 'exceptions.noApplicationFoundHint.subjects.tenant':
        return '您的申请';
      case 'exceptions.noApplicationFoundHint.subjects.landlord':
        return '租户的申请';
      case 'exceptions.noPropertyFoundHint.landlordHome':
        return '未找到物业！\n请尝试添加物业以在此处查看。';
      case 'exceptions.noPropertyFoundHint.tenantRecommended':
        return '未找到推荐物业\n请稍后重试。';
      case 'exceptions.noPropertyFoundHint.tenantAllProperty':
        return '物业不可用\n请稍后重试。';
      case 'exceptions.noImageProvided':
        return '未提供图像';
      case 'exceptions.noStatusMaintenantFound.landlord':
        return ({required Object status}) => '未找到 ${status} 维护记录。';
      case 'exceptions.noStatusMaintenantFound.tenant':
        return '未找到维护记录！您可以创建维护请求以在此处查看。';
      case 'exceptions.noDepositFound':
        return '未找到保证金！\n您可以在可用时查看保证金';
      case 'exceptions.noRentPaymentFound':
        return '未找到租金付款！\n您可以在可用时查看租金付款';
      case 'exceptions.transactionSummaryApiException':
        return '获取交易摘要失败。';
      case 'exceptions.noWithdrawRequestFound':
        return '未找到请求！\n请尝试创建提款请求以在此处查看。';
      case 'exceptions.withdrawRequestNotApproved':
        return '此提款请求未被批准！';
      case 'exceptions.nonZeroError':
        return '请输入大于零的有效金额。';
      case 'exceptions.minAmountError':
        return ({required String minValue}) => '金额必须至少为 ${minValue}。';
      case 'exceptions.maxAmountError':
        return ({required String maxValue}) => '金额不得超过 ${maxValue}。';
      case 'exceptions.selectPaymentMethodHint':
        return '请先选择付款方式。';
      case 'exceptions.noStatusRefundReqFound.landlord':
        return ({required Object status}) =>
            '未找到 ${status} 退款请求！\n您可以在可用时在此处查看退款请求。';
      case 'exceptions.noStatusRefundReqFound.tenant':
        return '未找到退款请求！\n您可以创建退款请求以在此处查看。';
      case 'exceptions.refundRequestHint.inTenantList':
        return '租户在收到退款后将批准退款';
      case 'exceptions.refundRequestHint.tenantReqSuccess':
        return '我们将审核退款请求并在 24 小时内批准。';
      case 'exceptions.oneToTenRequiredField':
        return ({required String value}) => '请选择 ${value} 的数量';
      case 'exceptions.invalidDateRange':
        return '无效的日期范围。';
      case 'exceptions.valueMustBeGreaterThanZero':
        return ({required String value}) => '${value} 必须大于零。';
      case 'exceptions.editProperty.rentalChange':
        return '租赁物业正在更改。它必须仅对下个月的租金支付有效（生效）。';
      case 'exceptions.editProperty.deleteOnRent':
        return '您的物业已被租户租用。在移除租户之前无法删除它';
      case 'exceptions.editProperty.alreayRented':
        return '此物业已被出租。请稍后重试。\n或者您可以联系房东了解更多信息。';
      case 'exceptions.rentInvitation.landlordNoRentInvitation':
        return '未找到租赁邀请！\n请尝试创建租赁邀请以在此处查看。';
      case 'exceptions.rentInvitation.tenantNoRentInvitation':
        return '未找到租赁邀请！\n您可以在可用时在此处查看租赁邀请。';
      case 'exceptions.notenantFoundList':
        return '没有租户！\n请尝试添加租户以在此处查看。';
      case 'exceptions.noFeaturesProvided':
        return '未提供任何功能。';
      case 'exceptions.noNotificationFound':
        return '没有可用的通知。\n您可以在可用时在此处查看您的通知。';
      case 'prompt.logout.title':
        return _root.common.logout;
      case 'prompt.logout.message':
        return '您确定要登出吗？';
      case 'prompt.application.rejectTitle':
        return '您为什么要拒绝此申请？';
      case 'prompt.application.applicationSent.successfully':
        return '申请已成功发送！';
      case 'prompt.application.applicationSent.sucessDescription':
        return '您可以在您的申请列表中看到此申请';
      case 'prompt.labor.delete.title':
        return '删除劳工？';
      case 'prompt.labor.delete.description':
        return '您确定要删除此劳工吗？';
      case 'prompt.maintenanceRequest.rejectTitle':
        return '您为什么拒绝此请求？';
      case 'prompt.maintenanceRequest.processTitle':
        return '您确定要处理此维护请求吗？';
      case 'prompt.maintenanceRequest.completeTitle':
        return '工作完成了吗？';
      case 'prompt.withdrawMethod.deleteTitle':
        return '删除提款方式？';
      case 'prompt.withdrawMethod.deleteDescription':
        return '您确定要删除此提款方式吗？';
      case 'prompt.unsavedChanges.title':
        return '您确定要返回吗？';
      case 'prompt.unsavedChanges.message':
        return '已更改的字段将不会被保存！';
      case 'prompt.property.delete.title':
        return '删除物业？';
      case 'prompt.property.delete.message':
        return '您确定要删除此物业吗？';
      case 'prompt.rentInvitation.landlordApprove.title':
        return '您确定要批准此租金吗？';
      case 'prompt.rentInvitation.landlordApprove.description':
        return '请确保您已审核租户签署的协议。';
      case 'prompt.rentInvitation.tenantAccept.title':
        return '您确定要接受此邀请吗？';
      case 'prompt.rentInvitation.tenantAccept.description':
        return '请确保您已下载协议PDF文件！';
      case 'prompt.sessionExpired.title':
        return '会话已过期';
      case 'prompt.sessionExpired.message':
        return '您的会话已过期。请重新登录';
      case 'prompt.sessionExpired.action':
        return '登录';
      case 'prompt.noInternet.title':
        return '无网络连接';
      case 'prompt.noInternet.message':
        return '请检查您的Wi-Fi移动网络连接并重试';
      case 'prompt.noInternet.action':
        return '重试';
      case 'prompt.permissionHandler.title':
        return '需要权限！';
      case 'prompt.permissionHandler.message':
        return '您需要在应用设置中授予权限。您现在要打开设置吗？';
      case 'prompt.imagePicker.title':
        return '选择选项';
      case 'prompt.imagePicker.gallery':
        return '相册';
      case 'prompt.imagePicker.camera':
        return '相机';
      case 'prompt.verificationDialog.title':
        return '验证您的电子邮件';
      case 'prompt.verificationDialog.message':
        return '我们已发送一封包含验证码的电子邮件';
      case 'prompt.verificationDialog.messageWithEmail':
        return ({required String? email}) =>
            '${_root.prompt.verificationDialog.message} 发送到 ${email}';
      case 'prompt.notification.clearTitle':
        return '清除通知？';
      case 'prompt.notification.clearMessage':
        return '您确定要清除所有通知吗？';
      case 'form.fullName.label':
        return _root.common.fullName;
      case 'form.fullName.hint':
        return '输入 ${_root.common.fullName}';
      case 'form.fullName.errors.required':
        return '请输入您的 ${_root.common.fullName}';
      case 'form.email.label':
        return _root.common.email;
      case 'form.email.hint':
        return '输入您的 ${_root.common.email}';
      case 'form.email.errors.required':
        return '请输入您的 ${_root.common.email} 地址';
      case 'form.email.errors.invalid':
        return '⦸ 无效的电子邮件，请重试';
      case 'form.password.label':
        return _root.common.password;
      case 'form.password.hint':
        return '* * * * * * * *';
      case 'form.password.errors.required':
        return '请输入您的 ${_root.common.password}';
      case 'form.password.errors.minLength':
        return ({required Object count}) => '密码必须至少包含 ${count} 个字符！';
      case 'form.confirmPassword.label':
        return '确认 ${_root.common.password}';
      case 'form.confirmPassword.hint':
        return '* * * * * * * *';
      case 'form.confirmPassword.errors.required':
        return '请输入您的 ${_root.common.password}';
      case 'form.confirmPassword.errors.notMatched':
        return '确认密码不匹配！';
      case 'form.mobileNumber.label':
        return _root.common.mobileNumber;
      case 'form.mobileNumber.hint':
        return '(+60) 555-0123';
      case 'form.mobileNumber.errors.required':
        return '请输入您的 ${_root.common.mobileNumber}';
      case 'form.address1.label':
        return '${_root.common.address} 1';
      case 'form.address1.hint':
        return '门牌号和街道名称';
      case 'form.address1.errors.required':
        return '请填写 ${_root.form.address1.label}';
      case 'form.address2.label':
        return '${_root.common.address} 2';
      case 'form.address2.hint':
        return '公寓、套房、单元等';
      case 'form.address2.errors.required':
        return '请填写 ${_root.form.address2.label}';
      case 'form.postalCode.label':
        return _root.common.postalCode;
      case 'form.postalCode.hint':
        return '输入 ${_root.common.postalCode}';
      case 'form.postalCode.errors.required':
        return '请输入您的 ${_root.common.postalCode}';
      case 'form.city.label':
        return _root.common.city;
      case 'form.city.hint':
        return '输入 ${_root.common.city} 名称。';
      case 'form.city.errors.required':
        return '请输入您的 ${_root.common.city} 名称。';
      case 'form.state.label':
        return _root.common.state;
      case 'form.state.hint':
        return '输入 ${_root.common.state} 名称。';
      case 'form.state.errors.required':
        return '请输入您的 ${_root.common.state} 名称。';
      case 'form.country.label':
        return _root.common.country;
      case 'form.country.hint':
        return '选择 ${_root.common.country}。';
      case 'form.country.errors.required':
        return '请选择您的 ${_root.common.country}';
      case 'form.otp.errors.required':
        return '请填写验证码。';
      case 'form.otp.errors.invalid':
        return '请填写正确的验证码。';
      case 'form.title.label':
        return '标题';
      case 'form.title.hint':
        return '输入标题';
      case 'form.title.errors.required':
        return '请填写标题';
      case 'form.date.label':
        return ({required String label}) => '${label}';
      case 'form.date.hint':
        return ({required String label}) =>
            '选择 ${_root.form.date.label(label: label)}';
      case 'form.date.errors.required':
        return ({required String label}) =>
            '请选择 ${_root.form.date.label(label: label)}';
      case 'form.reason.label':
        return '原因';
      case 'form.reason.hint':
        return '输入原因';
      case 'form.reason.errors.required':
        return '请填写原因';
      case 'form.withdrawMethod.label':
        return _root.common.withdrawMethod;
      case 'form.withdrawMethod.hint':
        return '选择 ${_root.common.withdrawMethod}';
      case 'form.withdrawMethod.errors.required':
        return '请选择 ${_root.common.withdrawMethod}';
      case 'form.fileField.label':
        return ({required String label}) => '${label}';
      case 'form.fileField.hint':
        return ({required String label}) => '上传 ${label}';
      case 'form.fileField.errors.required':
        return ({required String label}) => '请选择 ${label}';
      case 'form.note.label':
        return ({required String note}) => '${note}';
      case 'form.note.hint':
        return ({required String note}) =>
            '输入 ${_root.form.note.label(note: note)}';
      case 'form.note.errors.required':
        return ({required String note}) =>
            '请填写 ${_root.form.note.label(note: note)}';
      case 'form.gender.label':
        return _root.common.gender;
      case 'form.gender.hint':
        return '选择 ${_root.common.gender}';
      case 'form.gender.errors.required':
        return '请选择 ${_root.common.gender}';
      case 'form.anyField.label':
        return ({required String label}) => '${label}';
      case 'form.anyField.hint':
        return ({required String label}) =>
            '输入 ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.required':
        return ({required String label}) =>
            '请填写 ${_root.form.anyField.label(label: label)}';
      case 'form.anyField.errors.invalid':
        return '请填写有效的 @form.anyField.label';
      case 'form.anyDropdown.label':
        return ({required String label}) => '${label}';
      case 'form.anyDropdown.hint':
        return ({required String label}) =>
            '选择 ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.required':
        return ({required String label}) =>
            '请选择 ${_root.form.anyDropdown.label(label: label)}';
      case 'form.anyDropdown.errors.invalid':
        return '请选择有效的 @form.anyDropdown.label';
      case 'action.next':
        return '下一步';
      case 'action.getStarted':
        return '开始';
      case 'action.skip':
        return '跳过';
      case 'action.select':
        return '选择';
      case 'action.save':
        return '保存';
      case 'action.signIn':
        return '登录';
      case 'action.signUp':
        return '注册';
      case 'action.kContinue':
        return '继续';
      case 'action.clearAll':
        return '全部清除';
      case 'action.cancelRenting':
        return _root.common.cancelRenting;
      case 'action.send':
        return '发送';
      case 'action.pay':
        return '支付';
      case 'action.remove':
        return '移除';
      case 'action.goBack':
        return '返回';
      case 'action.buyNow':
        return '立即购买';
      case 'action.no':
        return '否';
      case 'action.open':
        return '打开';
      case 'action.addProperty':
        return '添加物业';
      case 'action.process':
        return '处理';
      case 'action.approve':
        return '批准';
      case 'action.reject':
        return '拒绝';
      case 'action.viewRent':
        return '查看租金';
      case 'action.openNavigationMenu':
        return '打开导航菜单';
      case 'action.seeAll':
        return '查看全部';
      case 'action.update':
        return '更新';
      case 'action.printTransaction':
        return '打印交易';
      case 'action.payoutRequest':
        return '支付请求';
      case 'action.addNew':
        return '+ 添加新项目';
      case 'action.sendRequest':
        return '发送请求';
      case 'action.print':
        return '打印';
      case 'action.requestForRefund':
        return '申请退款';
      case 'action.previous':
        return '上一页';
      case 'action.delete':
        return '删除';
      case 'action.applyProperty':
        return '申请物业';
      case 'action.viewApplication':
        return '查看申请';
      case 'action.inviteTenant':
        return '邀请租户';
      case 'action.inviteRent':
        return '邀请出租';
      case 'action.cancel':
        return '取消';
      case 'action.accept':
        return '接受';
      case 'action.submit':
        return '提交';
      case 'action.yes':
        return '是';
      case 'action.okay':
        return '好的';
      case 'action.confirm':
        return '确认';
      case 'action.apply':
        return '应用';
      case 'action.reset':
        return '重置';
      case 'action.retry':
        return '重试';
      case 'action.viewAll':
        return '查看全部';
      case 'pages.language.appbarTitle':
        return '${_root.action.select} ${_root.common.language}';
      case 'pages.onboard.onboardData.data1.title':
        return '寻找您的房产';
      case 'pages.onboard.onboardData.data1.description':
        return '我们让寻找适合您生活的地方变得轻而易举——无论是房间、公寓还是房屋。';
      case 'pages.onboard.onboardData.data2.title':
        return '城镇中的公寓';
      case 'pages.onboard.onboardData.data2.description':
        return '我们通过在完美的房产消失之前迅速与您匹配，从而节省您的时间，这样您就可以享受您的新家，或者免费列出您自己的房产。';
      case 'pages.onboard.onboardData.data3.title':
        return '舒适的家';
      case 'pages.onboard.onboardData.data3.description':
        return '如果您正在寻找居住的地方，请看看我们出租的房屋。我们有各种各样的房屋供您选择，遍布全国各地。';
      case 'pages.signIn.title':
        return '欢迎回来';
      case 'pages.signIn.subtitle':
        return '立即登录，开始一段美妙的旅程。';
      case 'pages.signIn.extra.rememberMe':
        return '记住我';
      case 'pages.signIn.extra.signUpNavigator':
        return ({required InlineSpanBuilder getStarted}) => TextSpan(
          children: [
            const TextSpan(text: '没有帐户？ '),
            getStarted(_root.action.getStarted),
          ],
        );
      case 'pages.signIn.extra.forgotPassword':
        return '${_root.common.forgotPassword}？';
      case 'pages.forgotPassword.title':
        return '忘记密码';
      case 'pages.forgotPassword.subtitle':
        return '输入您的电子邮件地址以恢复您的密码。';
      case 'pages.otpVerification.title':
        return '验证';
      case 'pages.otpVerification.subtitle':
        return ({required String email}) => '4 位数密码已发送到您的电子邮件地址。${email}';
      case 'pages.otpVerification.extra.codeResend.codeSendIn':
        return ({required Object minutes, required Object seconds}) =>
            '验证码将在 ${minutes}:${seconds} 内发送';
      case 'pages.otpVerification.extra.codeResend.resendCode':
        return ({required InlineSpanBuilder resendCode}) => TextSpan(
          children: [
            const TextSpan(text: ' '),
            resendCode('重新发送验证码'),
            const TextSpan(text: ' '),
          ],
        );
      case 'pages.resetPassword.title':
        return '重置密码';
      case 'pages.resetPassword.subtitle':
        return '重置您的密码以恢复并登录您的帐户';
      case 'pages.resetPassword.extra.dialog.title':
        return '更改成功！';
      case 'pages.resetPassword.extra.dialog.subtitle':
        return '使用您的新密码登录。\n正在将您重定向到登录...';
      case 'pages.signUp.title':
        return '创建帐户';
      case 'pages.signUp.subtitle':
        return '立即注册，开始一段美妙的旅程';
      case 'pages.signUp.extra.signInNavigator':
        return ({required InlineSpanBuilder signIn}) => TextSpan(
          children: [
            const TextSpan(text: '已有帐户？ '),
            signIn(_root.action.signIn),
          ],
        );
      case 'pages.welcome.title':
        return '你是谁？';
      case 'pages.welcome.subtitle':
        return '请选择以下选项。';
      case 'pages.welcome.extra.landlordTag':
        return '管理您自己的房产';
      case 'pages.welcome.extra.tenantTag':
        return '登录到您的租赁帐户';
      case 'pages.aboutUs.appbarTitle':
        return _root.common.aboutUs;
      case 'pages.termsAndConditions.appbarTitle':
        return _root.common.termsAndConditions;
      case 'pages.notificationList.appbarTitle':
        return '通知';
      case 'pages.contactUs.appbarTitle':
        return _root.common.contactUs;
      case 'pages.contactUs.extra.messageHint':
        return '留言...';
      case 'pages.cancelRenting.appbarTitle':
        return _root.common.cancelRenting;
      case 'pages.cancelRenting.title':
        return '您为什么要 ${_root.common.cancelRenting}？';
      case 'pages.cancelRenting.form.reason.hint':
        return '填写原因';
      case 'pages.cancelRenting.form.reason.errors.required':
        return '请填写取消租赁的原因';
      case 'pages.invoiceDetails.appbarTitle':
        return _root.common.viewDetails;
      case 'pages.offlinePayment.appbarTitle':
        return '线下支付';
      case 'pages.offlinePayment.form.paymentNote.label':
        return '付款备注（${_root.common.optional}）';
      case 'pages.offlinePayment.form.paymentNote.hint':
        return '输入一些文字...';
      case 'pages.offlinePayment.extra.payAmount':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: '支付金额： '),
            amount,
          ],
        );
      case 'pages.offlinePayment.extra.accountHolderName':
        return '账户持有人姓名';
      case 'pages.offlinePayment.extra.accountNumber':
        return '账户号码';
      case 'pages.offlinePayment.extra.swiftCode':
        return 'Swift 代码';
      case 'pages.offlinePayment.extra.branch':
        return '分行';
      case 'pages.offlinePayment.extra.fileTypeHint':
        return ({
          required InlineSpanBuilder fileType,
          required InlineSpanBuilder fileSize,
        }) => TextSpan(
          children: [
            const TextSpan(text: '仅选择 '),
            fileType('JPG, PNG,PDF'),
            const TextSpan(text: ' 或 '),
            fileType('DOC'),
            const TextSpan(text: ' 格式的文件。文件大小 '),
            fileSize('2000 KB'),
          ],
        );
      case 'pages.paymentStatus.success.actionButton':
        return '查看发票';
      case 'pages.paymentStatus.success.title':
        return _root.common.thankYou;
      case 'pages.paymentStatus.success.description':
        return '我们将审核付款并在 24 小时内批准。';
      case 'pages.paymentStatus.fail.actionButton':
        return '重试';
      case 'pages.paymentStatus.fail.title':
        return '糟糕！付款失败';
      case 'pages.paymentStatus.fail.description':
        return '由于一些技术错误，您的交易失败。';
      case 'pages.propertyDetails.extra.landlord':
        return ({required InlineSpan landlordName}) => TextSpan(
          children: [
            TextSpan(text: '${_root.common.landlord}： '),
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
            const TextSpan(text: '特色 '),
            fa('(设施与便利设施)'),
          ],
        );
      case 'pages.propertyDetails.extra.selectRentalPeriod':
        return '选择租赁期';
      case 'pages.propertyDetails.extra.writeAReview':
        return '+ 写评价';
      case 'pages.search.appbarTitle':
        return '搜索';
      case 'pages.search.extra.hint':
        return '搜索地块、公寓、房间...';
      case 'pages.search.extra.noRecentSearch':
        return '您没有最近的搜索。';
      case 'pages.subscriptionPlan.appbarTitle':
        return '选择您的计划';
      case 'pages.subscriptionPlan.extra.subscriptionPaymentSuccess':
        return '订阅付款成功。\n您现在可以访问订阅的功能。';
      case 'pages.landlordMaintenanceReport.totalMaintenanceCost':
        return ({required InlineSpan amount}) => TextSpan(
          children: [
            const TextSpan(text: '维护总成本： '),
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
        return '所有物业';
      case 'enums.propertyStatus.pending':
        return '待处理';
      case 'enums.propertyStatus.active':
        return '有效';
      case 'enums.propertyStatus.inactive':
        return '无效';
      case 'enums.propertyStatus.rejected':
        return '已拒绝';
      case 'enums.propertyType.apartmentCondominium':
        return '公寓/共管公寓';
      case 'enums.propertyType.house':
        return '房屋';
      case 'enums.propertyType.commercialProperty':
        return '商业地产';
      case 'enums.propertyType.land':
        return '土地';
      case 'enums.propertyType.room':
        return '房间';
      case 'enums.applicationStatus.all':
        return '全部';
      case 'enums.applicationStatus.pending':
        return '待处理';
      case 'enums.applicationStatus.processing':
        return '处理中';
      case 'enums.applicationStatus.approved':
        return '已批准';
      case 'enums.applicationStatus.rejected':
        return '已拒绝';
      case 'enums.myRentStatus.pending':
        return '待处理';
      case 'enums.myRentStatus.processing':
        return '处理中';
      case 'enums.myRentStatus.active':
        return '有效';
      case 'enums.myRentStatus.expired':
        return '已过期';
      case 'enums.myRentStatus.cancelled':
        return '已取消';
      case 'enums.maintenanceStatus.pending':
        return '待处理';
      case 'enums.maintenanceStatus.processing':
        return '处理中';
      case 'enums.maintenanceStatus.rejected':
        return '已拒绝';
      case 'enums.maintenanceStatus.completed':
        return '已完成';
      case 'enums.tenantProfileType.privateIndividual':
        return '个人';
      case 'enums.tenantProfileType.company':
        return '公司';
      case 'enums.tenantType.newTenant':
        return '新租户';
      case 'enums.tenantType.activeTenant':
        return '有效租户';
      case 'enums.tenantType.expiredTenant':
        return '已过期租户';
      case 'enums.paymentStatus.all':
        return '全部';
      case 'enums.paymentStatus.pending':
        return '待处理';
      case 'enums.paymentStatus.paid':
        return '已支付';
      case 'enums.paymentStatus.unpaid':
        return '未支付';
      case 'enums.paymentStatus.rejected':
        return '已拒绝';
      case 'enums.paymentStatus.refund':
        return '退款';
      case 'enums.paymentOptions.onlinePayment':
        return '在线支付';
      case 'enums.paymentOptions.offlinePayment':
        return '线下支付';
      case 'enums.paymentType.securityDeposit':
        return '保证金';
      case 'enums.paymentType.rentPayment':
        return '租金支付';
      case 'enums.paymentType.subscription':
        return '订阅';
      case 'enums.gender.male':
        return '男';
      case 'enums.gender.female':
        return '女';
      case 'enums.gender.other':
        return '其他';
      case 'enums.ecRelation.wife':
        return '妻子';
      case 'enums.ecRelation.parent':
        return '父母';
      case 'enums.ecRelation.friend':
        return '朋友';
      case 'enums.ecRelation.brother':
        return '兄弟';
      case 'enums.ecRelation.sister':
        return '姐妹';
      case 'enums.ecRelation.child':
        return '子女';
      case 'enums.vehicleType.car':
        return '汽车';
      case 'enums.vehicleType.motorcycles':
        return '摩托车';
      case 'enums.vehicleType.lorry':
        return '货车';
      case 'enums.sortBy.lowToHigh':
        return '从低到高';
      case 'enums.sortBy.highToLow':
        return '从高到低';
      case 'enums.residentialType.flat':
        return '单元房';
      case 'enums.residentialType.apartment':
        return '公寓';
      case 'enums.residentialType.condominium':
        return '共管公寓';
      case 'enums.residentialType.serviceResidence':
        return '服务式住宅';
      case 'enums.residentialType.studio':
        return '单间公寓';
      case 'enums.residentialType.duplex':
        return '复式公寓';
      case 'enums.residentialType.townhouseCondo':
        return '联排别墅式公寓';
      case 'enums.residentialType.others':
        return '其他';
      case 'enums.floorRange.high':
        return '高层';
      case 'enums.floorRange.medium':
        return '中层';
      case 'enums.floorRange.low':
        return '低层';
      case 'enums.furnishings.fullyFurnished':
        return '家具齐全';
      case 'enums.furnishings.partiallyFurnished':
        return '部分家具';
      case 'enums.furnishings.notFurnished':
        return '无家具';
      case 'enums.commercialPropertyType.officeSpace':
        return '办公空间';
      case 'enums.commercialPropertyType.retailSpace':
        return '零售空间';
      case 'enums.commercialPropertyType.shopLot':
        return '商铺';
      case 'enums.commercialPropertyType.warehouseFactory':
        return '仓库/工厂';
      case 'enums.commercialPropertyType.hotelResort':
        return '酒店/度假村';
      case 'enums.commercialPropertyType.sofo':
        return 'Sofo';
      case 'enums.commercialPropertyType.soho':
        return 'Soho';
      case 'enums.commercialPropertyType.sovo':
        return 'Sovo';
      case 'enums.commercialPropertyType.others':
        return '其他';
      case 'enums.landPropertyType.residential':
        return '住宅用地';
      case 'enums.landPropertyType.industrial':
        return '工业用地';
      case 'enums.landPropertyType.agricultural':
        return '农业用地';
      case 'enums.landPropertyType.commercial':
        return '商业用地';
      case 'enums.landPropertyType.mixedDevelopment':
        return '综合开发用地';
      case 'enums.landPropertyType.others':
        return '其他';
      case 'enums.residentPropertyType.condo':
        return '公寓/服务式住宅/顶层公寓';
      case 'enums.residentPropertyType.apartment':
        return '公寓/单元房';
      case 'enums.residentPropertyType.house':
        return '房屋';
      case 'enums.residentPropertyType.shoplot':
        return '商铺';
      case 'enums.residentPropertyType.sharing':
        return '合租房屋/单元房';
      case 'enums.residentPropertyType.others':
        return '其他';
      case 'enums.minimumRentalPeriod.sixMonths':
        return '6 个月';
      case 'enums.minimumRentalPeriod.oneYear':
        return '1 年';
      case 'enums.minimumRentalPeriod.oneAndHalfYears':
        return '1.5 年';
      case 'enums.minimumRentalPeriod.twoYears':
        return '2 年';
      case 'enums.minimumRentalPeriod.twoAndHalfYears':
        return '2.5 年';
      case 'enums.dropdownDateFilter.daily':
        return '每日';
      case 'enums.dropdownDateFilter.weekly':
        return '每周';
      case 'enums.dropdownDateFilter.monthly':
        return '每月';
      case 'enums.dropdownDateFilter.yearly':
        return '每年';
      case 'enums.dropdownDateFilter.custom':
        return '自定义';
      default:
        return null;
    }
  }
}
