import 'package:flutter/material.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';

class TenantListTile extends StatelessWidget {
  const TenantListTile({
    super.key,
    required this.tenantName,
    required this.tenantID,
    this.imageURL,
    this.onTap,
  });
  final String tenantName;
  final String tenantID;
  final String? imageURL;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: SizedBox.square(
        dimension: 44,
        child: CustomNetworkImage(url: imageURL),
      ),
      title: Text(tenantName),
      titleTextStyle: _theme.textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
      // subtitle: Text('Tenant ID: $tenantID'),
      subtitle: Text('${context.t.common.tenantId}: $tenantID'),
      subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
        color: _theme.colorScheme.secondary,
      ),
    );
  }
}
