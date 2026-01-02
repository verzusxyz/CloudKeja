// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i73;
import 'package:flutter/material.dart' as _i74;
import 'package:cloudkeja/app/data/models/admin/models.dart' as _i76;
import 'package:cloudkeja/app/data/repositories/repositories.dart' as _i75;
import 'package:cloudkeja/app/pages/_mute_home.dart' as _i35;
import 'package:cloudkeja/app/pages/auth/forgot_password/forgot_password_view.dart'
    as _i3;
import 'package:cloudkeja/app/pages/auth/onboard/onboard_view.dart' as _i38;
import 'package:cloudkeja/app/pages/auth/reset_password/reset_password_view.dart'
    as _i39;
import 'package:cloudkeja/app/pages/auth/sign_in/sign_in_view.dart' as _i40;
import 'package:cloudkeja/app/pages/auth/sign_up/sign_up_view.dart' as _i41;
import 'package:cloudkeja/app/pages/auth/splash/splash_view.dart' as _i42;
import 'package:cloudkeja/app/pages/auth/welcome/welcome_view.dart' as _i72;
import 'package:cloudkeja/app/pages/common/about_us/about_us_view.dart'
    as _i1;
import 'package:cloudkeja/app/pages/common/contact_us/contact_us_view.dart'
    as _i2;
import 'package:cloudkeja/app/pages/common/language/language_view.dart'
    as _i32;
import 'package:cloudkeja/app/pages/common/notifications/notification_details_view.dart'
    as _i36;
import 'package:cloudkeja/app/pages/common/notifications/notification_list_view.dart'
    as _i37;
import 'package:cloudkeja/app/pages/common/subscription/subscription_details/subscription_details_view.dart'
    as _i43;
import 'package:cloudkeja/app/pages/common/subscription/subscription_list/subscription_list_view.dart'
    as _i44;
import 'package:cloudkeja/app/pages/common/terms_conditions/terms_conditions_view.dart'
    as _i71;
import 'package:cloudkeja/app/pages/landlord/landlord_application/landlord_application_details/landlord_application_details_view.dart'
    as _i4;
import 'package:cloudkeja/app/pages/landlord/landlord_application/landlord_application_list/landlord_application_list_view.dart'
    as _i5;
import 'package:cloudkeja/app/pages/landlord/landlord_bottom_nav/landlord_bottom_nav_view.dart'
    as _i6;
import 'package:cloudkeja/app/pages/landlord/landlord_dashboard/landlord_dashboard_view.dart'
    as _i7;
import 'package:cloudkeja/app/pages/landlord/landlord_home/landlord_home_view.dart'
    as _i10;
import 'package:cloudkeja/app/pages/landlord/landlord_labor/landlord_labor_details/landlord_labor_details_view.dart'
    as _i11;
import 'package:cloudkeja/app/pages/landlord/landlord_labor/landlord_labor_list/landlord_labor_list_view.dart'
    as _i12;
import 'package:cloudkeja/app/pages/landlord/landlord_labor/landlord_manage_labor/landlord_manage_labor_view.dart'
    as _i16;
import 'package:cloudkeja/app/pages/landlord/landlord_maintenance/landlord_maintenance_details/landlord_maintenance_details_view.dart'
    as _i13;
import 'package:cloudkeja/app/pages/landlord/landlord_maintenance/landlord_maintenance_list/landlord_maintenance_list_view.dart'
    as _i14;
import 'package:cloudkeja/app/pages/landlord/landlord_maintenance/landlord_maintenance_report/landlord_maintenance_report_view.dart'
    as _i15;
import 'package:cloudkeja/app/pages/landlord/landlord_manage_profile/landlord_manage_profile.dart'
    as _i9;
import 'package:cloudkeja/app/pages/landlord/landlord_payments/landlord_deposit_utility_payment_list/landlord_deposit_utility_payment_list_view.dart'
    as _i8;
import 'package:cloudkeja/app/pages/landlord/landlord_payments/landlord_rent_payment_list/landlord_rent_payment_list_view.dart'
    as _i26;
import 'package:cloudkeja/app/pages/landlord/landlord_payments/landlord_withdraw/landlord_manage_withdraw_method/landlord_manage_withdraw_method_view.dart'
    as _i19;
import 'package:cloudkeja/app/pages/landlord/landlord_payments/landlord_withdraw/landlord_withdraw_details/landlord_withdraw_details_view.dart'
    as _i28;
import 'package:cloudkeja/app/pages/landlord/landlord_payments/landlord_withdraw/landlord_withdraw_history/landlord_withdraw_history_view.dart'
    as _i29;
import 'package:cloudkeja/app/pages/landlord/landlord_payments/landlord_withdraw/landlord_withdraw_overview/landlord_withdraw_overview_view.dart'
    as _i30;
import 'package:cloudkeja/app/pages/landlord/landlord_payments/landlord_withdraw/landlord_withdraw_request/landlord_withdraw_request_view.dart'
    as _i31;
import 'package:cloudkeja/app/pages/landlord/landlord_payments/refund_requests/landlord_refund_request_details/landlord_refund_request_details_view.dart'
    as _i22;
import 'package:cloudkeja/app/pages/landlord/landlord_payments/refund_requests/landlord_refund_request_list/landlord_refund_request_list_view.dart'
    as _i23;
import 'package:cloudkeja/app/pages/landlord/landlord_property/landlord_manage_property/landlord_manage_property_view.dart'
    as _i17;
import 'package:cloudkeja/app/pages/landlord/landlord_property/landlord_property_details/landlord_property_details_view.dart'
    as _i20;
import 'package:cloudkeja/app/pages/landlord/landlord_property/landlord_property_list/landlord_property_list_view.dart'
    as _i21;
import 'package:cloudkeja/app/pages/landlord/landlord_rent_invitation/landlord_manage_rent_invitation/landlord_manage_rent_invitation_view.dart'
    as _i18;
import 'package:cloudkeja/app/pages/landlord/landlord_rent_invitation/landlord_rent_invitation_details/landlord_rent_invitation_details_view.dart'
    as _i24;
import 'package:cloudkeja/app/pages/landlord/landlord_rent_invitation/landlord_rent_invitation_list/landlord_rent_invitation_list_view.dart'
    as _i25;
