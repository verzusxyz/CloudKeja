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
import 'components/components.dart';

part '_tenant_maintenance_list_view_provider.dart';

@RoutePage()
class TenantMaintenanceListView extends ConsumerWidget {
  const TenantMaintenanceListView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tenantMaintenanceListViewProvider);

    return Scaffold(
        appBar: CustomAppBar(
          // title: const Text('Maintenance List'),
          title: Text(context.t.common.maintenanceList),
          scaffoldKey: scaffoldKey,
        ),
        body: ScaffoldBodyWrapper(
          body: RefreshIndicator(
            onRefresh: () => Future.sync(controller.pagingController.refresh),
            child: Column(
              children: [
                // Searh Field
                TextField(
                  controller: controller.searchController,
                  decoration: CustomFieldStyles.kSearchDecoration(
                    // hintText: 'Search...',
                    hintText: context.t.common.searchHint,
                  ),
                  onChanged: (_) => Future.delayed(
                    Durations.medium3,
                  ).whenComplete(controller.pagingController.refresh),
                ).fMarginLTRB(24, 24, 24, 0),

                // Maintenance List
                Expanded(
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
                    builderDelegate: PagedChildBuilderDelegate<Maintenance>(
                      itemBuilder: (_, item, __) {
                        return MaintenanceCard(
                          data: item,
                          onTap: (id) async {
                            // ignore: unused_local_variable
                            final _result = await context.router.push(
                              TenantMaintenanceDetailsRoute(id: id),
                            );
                            return;
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
                            emptyBuilder: (context) {
                              return RetryButtons.scrollView(
                                // 'No maintenance found! You can create maintenance request to see that here.',
                                context.t.exceptions.noStatusMaintenantFound
                                    .tenant,
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
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () async {
            final _result = await context.router.push(
              TenantManageMaintenanceRoute(),
            );
            print(_result);
          },
        )).unfocusPrimary();
  }
}
