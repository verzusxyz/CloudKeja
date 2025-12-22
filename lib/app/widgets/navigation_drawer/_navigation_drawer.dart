import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';

import '../../core/core.dart';

class CustomNavigationDrawer extends StatelessWidget {
  const CustomNavigationDrawer({
    super.key,
    required this.navigationTiles,
    this.onTap,
    this.bottomNavActiveIndex,
  });

  final List<NavDrawerTileItem> navigationTiles;
  final void Function(NavDrawerTileItem tile)? onTap;
  final int? bottomNavActiveIndex;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return SafeArea(
      top: false,
      child: Drawer(
        // backgroundColor: _theme.colorScheme.surface,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColoredBox(
              color: _theme.colorScheme.surface,
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 16),
                leading: SizedBox.square(
                  dimension: 40,
                  child: Image.asset(DAppImages.appIcon),
                ),
                // title: const Text('Idaman Sewa'),
                title: Text(AppConfig.appName),
                titleTextStyle: _theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                trailing: CloseButton(
                  onPressed: Scaffold.maybeOf(context)?.closeDrawer,
                ),
              ).fMarginOnly(bottom: 8, top: 24),
            ),
            const SizedBox.square(dimension: 16),

            // Navigation Routes
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: navigationTiles.length,
                itemBuilder: (context, index) {
                  final _entry = navigationTiles[index];

                  if (_entry.tileType == NavDrawerTileType.submenu) {
                    return ExpansionTile(
                      key: ValueKey(_entry.hashCode),
                      shape: const Border(),
                      leading: Icon(
                        _entry.icon,
                        size: 20,
                        color: _theme.colorScheme.secondary,
                      ),
                      title: Text(_entry.title),
                      collapsedIconColor: _theme.colorScheme.secondary,
                      textColor: _theme.colorScheme.primary,
                      childrenPadding: const EdgeInsets.only(left: 8),
                      tilePadding: const EdgeInsetsDirectional.only(
                        start: 16,
                        end: 20,
                      ),
                      visualDensity: const VisualDensity(
                        horizontal: -4,
                        vertical: -4,
                      ),
                      children: List.generate(
                        _entry.submenu?.length ?? 0,
                        (i) {
                          final _submenuEntry = _entry.submenu![i];
                          return _buildTile(
                            context,
                            _submenuEntry,
                            submenu: true,
                          );
                        },
                      ),
                    );
                  }

                  final _isActive =
                      _entry.bottomNavIndex == bottomNavActiveIndex;
                  return _buildTile(context, _entry, isActive: _isActive);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(
    BuildContext context,
    NavDrawerTileItem tile, {
    bool submenu = false,
    bool isActive = false,
  }) {
    final _theme = Theme.of(context);

    return Container(
      decoration: !isActive
          ? null
          : BoxDecoration(
              color: _theme.colorScheme.primary.withValues(alpha: 0.15),
              borderRadius: BorderRadiusDirectional.horizontal(
                end: Radius.circular(30),
              ),
            ),
      margin: EdgeInsetsDirectional.only(end: 8),
      child: ListTile(
        onTap: () => onTap?.call(tile),
        leading: Icon(
          tile.icon,
          size: 20,
          color: isActive
              ? _theme.colorScheme.primary
              : _theme.colorScheme.secondary,
        ),
        title: Text(tile.title),
        titleTextStyle: _theme.textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: submenu ? 14 : null,
        ),
        visualDensity: const VisualDensity(
          horizontal: -4,
          vertical: -4,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: isActive
              ? _theme.colorScheme.primary
              : _theme.colorScheme.secondary,
        ),
      ),
    );
  }
}

class NavDrawerTileItem {
  final String title;
  final IconData? icon;
  final PageRouteInfo<dynamic>? route;
  final NavDrawerTileType tileType;
  final int? bottomNavIndex;
  final List<NavDrawerTileItem>? submenu;

  const NavDrawerTileItem({
    required this.title,
    this.icon,
    this.route,
    this.tileType = NavDrawerTileType.menu,
    this.bottomNavIndex,
    this.submenu,
  });
}

class NavDrawerTileType {
  static const NavDrawerTileType bottomNav = NavDrawerTileType._('bottomNav');
  static const NavDrawerTileType menu = NavDrawerTileType._('menu');
  static const NavDrawerTileType submenu = NavDrawerTileType._('submenu');

  static const NavDrawerTileType action = NavDrawerTileType._(
    'action',
    key: null,
  );

  final String name;
  final String? key;

  const NavDrawerTileType._(this.name, {this.key});

  factory NavDrawerTileType.createAction(String key) {
    return NavDrawerTileType._('action', key: key);
  }

  @override
  String toString() {
    return key != null ? '$name ($key)' : name;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NavDrawerTileType && other.name == name;
  }

  @override
  int get hashCode => Object.hash(name, key);

  static List<NavDrawerTileType> get values => [
        bottomNav,
        menu,
        submenu,
        action,
      ];
}
