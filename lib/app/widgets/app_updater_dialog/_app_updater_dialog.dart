import 'package:flutter/material.dart';

import '../../core/core.dart';

class AppUpdaterDialog extends StatelessWidget {
  const AppUpdaterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      insetPadding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              'Update ${AppConfig.appName}',
              style: _theme.textTheme.titleMedium?.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox.square(dimension: 4),

            // Description
            Text(
              '${AppConfig.appName} recommends that you update to the latest version. You can keep continuing the app while downloading the update.',
              style: _theme.textTheme.bodyLarge?.copyWith(
                color: _theme.colorScheme.secondary,
              ),
            ),
            const SizedBox.square(dimension: 24),

            // Action
            Row(
              spacing: 8,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 44,
                    child: TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text('No Thanks'),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 44,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: Text('Update'),
                    ),
                  ),
                )
              ],
            ),

            // Flag
            const Divider(height: 32),
            Row(
              spacing: 10,
              children: [
                SizedBox.square(
                  dimension: 28,
                  child: Image.asset(DAppImages.googlePlay),
                ),
                Expanded(
                  child: Text(
                    'Google Play',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: _theme.textTheme.titleMedium?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: _theme.colorScheme.secondary,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
