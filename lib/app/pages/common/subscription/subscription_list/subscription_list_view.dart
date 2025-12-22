import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';
import '../../pages/common_pages.dart';
import '../../widgets/widgets.dart';

@RoutePage()
class SubscriptionListView extends ConsumerStatefulWidget {
  const SubscriptionListView({super.key});

  @override
  ConsumerState<SubscriptionListView> createState() =>
      _SubscriptionListViewState();
}

class _SubscriptionListViewState extends ConsumerState<SubscriptionListView> {
  late final pageController = PageController(
    viewportFraction: 0.85,
    initialPage: 1,
  );
  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userRepositoryProvider);
    final _planResponse = ref.watch(subscrptionPlanProvider);

    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: Skeletonizer(
          enabled: user.isAnyLoading || _planResponse.isAnyLoading,
          child: ListTile(
            title: Text(context.t.pages.subscriptionPlan.appbarTitle),
            // title: const Text('Choose your Plan'),
            titleTextStyle: _theme.textTheme.bodyLarge?.copyWith(
              color: _theme.colorScheme.onPrimary,
            ),
            subtitle: Text(
              user.valueOrNull?.subscriptionPlan?.subscriptionName ?? "N/A",
            ),
            subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
              color: _theme.colorScheme.onPrimary,
            ),
          ),
        ),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => ref.refresh(subscrptionPlanProvider.future),
          child: _planResponse.when(
            skipLoadingOnRefresh: false,
            data: (data) {
              final plans = [...?data.data];
              if (plans.isEmpty) {
                return _buildErrorWidget(
                  context,
                  // 'No subscription plan found!\nPlease refresh the page and try again.',
                  context.t.exceptions.noSubscriptionFoundRefreshPage,
                );
              }

              return ListView.separated(
                itemCount: plans.length,
                padding: const EdgeInsets.all(24),
                itemBuilder: (_, index) {
                  final plan = plans[index];
                  return PricingCardWidget(
                    data: plan,
                    onSubscribe: () async {
                      return await _handleSubscribeButton(context, plan);
                    },
                  );
                },
                separatorBuilder: (_, __) {
                  return const SizedBox.square(dimension: 16);
                },
              );
            },
            error: (error, _) {
              return _buildErrorWidget(context, error);
            },
            loading: () {
              return ListView.separated(
                padding: const EdgeInsets.all(24),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Skeletonizer(
                    containersColor: Colors.grey.shade300,
                    child: PricingCardWidget(
                      data: SubscriptionPlan(),
                      onSubscribe: () {},
                    ),
                  );
                },
                separatorBuilder: (_, __) {
                  return const SizedBox.square(dimension: 16);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _handleSubscribeButton(
    BuildContext ctx,
    SubscriptionPlan plan,
  ) async {
    if (!_warnIfNull(ctx, plan.id)) return;

    final _paymentOptionResult = await showDialog<PaymentOptions>(
      context: ctx,
      builder: (popContext) => PaymentTypeSelectorDialog(),
    );

    if (_paymentOptionResult != null && ctx.mounted) {
      if (_paymentOptionResult.isOffline) {
        final _offlinePaymentResult = await ctx.router.pushWidget<String>(
          OfflinePaymentView(
            invoiceId: plan.id!,
            paymentType: PaymentType.subscription,
            payableAmount: plan.offerPrice ?? plan.subscriptionPrice,
          ),
        );

        if (_offlinePaymentResult != null && ctx.mounted) {
          // ignore: unused_result
          ref.read(userRepositoryProvider.notifier).getUser();
          return await ctx.router.pushWidget<void>(
            PaymentStatusView(
              status: PaymentStatusViewType.custom(
                imagePath: PaymentStatusViewType.success.imagePath,
                // actionButtonText: 'Go Back',
                actionButtonText: context.t.action.goBack,
                title: PaymentStatusViewType.success.title,
                description: PaymentStatusViewType.success.description,
              ),
              onPressed: () => ctx.router.maybePop(true),
            ),
          );
        }
        return;
      }

      if (_paymentOptionResult.isOnline) {
        final didSuccess = await SharedWidgets.handleOnlinePayment(
          ctx,
          invocieId: plan.id!,
          paymentType: PaymentType.subscription,
        );
        if (ctx.mounted && didSuccess) {
          // ignore: unused_result
          ref.read(userRepositoryProvider.notifier).getUser();
          return await ctx.router.pushWidget<void>(
            PaymentStatusView(
              onPressed: () => ctx.router.maybePop(true),
              status: PaymentStatusViewType.custom(
                imagePath: PaymentStatusViewType.success.imagePath,
                // actionButtonText: "Go Back",
                actionButtonText: context.t.action.goBack,
                title: PaymentStatusViewType.success.title,
                // description:
                //     "Subscription payment successfully.\nYou can access the subscribed features now.",
                description: context
                    .t.pages.subscriptionPlan.extra.subscriptionPaymentSuccess,
              ),
            ),
          );
        }
      }
    }
  }

  bool _warnIfNull(BuildContext ctx, int? id) {
    if (id == null) {
      showCustomSnackBar(
        ctx,
        content: Text(
          // 'Invalid subscription info! Please refresh the page and try again.',
          context.t.exceptions.invalidApiDataRefreshPage(
            dataType: context.t.common.subscription.toLowerCase(),
          ),
        ),
        customSnackBarType: CustomOverlayType.error,
      );
      return false;
    }
    return true;
  }

  Widget _buildErrorWidget(BuildContext ctx, Object error) {
    return SizedBox(
      height: MediaQuery.sizeOf(ctx).width,
      width: double.maxFinite,
      child: EmptyWidget(
        replaceDefault: false,
        child: SizedBox.shrink(),
        emptyBuilder: (context) {
          return RetryButtons.scrollView(
            error,
            onRetry: () => ref.refresh(subscrptionPlanProvider.future),
          );
        },
      ),
    );
  }
}

final subscrptionPlanProvider = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref.read(userRepositoryProvider.notifier).getSubscriptionPlans(),
  ),
);