import 'package:cloudkeja/app/pages/landlord/landlord_settings/landlord_settings_view.dart'
    as _i27;
import 'package:cloudkeja/app/pages/landlord/tenancy_agreement/tenancy_agreement_details/tenancy_agreement_details_view.dart'
    as _i45;
import 'package:cloudkeja/app/pages/landlord/tenancy_agreement/tenancy_manage_agreement/tenancy_manage_agreement_view.dart'
    as _i46;
import 'package:cloudkeja/app/pages/landlord/tenants/manage_tenant/manage_tenant_view.dart'
    as _i34;
import 'package:cloudkeja/app/pages/landlord/tenants/tenant_details/tenant_details_view.dart'
    as _i52;
import 'package:cloudkeja/app/pages/landlord/tenants/tenant_list/tenant_list_view.dart'
    as _i57;
import 'package:cloudkeja/app/pages/tenant/maintenance/tenant_maintenance_details/tenant_maintenance_details_view.dart'
    as _i58;
import 'package:cloudkeja/app/pages/tenant/maintenance/tenant_maintenance_list/tenant_maintenance_list_view.dart'
    as _i59;
import 'package:cloudkeja/app/pages/tenant/maintenance/tenant_manage_maintenance/tenant_manage_maintenance_view.dart'
    as _i60;
import 'package:cloudkeja/app/pages/tenant/tenant_application/tenant_application_details/tenant_application_details_view.dart'
    as _i48;
import 'package:cloudkeja/app/pages/tenant/tenant_application/tenant_application_list/tenant_application_list_view.dart'
    as _i49;
import 'package:cloudkeja/app/pages/tenant/tenant_bottom_nav/tenant_bottom_nav_view.dart'
    as _i50;
import 'package:cloudkeja/app/pages/tenant/tenant_home/tenant_home_view.dart'
    as _i54;
import 'package:cloudkeja/app/pages/tenant/tenant_lease/tenant_lease_details/tenant_lease_details_view.dart'
    as _i55;
import 'package:cloudkeja/app/pages/tenant/tenant_lease/tenant_lease_list/tenant_lease_list_view.dart'
    as _i56;
import 'package:cloudkeja/app/pages/tenant/tenant_manage_profile/tenant_manage_profile.dart'
    as _i53;
import 'package:cloudkeja/app/pages/tenant/tenant_my_rent/tenant_cancel_my_rent/tenant_cancel_my_rent_view.dart'
    as _i51;
import 'package:cloudkeja/app/pages/tenant/tenant_my_rent/tenant_my_rent_details/tenant_my_rent_details_view.dart'
    as _i62;
import 'package:cloudkeja/app/pages/tenant/tenant_my_rent/tenant_my_rent_list/tenant_my_rent_list_view.dart'
    as _i63;
import 'package:cloudkeja/app/pages/tenant/tenant_payments/refund_requests/tenant_manage_refund_request/tenant_manage_refund_request_view.dart'
    as _i61;
import 'package:cloudkeja/app/pages/tenant/tenant_payments/refund_requests/tenant_refund_request_list/tenant_refund_request_list_view.dart'
    as _i66;
import 'package:cloudkeja/app/pages/tenant/tenant_payments/tenant_rent_payment_list/tenant_rent_payment_list_view.dart'
    as _i67;
import 'package:cloudkeja/app/pages/tenant/tenant_payments/tenant_security_deposit/tenant_security_deposit_list_view.dart'
    as _i68;
import 'package:cloudkeja/app/pages/tenant/tenant_property/manage_review/manage_review_view.dart'
    as _i33;
import 'package:cloudkeja/app/pages/tenant/tenant_property/tenant_all_property/tenant_all_property_view.dart'
    as _i47;
import 'package:cloudkeja/app/pages/tenant/tenant_property/tenant_property_details/tenant_property_details_view.dart'
    as _i64;
import 'package:cloudkeja/app/pages/tenant/tenant_property/tenant_recommended_property/tenant_recommended_property_view.dart'
    as _i65;
import 'package:cloudkeja/app/pages/tenant/tenant_settings/tenant_settings_view.dart'
    as _i69;
import 'package:cloudkeja/app/pages/tenant/tenant_wishlist/tenant_wishlist_view.dart'
    as _i70;

/// generated route for
/// [_i1.AboutUsView]
class AboutUsRoute extends _i73.PageRouteInfo<void> {
  const AboutUsRoute({List<_i73.PageRouteInfo>? children})
    : super(AboutUsRoute.name, initialChildren: children);

  static const String name = 'AboutUsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i1.AboutUsView();
    },
  );
}

/// generated route for
/// [_i2.ContactUsView]
class ContactUsRoute extends _i73.PageRouteInfo<void> {
  const ContactUsRoute({List<_i73.PageRouteInfo>? children})
    : super(ContactUsRoute.name, initialChildren: children);

  static const String name = 'ContactUsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i2.ContactUsView();
    },
  );
}

/// generated route for
/// [_i3.ForgotPasswordView]
class ForgotPasswordRoute extends _i73.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i73.PageRouteInfo>? children})
    : super(ForgotPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgotPasswordRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i3.ForgotPasswordView();
    },
  );
}

/// generated route for
/// [_i4.LandlordApplicationDetailsView]
class LandlordApplicationDetailsRoute
    extends _i73.PageRouteInfo<LandlordApplicationDetailsRouteArgs> {
  LandlordApplicationDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordApplicationDetailsRoute.name,
         args: LandlordApplicationDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'LandlordApplicationDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordApplicationDetailsRouteArgs>();
      return _i4.LandlordApplicationDetailsView(key: args.key, id: args.id);
    },
  );
}

class LandlordApplicationDetailsRouteArgs {
  const LandlordApplicationDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'LandlordApplicationDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.LandlordApplicationListView]
class LandlordApplicationListRoute
    extends _i73.PageRouteInfo<LandlordApplicationListRouteArgs> {
  LandlordApplicationListRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordApplicationListRoute.name,
         args: LandlordApplicationListRouteArgs(
           key: key,
           scaffoldKey: scaffoldKey,
         ),
         initialChildren: children,
       );

