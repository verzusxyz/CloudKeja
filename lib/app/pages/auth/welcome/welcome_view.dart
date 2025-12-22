import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../routes/app_routes.gr.dart';

@RoutePage()
class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      backgroundColor: DAppColors.kSurfaceLight,
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        foregroundColor: DAppColors.kOnSurfaceLight,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox.square(
            dimension: 120.fW,
            child: Image.asset(DAppImages.splashLogo),
          ).fMarginOnly(top: 40.fH),

          // Prompt
          Container(
            constraints: const BoxConstraints.tightFor(
              width: double.maxFinite,
            ),
            margin: EdgeInsets.all(24.fW),
            padding: EdgeInsets.all(24.fW),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: _theme.colorScheme.primaryContainer,
              boxShadow: [DAppBoxShadowStyles.boxShadow1],
            ),
            child: Column(
              children: [
                Text(
                  // 'Who are you?',
                  context.t.pages.welcome.title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: _theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox.square(dimension: 8),
                Text(
                  // 'Please select the option below.',
                  context.t.pages.welcome.subtitle,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: _theme.textTheme.bodyLarge,
                ),
                const SizedBox.square(dimension: 24),

                // Landlord Login
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: ColoredBox(
                    color: _theme.colorScheme.secondary.withValues(alpha: 0.10),
                    child: ListTile(
                      onTap: () => _handleSignUpRoute(context),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.fW),
                      // title: const Text('Landlord'),
                      title: Text(
                        context.t.common.landlord,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // subtitle: const Text('Manage your own properties'),
                      subtitle: Text(
                        context.t.pages.welcome.extra.landlordTag,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
                        fontSize: 14.fW,
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: _theme.colorScheme.secondary,
                        child: const Icon(
                          Icons.double_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox.square(dimension: 20.fH),

                // Tenant Login
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: ColoredBox(
                    color: _theme.colorScheme.primary.withValues(alpha: 0.10),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.fW),
                      onTap: () => _handleSignUpRoute(context, true),
                      // title: const Text('Tenants'),
                      title: Text(
                        context.t.common.tenant,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      // subtitle: const Text('Log in to your rental account'),
                      subtitle: Text(
                        context.t.pages.welcome.extra.tenantTag,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
                        fontSize: 14.fW,
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: _theme.colorScheme.primary,
                        child: const Icon(
                          Icons.double_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleSignUpRoute(
    BuildContext ctx, [
    bool isTenant = false,
  ]) async {
    if (ctx.mounted) {
      await ctx.router.push(SignUpRoute(isTenant: isTenant));
    }
  }
}
