import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';
import 'components/components.dart';

part '_landlord_maintenance_work_provider.dart';

@RoutePage()
class LandlordMaintenanceDetailsView extends ConsumerStatefulWidget {
  const LandlordMaintenanceDetailsView({super.key, required this.id});
  final int id;

  @override
  ConsumerState<LandlordMaintenanceDetailsView> createState() =>
      _LandlordMaintenanceDetailsViewState();
}

class _LandlordMaintenanceDetailsViewState
    extends ConsumerState<LandlordMaintenanceDetailsView> {
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
    final _maintenanceDetails = ref.watch(maintenanceDetails(widget.id));

    final _data = _maintenanceDetails.valueOrNull?.data;

    final status = MaintenanceStatus.fromString(_data?.status);
    final _theme = Theme.of(context);

    const _ckFlex = 6;
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
                userName: _data?.tenant?.name,
                showInitialsPlaceholder: true,
                showBorder: false,
                image: _data?.tenant?.image,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              _data?.tenant?.name ?? 'N/A',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: _theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
                color: _theme.colorScheme.onPrimary,
              ),
            ),
            subtitle: Text(
              '${context.t.common.dateAndTime}: ${_data?.createdAt?.formatDate(pattern: 'dd MMM yyyy - hh:mma')}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: _cKTextStyle?.copyWith(
                color: _theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => ref.refresh(maintenanceDetails(widget.id).future),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 12),
            child: Skeletonizer(
              enabled: _maintenanceDetails.isAnyLoading,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -4,
                    ),
                    // title: const Text('Maintenance Details'),
                    title: Text(context.t.common.maintenanceDetails),
                    titleTextStyle: _theme.textTheme.titleLarge?.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                    trailing: Text(
                      status.label(context),
                      style: _theme.textTheme.bodyMedium?.copyWith(
                        color: status.color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Divider(height: 8),
                  SizedBox.square(dimension: 10),

                  // Maintenance Details
                  ...{
                    // "Tenant Name":
                    context.t.common.tenantName: _data?.tenant?.name ?? 'N/A',
                    // "Mobile Number":
                    context.t.common.mobileNumber:
                        _data?.tenant?.phone?.buildPhone ?? "N/A",
                    // "Property Name":
                    context.t.common.propertyName: _data?.property
                            ?.propertyDetail?.propertyInfo?.propertyTitle ??
                        "N/A",
                    // "Property Address":
                    context.t.common.propertyAddress:
                        PropertyCardData.buildAddress([
                      _data?.property?.addressInfo?.address,
                      _data?.property?.addressInfo?.city,
                      _data?.property?.addressInfo?.state,
                    ], separator: ', '),
                  }.entries.map(
                    (entry) {
                      return KeyValueRow(
                        title: entry.key,
                        titleStyle: _cKTextStyle,
                        titleFlex: _ckFlex,
                        description: entry.value,
                        descriptionStyle: _cVTextStyle,
                        descriptionFlex: _cVFlex,
                      );
                    },
                  ),

                  // Description
                  SizedBox.square(dimension: 10),
                  Text(
                    _data?.title ?? "N/A",
                    style: _sectionHeaderStyle,
                  ),
                  SizedBox.square(dimension: 4),
                  Text(
                    _data?.description ?? 'N/A',
                    style: _theme.textTheme.bodyMedium?.copyWith(
                      color: _theme.colorScheme.secondary,
                    ),
                  ),

                  // Labor name & cost
                  if (status == MaintenanceStatus.completed) ...[
                    SizedBox.square(dimension: 8),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            // title: Text('Labor Name:'),
                            title: Text("${context.t.common.laborName}:"),
                            titleTextStyle: _sectionHeaderStyle,
                            subtitle: Text(_data?.labor?.name ?? "N/A"),
                            subtitleTextStyle: _sectionDescriptionStyle,
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            // title: Text('Maintenance Cost:'),
                            title: Text('${context.t.common.maintenanceCost}:'),
                            titleTextStyle: _sectionHeaderStyle,
                            subtitle: Text(
                              _data?.totalCosting?.quickCurrency() ?? 'N/A',
                            ),
                            subtitleTextStyle: _sectionDescriptionStyle,
                          ),
                        ),
                      ],
                    ),

                    // Comment
                    SizedBox.square(dimension: 8),
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

                  // Reject reason
                  if (status == MaintenanceStatus.rejected) ...[
                    SizedBox.square(dimension: 16),
                    Text(
                      // 'Reject reason',
                      context.t.common.reasonOfRejection,
                      style: _sectionHeaderStyle,
                    ),
                    SizedBox.square(dimension: 4),
                    Text(
                      _data?.notes ?? 'N/A',
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
      bottomNavigationBar: ([
        MaintenanceStatus.completed,
        MaintenanceStatus.rejected
      ].contains(status))
          ? null
          : ScaffoldBottomNavWrapper(
              child: Skeletonizer(
                enabled: _maintenanceDetails.isAnyLoading,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () async {
                            return await _handleReject(
                              context,
                              (note) => ref
                                  .read(maintenanceRepoProvider)
                                  .rejectMaintenance(widget.id, note: note),
                            );
                          },
                          style: CustomButtonStyles.destructiveOutline(),
                          // child: const Text('Reject'),
                          child: Text(context.t.action.reject),
                        ),
                      ),
                    ),
                    const SizedBox.square(dimension: 16),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            return await switch (status) {
                              MaintenanceStatus.pending => _handleProcessing(
                                  context,
                                  (info) {
                                    return ref
                                        .read(maintenanceRepoProvider)
                                        .approveMaintenance(
                                          widget.id,
                                          laborId: info.laborId,
                                          totalCosting: info.maintenanceCost,
                                          comments: info.comment,
                                        );
                                  },
                                ),
                              MaintenanceStatus.processing => _handleComplete(
                                  context,
                                  (comment) => ref
                                      .read(maintenanceRepoProvider)
                                      .completeMaintenance(
                                        widget.id,
                                        comments: comment,
                                      ),
                                ),
                              _ => null,
                            };
                          },
                          child: Text(
                            switch (status) {
                              MaintenanceStatus.pending =>
                                MaintenanceStatus.processing.label(context),
                              MaintenanceStatus.processing =>
                                context.t.common.complete,
                              _ => '',
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ).fMarginLTRB(24, 18, 24, 12),
              ),
            ),
    );
  }

  Future<void> _handleReject(
    BuildContext ctx,
    Future<Either<String, MaintenanceDetailsModel>> Function(
      String note,
    ) callback,
  ) async {
    final _reasonController = TextEditingController();

    final _info = await showDialog<bool>(
      context: ctx,
      barrierDismissible: false,
      builder: (popContext) {
        return DescriptionTakerDialog(
          // dialogTitle: 'Why this request being rejected?',
          dialogTitle: context.t.prompt.maintenanceRequest.rejectTitle,
          controller: _reasonController,
          fieldDecoration: InputDecoration(
            // labelText: 'Enter Reason',
            labelText: context.t.form.reason.label,
            // hintText: 'Your request is invalid. Please try again',
            hintText: context.t.form.reason.hint,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please enter a reason.';
              return context.t.form.reason.errors.required;
            }
            return null;
          },
        );
      },
    );

    if (_info == true && ctx.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => callback(_reasonController.text),
        ),
      );

      if (_result.isFailure && ctx.mounted) {
        showCustomSnackBar(
          ctx,
          content: Text(_result.left!),
          customSnackBarType: CustomOverlayType.error,
        );
        return;
      }
    }
  }

  Future<void> _handleProcessing(
    BuildContext ctx,
    Future<Either<String, MaintenanceDetailsModel>> Function(
      MaintenanceWorkDialogData data,
    ) callback,
  ) async {
    final _comfirmation = await showDialog<bool>(
      context: ctx,
      builder: (popContext) {
        return InfoDialog.confirmation(
          // title: 'Are you sure Processing this Maintenance request?',
          title: context.t.prompt.maintenanceRequest.processTitle,
          onDecide: (v) => Navigator.of(popContext).pop(v),
        );
      },
    );

    if (_comfirmation == true && ctx.mounted) {
      final _info = await showDialog<MaintenanceWorkDialogData>(
        context: ctx,
        barrierDismissible: false,
        builder: (popContext) {
          return MaintenanceWorkDialog<MaintenanceWorkDialogData>();
        },
      );

      if (_info != null && ctx.mounted) {
        final _result = await showAsyncLoadingOverlay(
          ctx,
          asyncFunction: () => Future.microtask(() => callback(_info)),
        );

        if (_result.isFailure && ctx.mounted) {
          showCustomSnackBar(
            ctx,
            content: Text(_result.left!),
            customSnackBarType: CustomOverlayType.error,
          );
          return;
        }
      }
    }
  }

  Future<void> _handleComplete(
    BuildContext ctx,
    Future<Either<String, MaintenanceDetailsModel>> Function(
      String note,
    ) callback,
  ) async {
    final _commentController = TextEditingController();

    final _info = await showDialog<bool>(
      context: ctx,
      barrierDismissible: false,
      builder: (popContext) {
        return DescriptionTakerDialog(
          // dialogTitle: 'Work completed?',
          dialogTitle: context.t.prompt.maintenanceRequest.completeTitle,
          controller: _commentController,
          fieldDecoration: InputDecoration(
            // labelText: 'Comment',
            labelText: context.t.form.anyField.label(
              label: context.t.common.comment,
            ),
            // hintText: 'Write comment',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.comment)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Write Comment';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.comment)
                  .sentenceCase;
            }
            return null;
          },
        );
      },
    );

    if (_info == true && ctx.mounted) {
      final _result = await showAsyncLoadingOverlay(
        ctx,
        asyncFunction: () => Future.microtask(
          () => callback(_commentController.text),
        ),
      );

      if (_result.isFailure && ctx.mounted) {
        showCustomSnackBar(
          ctx,
          content: Text(_result.left!),
          customSnackBarType: CustomOverlayType.error,
        );
        return;
      }
    }
  }
}
