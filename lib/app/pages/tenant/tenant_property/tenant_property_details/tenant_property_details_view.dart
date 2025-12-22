import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';
import '../../../common/pages/common_pages.dart';
import '../../../common/widgets/widgets.dart';

part '_tenant_property_details_view_provider.dart';

@RoutePage()
class TenantPropertyDetailsView extends ConsumerStatefulWidget {
  const TenantPropertyDetailsView({super.key, required this.id});
  final int id;

  @override
  ConsumerState<TenantPropertyDetailsView> createState() =>
      _TenantPropertyDetailsViewState();
}

class _TenantPropertyDetailsViewState
    extends ConsumerState<TenantPropertyDetailsView> {
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
    final controller = ref.watch(tenantPropertyDetailsViewProvider);
    final _user = ref.watch(userRepositoryProvider);

    final _details = ref.watch(getPropertyDetails(widget.id));

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          backgroundColor: DAppColors.kSurfaceLight,
          body: RefreshIndicator.adaptive(
            onRefresh: () => ref.refresh(getPropertyDetails(widget.id).future),
            child: _details.when(
              skipLoadingOnRefresh: false,
              data: (data) {
                return PropertyDetails.tenant(
                  detailsModel: data.data!,
                  fromDateController: controller.fromDateController,
                  toDateController: controller.toDateController,
                  tenantId: _user.value?.id ?? -1,
                  onEditReview: (review) async {
                    return _handleManageReview(
                      context,
                      editModel: review,
                    );
                  },
                  isFav: data.data?.property?.isFavorite ?? false,
                  onFavTap: (value) async {
                    return await PropertyCardData.handleFavTap(
                      context,
                      callback: () {
                        final _repo = ref.read(propertyRepoProvider);

                        return value
                            ? _repo.createFavorite(widget.id)
                            : _repo.deleteFavorite(
                                data.data!.property!.favorite!.id!,
                              );
                      },
                      showInvoker: data.data?.property?.isFavorite ?? false,
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
                  ignorePointers: false,
                  child: ScaffoldBottomNavWrapper(
                    child: Row(
                      spacing: 8,
                      children: [
                        // Apply Property
                        Expanded(
                          flex: 8,
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton.icon(
                              onPressed: () async {
                                final _checkApply = _canApply(
                                  context,
                                  _details.valueOrNull?.data?.property,
                                );
                                if (!_checkApply) return;

                                if (Form.maybeOf(formContext)?.validate() ==
                                    true) {
                                  return await _handleApplyProperty(
                                    context,
                                    _details.valueOrNull!.data!.property!.id!,
                                  );
                                }
                              },
                              label: Text(
                                // 'Apply Property',
                                context.t.action.applyProperty,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              icon: Icon(
                                Bootstrap.patch_check_fill,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        // Whatsapp
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 50,
                            child: IconButton.filled(
                              onPressed: () async {
                                return await SharedWidgets.handleLaunchURL(
                                  context,
                                  'https://wa.me/${_details.valueOrNull?.data?.property?.propertyDetail?.phone}',
                                );
                              },
                              icon: Skeleton.shade(
                                child: Brand(Brands.whatsapp, size: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff47E158),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Email
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 50,
                            child: IconButton.filled(
                              onPressed: () async {
                                return await SharedWidgets.handleLaunchURL(
                                  context,
                                  'mailto:${_details.valueOrNull?.data?.property?.propertyDetail?.email}',
                                );
                              },
                              icon: Icon(IconlyBold.message),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff017EFA),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ).fMarginLTRB(16, 14, 16, 16),
                  ),
                ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleManageReview(
    BuildContext context, {
    Review? editModel,
  }) async {
    // ignore: unused_local_variable
    final _result = await context.router.push(
      ManageReviewRoute(
        propertyId: widget.id,
        editModel: editModel,
      ),
    );
  }

  bool _canApply(BuildContext ctx, PropertyModel? property) {
    if (property == null) {
      showCustomSnackBar(
        ctx,
        content: Text(
          // 'Invalid property info. Please refresh the page and try again!',
          context.t.exceptions
              .invalidApiDataRefreshPage(
                dataType: context.t.common.property,
              )
              .sentenceCase,
        ),
        customSnackBarType: CustomOverlayType.warning,
      );
      return false;
    }
    if (property.isRented) {
      showCustomSnackBar(
        ctx,
        content: Text(
          // 'This property is rented already. Please try again later.\nOr you can contact the landlord for more information.',
          context.t.exceptions.editProperty.alreayRented,
        ),
        customSnackBarType: CustomOverlayType.info,
      );
      return false;
    }

    return true;
  }

  Future<void> _handleApplyProperty(
    BuildContext ctx,
    int propertyId,
  ) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        () => ref.read(tenantPropertyDetailsViewProvider).handleFormSubmit(
              propertyId: propertyId,
            ),
      ),
    );
    if (ctx.mounted) {
      if (_result.isFailure) {
        showCustomSnackBar(
          ctx,
          content: Text(_result.left!),
          customSnackBarType: CustomOverlayType.error,
        );
        return;
      }

      final _prompt = await showDialog<bool>(
        context: ctx,
        builder: (popContext) {
          return InfoDialog.info(
            iconType: InfoDialogIconType.splashSuccess,
            icon: Bootstrap.check_lg,
            // title: 'Application sent successfully',
            title: context.t.prompt.application.applicationSent.successfully,
            // description:
            //     'You can see this application in your application list',
            description:
                context.t.prompt.application.applicationSent.sucessDescription,
            onPressed: () => Navigator.of(popContext).pop(true),
            // buttonText: 'View Application',
            buttonText: context.t.action.viewApplication,
          );
        },
      );

      if (ctx.mounted && _prompt == true) {
        await ctx.router.push(
          TenantApplicationDetailsRoute(
            id: _result.right!.data!.id!,
          ),
        );
      }
    }
  }
}
