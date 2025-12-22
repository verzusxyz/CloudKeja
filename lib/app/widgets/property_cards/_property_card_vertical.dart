part of 'property_cards.dart';

class PropertyCardVertical extends StatelessWidget {
  const PropertyCardVertical._({
    super.key,
    required this.isLandlord,
    this.onTap,
    required this.data,
    this.isFav = false,
    this.onFavTap,
    this.iconTheme,
  });
  final bool isLandlord;
  final void Function(int id)? onTap;
  final bool isFav;
  final PropertyCardData data;
  final void Function(int id)? onFavTap;
  final IconThemeData? iconTheme;

  const PropertyCardVertical.landlord({
    Key? key,
    void Function(int id)? onTap,
    IconThemeData? iconTheme,
    required PropertyCardData data,
  }) : this._(
          key: key,
          isLandlord: true,
          onTap: onTap,
          iconTheme: iconTheme,
          data: data,
        );

  const PropertyCardVertical.tenant({
    Key? key,
    bool isFav = false,
    void Function(int id)? onFavTap,
    void Function(int id)? onTap,
    IconThemeData? iconTheme,
    required PropertyCardData data,
  }) : this._(
          key: key,
          isLandlord: false,
          onTap: onTap,
          isFav: isFav,
          onFavTap: onFavTap,
          iconTheme: iconTheme,
          data: data,
        );

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return GestureDetector(
      onTap: () => onTap?.call(data.id),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Card(
            elevation: 1,
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.zero,
            color: _theme.colorScheme.primaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(
                    height: 125,
                    width: double.maxFinite,
                  ),
                  child: CustomNetworkImage(
                    url: data.coverImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),

                // Content
                Expanded(
                  child: IconTheme(
                    data: iconTheme ??
                        _theme.iconTheme.copyWith(color: Colors.orange),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Rent
                          Row(
                            children: [
                              Expanded(
                                child: Text.rich(
                                  TextSpan(
                                    text: data.monthlyRent?.quickCurrency(),
                                    children: [
                                      TextSpan(
                                        // text: ' /1 Month',
                                        text: context.t.common.perMonth,
                                        style: TextStyle(
                                          color: _theme.colorScheme.secondary,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: _theme.textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: _theme.colorScheme.primary,
                                  ),
                                ),
                              ),
                              if (!isLandlord)
                                IconButton.filledTonal(
                                  onPressed: () => onFavTap?.call(data.id),
                                  style: IconButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    visualDensity: const VisualDensity(
                                      horizontal: -4,
                                      vertical: -4,
                                    ),
                                    backgroundColor: DAppColors.kSurfaceLight,
                                  ),
                                  iconSize: 14,
                                  icon: Icon(
                                    isFav
                                        ? FontAwesome.heart_solid
                                        : FontAwesome.heart,
                                    color: isFav
                                        ? _theme.colorScheme.primary
                                        : _theme.colorScheme.outline,
                                  ),
                                )
                            ],
                          ),

                          // Property Title
                          Text(
                            data.propertyTitle ?? 'N/A',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: _theme.textTheme.bodyLarge?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox.square(dimension: 2),

                          // Property Type
                          Text(
                            data.category ?? 'N/A',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: _theme.textTheme.bodySmall?.copyWith(
                              color: _theme.colorScheme.secondary,
                            ),
                          ),
                          const SizedBox.square(dimension: 6),

                          // Location
                          Text.rich(
                            TextSpan(
                              children: [
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    IconlyLight.location,
                                    size: 16,
                                    color: _theme.colorScheme.outline,
                                  ),
                                ),
                                TextSpan(text: data.address ?? 'N/A')
                              ],
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: _theme.textTheme.bodySmall?.copyWith(
                              color: _theme.colorScheme.secondary,
                            ),
                          ),
                          const SizedBox.square(dimension: 8),

                          // Features & Facilities
                          if (data.bedRooms != null ||
                              data.bathRooms != null ||
                              data.propertySize != null)
                            Wrap(
                              spacing: 6,
                              runSpacing: 6,
                              children: [
                                if (data.bedRooms != null)
                                  _buildFeatures(
                                    context,
                                    icon: Icons.bed,
                                    label: data.bedRooms.toString(),
                                  ),
                                if (data.bathRooms != null)
                                  _buildFeatures(
                                    context,
                                    icon: Icons.bathtub_rounded,
                                    label: data.bathRooms.toString(),
                                  ),
                                if (data.propertySize != null)
                                  _buildFeatures(
                                    context,
                                    icon: Icons.window,
                                    label:
                                        '${data.propertySize} ${data.sizeUnit ?? ''}',
                                  ),
                              ],
                            )
                          else
                            // Text('No features provided.'),
                            Text(context.t.exceptions.noFeaturesProvided),
                          const SizedBox.square(dimension: 2),
                          const Divider(height: 8, thickness: 1.25),
                          const SizedBox.square(dimension: 2),

                          // Lanlord Name
                          Flexible(
                            child: Text.rich(
                              TextSpan(
                                // text: 'Landlord:  ',
                                text: '${context.t.common.landlord}:  ',
                                children: [
                                  TextSpan(
                                    text: data.landlordName ?? 'N/A',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color:
                                          _theme.colorScheme.onPrimaryContainer,
                                    ),
                                  ),
                                ],
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: _theme.textTheme.bodyMedium?.copyWith(
                                color: _theme.colorScheme.secondary,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildFeatures(
    BuildContext context, {
    required IconData icon,
    required String label,
  }) {
    final _theme = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16),
        const SizedBox.square(dimension: 2),
        Text(
          label,
          style: _theme.textTheme.bodySmall?.copyWith(
            color: _theme.colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