  static const String name = 'LandlordApplicationListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordApplicationListRouteArgs>(
        orElse: () => const LandlordApplicationListRouteArgs(),
      );
      return _i5.LandlordApplicationListView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class LandlordApplicationListRouteArgs {
  const LandlordApplicationListRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'LandlordApplicationListRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i6.LandlordBottomNavView]
class LandlordBottomNavRoute extends _i73.PageRouteInfo<void> {
  const LandlordBottomNavRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordBottomNavRoute.name, initialChildren: children);

  static const String name = 'LandlordBottomNavRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i6.LandlordBottomNavView();
    },
  );
}

/// generated route for
/// [_i7.LandlordDashboardView]
class LandlordDashboardRoute extends _i73.PageRouteInfo<void> {
  const LandlordDashboardRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordDashboardRoute.name, initialChildren: children);

  static const String name = 'LandlordDashboardRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i7.LandlordDashboardView();
    },
  );
}

/// generated route for
/// [_i8.LandlordDepositUtilityPaymentListView]
class LandlordDepositUtilityPaymentListRoute extends _i73.PageRouteInfo<void> {
  const LandlordDepositUtilityPaymentListRoute({
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordDepositUtilityPaymentListRoute.name,
         initialChildren: children,
       );

  static const String name = 'LandlordDepositUtilityPaymentListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i8.LandlordDepositUtilityPaymentListView();
    },
  );
}

/// generated route for
/// [_i9.LandlordEditProfileView]
class LandlordEditProfileRoute extends _i73.PageRouteInfo<void> {
  const LandlordEditProfileRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordEditProfileRoute.name, initialChildren: children);

  static const String name = 'LandlordEditProfileRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i9.LandlordEditProfileView();
    },
  );
}

/// generated route for
/// [_i10.LandlordHomeView]
class LandlordHomeRoute extends _i73.PageRouteInfo<LandlordHomeRouteArgs> {
  LandlordHomeRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordHomeRoute.name,
         args: LandlordHomeRouteArgs(key: key, scaffoldKey: scaffoldKey),
         initialChildren: children,
       );

  static const String name = 'LandlordHomeRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordHomeRouteArgs>(
        orElse: () => const LandlordHomeRouteArgs(),
      );
      return _i10.LandlordHomeView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class LandlordHomeRouteArgs {
  const LandlordHomeRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'LandlordHomeRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i11.LandlordLaborDetailsView]
class LandlordLaborDetailsRoute
    extends _i73.PageRouteInfo<LandlordLaborDetailsRouteArgs> {
  LandlordLaborDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordLaborDetailsRoute.name,
         args: LandlordLaborDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'LandlordLaborDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordLaborDetailsRouteArgs>();
      return _i11.LandlordLaborDetailsView(key: args.key, id: args.id);
    },
  );
}

class LandlordLaborDetailsRouteArgs {
  const LandlordLaborDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'LandlordLaborDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i12.LandlordLaborListView]
class LandlordLaborListRoute extends _i73.PageRouteInfo<void> {
  const LandlordLaborListRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordLaborListRoute.name, initialChildren: children);

  static const String name = 'LandlordLaborListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i12.LandlordLaborListView();
    },
  );
}

/// generated route for
/// [_i13.LandlordMaintenanceDetailsView]
class LandlordMaintenanceDetailsRoute
    extends _i73.PageRouteInfo<LandlordMaintenanceDetailsRouteArgs> {
  LandlordMaintenanceDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordMaintenanceDetailsRoute.name,
         args: LandlordMaintenanceDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'LandlordMaintenanceDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordMaintenanceDetailsRouteArgs>();
      return _i13.LandlordMaintenanceDetailsView(key: args.key, id: args.id);
    },
  );
}

class LandlordMaintenanceDetailsRouteArgs {
  const LandlordMaintenanceDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'LandlordMaintenanceDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i14.LandlordMaintenanceListView]
class LandlordMaintenanceListRoute
    extends _i73.PageRouteInfo<LandlordMaintenanceListRouteArgs> {
  LandlordMaintenanceListRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordMaintenanceListRoute.name,
         args: LandlordMaintenanceListRouteArgs(
           key: key,
           scaffoldKey: scaffoldKey,
         ),
         initialChildren: children,
       );

  static const String name = 'LandlordMaintenanceListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordMaintenanceListRouteArgs>(
        orElse: () => const LandlordMaintenanceListRouteArgs(),
      );
      return _i14.LandlordMaintenanceListView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class LandlordMaintenanceListRouteArgs {
  const LandlordMaintenanceListRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'LandlordMaintenanceListRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i15.LandlordMaintenanceReportView]
class LandlordMaintenanceReportRoute extends _i73.PageRouteInfo<void> {
  const LandlordMaintenanceReportRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordMaintenanceReportRoute.name, initialChildren: children);

  static const String name = 'LandlordMaintenanceReportRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i15.LandlordMaintenanceReportView();
    },
  );
}

