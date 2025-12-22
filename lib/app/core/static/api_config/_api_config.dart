import '../app_config/_app_config.dart';

abstract class DAPIEndpoints {
  // Base urls
  static const String baseURL = AppConfig.baseUrl;
  static String get apiURL => '$baseURL/api/v1';
  static String? imageUrl(String? path) {
    if (path == null) return null;
    return "$baseURL/$path";
  }

  //-----------------------------Endpoints-----------------------------//
  // Auth Endpoints
  static String signin = '/sign-in';
  static String signout = '/sign-out';
  static String signup = '/sign-up';
  static String submitotp = '/submit-otp';
  static String resendotp = '/resend-otp';
  static String resetPassOtp = '/send-reset-code';
  static String resetPassword = '/user-password-reset';
  static String userProfile = '/user';
  static String userProfileSetup = '/profile-setup';
  static String country = '/country';

  //------------Lanlord Endpoints------------//
  static String tenants = '/landlord/tenant';
  static String tenant(int id) => '$tenants/$id';
  static String agreements = '/landlord/agreement';
  static String labors = '/landlord/labors';
  static String labor(int id) => '$labors/$id';

  // Dashboard
  static String dashboardSummaryOverview = '/landlord/dashboard';
  static String dashboardPropertyChart =
      '$dashboardSummaryOverview/property-chart';
  static String dashboardAccountChart =
      '$dashboardSummaryOverview/account-chart';

  // Withdraw Endpoints
  static String adminMethods = '/landlord/withdraw-methods';
  static String userMethods = '/landlord/user-withdraw-methods';
  static String userWithdrawRequests = '/landlord/withdraw';
  static String subscriptionPlans = '/plans';
  static String withdrawSummary(int id) => '$userWithdrawRequests/summary/$id';
  static String withdrawInvoice(int id) => '$userWithdrawRequests/invoice/$id';
  //------------Lanlord Endpoints------------//

  //------------Property Endpoints------------//
  static String properties = '/landlord/properties';
  static String property(int id) => '$properties/$id';
  static String reviews = '/tenant/review';
  static String review(int id) => '$reviews/$id';
  static String propertyVisibility = '/landlord/properties/status';
  static String houseTypes = '/house-types';
  static String facilities = '/facility';
  static String amenities = '/amenity';
  //------------Property Endpoints------------//

  //------------Tenant Endpoints------------//
  static String favorites = '/tenant/favorite';
  static String favorite(int id) => '/tenant/favorite/$id';
  //------------Tenant Endpoints------------//

  //------------Common Endpoints------------//
  static String termsConditions = '/term-condition';
  static String aboutUs = '/about-us';
  static String notifications = '/get-notifications';
  static String markAllNotificationAsRead = '/read-nitifications';
  static String support = '/landlord/supports';
  //------------Common Endpoints------------//

  //------------Maintenance Endpoints------------//
  static String maintenances = '/tenant/maintenance';
  static String maintenance(int id) => '$maintenances/$id';
  static String maintenaceReport = '/landlord/maintenance/reports';
  static String rejectMaintenance(int id) {
    return '/landlord/maintenance/rejected/$id';
  }

  static String approveMaintenance(int id) {
    return '/landlord/maintenance/processing/$id';
  }

  static String completeMaintenance(int id) {
    return '/landlord/maintenance/completed/$id';
  }
  //------------Maintenance Endpoints------------//

  //------------Application Endpoints------------//
  static String applications = '/tenant/application';
  static String application(int id) => '$applications/$id';

  static String processApplication(int id) {
    return '/landlord/application/processing/$id';
  }

  static String signApplication(int id) {
    return '/tenant/application/sign/$id';
  }

  static String rejectApplication(int id) {
    return '/landlord/application/rejected/$id';
  }

  static String approveApplication(int id) {
    return '/landlord/application/approved/$id';
  }
  //------------Application Endpoints------------//

  //------------My Rent/Invitation Endpoints------------//
  static String rentList = '/landlord/rent';
  static String rentDetails(int id) => '$rentList/$id';
  static String rentAccept(int id) => '$rentList/accept/$id';
  static String rentCancel(int id) => '$rentList/cancelled/$id';
  static String rentProcess(int id) => '$rentList/agreement-sign/$id';
  static String rentApprove(int id) => '$rentList/approved/$id';
  //------------My Rent/Invitation Endpoints------------//

  //------------Payment Endpoints------------//
  static String securityDeposits = '/tenant/security-deposits';
  static String securityDeposit(int id) => '$securityDeposits/$id';
  static String rentPayments = '/tenant/rent-payments';
  static String rentPayment(int id) => '/tenant/rent-payments/$id';
  static String offlinePaymentMethods = '/offline-gateway';
  static String offlinePayment(int gatewayId, int invoiceId) {
    return '/tenant/offline-payment/$gatewayId/$invoiceId';
  }

  static String refundRequests = '/tenant/refund-request';
  static String refundRequest(int id) => '/tenant/refund-request/$id';
  static String refundReasons = '/tenant/refund-reason';
  static String makeRefundPayment(int id) {
    return '$refundRequests/upload-receipt/$id';
  }

  static String approveRefundPayment(int id) {
    return '$refundRequests/approved/$id';
  }
  //------------Payment Endpoints------------//

  //-----------------------------Endpoints-----------------------------//
}
