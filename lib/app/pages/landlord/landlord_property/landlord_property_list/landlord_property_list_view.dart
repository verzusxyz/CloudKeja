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
import '../../../common/widgets/widgets.dart';

part '_landlord_property_list_view_provider.dart';

@RoutePage()
class LandlordPropertyListView extends ConsumerWidget {
  const LandlordPropertyListView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(landlordPropertyListViewProvider);

    final _theme = Theme.of(context);

    return DefaultTabController(
      length: PropertyStatus.values.length,
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
              // title: const Text('Property List'),
              title: Text(context.t.common.propertyList),
              scaffoldKey: scaffoldKey,
              actions: [
                ElevatedButton(
                  onPressed: () async {
                    // ignore: unused_local_variable
                    final _result = await context.router.push(
                      LandlordManagePropertyRoute(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -0.5,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    backgroundColor: DAppColors.kOnPrimaryVariant,
                  ),
                  child: const Text('+ Add Property'),
                ).fMarginSymmetric(horizontal: 16),
              ],
            ),
            body: ScaffoldBodyWrapper(
              body: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: ScaffoldBodyWrapper.borderRadius,
                    child: ColoredBox(
                      color: _theme.colorScheme.primaryContainer,
                      child: TabBar(
                        isScrollable: true,
                        tabs: [
                          ...PropertyStatus.values.map(
                            (status) => Tab(text: status.label(context)),
                          )
                        ],
                      ),
                    ),
                  ),

                  // Property List
                  Expanded(
                    child: RefreshIndicator.adaptive(
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
                        builderDelegate:
                            PagedChildBuilderDelegate<PropertyModel>(
                          itemBuilder: (_, item, __) {
                            final _sizeInfo =
                                item.buildPropertySize(item.categoryId);

                            final _data = PropertyCardData(
                              id: item.id!,
                              landlordName: item.landlord?.name,
                              propertyTitle: item
                                  .propertyDetail?.propertyInfo?.propertyTitle,
                              bedRooms: item.roomInfo?.bedroom,
                              bathRooms: item.roomInfo?.bathroom,
                              propertySize: _sizeInfo.size,
                              sizeUnit: _sizeInfo.sizeUnit,
                              monthlyRent: item.rentInfo?.monthlyRent,
                              coverImageUrl:
                                  item.coverImage?.firstOrNull?.remote,
                              address: PropertyCardData.buildAddress([
                                item.addressInfo?.address,
                                item.addressInfo?.city,
                                item.addressInfo?.state,
                              ]),
                              category: item.category?.name,
                            );

                            return HorizontalPropertyCard.landlord(
                              propertyStatus: PropertyStatus.fromId(
                                item.status,
                              ),
                              onTap: (id) async {
                                // ignore: unused_local_variable
                                final _result = await context.router.push(
                                  LandlordPropertyDetailsRoute(id: id),
                                );
                              },
                              data: _data,
                              isActive:
                                  item.status == PropertyStatus.active.statusId,
                              onActive: (v, [id]) async {
                                if (id == null) return;

                                return await SharedWidgets
                                    .handleChangePropertyStatus(
                                  context,
                                  () => controller.changeStatus(id, v),
                                  showFloating: true,
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
                                    // 'No ${controller.selectedStatus.label.toLowerCase()} property found!\nPlease try adding a property to see here.',
                                    context.t.exceptions.noPropertyFoundHint
                                        .landlordHome,
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
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
