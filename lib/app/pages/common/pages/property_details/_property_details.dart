import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

class PropertyDetails extends ConsumerStatefulWidget {
  const PropertyDetails._({
    super.key,
    required this.detailsModel,
    //------------------------Lanlord Props------------------------//
    required this.isLandlord,
    this.isActive = false,
    this.onPublish,
    this.propertyStatus,
    this.rejectReason,
    //------------------------Lanlord Props------------------------//

    //------------------------Tenant Props------------------------//
    this.fromDateController,
    this.toDateController,
    this.tenantId,
    this.onEditReview,
    //------------------------Tenant Props------------------------//

    this.isFav = false,
    this.onFavTap,
  });

  final PropertyDetailsModel detailsModel;
  //------------------------Lanlord Props------------------------//
  final bool isLandlord;
  final bool isActive;
  final void Function(bool value)? onPublish;
  final PropertyStatus? propertyStatus;
  final MapEntry<String, String>? rejectReason;
  //------------------------Lanlord Props------------------------//

  //------------------------Tenant Props------------------------//
  final int? tenantId;
  final void Function(Review? review)? onEditReview;
  final TextEditingController? fromDateController;
  final TextEditingController? toDateController;
  //------------------------Tenant Props------------------------//

  final bool isFav;
  final void Function(bool value)? onFavTap;

  const PropertyDetails.tenant({
    Key? key,
    bool isFav = false,
    void Function(bool value)? onFavTap,
    required TextEditingController fromDateController,
    required TextEditingController toDateController,
    required PropertyDetailsModel detailsModel,
    void Function(Review? review)? onEditReview,
    required int? tenantId,
  }) : this._(
          key: key,
          detailsModel: detailsModel,
          isLandlord: false,
          isFav: isFav,
          onFavTap: onFavTap,
          fromDateController: fromDateController,
          toDateController: toDateController,
          tenantId: tenantId,
          onEditReview: onEditReview,
        );

  const PropertyDetails.lanlord({
    Key? key,
    bool isActive = false,
    void Function(bool value)? onPublish,
    PropertyStatus propertyStatus = PropertyStatus.pending,
    MapEntry<String, String>? rejectReason,
    required PropertyDetailsModel detailsModel,
  }) : this._(
          key: key,
          detailsModel: detailsModel,
          isLandlord: true,
          isActive: isActive,
          onPublish: onPublish,
          propertyStatus: propertyStatus,
          rejectReason: rejectReason,
        );

  @override
  ConsumerState<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends ConsumerState<PropertyDetails>
    with SingleTickerProviderStateMixin {
  late final propertyDetails = widget.detailsModel;

  //----------------------Image Preview Props----------------------//
  int currentImage = 0;
  late final propertyImages = [
    if (propertyDetails.property?.coverImage?.isEmpty ?? true)
      DynamicFileType(remote: '')
    else
      ...propertyDetails.property!.coverImage!,

    // Other Images
    ...[
      propertyDetails.property?.propertyDetail?.bedroomImage,
      propertyDetails.property?.propertyDetail?.bathroomImage,
      propertyDetails.property?.propertyDetail?.livingImage,
      propertyDetails.property?.propertyDetail?.kitchenImage,
    ].whereType<DynamicFileType>(),
  ];

  late final PageController imagePageController;
  //----------------------Image Preview Props----------------------//

  //----------------------Reactive ScrollView Props----------------------//
  final appbarKey = LabeledGlobalKey('appbar');
  final _sectionKeys = [
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
    GlobalKey(),
  ];

  late final List<double> _sectionOffsets = [];
  bool _isScrolling = false;
  late final ScrollController _scrollController;
  late final TabController _tabController;

  void _calculateSectionOffsets() {
    _sectionOffsets.clear();
    double cumulativeHeight = 0;

    for (final key in _sectionKeys) {
      final context = key.currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox;
        _sectionOffsets.add(cumulativeHeight);
        cumulativeHeight += box.size.height;
      }
    }
  }

  void _handleScroll() {
    if (_isScrolling || !_scrollController.hasClients) return;

    final scrollOffset = _scrollController.offset + 150;
    int currentIndex = 0;

    for (int i = 0; i < _sectionOffsets.length; i++) {
      if (scrollOffset >= _sectionOffsets[i] - 50) {
        currentIndex = i;
      }
    }

    if (_tabController.index != currentIndex) {
      _tabController.animateTo(currentIndex);
    }
  }

