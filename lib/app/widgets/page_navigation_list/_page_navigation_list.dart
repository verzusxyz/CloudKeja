import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class PageNavigationListView extends StatelessWidget {
  const PageNavigationListView({
    super.key,
    required this.navTiles,
    this.onTap,
  });
  final List<SettingsNavTile> navTiles;
  final void Function(SettingsNavTile value)? onTap;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return ListView.separated(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
      itemCount: navTiles.length,
      itemBuilder: (context, index) {
        final _navTile = navTiles[index];
        return Material(
          color: Colors.transparent,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: _theme.colorScheme.outline.withValues(alpha: 0.25),
                ),
              ),
            ),
            child: ListTile(
              onTap: () => onTap?.call(_navTile),
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundColor: _navTile.color?.withValues(alpha: 0.20),
                foregroundColor: _navTile.color,
                child: Icon(_navTile.icon),
              ),
              title: Text(_navTile.title),
              titleTextStyle: _theme.textTheme.bodyLarge,
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (_navTile.trailing != null) ...[
                    Text(
                      _navTile.trailing!,
                      style: _theme.textTheme.bodySmall?.copyWith(
                        color: _theme.colorScheme.outline,
                      ),
                    ),
                    const SizedBox.square(dimension: 16),
                  ],
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: _theme.colorScheme.outline,
                  )
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (_, __) => const SizedBox.square(dimension: 5),
    );
  }
}

class SettingsNavTile {
  final String title;
  final String? trailing;
  final Color? color;
  final IconData? icon;
  final SettingsNavTileType type;
  final PageRouteInfo<dynamic>? route;

  const SettingsNavTile({
    required this.title,
    this.trailing,
    this.color,
    this.icon,
    this.type = SettingsNavTileType.navigation,
    this.route,
  });
}

enum SettingsNavTileType { navigation, tool, function }
