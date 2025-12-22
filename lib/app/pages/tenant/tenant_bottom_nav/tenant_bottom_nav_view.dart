import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../../core/core.dart';
import '../../../../i18n/strings.g.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../../common/widgets/widgets.dart';

@RoutePage()
class TenantBottomNavView extends ConsumerStatefulWidget {
  const TenantBottomNavView({super.key});

  @override
  ConsumerState<TenantBottomNavView> createState() =>
      _TenantBottomNavViewState();
}

class _TenantBottomNavViewState extends ConsumerState<TenantBottomNavView> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<PageRouteInfo<dynamic>> get rotues => [
        TenantHomeRoute(scaffoldKey: scaffoldKey),
        TenantWishlistRoute(scaffoldKey: scaffoldKey),
        TenantMyRentListRoute(scaffoldKey: scaffoldKey),
        TenantMaintenanceListRoute(scaffoldKey: scaffoldKey),
        TenantSettingsRoute(scaffoldKey: scaffoldKey),
      ];

  List<NavDrawerTileItem> get navigationRoutes {
    return [
      NavDrawerTileItem(
        // title: "Home",
        title: context.t.common.home,
        icon: IconlyBold.home,
        bottomNavIndex: 0,
        tileType: NavDrawerTileType.bottomNav,
      ),
      NavDrawerTileItem(
        // title: "Applications",
        title: context.t.common.applications,
        icon: IconlyBold.send,
        route: TenantApplicationListRoute(),
      ),
      NavDrawerTileItem(
        // title: "My Rent",
        title: context.t.common.myRent,
        bottomNavIndex: 2,
        tileType: NavDrawerTileType.bottomNav,
        icon: BoxIcons.bx_building_house,
      ),
      NavDrawerTileItem(
        // title: "Wishlist",
        title: context.t.common.wishlist,
        icon: IconlyBold.heart,
        bottomNavIndex: 1,
        tileType: NavDrawerTileType.bottomNav,
      ),
      NavDrawerTileItem(
        // title: "Maintenance",
        title: context.t.common.maintenance,
        icon: IconlyBold.activity,
        bottomNavIndex: 3,
        tileType: NavDrawerTileType.bottomNav,
      ),
      /* Disabled upon requirement change
       NavDrawerTileItem(
        title: "Lease",
        icon: IconlyBold.user_3,
        route: TenantLeaseListRoute(),
      ),
      */
      NavDrawerTileItem(
        // title: "Payment",
        title: context.t.common.payment,
        tileType: NavDrawerTileType.submenu,
        icon: IconlyBold.wallet,
        submenu: [
          NavDrawerTileItem(
            // title: "Security Deposit",
            title: context.t.common.securityDeposit,
            route: TenantSecurityDepositListRoute(),
          ),
          NavDrawerTileItem(
            // title: "Rent Payment",
            title: context.t.common.rentPayment,
            route: TenantRentPaymentListRoute(),
          ),
          NavDrawerTileItem(
            // title: "Refund Request",
            title: context.t.common.refundRequest,
            route: TenantRefundRequestListRoute(),
          )
        ],
      ),
      NavDrawerTileItem(
        // title: "Log Out",
        title: context.t.common.logout,
        icon: IconlyBold.logout,
        tileType: NavDrawerTileType.createAction('logout'),
      ),
    ];
  }

  int currentIndex = 0;
  void setCurrentIndex(int index, TabsRouter tabsRouter) {
    setState(() {
      currentIndex = index;
      tabsRouter.setActiveIndex(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BackButtonInvoker(
      child: AutoTabsScaffold(
        scaffoldKey: scaffoldKey,
        animationDuration: Duration.zero,
        backgroundColor: DAppColors.kSurfaceLight,
        routes: rotues,
        bottomNavigationBuilder: (context, tabsRouter) {
          return Theme(
            data: _theme.copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: (value) => setCurrentIndex(value, tabsRouter),
              type: BottomNavigationBarType.fixed,
              backgroundColor: _theme.colorScheme.primaryContainer,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.home),
                  activeIcon: Icon(IconlyBold.home),
                  // label: 'Home',
                  label: context.t.common.home,
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.heart),
                  activeIcon: Icon(IconlyBold.heart),
                  // label: 'Wishlist',
                  label: context.t.common.wishlist,
                ),
                BottomNavigationBarItem(
                  icon: Icon(BoxIcons.bx_building_house),
                  activeIcon: Icon(BoxIcons.bxs_building_house),
                  // label: 'My Rent',
                  label: context.t.common.myRent,
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.activity),
                  activeIcon: Icon(IconlyBold.activity),
                  // label: 'Maintenance',
                  label: context.t.common.maintenance,
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.profile),
                  activeIcon: Icon(IconlyBold.profile),
                  // label: 'Profile',
                  label: context.t.common.profile,
                ),
              ],
              elevation: 3.5,
            ),
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
}
