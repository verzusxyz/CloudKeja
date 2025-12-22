import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../../common/widgets/widgets.dart';

@RoutePage()
class TenantSettingsView extends ConsumerWidget {
  const TenantSettingsView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  List<SettingsNavTile> _navigations(BuildContext context) {
    return [
      SettingsNavTile(
        // title: "Profile",
        title: context.t.common.profile,
        icon: IconlyBold.profile,
        color: DAppColors.kPrimary,
        route: TenantEditProfileRoute(),
      ),
      SettingsNavTile(
        // title: "Language",
        title: context.t.common.language,
        trailing: GlobalAppLocaleHolder.currentLocale.name,
        icon: Icons.translate,
        color: const Color(0xff02A9FF),
        route: LanguageRoute(getBack: true),
      ),
      /*
      SettingsNavTile(
        // title: "Contact Us",
        title: context.t.common.contactUs,
        icon: IconlyBold.message,
        color: DAppColors.kProcessingColor,
      ),
      */
      SettingsNavTile(
        // title: "Terms & Conditions",
        title: context.t.common.termsAndConditions,
        icon: IconlyBold.lock,
        color: DAppColors.kPrimary,
        route: TermsConditionsRoute(),
      ),
      SettingsNavTile(
        // title: "About Us",
        title: context.t.common.aboutUs,
        icon: IconlyBold.lock,
        color: Color(0xff02A9FF),
        route: AboutUsRoute(),
      ),
      SettingsNavTile(
        // title: "Logout",
        title: context.t.common.logout,
        icon: IconlyBold.logout,
        color: DAppColors.kPendingColor,
        type: SettingsNavTileType.function,
      ),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userRepositoryProvider);
    final userNofitier = ref.watch(userRepositoryProvider.notifier);

    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(context.t.common.profile),
        scaffoldKey: scaffoldKey,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Row(
            children: [
              SizedBox.square(
                dimension: 100,
                child: UserAvatarPicker(
                  image: user.value?.image,
                  showBorder: true,
                  borderColor: _theme.colorScheme.onPrimary,
                ),
              ),
              const SizedBox.square(dimension: 20),
              Expanded(
                child: Text.rich(
                  TextSpan(
                    text: '${user.value?.name}\n',
                    children: [
                      TextSpan(
                        text: user.value?.email,
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          color: _theme.colorScheme.onPrimary,
                        ),
                      ),
                    ],
                    style: _theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: _theme.colorScheme.onPrimary,
                    ),
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ).fMarginLTRB(24, 10, 24, 16),
        ),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () => userNofitier.getUser(),
        child: ScaffoldBodyWrapper(
          body: PageNavigationListView(
            navTiles: _navigations(context),
            onTap: (value) async {
              if (value.type == SettingsNavTileType.navigation &&
                  value.route != null) {
                context.router.push(value.route!);
              } else if (value.type == SettingsNavTileType.function) {
                return await SharedWidgets.handleSignOut(context);
              }
            },
          ),
        ),
      ),
    );
  }
}
