import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

part '_landlord_labor_list_view_provider.dart';

@RoutePage()
class LandlordLaborListView extends ConsumerWidget {
  const LandlordLaborListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(landlordLaborListViewProvider);

    final _theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Labor List'),
        title: Text(context.t.common.laborList),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => Future.sync(
            controller.pagingController.refresh,
          ),
          child: PagedListView.separated(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsetsDirectional.fromSTEB(
              24,
              24,
              24,
              80,
            ),
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate<Labor>(
              itemBuilder: (_, item, __) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: _theme.colorScheme.outline.withValues(alpha: 0.25),
                    ),
                  ),
                  child: ListTile(
                    onTap: () async {
                      await context.router.push(
                        LandlordLaborDetailsRoute(id: item.id!),
                      );
                    },
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    visualDensity: const VisualDensity(vertical: -2),
                    leading: SizedBox.square(
                      dimension: 40,
                      child: UserAvatarPicker(
                        userName: item.name,
                        showInitialsPlaceholder: true,
                        showBorder: false,
                      ),
                    ),
                    title: Text(item.name ?? "N/A"),
                    titleTextStyle: _theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    subtitle: Text(item.phone?.buildPhone ?? 'N/A'),
                    subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
                      color: _theme.colorScheme.secondary,
                    ),
                  ),
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
                        context
                            .t.exceptions.noPropertyFoundHint.tenantAllProperty,
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
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        // tooltip: 'Add Labor',
        tooltip: context.t.common.addLabor,
        child: const Icon(Icons.add),
        onPressed: () {
          context.router.push(LandlordManageLaborRoute());
        },
      ),
    ).unfocusPrimary();
  }
}
