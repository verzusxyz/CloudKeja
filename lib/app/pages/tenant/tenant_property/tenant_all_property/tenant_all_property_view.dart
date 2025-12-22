import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:recase/recase.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class TenantAllPropertyView extends ConsumerStatefulWidget {
  const TenantAllPropertyView({super.key});

  @override
  ConsumerState<TenantAllPropertyView> createState() =>
      _TenantAllPropertyViewState();
}

class _TenantAllPropertyViewState extends ConsumerState<TenantAllPropertyView> {
  FilterValue<PropertyFilters, dynamic> selectedFilters = {};
  late final searchController = TextEditingController();
  final pagingController = PagingController<int, PropertyModel>(
    firstPageKey: 1,
  );

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => ref.read(propertyRepoProvider).getProperties(
              search: searchController.text,
              page: pageKey,
              country: selectedFilters[PropertyFilters.country],
              sorting: selectedFilters[PropertyFilters.sortBy],
              categoryId: selectedFilters[PropertyFilters.type],
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
      backgroundColor: DAppColors.kSurfaceLight,
      appBar: CustomAppBar(
        // title: const Text('All Properties'),
        title: Text(context.t.common.allProperties),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () => Future.sync(pagingController.refresh),
        child: Column(
          children: [
            // Search Placeholder
            TextField(
              controller: searchController,
              decoration: CustomFieldStyles.kSearchDecoration(
                // hintText: 'Search for plots, flats, rooms...',
                hintText: context.t.pages.search.extra.hint,
                iconAlignment: IconAlignment.start,
              ).copyWith(
                suffixIcon: CustomSearchField.filterButton(
                  onPressed: () async {
                    final x = _handleFilterModal(context);
                    return await x.whenComplete(pagingController.refresh);
                  },
                  appliedFilters: selectedFilters.values
                      .where((element) => element != null)
                      .length,
                ).fMarginAll(4),
              ),
              onChanged: (_) {
                Future.delayed(
                  Durations.medium1,
                  pagingController.refresh,
                );
              },
            ).fMarginSymmetric(horizontal: 24, vertical: 16),

            Expanded(
              child: PagedListView.separated(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: const EdgeInsetsDirectional.fromSTEB(
                  24,
                  0,
                  24,
                  36,
                ),
                pagingController: pagingController,
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
                  return const SizedBox.square(dimension: 16);
                },
              ),
            ),
          ],
        ),
      ),
    ).unfocusPrimary();
  }

  Future<void> _handleFilterModal(BuildContext ctx) async {
    final _countryProvider = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        () => (ref.watch(countryProvider.future)).then(
          (value) => [...?value.right],
        ),
      ),
    );

    if (ctx.mounted) {
      await showDynamicFilterModalSheet<PropertyFilters, dynamic>(
        ctx,
        filters: [
          FilterModalData<PropertyFilters, dynamic>.dropdown(
            // labelText: 'Country',
            labelText: context.t.form.country.label,
            // hintText: 'Select country',
            hintText: context.t.form.country.hint,
            key: PropertyFilters.country,
            items: [
              ..._countryProvider.map(
                (e) => DropdownMenuItem<String>(
                  value: e.name,
                  child: Text(e.name ?? 'N/A'),
                ),
              )
            ],
          ),
          FilterModalData<PropertyFilters, dynamic>.dropdown(
            // labelText: 'Property Type',
            labelText: context.t.form.anyDropdown
                .label(label: context.t.common.propertyType),
            // hintText: 'Select property type',
            hintText: context.t.form.anyDropdown
                .hint(label: context.t.common.propertyType)
                .sentenceCase,
            key: PropertyFilters.type,
            items: [
              ...PropertyType.values.map((category) {
                return DropdownMenuItem(
                  value: category.value,
                  child: Text(category.label(context)),
                );
              })
            ],
          ),
          FilterModalData<PropertyFilters, dynamic>.dropdown(
            // labelText: 'Sort by',
            labelText: context.t.form.anyDropdown
                .label(label: context.t.common.sortBy),
            // hintText: 'Select sort by',
            hintText: context.t.form.anyDropdown
                .hint(label: context.t.common.sortBy)
                .sentenceCase,
            key: PropertyFilters.sortBy,
            items: [
              ...{
                // "low_to_high": "Low to high",
                // "high_to_low": "High to low",
                "low_to_high": context.t.enums.sortBy.lowToHigh,
                "high_to_low": context.t.enums.sortBy.highToLow
              }.entries.map((e) {
                return DropdownMenuItem<String>(
                  value: e.key,
                  child: Text(e.value),
                );
              }),
            ],
          ),
        ],
        selectedFilters: selectedFilters,
        onSave: (v) => setState(() => selectedFilters = v),
      );
    }
  }
}
