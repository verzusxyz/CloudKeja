import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';
import '../../../common/pages/common_pages.dart';
import '../../../common/widgets/widgets.dart';

@RoutePage()
class LandlordPropertyDetailsView extends ConsumerStatefulWidget {
  const LandlordPropertyDetailsView({super.key, required this.id});
  final int id;

  @override
  ConsumerState<LandlordPropertyDetailsView> createState() =>
      _LandlordPropertyDetailsViewState();
}

class _LandlordPropertyDetailsViewState
    extends ConsumerState<LandlordPropertyDetailsView> {
  @override
  void initState() {
    super.initState();

    if (context.mounted) {
      gEventListener.on<PropertyEvent>().listen((event) {
        if (event == PropertyEvent.modified) {
          // ignore: unused_result
          ref.refresh(getPropertyDetails(widget.id).future);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _details = ref.watch(getPropertyDetails(widget.id));

    return Scaffold(
      backgroundColor: DAppColors.kSurfaceLight,
      body: RefreshIndicator.adaptive(
        onRefresh: () => ref.refresh(getPropertyDetails(widget.id).future),
        child: _details.when(
          skipLoadingOnRefresh: false,
          data: (data) {
            return PropertyDetails.lanlord(
              detailsModel: data.data!,
              propertyStatus: PropertyStatus.fromId(
                data.data?.property?.status,
              ),
              isActive:
                  data.data?.property?.status == PropertyStatus.active.statusId,
              onPublish: (value) async {
                return await SharedWidgets.handleChangePropertyStatus(
                  context,
                  () => ref.read(propertyRepoProvider).changePropertyVisibility(
                        id: widget.id,
                        isPublished: value,
                      ),
                );
              },
            );
          },
          error: (error, _) {
            return Center(
              child: RetryButtons.scrollView(
                error,
                onRetry: () => ref.refresh(getPropertyDetails(widget.id)),
              ).fMarginAll(16),
            );
          },
          loading: () {
            return Skeletonizer(
              ignoreContainers: true,
              child: PropertyDetails.lanlord(
                detailsModel: PropertyDetailsModel(),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: _details.hasError
          ? null
          : Skeletonizer(
              enabled: _details.isAnyLoading,
              ignoreContainers: true,
              child: ScaffoldBottomNavWrapper(
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () async {
                            final _canDelete =
                                _details.value?.data?.property?.isRented ==
                                    false;

                            return await _handleDelete(
                              context,
                              () => ref
                                  .read(propertyRepoProvider)
                                  .deleteProperty(widget.id),
                              canDelete: _canDelete,
                            );
                          },
                          style: CustomButtonStyles.destructiveOutline(),
                          // child: const Text('Delete'),
                          child: Text(context.t.action.delete),
                        ),
                      ),
                    ),
                    const SizedBox.square(dimension: 16),
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            return await _handleEdit(
                              context,
                              model: _details.value?.data?.property,
                            );
                          },
                          // child: const Text('Edit'),
                          child: Text(context.t.common.edit),
                        ),
                      ),
                    ),
                  ],
                ).fMarginLTRB(24, 18, 24, 12),
              ),
            ),
    );
  }

  Future<void> _handleEdit(
    BuildContext context, {
    required PropertyModel? model,
  }) async {
    if (model == null) {
      showCustomSnackBar(
        context,
        // content: Text('Invalid property details, please try again!'),
        content: Text(
          context.t.exceptions
              .invalidApiDataRefreshPage(
                  dataType: context.t.common.propertyDetails)
              .sentenceCase,
        ),
        customSnackBarType: CustomOverlayType.info,
      );
      return;
    }
    final _result = await showDialog<bool>(
      context: context,
      builder: (pContext) => InfoDialog.info(
        // title:
        //     "Rental property is changing. It must be only valid (effective) for the next month's rental payment.",
        title: context.t.exceptions.editProperty.rentalChange,
        onPressed: () => Navigator.of(pContext).pop(true),
      ),
    );

    if (_result == true && context.mounted) {
      context.router.push(LandlordManagePropertyRoute(editModel: model));
    }
  }

  Future<void> _handleDelete(
    BuildContext context,
    Future<String> Function() callback, {
    bool canDelete = false,
  }) async {
    if (!canDelete) {
      await showDialog(
        context: context,
        builder: (pContext) => InfoDialog.info(
          // title:
          //     'Your property is already rented by tenant. Cannot delete it until remove the tenant first',
          title: context.t.exceptions.editProperty.deleteOnRent,
          onPressed: Navigator.of(pContext).pop,
        ),
      );
      return;
    }

    final _confirmation = await showDialog<bool>(
      context: context,
      builder: (popContext) {
        return InfoDialog.confirmation(
          // title: 'Delete Property?',
          title: context.t.prompt.property.delete.title,
          // description: 'Are you sure to delete this property?',
          description: context.t.prompt.property.delete.message,
          onDecide: Navigator.of(popContext).pop,
        );
      },
    );
    if (_confirmation != true) return;

    if (context.mounted) {
      try {
        await showAsyncLoadingOverlay(
          context,
          asyncFunction: () => Future.microtask(callback),
        );

        if (context.mounted) return context.router.back();
      } catch (e) {
        if (context.mounted) {
          showCustomSnackBar(
            context,
            content: Text(e.toString()),
            customSnackBarType: CustomOverlayType.error,
          );
          return;
        }
      }
    }
  }
}
