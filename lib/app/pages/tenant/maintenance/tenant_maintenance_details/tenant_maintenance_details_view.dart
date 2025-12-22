import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class TenantMaintenanceDetailsView extends ConsumerStatefulWidget {
  const TenantMaintenanceDetailsView({super.key, required this.id});
  final int id;

  @override
  ConsumerState<TenantMaintenanceDetailsView> createState() =>
      _TenantMaintenanceDetailsViewState();
}

class _TenantMaintenanceDetailsViewState
    extends ConsumerState<TenantMaintenanceDetailsView> {
  @override
  void initState() {
    super.initState();
    if (context.mounted) {
      gEventListener.on<MaintenanceEvent>().listen((_) {
        // ignore: unused_result
        ref.refresh(maintenanceDetails(widget.id));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _maintenanceDetails = ref.watch(maintenanceDetails(widget.id));

    final _data = _maintenanceDetails.valueOrNull?.data;

    final _status = MaintenanceStatus.fromString(_data?.status);

    const _ckFlex = 5;
    const _cVFlex = 8;
    final _cKTextStyle = _theme.textTheme.bodyMedium;
    final _cVTextStyle = _cKTextStyle?.copyWith(
      color: _theme.colorScheme.secondary,
    );
    final _sectionHeaderStyle = _theme.textTheme.titleMedium?.copyWith(
      fontWeight: FontWeight.w700,
    );
    final _sectionDescriptionStyle = _theme.textTheme.bodyMedium?.copyWith(
      color: _theme.colorScheme.secondary,
    );

    return Scaffold(
      appBar: CustomAppBar(
        title: Skeletonizer(
          enabled: _maintenanceDetails.isAnyLoading,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: SizedBox.square(
              dimension: 44,
              child: UserAvatarPicker(
                showBorder: false,
                userName: _data
                    ?.property?.propertyDetail?.propertyInfo?.propertyTitle,
                showInitialsPlaceholder: true,
                image: _data?.property?.coverImage?.firstOrNull,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              _data?.property?.propertyDetail?.propertyInfo?.propertyTitle ??
                  'N/A',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: _theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: _theme.colorScheme.onPrimary,
              ),
            ),
            subtitle: Text(
              _data?.createdAt?.formatDate() ?? 'N/A',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: _cKTextStyle?.copyWith(
                color: _theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(maintenanceDetails(widget.id).future),
        child: ScaffoldBodyWrapper(
          body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(24),
            child: Skeletonizer(
              enabled: _maintenanceDetails.isAnyLoading,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Details
                  Text(
                    // 'Details',
                    context.t.common.details,
                    style: _sectionHeaderStyle,
                  ),
                  ...{
                    // "Property Name":
                    context.t.common.propertyName: _data?.property
                            ?.propertyDetail?.propertyInfo?.propertyTitle ??
                        "N/A",
                    // "Title":
                    context.t.common.title: _data?.title ?? "N/A",
                    // "Date":
                    context.t.common.date:
                        _data?.createdAt?.formatDate() ?? "N/A",
                    // "Description":
                    context.t.common.description: _data?.description ?? "N/A",
                    // "Status":
                    context.t.common.status: _status,
                    if (_status == MaintenanceStatus.processing)
                      // "Labor Name":
                      context.t.common.laborName: _data?.labor?.name ?? "N/A",
                    if (_status == MaintenanceStatus.rejected)
                      // "Reason":
                      context.t.common.reason: _data?.notes ?? 'N/A',
                  }.entries.map(
                    (entry) {
                      final isStatus = entry.value is MaintenanceStatus;
                      final _descriptiionColor = isStatus
                          ? (entry.value as MaintenanceStatus).color
                          : _theme.colorScheme.secondary;

                      return KeyValueRow(
                        titleFlex: _ckFlex,
                        descriptionFlex: _cVFlex,
                        title: entry.key,
                        descriptionStyle: _cVTextStyle?.copyWith(
                          color: _descriptiionColor,
                        ),
                        description: isStatus
                            ? (entry.value as MaintenanceStatus).label(context)
                            : entry.value.toString(),
                      );
                    },
                  ),

                  // Comment
                  if (_data?.comments != null) ...[
                    Text(
                      // 'Comment',
                      context.t.common.comment,
                      style: _sectionHeaderStyle,
                    ),
                    SizedBox.square(dimension: 4),
                    Text(
                      _data?.comments ?? 'N/A',
                      style: _sectionDescriptionStyle,
                    ),
                  ],

                  // Image
                  SizedBox.square(dimension: 16),
                  Text(
                    // 'Image',
                    context.t.common.image,
                    style: _sectionHeaderStyle,
                  ),
                  SizedBox.square(dimension: 8),
                  if (_data?.images?.isNotEmpty == true)
                    GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                      ),
                      itemCount: _data?.images?.length,
                      itemBuilder: (_, index) {
                        final _image = _data?.images?[index];
                        return InkWell(
                          onTap: () async => await showImagePreviewGallery(
                            context,
                            _data?.images ?? [],
                            initialIndex: index,
                          ),
                          child: CustomNetworkImage(
                            url: _image?.remote,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    )
                  else
                    Text(
                      // 'No Image Provided',
                      context.t.exceptions.noImageProvided,
                      style: _sectionDescriptionStyle,
                    )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _status != MaintenanceStatus.pending
          ? null
          : ScaffoldBottomNavWrapper(
              child: Skeletonizer(
                enabled: _maintenanceDetails.isAnyLoading,
                child: SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () async {
                      if (_data == null) {
                        showCustomSnackBar(
                          context,
                          content: Text(
                            // 'Invalid maintenance data, please try refreshing the page!',
                            context.t.exceptions.invalidApiDataRefreshPage(
                              dataType:
                                  context.t.common.maintenance.toLowerCase(),
                            ),
                          ),
                          customSnackBarType: CustomOverlayType.error,
                        );
                        return;
                      }
                      // ignore: unused_local_variable
                      final _result = await context.router.push(
                        TenantManageMaintenanceRoute(
                          editModel: _data,
                        ),
                      );
                    },
                    // label: Text('Edit'),
                    label: Text(context.t.common.edit),
                    icon: Icon(
                      FeatherIcons.edit,
                      color: _theme.colorScheme.onPrimary,
                    ),
                  ),
                ).fMarginLTRB(24, 16, 24, 16),
              ),
            ),
    );
  }
}
