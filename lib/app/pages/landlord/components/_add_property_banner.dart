import 'package:flutter/material.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';

class AddPropertyBanner extends StatelessWidget {
  const AddPropertyBanner({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: _theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [DAppBoxShadowStyles.boxShadow1],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: onPressed,
            leading: SizedBox(
              height: 50,
              child: Image.asset(DAppImages.houseProperty),
            ),
            // title: const Text('Looking To Rent Out Your Property?'),
            title: Text(context.t.common.addPropertyBannerTitle),
          ),
          const SizedBox.square(dimension: 16),

          // Action Button
          SizedBox.fromSize(
            size: const Size.fromHeight(40),
            child: ElevatedButton(
              onPressed: onPressed,
              // child: const Text('Add Property'),
              child: Text(context.t.action.addProperty),
            ),
          )
        ],
      ),
    );
  }
}
