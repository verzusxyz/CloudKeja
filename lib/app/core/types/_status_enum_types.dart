import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';
import '../core.dart';

enum PropertyStatus {
  allProperty,
  pending(
    statusId: 0,
    statusColor: DAppColors.kPendingColor,
  ),
  active(
    statusId: 1,
    statusColor: DAppColors.kCompletedColor,
  ),
  inactive(
    statusId: 2,
    statusColor: DAppColors.kProcessingColor,
  ),
  rejected(
    statusId: 3,
    statusColor: DAppColors.kRejectedColor,
  );

  final Color? statusColor;
  final int? statusId;
  String label(BuildContext context) {
    return switch (this) {
      allProperty => context.t.enums.propertyStatus.allProperty,
      pending => context.t.enums.propertyStatus.pending,
      active => context.t.enums.propertyStatus.active,
      inactive => context.t.enums.propertyStatus.inactive,
      rejected => context.t.enums.propertyStatus.rejected,
    };
  }

  const PropertyStatus({this.statusId, this.statusColor});

  static PropertyStatus fromId(int? value) {
    return PropertyStatus.values.firstWhere(
      (element) => element.statusId == value,
      orElse: () => PropertyStatus.pending,
    );
  }

  bool get isPending => this == PropertyStatus.pending;
  bool get isActive => this == PropertyStatus.active;
  bool get isInactive => this == PropertyStatus.inactive;
  bool get isRejected => this == PropertyStatus.rejected;
}

enum PropertyType {
  apartmentCondominium(value: 1),
  house(value: 2),
  commercialProperty(value: 3),
  land(value: 4),
  room(value: 5);

  final int? value;
  String label(BuildContext context) {
    return switch (this) {
      apartmentCondominium => context.t.enums.propertyType.apartmentCondominium,
      house => context.t.enums.propertyType.house,
      commercialProperty => context.t.enums.propertyType.commercialProperty,
      land => context.t.enums.propertyType.land,
      room => context.t.enums.propertyType.room,
    };
  }

  const PropertyType({this.value});
}

enum ApplicationStatus {
  all,
  pending(
    statusId: 0,
    statusColor: DAppColors.kPendingColor,
  ),
  processing(
    statusId: 1,
    statusColor: DAppColors.kProcessingColor,
  ),
  approved(
    statusId: 2,
    statusColor: DAppColors.kCompletedColor,
  ),
  rejected(
    statusId: 3,
    statusColor: DAppColors.kRejectedColor,
  );

  final Color? statusColor;
  String label(BuildContext context) {
    return switch (this) {
      all => context.t.enums.applicationStatus.all,
      pending => context.t.enums.applicationStatus.pending,
      processing => context.t.enums.applicationStatus.processing,
      approved => context.t.enums.applicationStatus.approved,
      rejected => context.t.enums.applicationStatus.rejected,
    };
  }

  final int? statusId;
  const ApplicationStatus({
    this.statusColor,
    this.statusId,
  });

  static ApplicationStatus fromId(int? value) {
    return ApplicationStatus.values.firstWhere(
      (element) => element.statusId == value,
      orElse: () => ApplicationStatus.pending,
    );
  }

  bool get isPending => this == ApplicationStatus.pending;
  bool get isProcessing => this == ApplicationStatus.processing;
  bool get isApproved => this == ApplicationStatus.approved;
  bool get isRejected => this == ApplicationStatus.rejected;
}

enum MyRentStatus {
  pending(
    statusColor: DAppColors.kPendingColor,
    status: 'pending',
  ),
  processing(
    statusColor: DAppColors.kProcessingColor,
    status: 'processing',
  ),
  active(
    statusColor: DAppColors.kCompletedColor,
    status: 'active',
  ),
  expired(
    statusColor: DAppColors.kExpiredColor,
    status: 'expired',
  ),
  cancelled(
    statusColor: DAppColors.kRejectedColor,
    status: 'cancelled',
  );

  String label(BuildContext context) {
    return switch (this) {
      pending => context.t.enums.myRentStatus.pending,
      processing => context.t.enums.myRentStatus.processing,
      active => context.t.enums.myRentStatus.active,
      expired => context.t.enums.myRentStatus.expired,
      cancelled => context.t.enums.myRentStatus.cancelled,
    };
  }

  final Color? statusColor;
  final String? status;
  const MyRentStatus({
    this.statusColor,
    this.status,
  });

  static MyRentStatus fromString(String? value) {
    return switch (value?.trim().toLowerCase()) {
      'pending' => MyRentStatus.pending,
      'processing' => MyRentStatus.processing,
      'active' => MyRentStatus.active,
      'expired' => MyRentStatus.expired,
      'cancelled' => MyRentStatus.cancelled,
      _ => MyRentStatus.pending,
    };
  }

  bool get isPending => this == MyRentStatus.pending;
  bool get isProcessing => this == MyRentStatus.processing;
  bool get isActive => this == MyRentStatus.active;
  bool get isExpired => this == MyRentStatus.expired;
  bool get isCancelled => this == MyRentStatus.cancelled;
}

enum MaintenanceStatus {
  pending(
    color: DAppColors.kPendingColor,
    status: 'pending',
  ),
  processing(
    color: DAppColors.kProcessingColor,
    status: 'processing',
  ),
  rejected(
    color: DAppColors.kRejectedColor,
    status: 'rejected',
  ),
  completed(
    color: DAppColors.kCompletedColor,
    status: 'completed',
  );

