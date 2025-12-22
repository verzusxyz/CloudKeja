import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';
import '../../../common/pages/common_pages.dart';
import '../../../common/widgets/widgets.dart';
import '../components/components.dart';

@RoutePage()
class TenantDetailsView extends ConsumerStatefulWidget {
  const TenantDetailsView({super.key, required this.id});
  final int id;

  @override
  ConsumerState<TenantDetailsView> createState() => _TenantDetailsViewState();
}

class _TenantDetailsViewState extends ConsumerState<TenantDetailsView> {
  @override
  void initState() {
    super.initState();

    if (context.mounted) {
      gEventListener.on<LandlordTenantEvent>().listen((event) {
        if (event == LandlordTenantEvent.modified) {
          // ignore: unused_result
          ref.refresh(landlordTenantDetails(widget.id).future);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var _tenantDetails = ref.watch(landlordTenantDetails(widget.id));

    return Scaffold(
      appBar: CustomAppBar(
        title: Skeletonizer(
          enabled: _tenantDetails.isLoading,
          child: TenantListTile(
            imageURL: _tenantDetails.valueOrNull?.image?.remote,
            tenantName: _tenantDetails.valueOrNull?.name ?? 'N/A',
            tenantID: _tenantDetails.valueOrNull?.uniqueId ?? 'N/A',
          ),
        ),
        actions: _tenantDetails.isLoading
            ? null
            : [
                PopupMenuButton<TenantDetailsAction>(
                  itemBuilder: (context) {
                    return [
                      ...TenantDetailsAction.values.map(
                        (item) => PopupMenuItem<TenantDetailsAction>(
                          value: item,
                          child: Row(
                            spacing: 4,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox.square(
                                dimension: 18,
                                child: item.leading(),
                              ),
                              Text(item.label(context)),
                            ],
                          ),
                        ),
                      )
                    ];
                  },
                  onSelected: (v) async {
                    if (v == TenantDetailsAction.edit) {
                      return await _handleEditTenant(
                        context,
                        _tenantDetails.valueOrNull,
                      );
                    } else if (v == TenantDetailsAction.shareInstallLink) {
                    } else if (v == TenantDetailsAction.whatsapp) {
                      return await SharedWidgets.handleLaunchURL(
                        context,
                        'https://wa.me/${_tenantDetails.valueOrNull?.phone?.buildPhone}',
                      );
                    } else if (v == TenantDetailsAction.email) {
                      return await SharedWidgets.handleLaunchURL(
                        context,
                        'mailto:${_tenantDetails.valueOrNull?.email}',
                      );
                    }
                  },
                ),
              ],
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () => ref.refresh(landlordTenantDetails(widget.id).future),
        child: ScaffoldBodyWrapper(
          body: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.all(24),
            child: _tenantDetails.when(
              skipLoadingOnRefresh: false,
              data: (data) {
                return TenantProfileDetails.landlord(
                  details: data,
                  onCancelRent: (rentData) async {
                    final _result = await _handleCancel(context, rentData);
                    if (_result == true) {
                      _tenantDetails = ref.refresh(
                        landlordTenantDetails(widget.id),
                      );
                    }
                  },
                  onDownloadAgreement: (url) async {
                    return await SharedWidgets.handleDownloadOverlay(
                      context,
                      url,
                    );
                  },
                );
              },
              error: (error, _) {
                return RetryButtons.scrollView(
                  error,
                  onRetry: () => ref.refresh(landlordTenantDetails(widget.id)),
                );
              },
              loading: () {
                return Skeletonizer(
                  child: TenantProfileDetails.landlord(
                    details: TenantDetails(),
                    onCancelRent: (id) {},
                  ),
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: Skeletonizer(
          enabled: _tenantDetails.isAnyLoading,
          child: SizedBox(
            height: 50,
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () async {
                return await context.router.push<void>(
                  LandlordManageRentInvitationRoute(
                    tenant: Tenant(
                      id: _tenantDetails.valueOrNull?.id,
                      name: _tenantDetails.valueOrNull?.name,
                      uniqueId: _tenantDetails.valueOrNull?.uniqueId,
                    ),
                  ),
                );
              },
              // child: const Text('Invite Rent'),
              child: Text(context.t.action.inviteRent),
            ),
          ).fMarginLTRB(24, 16, 24, 16),
        ),
      ),
    );
  }

  Future<void> _handleEditTenant(
    BuildContext context,
    TenantDetails? data,
  ) async {
    await context.router.push(
      ManageTenantRoute(editModel: data),
    );
  }

  Future<bool?> _handleCancel(BuildContext ctx, RentDetails? data) async {
    if (!_warnIfNull(ctx, data?.id)) return null;

    return await ctx.router.pushWidget<bool>(CancelRentView(
      id: data!.id!,
      endDate: data.endDate,
    ));
  }

  bool _warnIfNull(BuildContext ctx, int? id) {
    if (id == null) {
      showCustomSnackBar(
        ctx,
        content: Text(
          // 'Invalid rent info! Please refresh the page and try again.',
          context.t.exceptions
              .invalidApiDataRefreshPage(dataType: context.t.common.rent),
        ),
        customSnackBarType: CustomOverlayType.error,
      );
      return false;
    }
    return true;
  }
}

enum TenantDetailsAction {
  edit(
    icon: IconlyBold.edit,
    iconColor: DAppColors.kSecondary,
  ),
  shareInstallLink(
    icon: IconlyBold.send,
    iconColor: DAppColors.kPendingColor,
  ),
  whatsapp(icon: 'whatsapp'),
  email(
    icon: Icons.email,
    iconColor: Color(0xff017EFA),
  );

  String label(BuildContext context) {
    return switch (this) {
      edit => context.t.common.editTenant,
      shareInstallLink => context.t.common.shareInstallLink,
      whatsapp => context.t.common.whatsapp,
      email => context.t.common.email,
    };
  }

  final dynamic icon;
  final Color? iconColor;
  const TenantDetailsAction({
    required this.icon,
    this.iconColor,
  });

  Widget leading() {
    if (icon is String && icon == 'whatsapp') {
      return Brand(Brands.whatsapp, size: 18);
    }

    return Icon(icon, size: 18, color: iconColor);
  }
}
