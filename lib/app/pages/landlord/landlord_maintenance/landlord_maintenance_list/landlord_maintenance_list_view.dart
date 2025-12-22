import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

part '_landlord_maintenance_list_view_provider.dart';

@RoutePage()
class LandlordMaintenanceListView extends ConsumerWidget {
  const LandlordMaintenanceListView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(landlordMaintenanceListViewProvider);

    final _theme = Theme.of(context);

    return DefaultTabController(
      length: MaintenanceStatus.values.length,
      child: Builder(
        builder: (tabContext) {
          // Tab Listener for filter
          DefaultTabController.of(tabContext).addListener(
            () => controller.changeFilter(
              DefaultTabController.of(tabContext).index,
            ),
          );

          return Scaffold(
            appBar: CustomAppBar(
              scaffoldKey: scaffoldKey,
              // title: const Text('Maintenance List'),
              title: Text(context.t.common.maintenanceList),
            ),
            body: ScaffoldBodyWrapper(
              body: NestedScrollView(
                clipBehavior: Clip.antiAlias,
                headerSliverBuilder: (_, innerBoxIsScrolled) {
                  return [
                    // Search Field
                    SliverPersistentHeader(
                      floating: true,
                      delegate: StickySliverWidget(
                        minHeight: 64,
                        maxHeight: 84,
                        borderRadius: ScaffoldBodyWrapper.borderRadius,
                        child: TextField(
                          controller: controller.searchController,
                          decoration: CustomFieldStyles.kSearchDecoration(
                            // hintText: 'Search...',
                            hintText: context.t.common.searchHint,
                          ),
                          onChanged: (_) => Future.delayed(
                            Durations.medium3,
                          ).whenComplete(controller.pagingController.refresh),
                        ).fMarginLTRB(24, 24, 24, 12),
                      ),
                    ),

                    // Tab Filter
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: StickySliverWidget(
                        borderRadius: ScaffoldBodyWrapper.borderRadius,
                        child: TabBar(
                          isScrollable: true,
                          tabs: [
                            // All Maintenance
                            ...MaintenanceStatus.values.map(
                              (status) => Tab(text: status.label(context)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ];
                },
                body: RefreshIndicator.adaptive(
                  onRefresh: () => Future.sync(
                    controller.pagingController.refresh,
                  ),
                  child: PagedListView.separated(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    padding: const EdgeInsetsDirectional.fromSTEB(
                      24,
                      16,
                      24,
                      36,
                    ),
                    pagingController: controller.pagingController,
                    builderDelegate: PagedChildBuilderDelegate<Maintenance>(
                      itemBuilder: (_, item, __) {
                        final _status = MaintenanceStatus.fromString(
                          item.status,
                        );

                        return DynamicListCard.custom(
                          headerLeading: SizedBox.square(
                            dimension: 44,
                            child: UserAvatarPicker(
                              userName: item.tenant?.name,
                              showInitialsPlaceholder: true,
                              showBorder: false,
                              image: item.tenant?.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: item.tenant?.name ?? 'N/A',
                          subtitle:
                              '${context.t.common.dateAndTime}: ${item.createdAt?.formatDate(pattern: 'dd MMM yyyy - hh:mma')}',
                          headerTrailing: Text(
                            _status.label(context),
                            style: _theme.textTheme.bodyMedium?.copyWith(
                              color: _status.color,
                            ),
                          ),
                          // actionButtonText: 'View Details',
                          actionButtonText: context.t.common.viewDetails,
                          children: [
                            Text(
                              item.title ?? 'N/A',
                              style: _theme.textTheme.bodyLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item.description ?? 'N/A',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: _theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w400,
                                color: _theme.colorScheme.secondary,
                              ),
                            ),
                          ],
                          onActionTap: () async {
                            return await context.router.push<void>(
                              LandlordMaintenanceDetailsRoute(
                                id: item.id!,
                              ),
                            );
                          },
                        );
                      },
                      noItemsFoundIndicatorBuilder: (context) {
                        return SizedBox(
                          height: MediaQuery.sizeOf(context).width,
                          width: double.maxFinite,
                          child: EmptyWidget(
                            replaceDefault: false,
                            child: SizedBox.shrink(),
                            emptyBuilder: (_) {
                              return RetryButtons.scrollView(
                                // 'No ${controller.selectedStatus.label.toLowerCase()} maintenance found.',
                                context.t.exceptions.noStatusMaintenantFound
                                    .landlord(
                                  status: controller.selectedStatus
                                      .label(context)
                                      .toLowerCase(),
                                ),
                                onRetry: () => Future.sync(
                                  controller.pagingController.refresh,
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                    separatorBuilder: (_, __) {
                      return const SizedBox.square(dimension: 16);
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ).unfocusPrimary();
  }
}
