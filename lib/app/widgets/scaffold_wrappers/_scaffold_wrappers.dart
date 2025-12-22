import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../core/core.dart';
import '../widgets.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
    super.actions,
    super.actionsIconTheme,
    super.automaticallyImplyLeading,
    super.bottomOpacity,
    super.centerTitle,
    super.clipBehavior,
    super.elevation,
    super.excludeHeaderSemantics,
    super.flexibleSpace,
    super.forceMaterialTransparency,
    super.foregroundColor,
    super.iconTheme,
    super.leadingWidth,
    super.notificationPredicate,
    super.primary,
    super.scrolledUnderElevation,
    super.shadowColor,
    super.surfaceTintColor,
    super.systemOverlayStyle,
    super.title,
    super.titleSpacing = 0,
    super.titleTextStyle,
    super.toolbarHeight,
    super.toolbarOpacity,
    super.toolbarTextStyle,
    super.backgroundColor,
    Widget? leading,
    ShapeBorder? shape,
    PreferredSizeWidget? bottom,
    GlobalKey<ScaffoldState>? scaffoldKey,
    // super.bottom,
  }) : super(
          shape: shape ??
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
          bottom: bottom ??
              PreferredSize(
                preferredSize: Size(double.maxFinite, 10.fH),
                child: SizedBox.fromSize(size: Size.fromHeight(10.fH)),
              ),
          leading: leading ??
              (automaticallyImplyLeading == false
                  ? null
                  : scaffoldKey?.currentState?.hasDrawer == true
                      ? IconButton(
                          onPressed: scaffoldKey?.currentState?.openDrawer,
                          icon: const Icon(Icons.menu),
                          tooltip: 'Open navigation menu',
                        )
                      : const AutoLeadingButton()),
        );
}

class ScaffoldBodyWrapper extends StatelessWidget {
  const ScaffoldBodyWrapper({
    super.key,
    required this.body,
    this.backgroundColor,
  });
  final Widget body;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      // margin: EdgeInsets.only(top: 8.fH),
      constraints: BoxConstraints.tight(Size.infinite),
      decoration: BoxDecoration(
        color: backgroundColor ?? _theme.colorScheme.primaryContainer,
        borderRadius: borderRadius,
      ),
      child: body,
    );
  }

  static BorderRadiusGeometry borderRadius = const BorderRadius.vertical(
    top: Radius.circular(30),
  );
}

class ScaffoldBottomNavWrapper extends StatelessWidget {
  const ScaffoldBottomNavWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return ColoredBox(
      color: _theme.colorScheme.primaryContainer,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _theme.colorScheme.primaryContainer,
          boxShadow: [DAppBoxShadowStyles.boxShadow1],
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          backgroundBlendMode: BlendMode.srcIn,
        ),
        child: child,
      ),
    );
  }
}

class FormWrapper extends StatelessWidget {
  const FormWrapper({
    super.key,
    required this.builder,
    this.canPop,
    this.onPopInvokedWithResult,
    this.useDefaultInvoker = false,
    this.defaultInvokerCallback,
    this.title,
    this.description,
  }) :
        /* 
        assert(
          !useDefaultInvoker || title != null,
          '`title must be passed to use default invoker`',
        ),
        */
        assert(
          useDefaultInvoker || defaultInvokerCallback == null,
          '`defaultInvokerCallback must be null when useDefaultInvoker is false`',
        );
  // ignore: library_private_types_in_public_api
  final _FormWrapperBuilder builder;

  final bool? canPop;
  final void Function(bool didPop, Object? result)? onPopInvokedWithResult;
  final bool useDefaultInvoker;
  final VoidCallback? defaultInvokerCallback;
  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Form(
      canPop: useDefaultInvoker ? false : canPop,
      onPopInvokedWithResult: !useDefaultInvoker
          ? onPopInvokedWithResult
          : (dp, rt) => defaultInvoker(context, didPop: dp, result: rt),
      child: Builder(
        builder: (formContext) => builder(formContext),
      ),
    );
  }

  void defaultInvoker(
    BuildContext context, {
    required bool didPop,
    Object? result,
  }) async {
    if (didPop) return;

    final _result = await showDialog<bool>(
      context: context,
      builder: (popContext) {
        return InfoDialog.confirmation(
          title: title ?? 'Do you want to go back?',
          description:
              description ?? 'Fields that are changed may not be saved!',
          onDecide: Navigator.of(popContext).pop,
        );
      },
    );

    if (_result == true && context.mounted) {
      context.router.maybePop(result);
      return defaultInvokerCallback?.call();
    }
  }

  static bool validate(BuildContext formContext, {bool unfocusPrimary = true}) {
    if (unfocusPrimary) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
    return Form.maybeOf(formContext)?.validate() == true;
  }
}

typedef _FormWrapperBuilder = Widget Function(BuildContext formContext);
