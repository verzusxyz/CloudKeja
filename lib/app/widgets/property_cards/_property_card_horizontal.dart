part of 'property_cards.dart';

class HorizontalPropertyCard extends StatelessWidget {
  const HorizontalPropertyCard._({
    super.key,
    this.iconTheme,
    required this.isLandlord,
    required this.imageHeight,
    required this.data,
    this.propertyStatus,
    this.onTap,
    this.isActive = false,
    this.onActive,
    this.isFav,
    this.onFavTap,
  });
  final bool isLandlord;
  final double imageHeight;
  final PropertyCardData data;
  final IconThemeData? iconTheme;
  final PropertyStatus? propertyStatus;
  final void Function(int id)? onTap;
  final bool isActive;
  final void Function(bool value, [int? id])? onActive;

  final bool? isFav;
  final void Function(int id)? onFavTap;

  const HorizontalPropertyCard.tenant({
    Key? key,
    IconThemeData? iconTheme,
    void Function(int id)? onTap,
    bool isFav = false,
    void Function(int id)? onFavTap,
    required PropertyCardData data,
  }) : this._(
          key: key,
          isLandlord: false,
          iconTheme: iconTheme,
          imageHeight: 160,
          onTap: onTap,
          isFav: isFav,
          onFavTap: onFavTap,
          data: data,
        );

  const HorizontalPropertyCard.landlord({
    Key? key,
    IconThemeData? iconTheme,
    required PropertyStatus propertyStatus,
    void Function(int id)? onTap,
    required bool isActive,
    void Function(bool value, [int? id])? onActive,
    required PropertyCardData data,
  }) : this._(
          key: key,
          isLandlord: true,
          iconTheme: iconTheme,
          imageHeight: 150,
          propertyStatus: propertyStatus,
          onTap: onTap,
          onActive: onActive,
          data: data,
          isActive: isActive,
        );

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return GestureDetector(
      onTap: () => onTap?.call(data.id),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Card(
            color: _theme.colorScheme.primaryContainer,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            clipBehavior: Clip.antiAlias,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  constraints: BoxConstraints.tightFor(
                    width: 120,
                    height: imageHeight,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: CustomNetworkImage(
                    url: data.coverImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox.square(dimension: 8),
                Expanded(
                  child: IconTheme(
                    data: iconTheme ??
                        _theme.iconTheme.copyWith(color: Colors.orange),
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
                                    horizontal: -3,
                                    vertical: -3,
                                  ),
                                  backgroundColor: DAppColors.kSurfaceLight,
                                ),
                                iconSize: 16,
                                icon: Icon(
                                  isFav!
                                      ? FontAwesome.heart_solid
                                      : FontAwesome.heart,
                                  color: isFav!
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

                        // Property Type
                        Text(
                          data.category ?? 'N/A',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: _theme.colorScheme.secondary,
                          ),
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
                              TextSpan(text: data.address ?? 'N/A')
                            ],
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            color: _theme.colorScheme.secondary,
                          ),
                        ),
                        const SizedBox.square(dimension: 4),

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

                        const SizedBox.square(dimension: 4),

                        // Landlord Actions
                        if (isLandlord)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildPropertyStatus(context),
                              if (propertyStatus == PropertyStatus.active ||
                                  propertyStatus == PropertyStatus.inactive)
                                SizedBox(
                                  height: 28,
                                  width: 36,
                                  child: FittedBox(
                                    fit: BoxFit.fitHeight,
                                    child: Switch(
                                      value: isActive,
                                      onChanged: switch (propertyStatus) {
                                        PropertyStatus.active ||
                                        PropertyStatus.inactive =>
                                          (v) => onActive?.call(v, data.id),
                                        _ => null,
                                      },
                                    ),
                                  ),
                                ),
                            ],
                          )
                        else ...[
                          const Divider(height: 4),
                          // Lanlord Name
                          Text.rich(
                            TextSpan(
                              // text: 'Landlord:  ',
                              text: '${context.t.common.landlord}: ',
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
                        ]
                      ],
                    ),
                  ),
                ),
              ],
            ).fMarginAll(8),
          );
        },
      ),
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
        color: propertyStatus?.statusColor?.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        propertyStatus?.label(context) ?? "N/A",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: _theme.textTheme.bodySmall?.copyWith(
          color: propertyStatus?.statusColor,
          fontWeight: FontWeight.w600,
        ),
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
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: _theme.textTheme.bodyMedium?.copyWith(
            color: _theme.colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