/// generated route for
/// [_i16.LandlordManageLaborView]
class LandlordManageLaborRoute
    extends _i73.PageRouteInfo<LandlordManageLaborRouteArgs> {
  LandlordManageLaborRoute({
    _i74.Key? key,
    _i75.Labor? editModel,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordManageLaborRoute.name,
         args: LandlordManageLaborRouteArgs(key: key, editModel: editModel),
         initialChildren: children,
       );

  static const String name = 'LandlordManageLaborRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordManageLaborRouteArgs>(
        orElse: () => const LandlordManageLaborRouteArgs(),
      );
      return _i16.LandlordManageLaborView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class LandlordManageLaborRouteArgs {
  const LandlordManageLaborRouteArgs({this.key, this.editModel});

  final _i74.Key? key;

  final _i75.Labor? editModel;

  @override
  String toString() {
    return 'LandlordManageLaborRouteArgs{key: $key, editModel: $editModel}';
  }
}

/// generated route for
/// [_i17.LandlordManagePropertyView]
class LandlordManagePropertyRoute
    extends _i73.PageRouteInfo<LandlordManagePropertyRouteArgs> {
  LandlordManagePropertyRoute({
    _i74.Key? key,
    _i76.PropertyModel? editModel,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordManagePropertyRoute.name,
         args: LandlordManagePropertyRouteArgs(key: key, editModel: editModel),
         initialChildren: children,
       );

  static const String name = 'LandlordManagePropertyRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordManagePropertyRouteArgs>(
        orElse: () => const LandlordManagePropertyRouteArgs(),
      );
      return _i17.LandlordManagePropertyView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class LandlordManagePropertyRouteArgs {
  const LandlordManagePropertyRouteArgs({this.key, this.editModel});

  final _i74.Key? key;

  final _i76.PropertyModel? editModel;

  @override
  String toString() {
    return 'LandlordManagePropertyRouteArgs{key: $key, editModel: $editModel}';
  }
}

/// generated route for
/// [_i18.LandlordManageRentInvitationView]
class LandlordManageRentInvitationRoute
    extends _i73.PageRouteInfo<LandlordManageRentInvitationRouteArgs> {
  LandlordManageRentInvitationRoute({
    _i74.Key? key,
    _i75.Tenant? tenant,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordManageRentInvitationRoute.name,
         args: LandlordManageRentInvitationRouteArgs(key: key, tenant: tenant),
         initialChildren: children,
       );

  static const String name = 'LandlordManageRentInvitationRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordManageRentInvitationRouteArgs>(
        orElse: () => const LandlordManageRentInvitationRouteArgs(),
      );
      return _i18.LandlordManageRentInvitationView(
        key: args.key,
        tenant: args.tenant,
      );
    },
  );
}

class LandlordManageRentInvitationRouteArgs {
  const LandlordManageRentInvitationRouteArgs({this.key, this.tenant});

  final _i74.Key? key;

  final _i75.Tenant? tenant;

  @override
  String toString() {
    return 'LandlordManageRentInvitationRouteArgs{key: $key, tenant: $tenant}';
  }
}

/// generated route for
/// [_i19.LandlordManageWithdrawMethodView]
class LandlordManageWithdrawMethodRoute
    extends _i73.PageRouteInfo<LandlordManageWithdrawMethodRouteArgs> {
  LandlordManageWithdrawMethodRoute({
    _i74.Key? key,
    _i75.UserWithdrawMethod? editModel,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordManageWithdrawMethodRoute.name,
         args: LandlordManageWithdrawMethodRouteArgs(
           key: key,
           editModel: editModel,
         ),
         initialChildren: children,
       );

  static const String name = 'LandlordManageWithdrawMethodRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordManageWithdrawMethodRouteArgs>(
        orElse: () => const LandlordManageWithdrawMethodRouteArgs(),
      );
      return _i19.LandlordManageWithdrawMethodView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class LandlordManageWithdrawMethodRouteArgs {
  const LandlordManageWithdrawMethodRouteArgs({this.key, this.editModel});

  final _i74.Key? key;

  final _i75.UserWithdrawMethod? editModel;

  @override
  String toString() {
    return 'LandlordManageWithdrawMethodRouteArgs{key: $key, editModel: $editModel}';
  }
}

/// generated route for
/// [_i20.LandlordPropertyDetailsView]
class LandlordPropertyDetailsRoute
    extends _i73.PageRouteInfo<LandlordPropertyDetailsRouteArgs> {
  LandlordPropertyDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordPropertyDetailsRoute.name,
         args: LandlordPropertyDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'LandlordPropertyDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordPropertyDetailsRouteArgs>();
      return _i20.LandlordPropertyDetailsView(key: args.key, id: args.id);
    },
  );
}

class LandlordPropertyDetailsRouteArgs {
  const LandlordPropertyDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'LandlordPropertyDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i21.LandlordPropertyListView]
class LandlordPropertyListRoute
    extends _i73.PageRouteInfo<LandlordPropertyListRouteArgs> {
  LandlordPropertyListRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordPropertyListRoute.name,
         args: LandlordPropertyListRouteArgs(
           key: key,
           scaffoldKey: scaffoldKey,
         ),
         initialChildren: children,
       );

  static const String name = 'LandlordPropertyListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordPropertyListRouteArgs>(
        orElse: () => const LandlordPropertyListRouteArgs(),
      );
      return _i21.LandlordPropertyListView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class LandlordPropertyListRouteArgs {
  const LandlordPropertyListRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'LandlordPropertyListRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i22.LandlordRefundRequestDetailsView]
class LandlordRefundRequestDetailsRoute extends _i73.PageRouteInfo<void> {
  const LandlordRefundRequestDetailsRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordRefundRequestDetailsRoute.name, initialChildren: children);

  static const String name = 'LandlordRefundRequestDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i22.LandlordRefundRequestDetailsView();
    },
  );
}

/// generated route for
/// [_i23.LandlordRefundRequestListView]
class LandlordRefundRequestListRoute extends _i73.PageRouteInfo<void> {
  const LandlordRefundRequestListRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordRefundRequestListRoute.name, initialChildren: children);

  static const String name = 'LandlordRefundRequestListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i23.LandlordRefundRequestListView();
    },
  );
}

/// generated route for
/// [_i24.LandlordRentInvitationDetailsView]
class LandlordRentInvitationDetailsRoute
    extends _i73.PageRouteInfo<LandlordRentInvitationDetailsRouteArgs> {
  LandlordRentInvitationDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordRentInvitationDetailsRoute.name,
         args: LandlordRentInvitationDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'LandlordRentInvitationDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordRentInvitationDetailsRouteArgs>();
      return _i24.LandlordRentInvitationDetailsView(key: args.key, id: args.id);
    },
  );
}

class LandlordRentInvitationDetailsRouteArgs {
  const LandlordRentInvitationDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'LandlordRentInvitationDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i25.LandlordRentInvitationListView]
class LandlordRentInvitationListRoute extends _i73.PageRouteInfo<void> {
  const LandlordRentInvitationListRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordRentInvitationListRoute.name, initialChildren: children);

  static const String name = 'LandlordRentInvitationListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i25.LandlordRentInvitationListView();
    },
  );
}

/// generated route for
/// [_i26.LandlordRentPaymentListView]
class LandlordRentPaymentListRoute extends _i73.PageRouteInfo<void> {
  const LandlordRentPaymentListRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordRentPaymentListRoute.name, initialChildren: children);

  static const String name = 'LandlordRentPaymentListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i26.LandlordRentPaymentListView();
    },
  );
}

