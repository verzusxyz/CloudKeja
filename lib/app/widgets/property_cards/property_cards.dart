import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../i18n/strings.g.dart';
import '../../core/core.dart';
import '../widgets.dart';

export '../../core/types/types.dart' show PropertyStatus;

part '_property_card_horizontal.dart';
part '_property_card_vertical.dart';

class PropertyCardData {
  final int id;
  final String? landlordName;
  final String? coverImageUrl;
  final String? propertyTitle;
  final num? monthlyRent;
  final String? category;
  final String? address;
  final int? bedRooms;
  final int? bathRooms;
  final num? propertySize;
  final String? sizeUnit;

  const PropertyCardData({
    required this.id,
    this.landlordName,
    this.coverImageUrl,
    this.propertyTitle,
    this.monthlyRent,
    this.category,
    this.address,
    this.bedRooms,
    this.bathRooms,
    this.propertySize,
    this.sizeUnit,
  });

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;

    return other is PropertyCardData &&
        other.id == id &&
        other.landlordName == landlordName &&
        other.coverImageUrl == coverImageUrl &&
        other.propertyTitle == propertyTitle &&
        other.monthlyRent == monthlyRent &&
        other.category == category &&
        other.address == address &&
        other.bedRooms == bedRooms &&
        other.bathRooms == bathRooms &&
        other.propertySize == propertySize &&
        other.sizeUnit == sizeUnit;
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      landlordName,
      coverImageUrl,
      propertyTitle,
      monthlyRent,
      category,
      address,
      bedRooms,
      bathRooms,
      propertySize,
      sizeUnit,
    );
  }

  static String buildAddress(
    List<String?> addressParts, {
    String separator = " > ",
  }) {
    if (addressParts.every((part) => part == null || part.isEmpty)) {
      return "N/A";
    }

    final filteredParts = addressParts.where(
      (part) => part != null && part.isNotEmpty,
    );

    return filteredParts.join(separator);
  }

  static Future<void> handleFavTap<T>(
    BuildContext ctx, {
    required Future<Either<String, T>> Function() callback,
    void Function(T value)? onSuccess,
    bool showInvoker = false,
  }) async {
    bool? confirmation = true;
    if (showInvoker) {
      confirmation = await showDialog<bool>(
        context: ctx,
        builder: (popContext) {
          return InfoDialog.confirmation(
            title: 'Are you sure to remove?',
            description:
                'Are you sure to remove this property from your wish list?',
            onDecide: (v) => Navigator.of(popContext).pop(v),
          );
        },
      );
    }

    if (confirmation == true && ctx.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(callback),
      );

      if (ctx.mounted) {
        if (_result.isFailure) {
          showCustomSnackBar(
            ctx,
            content: Text(_result.left!),
            customSnackBarType: CustomOverlayType.error,
          );
          return;
        }

        return onSuccess?.call(_result.right as T);
      }
    }
  }
}
