import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../../common/pages/common_pages.dart';
import '../../common/widgets/widgets.dart';

part '_landlord_home_view_provider.dart';

@RoutePage()
class LandlordHomeView extends ConsumerStatefulWidget {
  const LandlordHomeView({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  ConsumerState<LandlordHomeView> createState() => _LandlordHomeViewState();
}

class _LandlordHomeViewState extends ConsumerState<LandlordHomeView>
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

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _borderRadiusAnimation = Tween<double>(begin: 30.0, end: 0.0).animate(
      _animationController,
    );

    scrollController.addListener(_onScroll);

    if (context.mounted) {
      gEventListener.on<String>().listen((status) {
        if (status == DAppSPrefsKeys.searchHistory) {
          return ref.invalidate(searchHistoryProvider);
        }
      });
    }
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
    final controller = ref.watch(landlordHomeViewProvider);
    final searchHistory = ref.watch(searchHistoryProvider);
    final notifications = ref.watch(notificationList);

    final _theme = Theme.of(context);

    return Scaffold(
      backgroundColor: DAppColors.kSurfaceLight,
      body: RefreshIndicator.adaptive(
        notificationPredicate: (noti) => noti.depth == 1,
        onRefresh: () => Future.sync(controller.pagingController.refresh),
        child: NestedScrollView(
          controller: scrollController,
          physics: AlwaysScrollableScrollPhysics(),
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
                              child: _borderRadiusAnimation.value > 0
                                  ? SizedBox.expand(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional.bottomEnd,
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            return context.router.push<void>(
                                              LandlordManagePropertyRoute(),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                DAppColors.kPendingColor,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 14,
                                            ),
                                          ),
                                          child: Text(
                                            '+ ${context.t.action.addProperty}',
                                          ),
                                        ),
                                      ).fMarginOnly(bottom: 50, right: 16),
                                    )
                                  : null,
                            ),
                          ),
                          if (_borderRadiusAnimation.value > 0)
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: CustomSearchField.placeholder(
                                onTap: () => context.router.pushWidget(
                                  SearchView(),
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
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Recent Search Overview
                if (searchHistory.isNotEmpty) ...[
                  RecentSearchOverview(
                    searchHistory: searchHistory,
                    onTap: (value) async {
                      return context.router.pushWidget<void>(
                        SearchResultsView(searchKey: value),
                      );
                    },
                  ),
                  const SizedBox.square(dimension: 16),
                ],

                // My Properties
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        // 'My Properties',
                        context.t.common.myProperties,
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: TextButton.icon(
                          onPressed: () {
                            return AutoTabsRouter.of(context).setActiveIndex(3);
                          },
                          iconAlignment: IconAlignment.end,
                          icon: const Icon(
                            IconlyLight.arrow_right_2,
                            size: 18,
                          ),
                          // label: const Text('View All'),
                          label: Text(context.t.action.viewAll),
                          style: TextButton.styleFrom(
                            visualDensity: const VisualDensity(
                              horizontal: -4,
                              vertical: -4,
                            ),
                            padding: EdgeInsets.zero,
                            textStyle: _theme.textTheme.bodyMedium?.copyWith(
                              color: _theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox.square(dimension: 8),

                // Properties
                PagedListView.separated(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.only(bottom: 16),
                  pagingController: controller.pagingController,
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
                        isActive: item.status == PropertyStatus.active.statusId,
                        onActive: (v, [id]) async {
                          if (id == null) return;

                          return await SharedWidgets.handleChangePropertyStatus(
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
                )
              ],
            ),
          ),
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
