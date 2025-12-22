import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../widgets/widgets.dart';

@RoutePage()
class NotificationListView extends ConsumerWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _notifications = ref.watch(notificationList);
    final user = ref.watch(userRepositoryProvider).valueOrNull;

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Notifications'),
        title: Text(context.t.pages.notificationList.appbarTitle),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return [
                PopupMenuItem<String>(
                  value: 'clear_all',
                  // child: const Text('Clear All'),
                  child: Text(context.t.action.clearAll),
                ),
              ];
            },
            onSelected: (value) async {
              return switch (value) {
                'clear_all' => await _handleClearNotification(context, ref),
                _ => null,
              };
            },
          )
        ],
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => ref.refresh(notificationList.future),
          child: _notifications.when(
            skipLoadingOnRefresh: false,
            data: (data) {
              final _data = [...?data.data];

              if (_data.isEmpty) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).width,
                  width: double.maxFinite,
                  child: EmptyWidget(
                    replaceDefault: false,
                    child: SizedBox.shrink(),
                    emptyBuilder: (context) {
                      return RetryButtons.scrollView(
                        // 'No notification available.\nYou can see your notification here when available.',
                        context.t.exceptions.noNotificationFound,
                        onRetry: () => ref.refresh(notificationList.future),
                      );
                    },
                  ),
                );
              }

              return ListView.separated(
                padding: const EdgeInsetsDirectional.fromSTEB(24, 12, 24, 24),
                itemCount: _data.length,
                itemBuilder: (_, index) {
                  return _buildNotificationTile(
                    context,
                    data: _data[index],
                    isTenant: user?.role?.trim().toLowerCase() == 'tenant',
                  );
                },
                separatorBuilder: (_, __) => const Divider(),
              );
            },
            error: (error, _) {
              return SizedBox(
                height: MediaQuery.sizeOf(context).width,
                width: double.maxFinite,
                child: EmptyWidget(
                  replaceDefault: false,
                  child: SizedBox.shrink(),
                  emptyBuilder: (context) {
                    return RetryButtons.scrollView(
                      error,
                      onRetry: () => ref.refresh(notificationList.future),
                    );
                  },
                ),
              );
            },
            loading: () {
              return ListView.separated(
                padding: const EdgeInsetsDirectional.fromSTEB(24, 12, 24, 24),
                itemCount: 5,
                itemBuilder: (_, index) {
                  return Skeletonizer(
                    child: _buildNotificationTile(
                      context,
                      data: UserNotification(),
                      isTenant: false,
                    ),
                  );
                },
                separatorBuilder: (_, __) => const Divider(),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationTile(
    BuildContext context, {
    required UserNotification data,
    required bool isTenant,
  }) {
    final _theme = Theme.of(context);

    final _title = isTenant ? data.data?.tenantMsg : data.data?.landlordMsg;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          contentPadding: EdgeInsets.zero,
          leading: Container(
            clipBehavior: Clip.antiAlias,
            constraints: BoxConstraints.tight(const Size.square(36)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: _theme.colorScheme.primary.withValues(alpha: 0.20),
            ),
            child: Icon(
              FeatherIcons.bell,
              size: 20,
              color: _theme.colorScheme.primary,
            ),
          ),
          title: Text(
            _title ?? "N/A",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          titleTextStyle: _theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          subtitle: Text(
            data.createdAt?.formatDate(pattern: 'dd MMM, yyyy - hh:mm a') ??
                "N/A",
          ),
          subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
            color: _theme.colorScheme.secondary,
          ),
        ),
        // Text(
        //   'Harum ea laborum sit dolorum eum quisquam deserunt. Ut necessitatibus amet. Voluptatem ea quis ab amet. Dolorum autem qui reprehenderit ad voluptas accusantium earum. Atque quis nisi voluptatem.',
        //   maxLines: 2,
        //   overflow: TextOverflow.ellipsis,
        //   style: _theme.textTheme.bodyMedium?.copyWith(
        //     color: _theme.colorScheme.secondary,
        //   ),
        // ).fMarginOnly(left: 42)
      ],
    );
  }

  Future<void> _handleClearNotification(BuildContext ctx, WidgetRef ref) async {
    final _confirmation = await showDialog<bool>(
      context: ctx,
      builder: (popContext) {
        return InfoDialog.confirmation(
          // title: 'Clear notificaions?',
          title: popContext.t.prompt.notification.clearTitle,
          // description: 'Are you sure to clear all notifications?',
          description: popContext.t.prompt.notification.clearMessage,
          onDecide: Navigator.of(popContext).pop,
        );
      },
    );
    if (_confirmation != true) return;

    if (ctx.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          ref.read(commonRepoProvider).markAllNotificationsAsRead,
        ),
      );

      if (ctx.mounted) {
        if (_result.isFailure) {
          showCustomSnackBar(
            ctx,
            content: Text(_result.left!),
            customSnackBarType: CustomOverlayType.error,
          );
          return;
        }

        // ignore: unused_result
        ref.refresh(notificationList);
      }
    }
  }
}