/// generated route for
/// [_i27.LandlordSettingsView]
class LandlordSettingsRoute
    extends _i73.PageRouteInfo<LandlordSettingsRouteArgs> {
  LandlordSettingsRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordSettingsRoute.name,
         args: LandlordSettingsRouteArgs(key: key, scaffoldKey: scaffoldKey),
         initialChildren: children,
       );

  static const String name = 'LandlordSettingsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordSettingsRouteArgs>(
        orElse: () => const LandlordSettingsRouteArgs(),
      );
      return _i27.LandlordSettingsView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class LandlordSettingsRouteArgs {
  const LandlordSettingsRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'LandlordSettingsRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i9.LandlordSetupProfileView]
class LandlordSetupProfileRoute extends _i73.PageRouteInfo<void> {
  const LandlordSetupProfileRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordSetupProfileRoute.name, initialChildren: children);

  static const String name = 'LandlordSetupProfileRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i9.LandlordSetupProfileView();
    },
  );
}

/// generated route for
/// [_i28.LandlordWithdrawDetailsView]
class LandlordWithdrawDetailsRoute
    extends _i73.PageRouteInfo<LandlordWithdrawDetailsRouteArgs> {
  LandlordWithdrawDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LandlordWithdrawDetailsRoute.name,
         args: LandlordWithdrawDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'LandlordWithdrawDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LandlordWithdrawDetailsRouteArgs>();
      return _i28.LandlordWithdrawDetailsView(key: args.key, id: args.id);
    },
  );
}

class LandlordWithdrawDetailsRouteArgs {
  const LandlordWithdrawDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'LandlordWithdrawDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i29.LandlordWithdrawHistoryView]
class LandlordWithdrawHistoryRoute extends _i73.PageRouteInfo<void> {
  const LandlordWithdrawHistoryRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordWithdrawHistoryRoute.name, initialChildren: children);

  static const String name = 'LandlordWithdrawHistoryRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i29.LandlordWithdrawHistoryView();
    },
  );
}

/// generated route for
/// [_i30.LandlordWithdrawOverviewView]
class LandlordWithdrawOverviewRoute extends _i73.PageRouteInfo<void> {
  const LandlordWithdrawOverviewRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordWithdrawOverviewRoute.name, initialChildren: children);

  static const String name = 'LandlordWithdrawOverviewRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i30.LandlordWithdrawOverviewView();
    },
  );
}

/// generated route for
/// [_i31.LandlordWithdrawRequestView]
class LandlordWithdrawRequestRoute extends _i73.PageRouteInfo<void> {
  const LandlordWithdrawRequestRoute({List<_i73.PageRouteInfo>? children})
    : super(LandlordWithdrawRequestRoute.name, initialChildren: children);

  static const String name = 'LandlordWithdrawRequestRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i31.LandlordWithdrawRequestView();
    },
  );
}

/// generated route for
/// [_i32.LanguageView]
class LanguageRoute extends _i73.PageRouteInfo<LanguageRouteArgs> {
  LanguageRoute({
    _i74.Key? key,
    bool getBack = false,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         LanguageRoute.name,
         args: LanguageRouteArgs(key: key, getBack: getBack),
         initialChildren: children,
       );

  static const String name = 'LanguageRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LanguageRouteArgs>(
        orElse: () => const LanguageRouteArgs(),
      );
      return _i32.LanguageView(key: args.key, getBack: args.getBack);
    },
  );
}

class LanguageRouteArgs {
  const LanguageRouteArgs({this.key, this.getBack = false});

  final _i74.Key? key;

  final bool getBack;

  @override
  String toString() {
    return 'LanguageRouteArgs{key: $key, getBack: $getBack}';
  }
}

/// generated route for
/// [_i33.ManageReviewView]
class ManageReviewRoute extends _i73.PageRouteInfo<ManageReviewRouteArgs> {
  ManageReviewRoute({
    _i74.Key? key,
    required int propertyId,
    _i75.Review? editModel,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         ManageReviewRoute.name,
         args: ManageReviewRouteArgs(
           key: key,
           propertyId: propertyId,
           editModel: editModel,
         ),
         initialChildren: children,
       );

  static const String name = 'ManageReviewRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageReviewRouteArgs>();
      return _i33.ManageReviewView(
        key: args.key,
        propertyId: args.propertyId,
        editModel: args.editModel,
      );
    },
  );
}

class ManageReviewRouteArgs {
  const ManageReviewRouteArgs({
    this.key,
    required this.propertyId,
    this.editModel,
  });

  final _i74.Key? key;

  final int propertyId;

  final _i75.Review? editModel;

  @override
  String toString() {
    return 'ManageReviewRouteArgs{key: $key, propertyId: $propertyId, editModel: $editModel}';
  }
}

/// generated route for
/// [_i34.ManageTenantView]
class ManageTenantRoute extends _i73.PageRouteInfo<ManageTenantRouteArgs> {
  ManageTenantRoute({
    _i74.Key? key,
    _i75.Tenant? editModel,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         ManageTenantRoute.name,
         args: ManageTenantRouteArgs(key: key, editModel: editModel),
         initialChildren: children,
       );

  static const String name = 'ManageTenantRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ManageTenantRouteArgs>(
        orElse: () => const ManageTenantRouteArgs(),
      );
      return _i34.ManageTenantView(key: args.key, editModel: args.editModel);
    },
  );
}

class ManageTenantRouteArgs {
  const ManageTenantRouteArgs({this.key, this.editModel});

  final _i74.Key? key;

  final _i75.Tenant? editModel;

  @override
  String toString() {
    return 'ManageTenantRouteArgs{key: $key, editModel: $editModel}';
  }
}

/// generated route for
/// [_i35.MuteHomeView]
class MuteHomeRoute extends _i73.PageRouteInfo<void> {
  const MuteHomeRoute({List<_i73.PageRouteInfo>? children})
    : super(MuteHomeRoute.name, initialChildren: children);

  static const String name = 'MuteHomeRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i35.MuteHomeView();
    },
  );
}

