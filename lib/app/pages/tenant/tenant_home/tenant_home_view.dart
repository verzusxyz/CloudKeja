import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../../common/pages/common_pages.dart';

part '_tenant_home_view_provider.dart';

@RoutePage()
class TenantHomeView extends ConsumerStatefulWidget {
  const TenantHomeView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  ConsumerState<TenantHomeView> createState() => _TenantHomeViewState();
}

class _TenantHomeViewState extends ConsumerState<TenantHomeView>
    with SingleTickerProviderStateMixin {
  //----------------------Sliver Scroll Configuration----------------------//
  late final scrollController = ScrollController();
  late final AnimationController _animationController;
  late final Animation<double> _borderRadiusAnimation;

  bool _isAnimating = false;
  void _onScroll() {
    if (_isAnimating) return;

    final offset = scrollController.offset;
    final progress = (offset / 100).clamp(0.0, 1.0);

    Future.microtask(() {
      if (!_isAnimating && _animationController.value != progress) {
        _isAnimating = true;
        _animationController
            .animateTo(
              progress,
              duration: const Duration(milliseconds: 50),
            )
            .whenComplete(() => _isAnimating = false);
      }
    });
  }
  //----------------------Sliver Scroll Configuration----------------------//

  @override
  void initState() {
    super.initState();

    if (context.mounted) {
      gEventListener.on<PropertyEvent>().listen((event) {
        // ignore: unused_result
        ref.refresh(tenantHomeViewProvider);
      });

      gEventListener.on<String>().listen((status) {
        if (status == DAppSPrefsKeys.searchHistory) {
          return ref.invalidate(searchHistoryProvider);
        }
      });
    }

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _borderRadiusAnimation = Tween<double>(begin: 30.0, end: 0.0).animate(
      _animationController,
    );

    scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final controller = ref.watch(tenantHomeViewProvider);
    final searchHistory = ref.watch(searchHistoryProvider);
    final notifications = ref.watch(notificationList);

    final _recommendedProperties = ref.watch(controller.recomemdedProperties);
    final _allProperties = ref.watch(controller.allProperties);

    return Scaffold(
      backgroundColor: DAppColors.kSurfaceLight,
      body: RefreshIndicator.adaptive(
        notificationPredicate: (noti) => noti.depth == 1,
        onRefresh: () {
          return Future.wait([
            ref.refresh(controller.recomemdedProperties.future),
            ref.refresh(controller.allProperties.future),
          ]);
        },
        child: NestedScrollView(
          controller: scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          headerSliverBuilder: (context, _) {
            return [
              AnimatedBuilder(
                animation: _borderRadiusAnimation,
                builder: (context, child) {
                  return SliverAppBar(
                    pinned: true,
                    backgroundColor: Colors.transparent,
                    leading: IconButton(
                      onPressed: widget.scaffoldKey?.currentState?.openDrawer,
                      color: _theme.colorScheme.primaryContainer,
                      icon: const Icon(Icons.menu),
                      // tooltip: 'Open navigation menu',
                      tooltip: context.t.action.openNavigationMenu,
                    ),
                    titleSpacing: 4,
                    title: SizedBox.fromSize(
                      size: const Size(155, 40),
                      child: Image.asset(DAppImages.appbarIcon),
                    ),
                    expandedHeight: 220,
                    flexibleSpace: SizedBox.fromSize(
                      size: const Size.fromHeight(240),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            bottom: _borderRadiusAnimation.value > 0 ? 24 : 0,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(DAppImages.appHomeBg),
                                ),
                                borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(
                                    _borderRadiusAnimation.value,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (_borderRadiusAnimation.value > 0)
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: CustomSearchField.placeholder(
                                onTap: () => context.router.pushWidget(
                                  const SearchView(isTenant: true),
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                    actions: [
                      IconButton.filledTonal(
                        // tooltip: 'Notifications',
                        tooltip: context.t.common.notifications,
                        onPressed: () async {
                          return await context.navigateTo(
                            NotificationListRoute(),
                          );
                        },
                        style: IconButton.styleFrom(
                          backgroundColor:
                              _theme.colorScheme.primaryContainer.withValues(
                            alpha: 0.15,
                          ),
                          foregroundColor: _theme.colorScheme.primaryContainer,
                        ),
                        icon: Badge(
                          smallSize:
                              notifications.valueOrNull?.data?.isEmpty == true
                                  ? 0
                                  : 8,
                          alignment: const AlignmentDirectional(0.75, -1),
                          backgroundColor: DAppColors.kRejectedColor,
                          child: const Icon(FeatherIcons.bell),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Recent Search Overview
                if (searchHistory.isNotEmpty) ...[
                  RecentSearchOverview(
                    searchHistory: searchHistory,
                    onTap: (value) async {
                      return context.router.pushWidget<void>(
                        SearchResultsView(searchKey: value, isTenant: true),
                      );
                    },
                  ).fMarginLTRB(16, 16, 16, 0),
                ],

                // Recommendation Properties
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // 'Recommendation Properties',
                      context.t.common.recommendationProperties,
                      style: _theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        // ignore: unused_local_variable
                        final _result = await context.router.push(
                          const TenantRecommendedPropertyRoute(),
                        );
                      },
                      child: Text(
                        // 'See All',
                        context.t.action.seeAll,
                        style: _theme.textTheme.bodyMedium?.copyWith(
                          color: _theme.colorScheme.secondary,
                        ),
                      ),
                    )
                  ],
                ).fMarginAll(16),
                SizedBox.fromSize(
                  size: const Size.fromHeight(295),
                  child: _recommendedProperties.when(
                    skipLoadingOnRefresh: false,
                    data: (data) {
                      final properties = [...?data.data?.data];

                      return EmptyWidget(
                        showWhen: properties.isEmpty,
                        replaceDefault: false,
                        emptyBuilder: (context) {
                          return RetryButtons.scrollView(
                            // 'No Recommended Properties found\nPlease try again later.',
                            context.t.exceptions.noPropertyFoundHint
                                .tenantRecommended,
                            onRetry: () => ref.refresh(
                              controller.recomemdedProperties,
                            ),
                          );
                        },
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 2,
                          ),
                          itemCount: properties.length,
                          itemBuilder: (_, index) {
                            final item = properties[index];
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

                            return ConstrainedBox(
                              constraints: const BoxConstraints.tightFor(
                                width: 245,
                              ),
                              child: PropertyCardVertical.tenant(
                                onTap: (id) async {
                                  return await context.router.push<void>(
                                    TenantPropertyDetailsRoute(id: id),
                                  );
                                },
                                data: _data,
                                isFav: item.isFavorite,
                                onFavTap: (id) async {
                                  return await PropertyCardData.handleFavTap(
                                    context,
                                    callback: () {
                                      final _repo =
                                          ref.read(propertyRepoProvider);

                                      return item.isFavorite
                                          ? _repo.deleteFavorite(
                                              item.favorite!.id!,
                                            )
                                          : _repo.createFavorite(id);
                                    },
                                    showInvoker: item.isFavorite,
                                  );
                                },
                              ),
                            );
                          },
                          separatorBuilder: (_, __) => const SizedBox.square(
                            dimension: 16,
                          ),
                        ),
                      );
                    },
                    error: (error, _) {
                      return RetryButtons.scrollView(
                        error,
                        onRetry: () => ref.refresh(
                          controller.recomemdedProperties,
                        ),
                      );
                    },
                    loading: _buildLoadingShimmer,
                  ),
                ),

                // All Properties
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // 'All Properties',
                      context.t.common.allProperties,
                      style: _theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        // ignore: unused_local_variable
                        final _result = await context.router.push(
                          const TenantAllPropertyRoute(),
                        );
                      },
                      child: Text(
                        // 'See All',
                        context.t.action.seeAll,
                        style: _theme.textTheme.bodyMedium?.copyWith(
                          color: _theme.colorScheme.secondary,
                        ),
                      ),
                    )
                  ],
                ).fMarginAll(16),
                _allProperties.when(
                  skipLoadingOnRefresh: false,
                  data: (data) {
                    final properties = [...?data.data?.data];

                    if (properties.isEmpty) {
                      return SizedBox.fromSize(
                        size: const Size.fromHeight(245),
                        child: EmptyWidget(
                          replaceDefault: false,
                          child: const SizedBox.shrink(),
                          emptyBuilder: (context) {
                            return RetryButtons.scrollView(
                              context.t.exceptions.noPropertyFoundHint
                                  .tenantAllProperty,
                              onRetry: () => ref.refresh(
                                controller.allProperties,
                              ),
                            );
                          },
                        ),
                      );
                    }
                    return ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: properties.length,
                      itemBuilder: (_, index) {
                        final item = properties[index];
                        final _sizeInfo =
                            item.buildPropertySize(item.categoryId);

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
                            return await context.router.push<void>(
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
                      separatorBuilder: (_, __) => const SizedBox.square(
                        dimension: 16,
                      ),
                    );
                  },
                  error: (error, _) {
                    return RetryButtons.scrollView(
                      error,
                      onRetry: () => ref.refresh(
                        controller.recomemdedProperties,
                      ),
                    );
                  },
                  loading: () {
                    return _buildLoadingShimmer(
                      scrollDirection: Axis.vertical,
                    );
                  },
                ),
                const SizedBox.square(dimension: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingShimmer({Axis scrollDirection = Axis.horizontal}) {
    return Skeletonizer(
      ignoreContainers: true,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: scrollDirection,
        primary: false,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 3,
        itemBuilder: (context, index) {
          final _data = PropertyCardData(
            id: index,
            landlordName: 'Phyllis Howe',
            propertyTitle: 'Veniam fuga nobis optio id ducimus.',
            bedRooms: index,
            bathRooms: index * 2,
            propertySize: index + 1 * 100,
            monthlyRent: 1000,
          );

          if (scrollDirection == Axis.vertical) {
            return HorizontalPropertyCard.tenant(
              data: _data,
            );
          }

          return ConstrainedBox(
            constraints: const BoxConstraints.tightFor(width: 210),
            child: PropertyCardVertical.tenant(
              data: _data,
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox.square(
          dimension: 16,
        ),
      ),
    );
  }
}

final searchHistoryProvider = Provider.autoDispose<List<String>>(
  (ref) {
    final _prefs = ref.watch(httpDioClientProvider).prefs;
    return [...?_prefs.getStringList(DAppSPrefsKeys.searchHistory)]
        .reversed
        .toList();
  },
);
