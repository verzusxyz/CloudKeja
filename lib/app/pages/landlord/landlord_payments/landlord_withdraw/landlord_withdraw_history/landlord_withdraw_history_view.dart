import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../core/core.dart';
import '../../../../../data/repositories/repositories.dart';
import '../../../../../routes/app_routes.gr.dart';
import '../../../../../widgets/widgets.dart';

@RoutePage()
class LandlordWithdrawHistoryView extends ConsumerStatefulWidget {
  const LandlordWithdrawHistoryView({super.key});

  @override
  ConsumerState<LandlordWithdrawHistoryView> createState() =>
      _LandlordWithdrawHistoryViewState();
}

class _LandlordWithdrawHistoryViewState
    extends ConsumerState<LandlordWithdrawHistoryView> {
  ({String? fromDate, String? toDate})? filter;
  final pagingController = PagingController<int, WithdrawDetails>(
    firstPageKey: 1,
  );

  Future<void> fetchPage(int pageKey) async {
    try {
      final _response = await Future.microtask(
        () => ref.read(landlordWithdrawRepoProvider).getWithdrawRequests(
              page: pageKey,
              fromDate: filter?.fromDate,
              toDate: filter?.toDate,
            ),
      );

      final _data = _response.data;
      final _isLastPage = _data?.currentPage == _data?.lastPage;
      if (_isLastPage) {
        pagingController.appendLastPage(_data?.data ?? []);
      } else {
        pagingController.appendPage(
          _data?.data ?? [],
          (_data?.currentPage ?? 0) + 1,
        );
      }
    } catch (e) {
      pagingController.error = e;
    }
  }

  @override
  void initState() {
    final _initDate = DateTime.now().formatDate(pattern: 'yyyy-MM-dd');
    filter = (fromDate: _initDate, toDate: _initDate);
    super.initState();

    pagingController.addPageRequestListener(fetchPage);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.mounted) {
        gEventListener.on<LandlordWithdrawEvent>().listen((_) {
          pagingController.refresh();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Withdraw History'),
        title: Text(context.t.common.withdrawHistory),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: AcnooDateFilterDropdown(
              onChanged: (value) {
                setState(() {
                  filter = (
                    fromDate: value.fromDate.formatDate(pattern: 'yyyy-MM-dd'),
                    toDate: value.toDate.formatDate(pattern: 'yyyy-MM-dd'),
                  );
                });
                Future.sync(pagingController.refresh);
              },
            ).fMarginSymmetric(vertical: 12),
          ),
        ],
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => Future.sync(pagingController.refresh),
          child: PagedListView.separated(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: const EdgeInsetsDirectional.all(24),
            pagingController: pagingController,
            builderDelegate: PagedChildBuilderDelegate<WithdrawDetails>(
              itemBuilder: (_, item, __) {
                return Material(
                  color: Colors.transparent,
                  child: ListTile(
                    onTap: () async {
                      return _handleSummaryNavigation(context, item);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: _theme.colorScheme.outline.withValues(
                          alpha: 0.20,
                        ),
                      ),
                    ),
                    visualDensity: const VisualDensity(
                      horizontal: -4,
                      vertical: -4,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item.accountInfo?.withdrawMethod?.name ?? "N/A"),
                        Text(
                          item.amount?.quickCurrency() ?? "N/A",
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    titleTextStyle: _theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item.createdAt?.formatDate() ?? "N/A"),
                        Text(
                          PaymentStatus.fromString(item.status).label(context),
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: PaymentStatus.fromString(item.status).color,
                          ),
                        ),
                      ],
                    ),
                    subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
                      color: _theme.colorScheme.secondary,
                    ),
                  ),
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
                        // 'No request found!\nPlease try creating a withdraw request to see here.',
                        context.t.exceptions.noWithdrawRequestFound,
                        onRetry: () => Future.sync(pagingController.refresh),
                      );
                    },
                  ),
                );
              },
            ),
            separatorBuilder: (_, __) => const SizedBox.square(
              dimension: 16,
            ),
          ),
        ),
      ),
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: context.router.maybePop,
            // child: const Text('Payout Request'),
            child: Text(context.t.action.payoutRequest),
          ),
        ).fMarginLTRB(24, 16, 24, 16),
      ),
    );
  }

  Future<void> _handleSummaryNavigation(
    BuildContext ctx,
    WithdrawDetails data,
  ) async {
    if (!PaymentStatus.fromString(data.status).isPaid) {
      showCustomSnackBar(
        ctx,
        // content: Text('This withdraw request has not been approved!.'),
        content: Text(context.t.exceptions.withdrawRequestNotApproved),
        customSnackBarType: CustomOverlayType.info,
      );
      return;
    }
    return await ctx.router.push<void>(
      LandlordWithdrawDetailsRoute(id: data.id!),
    );
  }
}
