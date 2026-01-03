import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../middlewares/middlewares.dart';
import 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page|View,Route')
class AppRoutes extends RootStackRouter {
  final WidgetRef widgetRef;
  AppRoutes(this.widgetRef);

  static final _navKey = GlobalKey<NavigatorState>();
  static GlobalKey<NavigatorState> get navKey => _navKey;

  @override
  GlobalKey<NavigatorState> get navigatorKey => _navKey;

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(path: '/', page: SplashRoute.page, initial: true),

      // Auth Routes
      AutoRoute(
        path: '/auth',
        page: const PageInfo.emptyShell('auth'),
        children: [
          AutoRoute(path: 'onboard', page: OnboardRoute.page),
          AutoRoute(path: 'welcome', page: WelcomeRoute.page),
          AutoRoute(path: 'signin', page: SignInRoute.page),
          AutoRoute(path: 'signup', page: SignUpRoute.page),
          AutoRoute(path: 'forgot-password', page: ForgotPasswordRoute.page),
          AutoRoute(path: 'reset-password', page: ResetPasswordRoute.page),
        ],
      ),

      AutoRoute(
        page: MuteHomeRoute.page,
        guards: [
          OverlayContextMiddleware(widgetRef),
          AuthGuard(widgetRef),
        ],
      ),