  String label(BuildContext context) {
    return switch (this) {
      pending => context.t.enums.maintenanceStatus.pending,
      processing => context.t.enums.maintenanceStatus.processing,
      rejected => context.t.enums.maintenanceStatus.rejected,
      completed => context.t.enums.maintenanceStatus.completed,
    };
  }

  final Color? color;
  final String? status;
  const MaintenanceStatus({
    this.color,
    this.status,
  });

  static MaintenanceStatus fromString(String? value) {
    return switch (value?.trim().toLowerCase()) {
      'completed' => MaintenanceStatus.completed,
      'processing' => MaintenanceStatus.processing,
      'pending' => MaintenanceStatus.pending,
      'rejected' => MaintenanceStatus.rejected,
      _ => MaintenanceStatus.pending,
    };
  }

  bool get isPending => this == MaintenanceStatus.pending;
  bool get isProcessing => this == MaintenanceStatus.processing;
  bool get isRejected => this == MaintenanceStatus.rejected;
  bool get isCompleted => this == MaintenanceStatus.completed;
}

enum TenantProfileType {
  privateIndividual,
  company;

  String label(BuildContext context) {
    return switch (this) {
      privateIndividual => context.t.enums.tenantProfileType.privateIndividual,
      company => context.t.enums.tenantProfileType.company,
    };
  }

  static TenantProfileType fromString(String? value) {
    if (value == null) return TenantProfileType.privateIndividual;

    return values.firstWhere(
      (element) => element.name == value.trim().toLowerCase(),
      orElse: () => TenantProfileType.privateIndividual,
    );
  }

  bool get isCompany => this == TenantProfileType.company;
  bool get isPrivateIndividual => this == TenantProfileType.privateIndividual;
}

enum TenantType {
  newTenant,
  activeTenant(filterValue: 'active'),
  expiredTenant(filterValue: 'expired');

  String label(BuildContext context) {
    return switch (this) {
      newTenant => context.t.enums.tenantType.newTenant,
      activeTenant => context.t.enums.tenantType.activeTenant,
      expiredTenant => context.t.enums.tenantType.expiredTenant,
    };
  }

  final String? filterValue;
  const TenantType({this.filterValue});

  bool get isNewTenant => this == TenantType.newTenant;
  bool get isActiveTenant => this == TenantType.activeTenant;
  bool get isExpiredTenant => this == TenantType.expiredTenant;
}

enum PaymentStatus {
  all,
  pending(
    color: DAppColors.kPendingColor,
    status: 'pending',
  ),
  paid(
    color: DAppColors.kCompletedColor,
    status: 'paid',
  ),
  unpaid(
    color: DAppColors.kPendingColor,
    status: 'unpaid',
  ),
  rejected(
    color: DAppColors.kRejectedColor,
    status: 'rejected',
  ),
  refund(
    color: DAppColors.kExpiredColor,
    status: 'refund',
  );

  String label(BuildContext context) {
    return switch (this) {
      all => context.t.enums.paymentStatus.all,
      pending => context.t.enums.paymentStatus.pending,
      paid => context.t.enums.paymentStatus.paid,
      unpaid => context.t.enums.paymentStatus.unpaid,
      rejected => context.t.enums.paymentStatus.rejected,
      refund => context.t.enums.paymentStatus.refund,
    };
  }

  final Color? color;
  final String? status;
  const PaymentStatus({
    this.color,
    this.status,
  });

  static PaymentStatus fromString(String? value) {
    return switch (value?.trim().toLowerCase()) {
      'pending' => PaymentStatus.pending,
      'approved' || 'paid' => PaymentStatus.paid,
      'unpaid' => PaymentStatus.unpaid,
      'rejected' => PaymentStatus.rejected,
      'refund' => PaymentStatus.refund,
      _ => PaymentStatus.pending,
    };
  }

  bool get isPending => this == PaymentStatus.pending;
  bool get isPaid => this == PaymentStatus.paid;
  bool get isUnpaid => this == PaymentStatus.unpaid;
  bool get isRejected => this == PaymentStatus.rejected;
  bool get isRefunded => this == PaymentStatus.refund;
}

enum PaymentOptions {
  online(
    iconPath: DAppImages.onlinePaymentIcon,
    baseColor: DAppColors.kPrimary,
  ),
  offline(
    iconPath: DAppImages.offlinePaymentIcon,
    baseColor: DAppColors.kPendingColor,
  );

  String label(BuildContext context) {
    return switch (this) {
      online => context.t.enums.paymentOptions.onlinePayment,
      offline => context.t.enums.paymentOptions.offlinePayment,
    };
  }

  final String iconPath;
  final Color? baseColor;
  const PaymentOptions({
    required this.iconPath,
    this.baseColor,
  });

  bool get isOnline => this == PaymentOptions.online;
  bool get isOffline => this == PaymentOptions.offline;
}

enum PaymentType {
  securityDeposit(status: 'security_deposit'),
  rentPayment(status: 'rent_payment'),
  subscription(status: 'subscription');

  String label(BuildContext context) {
    return switch (this) {
      securityDeposit => context.t.enums.paymentType.securityDeposit,
      rentPayment => context.t.enums.paymentType.rentPayment,
      subscription => context.t.enums.paymentType.subscription,
    };
  }

  final String status;
  const PaymentType({required this.status});
}
