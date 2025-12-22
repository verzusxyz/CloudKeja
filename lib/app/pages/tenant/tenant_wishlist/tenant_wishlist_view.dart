import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../i18n/strings.g.dart';
import '../../../data/repositories/repositories.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';

part '_tenant_wishlist_view_provider.dart';

@RoutePage()
class TenantWishlistView extends ConsumerWidget {
  const TenantWishlistView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tenantWishListViewProvider);

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Wishlist'),
        title: Text(context.t.common.wishlist),
        scaffoldKey: scaffoldKey,
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => Future.sync(
            controller.pagingController.refresh,
          ),
          child: PagedListView.separated(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsetsDirectional.all(16),
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate<FavoriteModel>(
              itemBuilder: (_, item, __) {
                final _sizeInfo =
                    item.property?.buildPropertySize(item.property?.categoryId);

                final _data = PropertyCardData(
                  id: item.propertyId!,
                  landlordName: item.property?.landlord?.name,
                  propertyTitle: item
                      .property?.propertyDetail?.propertyInfo?.propertyTitle,
                  bedRooms: item.property?.roomInfo?.bedroom,
                  bathRooms: item.property?.roomInfo?.bathroom,
                  propertySize: _sizeInfo?.size,
                  sizeUnit: _sizeInfo?.sizeUnit,
                  monthlyRent: item.property?.rentInfo?.monthlyRent,
                  coverImageUrl: item.property?.coverImage?.firstOrNull?.remote,
                  address: PropertyCardData.buildAddress([
                    item.property?.addressInfo?.address,
                    item.property?.addressInfo?.city,
                    item.property?.addressInfo?.state,
                  ]),
                  category: item.property?.category?.name,
                );

                return HorizontalPropertyCard.tenant(
                  onTap: (id) async {
                    // ignore: unused_local_variable
                    final _result = await context.router.push(
                      TenantPropertyDetailsRoute(id: id),
                    );
                  },
                  data: _data,
                  isFav: true,
                  onFavTap: (id) => PropertyCardData.handleFavTap(
                    context,
                    callback: () {
                      return ref.read(propertyRepoProvider).deleteFavorite(
                            item.id!,
                          );
                    },
                    showInvoker: true,
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
                        // 'No property found in wishlist!\nPlease try adding a property to see here.',
                        context.t.exceptions.noPropertyFoundHint.landlordHome,
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
    );
  }
}