/// generated route for
/// [_i36.NotificationDetailsView]
class NotificationDetailsRoute extends _i73.PageRouteInfo<void> {
  const NotificationDetailsRoute({List<_i73.PageRouteInfo>? children})
    : super(NotificationDetailsRoute.name, initialChildren: children);

  static const String name = 'NotificationDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i36.NotificationDetailsView();
    },
  );
}

/// generated route for
/// [_i37.NotificationListView]
class NotificationListRoute extends _i73.PageRouteInfo<void> {
  const NotificationListRoute({List<_i73.PageRouteInfo>? children})
    : super(NotificationListRoute.name, initialChildren: children);

  static const String name = 'NotificationListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i37.NotificationListView();
    },
  );
}

/// generated route for
/// [_i38.OnboardView]
class OnboardRoute extends _i73.PageRouteInfo<void> {
  const OnboardRoute({List<_i73.PageRouteInfo>? children})
    : super(OnboardRoute.name, initialChildren: children);

  static const String name = 'OnboardRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i38.OnboardView();
    },
  );
}

/// generated route for
/// [_i39.ResetPasswordView]
class ResetPasswordRoute extends _i73.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    _i74.Key? key,
    required String email,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         ResetPasswordRoute.name,
         args: ResetPasswordRouteArgs(key: key, email: email),
         initialChildren: children,
       );

  static const String name = 'ResetPasswordRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPasswordRouteArgs>();
      return _i39.ResetPasswordView(key: args.key, email: args.email);
    },
  );
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({this.key, required this.email});

  final _i74.Key? key;

  final String email;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i40.SignInView]
class SignInRoute extends _i73.PageRouteInfo<void> {
  const SignInRoute({List<_i73.PageRouteInfo>? children})
    : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i40.SignInView();
    },
  );
}

/// generated route for
/// [_i41.SignUpView]
class SignUpRoute extends _i73.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i74.Key? key,
    bool isTenant = false,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         SignUpRoute.name,
         args: SignUpRouteArgs(key: key, isTenant: isTenant),
         initialChildren: children,
       );

  static const String name = 'SignUpRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SignUpRouteArgs>(
        orElse: () => const SignUpRouteArgs(),
      );
      return _i41.SignUpView(key: args.key, isTenant: args.isTenant);
    },
  );
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key, this.isTenant = false});

  final _i74.Key? key;

  final bool isTenant;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, isTenant: $isTenant}';
  }
}

/// generated route for
/// [_i42.SplashView]
class SplashRoute extends _i73.PageRouteInfo<void> {
  const SplashRoute({List<_i73.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i42.SplashView();
    },
  );
}

/// generated route for
/// [_i43.SubscriptionDetailsView]
class SubscriptionDetailsRoute extends _i73.PageRouteInfo<void> {
  const SubscriptionDetailsRoute({List<_i73.PageRouteInfo>? children})
    : super(SubscriptionDetailsRoute.name, initialChildren: children);

  static const String name = 'SubscriptionDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i43.SubscriptionDetailsView();
    },
  );
}

/// generated route for
/// [_i44.SubscriptionListView]
class SubscriptionListRoute extends _i73.PageRouteInfo<void> {
  const SubscriptionListRoute({List<_i73.PageRouteInfo>? children})
    : super(SubscriptionListRoute.name, initialChildren: children);

  static const String name = 'SubscriptionListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i44.SubscriptionListView();
    },
  );
}

/// generated route for
/// [_i45.TenancyAgreementDetailsView]
class TenancyAgreementDetailsRoute
    extends _i73.PageRouteInfo<TenancyAgreementDetailsRouteArgs> {
  TenancyAgreementDetailsRoute({
    _i74.Key? key,
    required _i76.LandlordTenancyAgreement agreement,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenancyAgreementDetailsRoute.name,
         args: TenancyAgreementDetailsRouteArgs(key: key, agreement: agreement),
         initialChildren: children,
       );

  static const String name = 'TenancyAgreementDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenancyAgreementDetailsRouteArgs>();
      return _i45.TenancyAgreementDetailsView(
        key: args.key,
        agreement: args.agreement,
      );
    },
  );
}

class TenancyAgreementDetailsRouteArgs {
  const TenancyAgreementDetailsRouteArgs({this.key, required this.agreement});

  final _i74.Key? key;

  final _i76.LandlordTenancyAgreement agreement;

  @override
  String toString() {
    return 'TenancyAgreementDetailsRouteArgs{key: $key, agreement: $agreement}';
  }
}

/// generated route for
/// [_i46.TenancyManageAgreementView]
class TenancyManageAgreementRoute
    extends _i73.PageRouteInfo<TenancyManageAgreementRouteArgs> {
  TenancyManageAgreementRoute({
    _i74.Key? key,
    _i75.LandlordTenancyAgreement? editModel,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenancyManageAgreementRoute.name,
         args: TenancyManageAgreementRouteArgs(key: key, editModel: editModel),
         initialChildren: children,
       );

  static const String name = 'TenancyManageAgreementRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenancyManageAgreementRouteArgs>(
        orElse: () => const TenancyManageAgreementRouteArgs(),
      );
      return _i46.TenancyManageAgreementView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class TenancyManageAgreementRouteArgs {
  const TenancyManageAgreementRouteArgs({this.key, this.editModel});

  final _i74.Key? key;

  final _i75.LandlordTenancyAgreement? editModel;

  @override
  String toString() {
    return 'TenancyManageAgreementRouteArgs{key: $key, editModel: $editModel}';
  }
}

/// generated route for
/// [_i47.TenantAllPropertyView]
class TenantAllPropertyRoute extends _i73.PageRouteInfo<void> {
  const TenantAllPropertyRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantAllPropertyRoute.name, initialChildren: children);

  static const String name = 'TenantAllPropertyRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i47.TenantAllPropertyView();
    },
  );
}

/// generated route for
/// [_i48.TenantApplicationDetailsView]
class TenantApplicationDetailsRoute
    extends _i73.PageRouteInfo<TenantApplicationDetailsRouteArgs> {
  TenantApplicationDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantApplicationDetailsRoute.name,
         args: TenantApplicationDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'TenantApplicationDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantApplicationDetailsRouteArgs>();
      return _i48.TenantApplicationDetailsView(key: args.key, id: args.id);
    },
  );
}