class PricingCardWidget extends StatelessWidget {
  const PricingCardWidget({
    super.key,
    required this.data,
    required this.onSubscribe,
  });
  final SubscriptionPlan data;
  final void Function() onSubscribe;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _theme.colorScheme.primaryContainer,
        border: Border.all(
          color: _theme.colorScheme.outline.withValues(
            alpha: 0.35,
          ),
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [DAppBoxShadowStyles.boxShadow2],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icon
          SizedBox.square(
            dimension: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: CustomNetworkImage(
                url: data.image?.remote,
              ),
            ),
          ),
          const SizedBox.square(dimension: 16),

          // PackageName
          Text(
            data.subscriptionName ?? "N/A",
            style: _theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: _theme.colorScheme.primary,
            ),
          ),
          const SizedBox.square(dimension: 12),
          Text(
            '${data.duration ?? 0} ${data.durationType ?? "N/A"}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: _theme.textTheme.titleLarge?.copyWith(
              fontSize: 20,
              color: _theme.colorScheme.secondary,
            ),
          ),
          const SizedBox.square(dimension: 12),

          // Pricing
          Text.rich(
            TextSpan(
              text:
                  "${(data.offerPrice ?? data.subscriptionPrice)?.quickCurrency() ?? "N/A"} ",
              children: [
                if (data.offerPrice != null && (data.offerPrice ?? 0) > 0) ...[
                  TextSpan(
                    text: data.subscriptionPrice?.quickCurrency() ?? "N/A",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                      color: _theme.colorScheme.secondary,
                    ),
                  ),
                ],
              ],
            ),
            style: _theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(height: 32),

          // Features
          ...{
            "Properties": data.numberOfProperty,
            // "Landlords": data.numberOfLandlord,
            "Tenants": data.numberOfTenant,
            "Labors": data.numberOfLabor,
            // "Maintenances": data.numberOfMaintenance,
          }.entries.map(
            (feature) {
              final _isUnlimited = (feature.value ?? 0) < 0;
              return _buildFeatures(
                context,
                Feature(
                  name:
                      "${_isUnlimited ? "Unlimited" : "${feature.value ?? 0}"} ${feature.key}",
                  isAvailable: feature.value != null,
                ),
              ).fMarginOnly(bottom: 16);
            },
          ),
          ...?data.features?.map((e) {
            return _buildFeatures(context, e).fMarginOnly(bottom: 16);
          }),
          const SizedBox.square(dimension: 8),

          // Subscribe Button
          Skeleton.ignore(
            child: SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onSubscribe,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.transparent,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        // Color(0xff0DEF81),
                        DAppColors.kPrimary,
                        // Color(0xff0EBB63),
                        DAppColors.kOnPrimaryVariant,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Center(
                    child: Text(
                      // 'Buy Now',
                      context.t.action.buyNow,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ).overlap(showWhen: (data.subscriptionPrice ?? 0) <= 0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatures(BuildContext ctx, Feature feature) {
    final _theme = Theme.of(ctx);
    final _iconColor = feature.isAvailable
        ? _theme.colorScheme.primary
        : DAppColors.kRejectedColor;

    return Row(
      spacing: 12,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: _iconColor.withValues(
            alpha: 0.2,
          ),
          foregroundColor: _iconColor,
          child: Icon(
            feature.isAvailable ? Bootstrap.check : Bootstrap.x,
          ),
        ),
        Expanded(
          child: Text(
            feature.name ?? "N/A",
            style: _theme.textTheme.bodyLarge?.copyWith(
              color: _theme.colorScheme.secondary,
            ),
          ),
        )
      ],
    );
  }
}
