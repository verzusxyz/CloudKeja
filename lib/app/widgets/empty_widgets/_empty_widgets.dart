import 'package:flutter/material.dart';

import '../../core/core.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    this.showWhen = true,
    required this.child,
    this.emptyBuilder,
    this.replaceDefault = true,
  });
  final bool showWhen;
  final Widget child;
  final WidgetBuilder? emptyBuilder;
  final bool replaceDefault;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (showWhen) {
          if (replaceDefault && emptyBuilder != null) {
            return emptyBuilder!(context);
          }

          return SizedBox.fromSize(
            size: constraints.biggest,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 10,
              children: [
                Flexible(
                  child: Image.asset(
                    DAppImages.emptyScreenLogo,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                if (!replaceDefault && emptyBuilder != null)
                  emptyBuilder!(context),
              ],
            ),
          );
        }

        return child;
      },
    );
  }
}