class TenantApplicationDetailsRouteArgs {
  const TenantApplicationDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'TenantApplicationDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i49.TenantApplicationListView]
class TenantApplicationListRoute extends _i73.PageRouteInfo<void> {
  const TenantApplicationListRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantApplicationListRoute.name, initialChildren: children);

  static const String name = 'TenantApplicationListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i49.TenantApplicationListView();
    },
  );
}

/// generated route for
/// [_i50.TenantBottomNavView]
class TenantBottomNavRoute extends _i73.PageRouteInfo<void> {
  const TenantBottomNavRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantBottomNavRoute.name, initialChildren: children);

  static const String name = 'TenantBottomNavRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i50.TenantBottomNavView();
    },
  );
}

/// generated route for
/// [_i51.TenantCancelMyRentView]
class TenantCancelMyRentRoute extends _i73.PageRouteInfo<void> {
  const TenantCancelMyRentRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantCancelMyRentRoute.name, initialChildren: children);

  static const String name = 'TenantCancelMyRentRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i51.TenantCancelMyRentView();
    },
  );
}

/// generated route for
/// [_i52.TenantDetailsView]
class TenantDetailsRoute extends _i73.PageRouteInfo<TenantDetailsRouteArgs> {
  TenantDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantDetailsRoute.name,
         args: TenantDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'TenantDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantDetailsRouteArgs>();
      return _i52.TenantDetailsView(key: args.key, id: args.id);
    },
  );
}

class TenantDetailsRouteArgs {
  const TenantDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'TenantDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i53.TenantEditProfileView]
class TenantEditProfileRoute extends _i73.PageRouteInfo<void> {
  const TenantEditProfileRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantEditProfileRoute.name, initialChildren: children);

  static const String name = 'TenantEditProfileRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i53.TenantEditProfileView();
    },
  );
}

/// generated route for
/// [_i54.TenantHomeView]
class TenantHomeRoute extends _i73.PageRouteInfo<TenantHomeRouteArgs> {
  TenantHomeRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantHomeRoute.name,
         args: TenantHomeRouteArgs(key: key, scaffoldKey: scaffoldKey),
         initialChildren: children,
       );

  static const String name = 'TenantHomeRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantHomeRouteArgs>(
        orElse: () => const TenantHomeRouteArgs(),
      );
      return _i54.TenantHomeView(key: args.key, scaffoldKey: args.scaffoldKey);
    },
  );
}

class TenantHomeRouteArgs {
  const TenantHomeRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'TenantHomeRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i55.TenantLeaseDetailsView]
class TenantLeaseDetailsRoute extends _i73.PageRouteInfo<void> {
  const TenantLeaseDetailsRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantLeaseDetailsRoute.name, initialChildren: children);

  static const String name = 'TenantLeaseDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i55.TenantLeaseDetailsView();
    },
  );
}

/// generated route for
/// [_i56.TenantLeaseListView]
class TenantLeaseListRoute extends _i73.PageRouteInfo<void> {
  const TenantLeaseListRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantLeaseListRoute.name, initialChildren: children);

  static const String name = 'TenantLeaseListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i56.TenantLeaseListView();
    },
  );
}

/// generated route for
/// [_i57.TenantListView]
class TenantListRoute extends _i73.PageRouteInfo<void> {
  const TenantListRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantListRoute.name, initialChildren: children);

  static const String name = 'TenantListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i57.TenantListView();
    },
  );
}

/// generated route for
/// [_i58.TenantMaintenanceDetailsView]
class TenantMaintenanceDetailsRoute
    extends _i73.PageRouteInfo<TenantMaintenanceDetailsRouteArgs> {
  TenantMaintenanceDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantMaintenanceDetailsRoute.name,
         args: TenantMaintenanceDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'TenantMaintenanceDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantMaintenanceDetailsRouteArgs>();
      return _i58.TenantMaintenanceDetailsView(key: args.key, id: args.id);
    },
  );
}

class TenantMaintenanceDetailsRouteArgs {
  const TenantMaintenanceDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'TenantMaintenanceDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i59.TenantMaintenanceListView]
class TenantMaintenanceListRoute
    extends _i73.PageRouteInfo<TenantMaintenanceListRouteArgs> {
  TenantMaintenanceListRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantMaintenanceListRoute.name,
         args: TenantMaintenanceListRouteArgs(
           key: key,
           scaffoldKey: scaffoldKey,
         ),
         initialChildren: children,
       );

  static const String name = 'TenantMaintenanceListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantMaintenanceListRouteArgs>(
        orElse: () => const TenantMaintenanceListRouteArgs(),
      );
      return _i59.TenantMaintenanceListView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class TenantMaintenanceListRouteArgs {
  const TenantMaintenanceListRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'TenantMaintenanceListRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i60.TenantManageMaintenanceView]
class TenantManageMaintenanceRoute
    extends _i73.PageRouteInfo<TenantManageMaintenanceRouteArgs> {
  TenantManageMaintenanceRoute({
    _i74.Key? key,
    _i75.Maintenance? editModel,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantManageMaintenanceRoute.name,
         args: TenantManageMaintenanceRouteArgs(key: key, editModel: editModel),
         initialChildren: children,
       );

  static const String name = 'TenantManageMaintenanceRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantManageMaintenanceRouteArgs>(
        orElse: () => const TenantManageMaintenanceRouteArgs(),
      );
      return _i60.TenantManageMaintenanceView(
        key: args.key,
        editModel: args.editModel,
      );
    },
  );
}

class TenantManageMaintenanceRouteArgs {
  const TenantManageMaintenanceRouteArgs({this.key, this.editModel});

  final _i74.Key? key;

  final _i75.Maintenance? editModel;

  @override
  String toString() {
    return 'TenantManageMaintenanceRouteArgs{key: $key, editModel: $editModel}';
  }
}

/// generated route for
/// [_i61.TenantManageRefundRequestView]
class TenantManageRefundRequestRoute extends _i73.PageRouteInfo<void> {
  const TenantManageRefundRequestRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantManageRefundRequestRoute.name, initialChildren: children);

  static const String name = 'TenantManageRefundRequestRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i61.TenantManageRefundRequestView();
    },
  );
}