  void _scrollToSection(int index) {
    if (!_scrollController.hasClients) return;

    _isScrolling = true;
    _scrollController
        .animateTo(
          _sectionOffsets[index] - 100,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        )
        .then((_) => _isScrolling = false);
  }
  //----------------------Reactive ScrollView Props----------------------//

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _sectionKeys.length, vsync: this);

    _scrollController = ScrollController()..addListener(_handleScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calculateSectionOffsets();
    });
    imagePageController = PageController()
      ..addListener(() {
        setState(() => currentImage = imagePageController.page?.ceil() ?? 0);
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    final _facilities = ref.watch(facilitiesProvider);
    final _amenities = ref.watch(amenitiesProvider);

    return CustomScrollView(
      controller: _scrollController,
      physics: AlwaysScrollableScrollPhysics(),
      slivers: [
        // Overview
        SliverAppBar(
          key: appbarKey,
          pinned: true,
          backgroundColor: DAppColors.kSurfaceLight,
          foregroundColor: DAppColors.kOnSurfaceLight,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          leading: IconButton.filled(
            onPressed: context.router.maybePop,
            style: IconButton.styleFrom(
              backgroundColor: _theme.colorScheme.primaryContainer,
            ),
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            if (!widget.isLandlord)
              IconButton.filledTonal(
                onPressed: () => widget.onFavTap?.call(!widget.isFav),
                icon: Icon(
                  widget.isFav ? Icons.favorite : Icons.favorite_outline,
                ),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor:
                      widget.isFav ? _theme.colorScheme.primary : null,
                ),
              ),
          ],
          expandedHeight: 536,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              children: [
                // Property Image Overview
                Positioned.fill(
                  bottom: 240,
                  child: PageView.builder(
                    controller: imagePageController,
                    itemCount: propertyImages.length,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: () async => await showImagePreviewGallery(
                          context,
                          propertyImages,
                          initialIndex: index,
                        ),
                        child: CustomNetworkImage(
                          url: propertyImages[index].remote,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),

                // Property Info
                Positioned.fill(
                  top: 240,
                  child: ScaffoldBodyWrapper(
                    body: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Images
                        SizedBox(
                          height: 84,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 16,
                            ),
                            itemCount: propertyImages.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () async {
                                  return imagePageController.animateToPage(
                                    index,
                                    duration: Durations.medium1,
                                    curve: Curves.linear,
                                  );
                                },
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: currentImage == index
                                        ? Border.all(
                                            color: _theme.colorScheme.primary,
                                            width: 1.5,
                                            strokeAlign:
                                                BorderSide.strokeAlignOutside,
                                          )
                                        : null,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: SizedBox.square(
                                      dimension: 48,
                                      child: CustomNetworkImage(
                                        url: propertyImages[index].remote,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (_, __) {
                              return const SizedBox.square(dimension: 10);
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Landlord
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text.rich(
                                    context.t.pages.propertyDetails.extra
                                        .landlord(
                                      landlordName: TextSpan(
                                        text: propertyDetails
                                                .property?.landlord?.name ??
                                            'N/A',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: _theme
                                              .colorScheme.onPrimaryContainer,
                                        ),
                                      ),
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: _theme.textTheme.bodyLarge?.copyWith(
                                      color: _theme.colorScheme.secondary,
                                    ),
                                  ),
                                  if (widget.isLandlord)
                                    SizedBox(
                                      height: 26,
                                      width: 38,
                                      child: FittedBox(
                                        fit: BoxFit.fitHeight,
                                        child: Switch(
                                          value: widget.isActive,
                                          onChanged: switch (
                                              widget.propertyStatus) {
                                            PropertyStatus.active ||
                                            PropertyStatus.inactive =>
                                              widget.onPublish,
                                            _ => null,
                                          },
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              const SizedBox.square(dimension: 4),

                              // Property Title
                              Text(
                                propertyDetails.property?.propertyDetail
                                        ?.propertyInfo?.propertyTitle ??
                                    'N/A',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: _theme.textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox.square(dimension: 8),

                              // Property Type
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    propertyDetails.property?.category?.name ??
                                        'N/A',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        _theme.textTheme.bodyMedium?.copyWith(
                                      color: _theme.colorScheme.secondary,
                                    ),
                                  ),
                                  if (widget.isLandlord)
                                    _buildPropertyStatus(context),
                                ],
                              ),
                              const SizedBox.square(dimension: 6),

                              // Location
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const WidgetSpan(
                                      alignment: PlaceholderAlignment.middle,
                                      child: Icon(
                                        IconlyLight.location,
                                        size: 16,
                                      ),
                                    ),
                                    TextSpan(
                                      text: PropertyCardData.buildAddress([
                                        propertyDetails
                                            .property?.addressInfo?.address,
                                        propertyDetails
                                            .property?.addressInfo?.city,
                                        propertyDetails
                                            .property?.addressInfo?.state,
                                      ]),
                                    )
                                  ],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: _theme.textTheme.bodyMedium?.copyWith(
                                  color: _theme.colorScheme.secondary,
                                ),
                              ),
                              const SizedBox.square(dimension: 8),

                              // Rent & Reviews
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Rent
                                  Expanded(
                                    flex: 6,
                                    child: Text.rich(
                                      TextSpan(
                                        text: propertyDetails
                                            .property?.rentInfo?.monthlyRent
                                            ?.quickCurrency(),
                                        children: [
                                          TextSpan(
                                            text: ' /1 Month',
                                            style: TextStyle(
                                              color:
                                                  _theme.colorScheme.secondary,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      style:
                                          _theme.textTheme.bodyLarge?.copyWith(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),

                                  // Reviews
                                  Expanded(
                                    flex: 4,
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          const WidgetSpan(
                                            child: Icon(
                                              IconlyBold.star,
                                              size: 20,
                                              color: DAppColors.kPendingColor,
                                            ),
                                          ),
                                          context.t.pages.propertyDetails.extra
                                              .ratingReviews(
                                            rating: TextSpan(
                                              text:
                                                  ' ${propertyDetails.ratings?.average ?? 0}',
                                            ),
                                            reviews: (p0) {
                                              return TextSpan(
                                                text:
                                                    '(${propertyDetails.ratings?.total ?? 0} $p0)',
                                                style: TextStyle(
                                                  color: _theme
                                                      .colorScheme.secondary,
                                                ),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                      textAlign: TextAlign.end,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: _theme.textTheme.bodyLarge,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: Color(0xffE7F6EF),
              ),
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                tabs: [
                  ...{
                    // "About": IconlyBold.shield_done,
                    // "Property Types": IconlyBold.document,
                    // "Features": IconlyBold.ticket_star,
                    // "Floor Plans": IconlyBold.graph,
                    // "Reviews": IconlyBold.star,
                    context.t.common.about: IconlyBold.shield_done,
                    context.t.common.propertyTypes: IconlyBold.document,
                    context.t.common.features: IconlyBold.ticket_star,
                    context.t.common.floorPlans: IconlyBold.graph,
                    context.t.common.reviews: IconlyBold.star
                  }.entries.map((entry) {
                    return Tab(
                      height: kToolbarHeight,
                      icon: Icon(entry.value),
                      text: entry.key,
                    );
                  }),
                ],
                onTap: _scrollToSection,
              ),
            ),
          ),
        ),

        // Details
        SliverToBoxAdapter(
          child: Scrollable(
            viewportBuilder: (_, position) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Reject Message
                    if (widget.propertyStatus == PropertyStatus.rejected &&
                        widget.rejectReason != null)
                      Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 8, bottom: 24),
                        decoration: BoxDecoration(
                          color: const Color(0xffFFEBEB),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              IconlyLight.info_circle,
                              color: widget.propertyStatus?.statusColor,
                            ),
                            const SizedBox.square(dimension: 4),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    widget.rejectReason?.key ?? 'N/A',
                                    style: _theme.textTheme.bodyMedium,
                                  ),
                                  const SizedBox.square(dimension: 4),
                                  Text(
                                    widget.rejectReason?.value ?? 'N/A',
                                    style:
                                        _theme.textTheme.bodyMedium?.copyWith(
                                      color: _theme.colorScheme.secondary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    // About Section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      key: _sectionKeys[0],
                      children: [
                        // Description
                        Text(
                          // 'Description',
                          context.t.common.description,
                          style: _theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox.square(dimension: 4),
                        ReadMore2(
                          propertyDetails.property?.propertyDetail?.propertyInfo
                                  ?.propertyDescription ??
                              'N/A',
                          textStyle: _theme.textTheme.bodyMedium?.copyWith(
                            color: _theme.colorScheme.secondary,
                          ),
                          handleStyle: TextStyle(
                            color: _theme.colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox.square(dimension: 16),

                        // Building Details
                        Text(
                          // 'Building Details',
                          context.t.common.buildingDetails,
                          style: _theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox.square(dimension: 4),
                        ...{
                          // "Building Name": "Arte Plus Jalan Ampang",
                          // "Property Address":
                          //     "Off Jalan Ampang, Ampang, Kuala Lumpur",
                          // "Completion Year": "1998",
                          // "Lot Number": "38",
                          context.t.common.buildingName:
                              propertyDetails.property?.buildingName ?? 'N/A',
                          context.t.common.propertyAddress:
                              PropertyCardData.buildAddress(
                            [
                              propertyDetails.property?.addressInfo?.address,
                              propertyDetails.property?.addressInfo?.city,
                              propertyDetails.property?.addressInfo?.state,
                            ],
                            separator: ', ',
                          ),
                          context.t.common.completionYear: propertyDetails
                                  .property?.rentInfo?.completionYear ??
                              'N/A',
                          context.t.common.lotNumber: propertyDetails.property
                                  ?.propertyDetail?.propertyInfo?.lotNumber ??
                              'N/A',
                        }.entries.map((entry) {
                          return KeyValueRow(
                            title: entry.key,
                            description: entry.value,
                            titleFlex: 3,
                            descriptionFlex: 5,
                            bottomSpace: 4,
                          );
                        })
                      ],
                    ),
                    const SizedBox.square(dimension: 16),

                    // Property Types Section
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      key: _sectionKeys[1],
                      children: [
                        Text(
                          // 'Property Types',
                          context.t.common.propertyTypes,
                          style: _theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox.square(dimension: 4),
                        ...{
                          "Property ID":
                              propertyDetails.property?.pUid ?? "N/A",
                          if (propertyDetails
                                  .property?.propertyDetail?.residentialType !=
                              null)
                            context.t.common.residentialType: propertyDetails
                                .property!.propertyDetail!.residentialType!,
                          if (propertyDetails
                                  .property?.propertyDetail?.furnishing !=
                              null)
                            context.t.common.furnishings: propertyDetails
                                .property!.propertyDetail!.furnishing!,
                          if (propertyDetails.property?.roomInfo?.floorRang !=
                              null)
                            context.t.common.floorRange:
                                propertyDetails.property!.roomInfo!.floorRang!,
                          if (propertyDetails.property?.roomInfo?.bedroom !=
                              null)
                            context.t.common.bedrooms:
                                "${propertyDetails.property!.roomInfo!.bedroom}",
                          if (propertyDetails.property?.roomInfo?.bathroom !=
                              null)
                            context.t.common.bathrooms:
                                "${propertyDetails.property!.roomInfo!.bathroom}",
                          context.t.common.propertySize: _getPropertySize(),
                          context.t.common.rentalPeriod: propertyDetails
                                  .property?.rentInfo?.rentalPeriod ??
                              'N/A',
                          context.t.common.securityDeposit: propertyDetails
                                  .property?.securityDeposit
                                  ?.quickCurrency() ??
                              'N/A',
                          context.t.common.utilityBill: propertyDetails
                                  .property?.utilityDeposit
                                  ?.quickCurrency() ??
                              'N/A',
                        }.entries.map((entry) {
                          return KeyValueRow(
                            title: entry.key,
                            description: entry.value,
                            titleFlex: 3,
                            descriptionFlex: 5,
                            bottomSpace: 4,
                          );
                        })
                      ],
                    ),
                    const SizedBox.square(dimension: 16),

                    // Features (Facilities & Amenities )
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      key: _sectionKeys[2],
                      children: [
                        Text.rich(
                          context.t.pages.propertyDetails.extra.features(
                            fa: (fa) {
                              return TextSpan(
                                text: fa,
                                style: TextStyle(
                                  color: _theme.colorScheme.secondary,
                                ),
                              );
                            },
                          ),
                          style: _theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox.square(dimension: 10),

                        // Facilities
                        Text(
                          // 'Facilities',
                          context.t.common.facilities,
                          style: _theme.textTheme.bodyMedium,
                        ),
                        const SizedBox.square(dimension: 8),
                        LayoutBuilder(
                          builder: (_, constraints) {
                            return Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: _facilities.when(
                                skipLoadingOnRefresh: false,
                                data: (data) {
                                  return [
                                    ...?data.data?.map(
                                      (facility) {
                                        final _hasFeature = propertyDetails
                                                .property
                                                ?.propertyDetail
                                                ?.facilities
                                                ?.contains(facility.id) ??
                                            false;

                                        return SizedBox(
                                          width: constraints.maxWidth * 0.4,
                                          child: _buildFeature(
                                            feature: facility.name ?? 'N/A',
                                            iconColor: _hasFeature
                                                ? _theme.colorScheme.primary
                                                : _theme.colorScheme.error,
                                            style: _theme.textTheme.bodyMedium
                                                ?.copyWith(
                                              color:
                                                  _theme.colorScheme.secondary,
                                            ),
                                            hasFeature: _hasFeature,
                                          ),
                                        );
                                      },
                                    )
                                  ];
                                },
                                error: (error, _) {
                                  return [
                                    Text.rich(
                                      RetryButtons.inlineText(
                                        error,
                                        onRetry: () => ref.refresh(
                                          facilitiesProvider,
                                        ),
                                      ),
                                    ),
                                  ];
                                },
                                loading: () {
                                  return List.generate(
                                    10,
                                    (index) => Skeletonizer(
                                      child: SizedBox(
                                        width: constraints.maxWidth * 0.4,
                                        child: _buildFeature(
                                          feature: "Fake Entry",
                                          iconColor: _theme.colorScheme.primary,
                                          style: _theme.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: _theme.colorScheme.secondary,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox.square(dimension: 12),

                        // Amenities
                        Text(
                          // 'Amenities',
                          context.t.common.amenities,
                          style: _theme.textTheme.bodyMedium,
                        ),
                        const SizedBox.square(dimension: 8),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Wrap(
                              spacing: 10,
                              runSpacing: 10,
                              children: _amenities.when(
                                skipLoadingOnRefresh: false,
                                data: (data) {
                                  return [
                                    ...?data.data?.map(
                                      (amenity) {
                                        final _hasFeature = propertyDetails
                                                .property
                                                ?.propertyDetail
                                                ?.facilities
                                                ?.contains(amenity.id) ??
                                            false;

                                        return SizedBox(
                                          width: constraints.maxWidth * 0.4,
                                          child: _buildFeature(
                                            feature: amenity.name ?? 'N/A',
                                            iconColor: _hasFeature
                                                ? _theme.colorScheme.primary
                                                : _theme.colorScheme.error,
                                            style: _theme.textTheme.bodyMedium
                                                ?.copyWith(
                                              color:
                                                  _theme.colorScheme.secondary,
                                            ),
                                            hasFeature: _hasFeature,
                                          ),
                                        );
                                      },
                                    )
                                  ];
                                },
                                error: (error, _) {
                                  return [
                                    Text.rich(
                                      RetryButtons.inlineText(
                                        error,
                                        onRetry: () => ref.refresh(
                                          amenitiesProvider,
                                        ),
                                      ),
                                    ),
                                  ];
                                },
                                loading: () {
                                  return List.generate(
                                    10,
                                    (index) => Skeletonizer(
                                      child: SizedBox(
                                        width: constraints.maxWidth * 0.4,
                                        child: _buildFeature(
                                          feature: "Fake Entry",
                                          iconColor: _theme.colorScheme.primary,
                                          style: _theme.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: _theme.colorScheme.secondary,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox.square(dimension: 16),
                      ],
                    ),
                    const SizedBox.square(dimension: 16),

                    // Floor Plans
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      key: _sectionKeys[3],
                      children: [
                        Text(
                          // 'Floor Plans',
                          context.t.common.floorPlans,
                          style: _theme.textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox.square(dimension: 4),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 5,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                              color: _theme.colorScheme.secondary.withValues(
                                alpha: 0.20,
                              ),
                            ),
                          ),
                          leading: CustomNetworkImage(
                            url: propertyDetails.property?.propertyDetail
                                ?.floorplanImage?.remote,
                          ),
                          title: Text(
                            _getPropertySize(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                    const SizedBox.square(dimension: 16),

                    // Rental period
                    if (!widget.isLandlord) ...[
                      Text(
                        // 'Select Rental period',
                        context
                            .t.pages.propertyDetails.extra.selectRentalPeriod,
                        style: _theme.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox.square(dimension: 12),
                      Row(
                        children: [
                          Expanded(
                            child: DateFormField(
                              controller: widget.fromDateController,
                              dateFormat: CustomDateFormat('yyyy-MM-dd'),
                              decoration: InputDecoration(
                                // labelText: 'From Date',
                                labelText: context.t.form.date.label(
                                  label: context.t.common.fromDate,
                                ),
                                // hintText: 'Select date',
                                hintText: context.t.form.date.hint(
                                  label: context.t.common.fromDate,
                                ),
                                suffixIcon: Icon(IconlyLight.calendar),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  // return 'Please select from date';
                                  return context.t.form.date.errors.required(
                                    label: context.t.common.fromDate,
                                  );
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox.square(dimension: 16),
                          Expanded(
                            child: DateFormField(
                              controller: widget.toDateController,
                              dateFormat: CustomDateFormat('yyyy-MM-dd'),
                              decoration: InputDecoration(
                                // labelText: 'To Date',
                                labelText: context.t.form.date.label(
                                  label: context.t.common.toDate,
                                ),
                                // hintText: 'Select date',
                                hintText: context.t.form.date.hint(
                                  label: context.t.common.toDate,
                                ),
                                suffixIcon: Icon(IconlyLight.calendar),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  // return 'Please select to date';
                                  return context.t.form.date.errors.required(
                                    label: context.t.common.toDate,
                                  );
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                      const SizedBox.square(dimension: 8),

                      // Terms & Conditions
                      const TermsConditionsFormField(),
                      const SizedBox.square(dimension: 12),
                    ],

                    // Reviews
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      key: _sectionKeys[4],
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                // 'Reviews',
                                context.t.common.reviews,
                                style: _theme.textTheme.bodyLarge?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            if (!widget.isLandlord && propertyDetails.canReview)
                              Expanded(
                                child: Text.rich(
                                  TextSpan(
                                    // text: '+ Write a review',
                                    text: context.t.pages.propertyDetails.extra
                                        .writeAReview,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap =
                                          () => widget.onEditReview?.call(null),
                                  ),
                                  textAlign: TextAlign.end,
                                  style: _theme.textTheme.bodyMedium?.copyWith(
                                    color: _theme.colorScheme.secondary,
                                  ),
                                ),
                              )
                          ],
                        ),
                        const SizedBox.square(dimension: 4),
                        if (propertyDetails.reviews?.isNotEmpty == true)
                          ...List.generate(
                            propertyDetails.reviews?.length ?? 0,
                            (index) {
                              final _review = propertyDetails.reviews?[index];

                              final _canEditReview =
                                  _review?.tenantId == widget.tenantId;

                              return ReviewCard(
                                data: ReviewCardData(
                                  userImage: DAPIEndpoints.imageUrl(
                                    _review?.tenant?.image,
                                  ),
                                  userName: _review?.tenant?.name ?? "N/A",
                                  date: _review?.createdAt,
                                  rating: (_review?.review ?? 0).toDouble(),
                                  description: _review?.comment ?? 'N/A',
                                  onEdit: _canEditReview
                                      ? () => widget.onEditReview?.call(_review)
                                      : null,
                                ),
                              ).fMarginOnly(bottom: 16);
                            },
                          )
                        else
                          Center(child: Text('No Reviews available')),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFeature({
    required String feature,
    Color? iconColor,
    TextStyle? style,
    bool hasFeature = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          hasFeature ? Bootstrap.check2_circle : Bootstrap.x_circle,
          color: iconColor,
          size: 18,
        ),
        const SizedBox.square(dimension: 4),
        Flexible(child: Text(feature, style: style)),
      ],
    );
  }

  Widget _buildPropertyStatus(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 3.5,
      ),
      decoration: BoxDecoration(
        color: widget.propertyStatus?.statusColor?.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        widget.propertyStatus?.label(context) ?? "N/A",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: _theme.textTheme.bodySmall?.copyWith(
          color: widget.propertyStatus?.statusColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  String _getPropertySize() {
    final _sizeInfo = propertyDetails.property
        ?.buildPropertySize(propertyDetails.property?.categoryId);

    return "${_sizeInfo?.size ?? 0} ${_sizeInfo?.sizeUnit ?? ''}";
  }
}
