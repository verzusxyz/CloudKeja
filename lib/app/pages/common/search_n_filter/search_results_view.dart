import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../i18n/strings.g.dart';
import '../../../data/repositories/repositories.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../widgets/_shared_widgets.dart';

class SearchResultsView extends ConsumerStatefulWidget {
  const SearchResultsView({
    super.key,
    this.searchKey,
    this.isTenant = false,
    this.selectedFilters,
  });
  final String? searchKey;
  final bool isTenant;
  final FilterValue<PropertyFilters, dynamic>? selectedFilters;

  @override
  ConsumerState<SearchResultsView> createState() => _SearchResultsViewState();
}

class _SearchResultsViewState extends ConsumerState<SearchResultsView> {
  final pagingController = PagingController<int, PropertyModel>(
    firstPageKey: 1,
  );

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => ref.read(propertyRepoProvider).getProperties(
              search: widget.searchKey,
              page: pageKey,
              country: widget.selectedFilters?[PropertyFilters.country],
              sorting: widget.selectedFilters?[PropertyFilters.sortBy],
              categoryId: widget.selectedFilters?[PropertyFilters.type],
            ),
      );

      final _data = _response.data;
      final _isLastPage = _data?.currentPage == _data?.lastPage;
      if (_isLastPage) {
        pagingController.appendLastPage(_data?.data ?? []);
      } else {
        pagingController.appendPage(
          _data?.data ?? [],
          (_data?.currentPage ?? 0) + 1,
        );
      }
    } catch (e) {
      pagingController.error = e;
    }
  }

  @override
  void initState() {
    super.initState();
    pagingController.addPageRequestListener(fetchPage);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        gEventListener.on<PropertyEvent>().listen((_) {
          pagingController.refresh();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(widget.searchKey ?? ''),
        actions: [
          IconButton(
            onPressed: context.router.maybePop,
            icon: const Icon(FeatherIcons.search),
          ),
        ],
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => Future.sync(pagingController.refresh),
          child: PagedListView<int, PropertyModel>.separated(
            pagingController: pagingController,
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            builderDelegate: PagedChildBuilderDelegate<PropertyModel>(
              itemBuilder: (_, item, __) {
                final _sizeInfo = item.buildPropertySize(item.categoryId);

                final _data = PropertyCardData(
                  id: item.id!,
                  landlordName: item.landlord?.name,
                  propertyTitle:
                      item.propertyDetail?.propertyInfo?.propertyTitle,
                  bedRooms: item.roomInfo?.bedroom,
                  bathRooms: item.roomInfo?.bathroom,
                  propertySize: _sizeInfo.size,
                  sizeUnit: _sizeInfo.sizeUnit,
                  monthlyRent: item.rentInfo?.monthlyRent,
                  coverImageUrl: item.coverImage?.firstOrNull?.remote,
                  address: PropertyCardData.buildAddress([
                    item.addressInfo?.address,
                    item.addressInfo?.city,
                    item.addressInfo?.state,
                  ]),
                  category: item.category?.name,
                );

                if (widget.isTenant) {
                  return HorizontalPropertyCard.tenant(
                    onTap: (id) async {
                      // ignore: unused_local_variable
                      final _result = await context.router.push(
                        TenantPropertyDetailsRoute(id: id),
                      );
                    },
                    data: _data,
                    isFav: item.isFavorite,
                    onFavTap: (id) async {
                      return await PropertyCardData.handleFavTap(
                        context,
                        callback: () {
                          final _repo = ref.read(propertyRepoProvider);

                          return item.isFavorite
                              ? _repo.deleteFavorite(
                                  item.favorite!.id!,
                                )
                              : _repo.createFavorite(id);
                        },
                        showInvoker: item.isFavorite,
                      );
                    },
                  );
                }
                final _status = PropertyStatus.fromId(item.status);
                return HorizontalPropertyCard.landlord(
                  data: _data,
                  isActive: _status.isActive,
                  propertyStatus: _status,
                  onTap: (id) async {
                    // ignore: unused_local_variable
                    final _result = await context.router.push(
                      LandlordPropertyDetailsRoute(id: id),
                    );
                  },
                  onActive: (v, [id]) async {
                    if (id == null) return;

                    return await SharedWidgets.handleChangePropertyStatus(
                      context,
                      () => ref
                          .read(propertyRepoProvider)
                          .changePropertyVisibility(
                            id: item.id!,
                            isPublished: v,
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
                    emptyBuilder: (context) {
                      return RetryButtons.scrollView(
                        // 'No property found!\nPlease try with different keywords',
                        context.t.exceptions.noPropertyFoundWithKeyWord,
                        onRetry: () => Future.sync(
                          pagingController.refresh,
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            separatorBuilder: (_, __) {
              return const SizedBox.square(dimension: 12);
            },
          ),
        ).fMarginOnly(top: 4),
      ),
    );
  }
}