/// generated route for
/// [_i62.TenantMyRentDetailsView]
class TenantMyRentDetailsRoute
    extends _i73.PageRouteInfo<TenantMyRentDetailsRouteArgs> {
  TenantMyRentDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantMyRentDetailsRoute.name,
         args: TenantMyRentDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'TenantMyRentDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantMyRentDetailsRouteArgs>();
      return _i62.TenantMyRentDetailsView(key: args.key, id: args.id);
    },
  );
}

class TenantMyRentDetailsRouteArgs {
  const TenantMyRentDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'TenantMyRentDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i63.TenantMyRentListView]
class TenantMyRentListRoute
    extends _i73.PageRouteInfo<TenantMyRentListRouteArgs> {
  TenantMyRentListRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantMyRentListRoute.name,
         args: TenantMyRentListRouteArgs(key: key, scaffoldKey: scaffoldKey),
         initialChildren: children,
       );

  static const String name = 'TenantMyRentListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantMyRentListRouteArgs>(
        orElse: () => const TenantMyRentListRouteArgs(),
      );
      return _i63.TenantMyRentListView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class TenantMyRentListRouteArgs {
  const TenantMyRentListRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'TenantMyRentListRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i64.TenantPropertyDetailsView]
class TenantPropertyDetailsRoute
    extends _i73.PageRouteInfo<TenantPropertyDetailsRouteArgs> {
  TenantPropertyDetailsRoute({
    _i74.Key? key,
    required int id,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantPropertyDetailsRoute.name,
         args: TenantPropertyDetailsRouteArgs(key: key, id: id),
         initialChildren: children,
       );

  static const String name = 'TenantPropertyDetailsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantPropertyDetailsRouteArgs>();
      return _i64.TenantPropertyDetailsView(key: args.key, id: args.id);
    },
  );
}

class TenantPropertyDetailsRouteArgs {
  const TenantPropertyDetailsRouteArgs({this.key, required this.id});

  final _i74.Key? key;

  final int id;

  @override
  String toString() {
    return 'TenantPropertyDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i65.TenantRecommendedPropertyView]
class TenantRecommendedPropertyRoute extends _i73.PageRouteInfo<void> {
  const TenantRecommendedPropertyRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantRecommendedPropertyRoute.name, initialChildren: children);

  static const String name = 'TenantRecommendedPropertyRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i65.TenantRecommendedPropertyView();
    },
  );
}

/// generated route for
/// [_i66.TenantRefundRequestListView]
class TenantRefundRequestListRoute extends _i73.PageRouteInfo<void> {
  const TenantRefundRequestListRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantRefundRequestListRoute.name, initialChildren: children);

  static const String name = 'TenantRefundRequestListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i66.TenantRefundRequestListView();
    },
  );
}

/// generated route for
/// [_i67.TenantRentPaymentListView]
class TenantRentPaymentListRoute extends _i73.PageRouteInfo<void> {
  const TenantRentPaymentListRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantRentPaymentListRoute.name, initialChildren: children);

  static const String name = 'TenantRentPaymentListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i67.TenantRentPaymentListView();
    },
  );
}

/// generated route for
/// [_i68.TenantSecurityDepositListView]
class TenantSecurityDepositListRoute extends _i73.PageRouteInfo<void> {
  const TenantSecurityDepositListRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantSecurityDepositListRoute.name, initialChildren: children);

  static const String name = 'TenantSecurityDepositListRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i68.TenantSecurityDepositListView();
    },
  );
}

/// generated route for
/// [_i69.TenantSettingsView]
class TenantSettingsRoute extends _i73.PageRouteInfo<TenantSettingsRouteArgs> {
  TenantSettingsRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantSettingsRoute.name,
         args: TenantSettingsRouteArgs(key: key, scaffoldKey: scaffoldKey),
         initialChildren: children,
       );

  static const String name = 'TenantSettingsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantSettingsRouteArgs>(
        orElse: () => const TenantSettingsRouteArgs(),
      );
      return _i69.TenantSettingsView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class TenantSettingsRouteArgs {
  const TenantSettingsRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'TenantSettingsRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i53.TenantSetupProfileView]
class TenantSetupProfileRoute extends _i73.PageRouteInfo<void> {
  const TenantSetupProfileRoute({List<_i73.PageRouteInfo>? children})
    : super(TenantSetupProfileRoute.name, initialChildren: children);

  static const String name = 'TenantSetupProfileRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i53.TenantSetupProfileView();
    },
  );
}

/// generated route for
/// [_i70.TenantWishlistView]
class TenantWishlistRoute extends _i73.PageRouteInfo<TenantWishlistRouteArgs> {
  TenantWishlistRoute({
    _i74.Key? key,
    _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey,
    List<_i73.PageRouteInfo>? children,
  }) : super(
         TenantWishlistRoute.name,
         args: TenantWishlistRouteArgs(key: key, scaffoldKey: scaffoldKey),
         initialChildren: children,
       );

  static const String name = 'TenantWishlistRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TenantWishlistRouteArgs>(
        orElse: () => const TenantWishlistRouteArgs(),
      );
      return _i70.TenantWishlistView(
        key: args.key,
        scaffoldKey: args.scaffoldKey,
      );
    },
  );
}

class TenantWishlistRouteArgs {
  const TenantWishlistRouteArgs({this.key, this.scaffoldKey});

  final _i74.Key? key;

  final _i74.GlobalKey<_i74.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'TenantWishlistRouteArgs{key: $key, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i71.TermsConditionsView]
class TermsConditionsRoute extends _i73.PageRouteInfo<void> {
  const TermsConditionsRoute({List<_i73.PageRouteInfo>? children})
    : super(TermsConditionsRoute.name, initialChildren: children);

  static const String name = 'TermsConditionsRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i71.TermsConditionsView();
    },
  );
}

/// generated route for
/// [_i72.WelcomeView]
class WelcomeRoute extends _i73.PageRouteInfo<void> {
  const WelcomeRoute({List<_i73.PageRouteInfo>? children})
    : super(WelcomeRoute.name, initialChildren: children);

  static const String name = 'WelcomeRoute';

  static _i73.PageInfo page = _i73.PageInfo(
    name,
    builder: (data) {
      return const _i72.WelcomeView();
    },
  );
}