      // Landlord Routes
      AutoRoute(
        path: '/landlord',
        page: const PageInfo.emptyShell('landlord'),
        usesPathAsKey: true,
        children: [
          AutoRoute(
            path: 'bottom-nav',
            page: LandlordBottomNavRoute.page,
            children: [
              AutoRoute(
                path: 'home',
                page: LandlordHomeRoute.page,
              ),
              AutoRoute(
                path: 'application',
                page: LandlordApplicationListRoute.page,
              ),
              AutoRoute(
                path: 'property-list',
                page: LandlordPropertyListRoute.page,
              ),
              AutoRoute(
                path: 'maintenance-list',
                page: LandlordMaintenanceListRoute.page,
              ),
              AutoRoute(
                path: 'settings',
                page: LandlordSettingsRoute.page,
              ),
            ],
          ),

          // Landlord Dashboard
          AutoRoute(
            path: 'dashboard',
            page: LandlordDashboardRoute.page,
          ),

          // Manage Profile
          AutoRoute(
            path: 'setup-profile',
            page: LandlordSetupProfileRoute.page,
          ),
          AutoRoute(
            path: 'edit-profile',
            page: LandlordEditProfileRoute.page,
          ),

          // Lanlord Property
          AutoRoute(
            path: 'all-property',
            page: LandlordPropertyListRoute.page,
          ),
          AutoRoute(
            path: 'property-details',
            page: LandlordPropertyDetailsRoute.page,
          ),
          AutoRoute(
            path: 'manage-property',
            page: LandlordManagePropertyRoute.page,
          ),

          // Landlord Applications
          AutoRoute(
            path: 'applicaiton-details',
            page: LandlordApplicationDetailsRoute.page,
          ),

          // Lanlord Rent Invitation
          AutoRoute(
            path: 'rent-invitation-list',
            page: LandlordRentInvitationListRoute.page,
          ),
          AutoRoute(
            path: 'rent-invitation-details',
            page: LandlordRentInvitationDetailsRoute.page,
          ),
          AutoRoute(
            path: 'manage-rent-invitation',
            page: LandlordManageRentInvitationRoute.page,
          ),

          // Lanlord Maintenance
          AutoRoute(
            path: 'maintenance-details',
            page: LandlordMaintenanceDetailsRoute.page,
          ),
          AutoRoute(
            path: 'maintenance-report',
            page: LandlordMaintenanceReportRoute.page,
          ),

          // Lanlord Labor
          AutoRoute(
            path: 'labor-list',
            page: LandlordLaborListRoute.page,
          ),
          AutoRoute(
            path: 'labor-details',
            page: LandlordLaborDetailsRoute.page,
          ),
          AutoRoute(
            path: 'manage-labor',
            page: LandlordManageLaborRoute.page,
          ),

          // Tenants
          AutoRoute(
            path: 'tenant-list',
            page: TenantListRoute.page,
          ),
          AutoRoute(
            path: 'tenant-details',
            page: TenantDetailsRoute.page,
          ),
          AutoRoute(
            path: 'manage-tenant',
            page: ManageTenantRoute.page,
          ),

          // Tenancy Agreement
          /* Disabled upon requirement change
          AutoRoute(
            path: 'tenancy-agreement-list',
            page: TenancyAgreementListRoute.page,
          ),
          AutoRoute(
            path: 'tenancy-agreement-details',
            page: TenancyAgreementDetailsRoute.page,
          ),
          AutoRoute(
            path: 'tenancy-manage-agreement',
            page: TenancyManageAgreementRoute.page,
          ),
          */

          //------------------Landlord Payments------------------//
          // Deposit & Utility Payment
          AutoRoute(
            path: 'deposit-utility-payment-list',
            page: LandlordDepositUtilityPaymentListRoute.page,
          ),

          // Rent Payment
          AutoRoute(
            path: 'rent-payment-list',
            page: LandlordRentPaymentListRoute.page,
          ),

          // Refund Requests
          AutoRoute(
            path: 'refund-request-list',
            page: LandlordRefundRequestListRoute.page,
          ),
          AutoRoute(
            path: 'refund-request-details',
            page: LandlordRefundRequestDetailsRoute.page,
          ),

          // Withdraw Request
          AutoRoute(
            path: 'withdraw-overview',
            page: LandlordWithdrawOverviewRoute.page,
          ),
          AutoRoute(
            path: 'manage-withdraw-method',
            page: LandlordManageWithdrawMethodRoute.page,
          ),
          AutoRoute(
            path: 'withdraw-request',
            page: LandlordWithdrawRequestRoute.page,
          ),
          AutoRoute(
            path: 'withdraw-history',
            page: LandlordWithdrawHistoryRoute.page,
          ),
          AutoRoute(
            path: 'withdraw-details',
            page: LandlordWithdrawDetailsRoute.page,
          ),
          //------------------Landlord Payments------------------//

          // Common Routes
          AutoRoute(
            path: 'terms-conditions',
            page: TermsConditionsRoute.page,
          ),
          AutoRoute(
            path: 'about-us',
            page: AboutUsRoute.page,
          ),
          AutoRoute(
            path: 'notification-list',
            page: NotificationListRoute.page,
          ),
          AutoRoute(
            path: 'notification-details',
            page: NotificationDetailsRoute.page,
          ),
          AutoRoute(
            path: 'contact-us',
            page: ContactUsRoute.page,
          ),

          // Subscription
          AutoRoute(
            path: 'subscription-list',
            page: SubscriptionListRoute.page,
          ),
          AutoRoute(
            path: 'subscription-details',
            page: SubscriptionDetailsRoute.page,
          ),
        ],
      ),

