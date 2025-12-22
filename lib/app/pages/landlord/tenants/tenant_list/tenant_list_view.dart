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
import '../components/components.dart';

part '_tenant_list_view_provider.dart';

@RoutePage()
class TenantListView extends ConsumerWidget {
  const TenantListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tenantListViewProvider);

    final _theme = Theme.of(context);

    return DefaultTabController(
      length: TenantType.values.length,
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
              // title: const Text('Tenant List'),
              title: Text(context.t.common.tenantList),
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
                          labelPadding: EdgeInsetsDirectional.symmetric(
                            horizontal: 24,
                          ),
                          tabs: TenantType.values
                              .map((tab) => Tab(text: tab.label(context)))
                              .toList(),
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
                      80,
                    ),
                    pagingController: controller.pagingController,
                    builderDelegate: PagedChildBuilderDelegate<Tenant>(
                      itemBuilder: (_, item, __) {
                        return DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: _theme.colorScheme.outline.withValues(
                                alpha: 0.25,
                              ),
                            ),
                          ),
                          child: TenantListTile(
                            imageURL: item.image?.remote,
                            tenantName: item.name ?? 'N/A',
                            tenantID: item.uniqueId ?? '',
                            onTap: () => _handleDetailsNavigation(
                              context,
                              item.id!,
                            ),
                          ).fMarginSymmetric(horizontal: 12),
                        );
                      },
                      noItemsFoundIndicatorBuilder: (context) {
                        return SizedBox(
                          height: MediaQuery.sizeOf(context).width,
                          width: double.maxFinite,
                          child: EmptyWidget(
                            replaceDefault: false,
                            child: SizedBox.shrink(),
                            emptyBuilder: (context) {
                              return RetryButtons.scrollView(
                                // 'No tenants!\nPlease try adding a tenant to see here.',
                                context.t.exceptions.notenantFoundList,
                                onRetry: () => Future.sync(
                                  controller.pagingController.refresh,
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                    separatorBuilder: (_, __) => const SizedBox.square(
                      dimension: 16,
                    ),
                  ),
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              shape: const CircleBorder(),
              // tooltip: 'Add Tenant',
              tooltip: context.t.common.addNewTenant,
              child: const Icon(Icons.add),
              onPressed: () async {
                final _result = await context.router.push<bool>(
                  ManageTenantRoute(),
                );
                if (_result == true) {
                  controller.pagingController.refresh();
                }
              },
            ),
          );
        },
      ),
    ).unfocusPrimary();
  }

  Future<void> _handleDetailsNavigation(BuildContext context, int id) async {
    final _result = await context.router.push(TenantDetailsRoute(id: id));
    print(_result);
  }
}
