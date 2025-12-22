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

part '_landlord_application_list_view_provider.dart';

@RoutePage()
class LandlordApplicationListView extends ConsumerWidget {
  const LandlordApplicationListView({
    super.key,
    this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(landlordApplicationListViewProvider);

    final _theme = Theme.of(context);

    return DefaultTabController(
      length: ApplicationStatus.values.length,
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
              // title: const Text('Application List'),
              title: Text(context.t.common.applicationList),
              scaffoldKey: scaffoldKey,
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
                          tabs: ApplicationStatus.values
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
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    pagingController: controller.pagingController,
                    builderDelegate: PagedChildBuilderDelegate<Application>(
                      itemBuilder: (_, item, __) {
                        final _status = ApplicationStatus.fromId(item.status);
                        return DynamicListCard.keyValueBody(
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
                          subtitle: item.tenant?.email ?? "N/A",
                          keyValues: [
                            ...{
                              // "Property ID":
                              context.t.common.propertyId:
                                  item.property?.pUid ?? "N/A",
                              // "Property Name":
                              context.t.common.propertyName: item
                                      .property
                                      ?.propertyDetail
                                      ?.propertyInfo
                                      ?.propertyTitle ??
                                  "N/A",
                              // "Start Date":
                              context.t.common.startDate:
                                  item.startDate?.formatDate() ?? "N/A",
                              // "End Date":
                              context.t.common.endDate:
                                  item.endDate?.formatDate() ?? "N/A",
                              // "Status":
                              context.t.common.status: _status,
                            }.entries.map((entry) {
                              final value = entry.value;
                              final isStatus = value is ApplicationStatus;

                              return KeyValueRow(
                                title: entry.key,
                                titleFlex: 3,
                                titleStyle: _theme.textTheme.bodyLarge,
                                description: isStatus
                                    ? value.label(context)
                                    : value.toString(),
                                descriptionStyle:
                                    _theme.textTheme.bodyLarge?.copyWith(
                                  color: isStatus
                                      ? value.statusColor
                                      : _theme.colorScheme.secondary,
                                ),
                                descriptionFlex: 4,
                              );
                            })
                          ],
                          // actionButtonText: 'View Details',
                          actionButtonText: context.t.common.viewDetails,
                          onActionTap: () async {
                            // ignore: unused_local_variable
                            final _result = await context.router.push(
                              LandlordApplicationDetailsRoute(id: item.id!),
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
                            emptyBuilder: (context) {
                              return RetryButtons.scrollView(
                                // 'No tenants!\nPlease try adding a tenant to see here.',
                                context.t.exceptions.noApplicationFoundHint
                                    .template(
                                  subject: context.t.exceptions
                                      .noApplicationFoundHint.subjects.landlord,
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
                    separatorBuilder: (_, __) => const SizedBox.square(
                      dimension: 16,
                    ),
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
