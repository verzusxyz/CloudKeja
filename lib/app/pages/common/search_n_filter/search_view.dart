import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:recase/recase.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../widgets/widgets.dart';
import 'search_results_view.dart';

part '_search_history_provider.dart';

class SearchView extends ConsumerStatefulWidget {
  const SearchView({super.key, this.isTenant = false});
  final bool isTenant;

  @override
  ConsumerState<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView> {
  FilterValue<PropertyFilters, dynamic> selectedFilters = {};

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

  //-----------------Search Func-----------------//
  late final searchFocus = FocusNode();
  late final searchController = TextEditingController();
  final showSearchResult = ValueNotifier<bool>(false);
  //-----------------Search Func-----------------//

  @override
  void initState() {
    super.initState();
    pagingController.addPageRequestListener(fetchPage);
    searchController.addListener(
      () => showSearchResult.value = searchController.text.isNotEmpty,
    );
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
    final _searchHistoryProv = ref.watch(searchHistoryProvider);

    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Search'),
        title: Text(context.t.pages.search.appbarTitle),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => Future.sync(pagingController.refresh),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Placeholder
              TextField(
                focusNode: searchFocus,
                controller: searchController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
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
                onEditingComplete: () async {
                  searchFocus.unfocus();
                  await _searchHistoryProv.manageSearchHistory(
                    searchController.text,
                  );
                },
              ).fMarginOnly(left: 24, right: 24, top: 16),

              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: showSearchResult,
                  builder: (_, value, __) {
                    if (!value) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Recent Search',
                                  style: _theme.textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  return await _searchHistoryProv
                                      .manageSearchHistory(
                                    null,
                                    remove: true,
                                  );
                                },
                                style: TextButton.styleFrom(
                                  visualDensity: const VisualDensity(
                                    horizontal: -4,
                                    vertical: -4,
                                  ),
                                  foregroundColor: DAppColors.kRejectedColor,
                                ),
                                child: Text(context.t.action.clearAll),
                              )
                            ],
                          ),
                          const SizedBox.square(dimension: 10),
                          if (_searchHistoryProv.searchHistory.isEmpty)
                            Center(
                              child: Text(
                                // 'You have not recent searches.',
                                context.t.pages.search.extra.noRecentSearch,
                                style: _theme.textTheme.bodyMedium?.copyWith(
                                  color: _theme.colorScheme.secondary,
                                ),
                              ),
                            ).fMarginSymmetric(vertical: 24)
                          else
                            Expanded(
                              child: Wrap(
                                spacing: 12,
                                runSpacing: 4,
                                children: [
                                  ..._searchHistoryProv.searchHistory
                                      .map((item) {
                                    return SizedBox(
                                      height: 32,
                                      child: SelectableOutlineButton(
                                        key: ValueKey(item),
                                        label: item,
                                        onSelect: () async {
                                          searchController.text = item;
                                          return await Future.sync(
                                            pagingController.refresh,
                                          );
                                        },
                                      ),
                                    );
                                  })
                                ],
                              ),
                            )
                        ],
                      ).fMarginAll(16);
                    }

                    return PagedListView.separated(
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      padding: const EdgeInsetsDirectional.fromSTEB(
                        24,
                        0,
                        24,
                        24,
                      ),
                      pagingController: pagingController,
                      builderDelegate: PagedChildBuilderDelegate<PropertyModel>(
                        itemBuilder: (_, item, index) {
                          return Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: index == 0
                                    ? Radius.circular(4)
                                    : Radius.zero,
                              ),
                            ),
                            margin: EdgeInsets.zero,
                            color: _theme.colorScheme.primaryContainer,
                            child: ListTile(
                              onTap: () async {
                                return await _handleSuggestionTap(
                                  context,
                                  item,
                                );
                              },
                              horizontalTitleGap: 8,
                              visualDensity: const VisualDensity(
                                horizontal: -4,
                                vertical: -4,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              leading: Icon(
                                FeatherIcons.search,
                                size: 20,
                                color: _theme.colorScheme.secondary,
                              ).fMarginOnly(top: 2),
                              title: Text(
                                item.propertyDetail?.propertyInfo
                                        ?.propertyTitle ??
                                    "N/A",
                              ),
                              subtitle: Text(
                                PropertyCardData.buildAddress([
                                  item.addressInfo?.address,
                                  item.addressInfo?.city,
                                  item.addressInfo?.state,
                                ], separator: ', '),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitleTextStyle:
                                  _theme.textTheme.bodyMedium?.copyWith(
                                color: _theme.colorScheme.secondary,
                              ),
                              titleAlignment: ListTileTitleAlignment.top,
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
                                  // 'No property found!\nPlease try with different keywords',
                                  context
                                      .t.exceptions.noPropertyFoundWithKeyWord,
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
                        return const SizedBox.square(dimension: 4);
                      },
                    );
                  },
                ),
              )
            ],
          ),
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
            hintText: context.t.form.country.hint.sentenceCase,
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
            labelText: context.t.form.anyDropdown.label(
              label: context.t.common.propertyType,
            ),
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

  Future<void> _handleSuggestionTap(
    BuildContext ctx,
    PropertyModel item,
  ) async {
    searchFocus.unfocus();
    final searchProvider = ProviderScope.containerOf(ctx).read(
      searchHistoryProvider,
    );

    final _searchKey = searchController.text =
        (item.propertyDetail?.propertyInfo?.propertyTitle ?? '');
    await searchProvider.manageSearchHistory(_searchKey);

    if (ctx.mounted) {
      ctx.router.pushWidget(
        SearchResultsView(
          searchKey: _searchKey,
          selectedFilters: selectedFilters,
          isTenant: widget.isTenant,
        ),
      );
    }
  }
}