      // Tenant Routes
      AutoRoute(
        path: '/tenant',
        usesPathAsKey: true,
        page: const PageInfo.emptyShell('tenant'),
        children: [
          RedirectRoute(path: '', redirectTo: 'bottom-nav'),
          AutoRoute(
            path: 'bottom-nav',
            page: TenantBottomNavRoute.page,
            children: [
              AutoRoute(
                path: 'home',
                page: TenantHomeRoute.page,
              ),
              AutoRoute(
                path: 'wishlist',
                page: TenantWishlistRoute.page,
              ),
              AutoRoute(
                path: 'my-rent-list',
                page: TenantMyRentListRoute.page,
              ),
              AutoRoute(
                path: 'maintenance-list',
                page: TenantMaintenanceListRoute.page,
              ),
              AutoRoute(
                path: 'settings',
                page: TenantSettingsRoute.page,
              ),
            ],
          ),

          // Manage Profile
          AutoRoute(
            path: 'setup-profile',
            page: TenantSetupProfileRoute.page,
          ),
          AutoRoute(
            path: 'edit-profile',
            page: TenantEditProfileRoute.page,
          ),

          // Tenant Property
          AutoRoute(
            path: 'property-details',
            page: TenantPropertyDetailsRoute.page,
          ),
          AutoRoute(
            path: 'all-property',
            page: TenantAllPropertyRoute.page,
          ),
          AutoRoute(
            path: 'recommended-property',
            page: TenantRecommendedPropertyRoute.page,
          ),
          AutoRoute(
            path: 'manage-review',
            page: ManageReviewRoute.page,
          ),

          // Maintenance
          AutoRoute(
            path: 'maintenance-list',
            page: TenantMaintenanceListRoute.page,
          ),
          AutoRoute(
            path: 'manage-maintenance',
            page: TenantManageMaintenanceRoute.page,
          ),
          AutoRoute(
            path: 'maintenance-details',
            page: TenantMaintenanceDetailsRoute.page,
          ),

          // Tenant Lease
          AutoRoute(
            path: 'lease-list',
            page: TenantLeaseListRoute.page,
          ),
          AutoRoute(
            path: 'lease-details',
            page: TenantLeaseDetailsRoute.page,
          ),

          // Tenant Applications
          AutoRoute(
            path: 'application-list',
            page: TenantApplicationListRoute.page,
          ),
          AutoRoute(
            path: 'application-details',
            page: TenantApplicationDetailsRoute.page,
          ),

          //------------------Tenant Payments------------------//
          // Refund Requests
          AutoRoute(
            path: 'refund-request-list',
            page: TenantRefundRequestListRoute.page,
          ),
          AutoRoute(
            path: 'refund-manage-request',
            page: TenantManageRefundRequestRoute.page,
          ),

          // Security Deposit
          AutoRoute(
            path: 'security-deposit-list',
            page: TenantSecurityDepositListRoute.page,
          ),

          // Rent Payment
          AutoRoute(
            path: 'rent-payment-list',
            page: TenantRentPaymentListRoute.page,
          ),
          //------------------Tenant Payments------------------//

          // My Rent
          AutoRoute(
            path: 'my-rent-details',
            page: TenantMyRentDetailsRoute.page,
          ),

          AutoRoute(
            path: 'terms-conditions',
            page: TermsConditionsRoute.page,
          ),
          AutoRoute(
            path: 'about-us',
            page: AboutUsRoute.page,
          ),
          AutoRoute(
            path: 'notification-list',
            page: NotificationListRoute.page,
          ),
          AutoRoute(
            path: 'notification-details',
            page: NotificationDetailsRoute.page,
          ),
          //Super Admin
          AutoRoute(
            path: '/admin/panel',
            page: FullAdminPanelRoute.page,
          ),
          AutoRoute(
            path: '/admin/user-management',
            page: UserManagementRoute.page,
          ),
          AutoRoute(
            path: '/admin/gateway',
            page: PaymentGatewayConfigRoute.page,
          ),
          AutoRoute(
            path: '/admin/plans',
            page: SubscriptionPlansRoute.page,
          ),
          AutoRoute(
            path: '/admin/income-expense',
            page: IncomeExpenseRoute.page,
          ),
          AutoRoute(
            path: '/admin/withdrawal',
            page: WithdrawalManagementRoute.page,
          ),
          AutoRoute(
            path: '/admin/refund',
            page: RefundManagementRoute.page,
          ),
          AutoRoute(
            path: '/admin/support',
            page: SupportSystemRoute.page,
          ),
          AutoRoute(
            path: '/admin/messaging',
            page: DirectMessagingRoute.page,
          ),
          AutoRoute(
            path: '/admin/reviews',
            page: PropertyReviewsRoute.page,
          ),
          AutoRoute(
            path: '/admin/static-pages',
            page: StaticPagesRoute.page,
          ),
        ],
      ),

      // Common Pages
      AutoRoute(
        path: '/language',
        page: LanguageRoute.page,
      ),
    ];
  }
}
