import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../../i18n/strings.g.dart';
import '../../../data/repositories/repositories.dart';
import '../../../core/core.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../../common/widgets/widgets.dart';

@RoutePage()
class LandlordBottomNavView extends ConsumerStatefulWidget {
  const LandlordBottomNavView({super.key});

  @override
  ConsumerState<LandlordBottomNavView> createState() =>
      _LandlordBottomNavViewState();
}

class _LandlordBottomNavViewState extends ConsumerState<LandlordBottomNavView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<PageRouteInfo<dynamic>> get rotues => [
        LandlordHomeRoute(scaffoldKey: scaffoldKey),
        LandlordApplicationListRoute(scaffoldKey: scaffoldKey),
        LandlordPropertyListRoute(scaffoldKey: scaffoldKey),
        LandlordMaintenanceListRoute(scaffoldKey: scaffoldKey),
        LandlordSettingsRoute(scaffoldKey: scaffoldKey),
      ];

  List<NavDrawerTileItem> get navigationRoutes => [
        NavDrawerTileItem(
          // title: "Home",
          title: context.t.common.home,
          icon: IconlyBold.home,
          tileType: NavDrawerTileType.bottomNav,
          bottomNavIndex: 0,
        ),
        NavDrawerTileItem(
          // title: "Dashboard",
          title: context.t.common.dashboard,
          icon: IconlyBold.category,
          route: LandlordDashboardRoute(),
        ),
        NavDrawerTileItem(
          // title: "Tenants",
          title: context.t.common.tenants,
          icon: IconlyBold.user_3,
          route: TenantListRoute(),
        ),
        NavDrawerTileItem(
          // title: "Maintenance",
          title: context.t.common.maintenance,
          icon: IconlyBold.activity,
          tileType: NavDrawerTileType.submenu,
          submenu: [
            NavDrawerTileItem(
              // title: "Maintenance List",
              title: context.t.common.maintenanceList,
              route: LandlordMaintenanceListRoute(scaffoldKey: scaffoldKey),
              bottomNavIndex: 3,
              tileType: NavDrawerTileType.bottomNav,
            ),
            NavDrawerTileItem(
              // title: "Maintenance Report",
              title: context.t.common.maintenanceReport,
              route: LandlordMaintenanceReportRoute(),
            ),
          ],
        ),
        NavDrawerTileItem(
          // title: "Labor",
          title: context.t.common.labor,
          icon: IconlyBold.user_2,
          route: LandlordLaborListRoute(),
        ),
        NavDrawerTileItem(
          // title: "Applications",
          title: context.t.common.applications,
          icon: IconlyBold.send,
          tileType: NavDrawerTileType.bottomNav,
          bottomNavIndex: 1,
        ),
        NavDrawerTileItem(
          // title: "Rent Invitation",
          title: context.t.common.rentInvitation,
          icon: IconlyBold.document,
          route: LandlordRentInvitationListRoute(),
        ),
        NavDrawerTileItem(
          // title: "Payment",
          title: context.t.common.payment,
          icon: IconlyBold.wallet,
          tileType: NavDrawerTileType.submenu,
          submenu: [
            NavDrawerTileItem(
              // title: "Rent Payment",
              title: context.t.common.rentPayment,
              route: LandlordRentPaymentListRoute(),
            ),
            NavDrawerTileItem(
              // title: "Deposit & Utility Payment",
              title: context.t.common.depositUtilityPayment,
              route: LandlordDepositUtilityPaymentListRoute(),
            ),
            NavDrawerTileItem(
              title: context.t.common.refundRequest,
              route: LandlordRefundRequestListRoute(),
            ),
          ],
        ),
        NavDrawerTileItem(
          // title: "Withdraw Request",
          title: context.t.common.withdrawRequest,
          icon: IconlyBold.tick_square,
          route: LandlordWithdrawRequestRoute(),
        ),

        /* Disabled upon requirement change
         NavDrawerTileItem(
          title: "Tenancy Agreement",
          icon: IconlyBold.edit,
          route: TenancyAgreementListRoute(),
        ),
        */
        NavDrawerTileItem(
          // title: "Log Out",
          title: context.t.common.logout,
          icon: IconlyBold.logout,
          tileType: NavDrawerTileType.createAction('logout'),
        ),
      ];

  int currentIndex = 0;
  void setCurrentIndex(int index, TabsRouter tabsRouter) {
    setState(() {
      currentIndex = index;
      tabsRouter.setActiveIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Durations.extralong4, _showSubscriptionDialogIfNeeded);

    final _theme = Theme.of(context);

    return BackButtonInvoker(
      showFloating: true,
      child: AutoTabsScaffold(
        scaffoldKey: scaffoldKey,
        animationDuration: Duration.zero,
        backgroundColor: DAppColors.kSurfaceLight,
        routes: rotues,
        bottomNavigationBuilder: (btx, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (value) => setCurrentIndex(value, tabsRouter),
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontSize: 12),
            backgroundColor: _theme.colorScheme.primaryContainer,
            elevation: 1,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(IconlyLight.home),
                activeIcon: const Icon(IconlyBold.home),
                // label: 'Home',
                label: context.t.common.home,
                tooltip: context.t.common.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(IconlyLight.send),
                activeIcon: const Icon(IconlyBold.send),
                // label: 'Application',
                label: context.t.common.application,
                tooltip: context.t.common.application,
              ),
              BottomNavigationBarItem(
                icon: const Icon(BoxIcons.bx_plus_circle),
                activeIcon: const Icon(BoxIcons.bxs_plus_circle),
                // label: 'My Property',
                label: context.t.common.myProperty,
                tooltip: context.t.common.myProperty,
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.activity),
                activeIcon: Icon(IconlyBold.activity),
                // label: 'Maintenance',
                label: context.t.common.maintenance,
                tooltip: context.t.common.maintenance,
              ),
              BottomNavigationBarItem(
                icon: const Icon(IconlyLight.profile),
                activeIcon: const Icon(IconlyBold.profile),
                // label: 'Profile',
                label: context.t.common.profile,
                tooltip: context.t.common.profile,
              ),
            ],
          );
        },
        extendBodyBehindAppBar: true,
        drawer: Builder(
          builder: (newContext) {
            final _tabsRouter = AutoTabsRouter.of(newContext);
            return CustomNavigationDrawer(
              navigationTiles: navigationRoutes,
              bottomNavActiveIndex: _tabsRouter.activeIndex,
              onTap: (tile) async {
                scaffoldKey.currentState?.closeDrawer();

                if (tile.tileType == NavDrawerTileType.bottomNav) {
                  return setState(
                    () => setCurrentIndex(tile.bottomNavIndex!, _tabsRouter),
                  );
                }

                if (tile.tileType == NavDrawerTileType.action) {
                  if (tile.tileType.key == 'logout') {
                    return await SharedWidgets.handleSignOut(context);
                  }
                  return;
                }

                if (tile.tileType == NavDrawerTileType.menu &&
                    tile.route != null) {
                  context.router.push(tile.route!);
                  return;
                }
              },
            );
          },
        ),
      ),
    );
  }

  Future<void> _showSubscriptionDialogIfNeeded() async {
    final userState = ref.read(userRepositoryProvider).value;

    if (userState?.isPlanExpired == true && context.mounted) {
      if (context.router.current.name != LandlordBottomNavRoute.name) {
        return;
      }

      return await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (popContext) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            actionsPadding: const EdgeInsets.all(12),
            title: const Text('Subscription Expired!'),
            content: const Text('Please subscribe to continue.'),
            actions: [
              TextButton(
                onPressed: () async {
                  Navigator.of(popContext).pop();
                  return context.router
                      .push<void>(const SubscriptionListRoute())
                      .whenComplete(() => setState(() {}));
                },
                child: const Text('Subscribe'),
              ),
            ],
          );
        },
      );
    }
  }
}
