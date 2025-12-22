/*
import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class TenancyAgreementListView extends ConsumerWidget {
  const TenancyAgreementListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _agreements = ref.watch(landlordTenancyAgreementListProvider);

    return Scaffold(
      appBar: CustomAppBar(title: const Text('Tenancy Agreement')),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () {
            return ref.refresh(landlordTenancyAgreementListProvider.future);
          },
          child: _agreements.when(
            skipLoadingOnRefresh: false,
            data: (data) {
              return ListView.separated(
                itemCount: data.data?.length ?? 0,
                padding: const EdgeInsets.all(24),
                itemBuilder: (_, index) {
                  final _agreement = data.data?[index];
                  return _buildAgreementTile(context, _agreement!);
                },
                separatorBuilder: (_, __) {
                  return const SizedBox.square(dimension: 16);
                },
              );
            },
            error: (error, _) {
              return RetryButtons.scrollView(
                error,
                onRetry: () => ref.refresh(
                  landlordTenancyAgreementListProvider,
                ),
              ).fMarginAll(24);
            },
            loading: () {
              return Skeletonizer(
                child: ListView.separated(
                  padding: const EdgeInsets.all(24),
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return _buildAgreementTile(
                      context,
                      LandlordTenancyAgreement(
                        // Fake loading title, doesn\'t matter if translated
                        title: 'Sit explicabo',
                        file: 'Sit explicabo architecto.',
                      ),
                    );
                  },
                  separatorBuilder: (_, __) {
                    return const SizedBox.square(dimension: 16);
                  },
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: SizedBox.fromSize(
          size: const Size.fromHeight(50),
          child: ElevatedButton(
            onPressed: () async {
              final _result = await context.router.push(
                TenancyManageAgreementRoute(),
              );
              print(_result);
            },
            child: const Text('Write Agreement'),
          ),
        ).fMarginSymmetric(horizontal: 24, vertical: 12),
      ),
    );
  }

  Widget _buildAgreementTile(
    BuildContext context,
    LandlordTenancyAgreement data,
  ) {
    final _theme = Theme.of(context);

    return GestureDetector(
      onTap: () async {
        final _result = await context.router.push(
          TenancyAgreementDetailsRoute(agreement: data),
        );
        print(_result);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.maxFinite,
        decoration: BoxDecoration(
          border: Border.all(
            color: _theme.colorScheme.outline.withValues(alpha: 0.25),
          ),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              data.title ?? 'N/A',
              style: _theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox.square(dimension: 4),
            Text(
              data.file ?? 'N/A',
              style: _theme.textTheme.bodyMedium?.copyWith(
                color: _theme.colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
