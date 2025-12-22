import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';

@RoutePage()
class LandlordLaborDetailsView extends ConsumerStatefulWidget {
  const LandlordLaborDetailsView({super.key, required this.id});
  final int id;

  @override
  ConsumerState<LandlordLaborDetailsView> createState() =>
      _LandlordLaborDetailsViewState();
}

class _LandlordLaborDetailsViewState
    extends ConsumerState<LandlordLaborDetailsView> {
  @override
  void initState() {
    super.initState();

    if (context.mounted) {
      gEventListener.on<LandlordLaborEvent>().listen((event) {
        if (event == LandlordLaborEvent.modified) {
          // ignore: unused_result
          ref.refresh(landlordLaborDetails(widget.id).future);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _details = ref.watch(landlordLaborDetails(widget.id));

    final _theme = Theme.of(context);
    const _ckFlex = 6;
    const _cVFlex = 8;
    final _cKTextStyle = _theme.textTheme.bodyLarge;
    final _cVTextStyle = _cKTextStyle?.copyWith(
      color: _theme.colorScheme.secondary,
    );

    return Scaffold(
      appBar: CustomAppBar(
        // title: const Text('Labor Details'),
        title: Text(context.t.common.laborDetails),
      ),
      body: ScaffoldBodyWrapper(
        body: RefreshIndicator.adaptive(
          onRefresh: () => ref.refresh(landlordLaborDetails(widget.id).future),
          child: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.fromSTEB(
              20,
              20,
              20,
              12,
            ),
            physics: const AlwaysScrollableScrollPhysics(),
            child: _details.when(
              skipLoadingOnRefresh: false,
              data: (data) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Labor Details
                    ...{
                      // "Full Name":
                      context.t.common.fullName: data.name ?? 'N/A',
                      // "Email Address":
                      context.t.common.email: data.email ?? 'N/A',
                      // "Phone Number":
                      context.t.common.mobileNumber:
                          data.phone?.buildPhone ?? 'N/A',
                      // "Labor Salary":
                      context.t.common.laborSalary:
                          data.salary?.quickCurrency() ?? "N/A",
                      // "Gender":
                      context.t.common.gender: data.gender ?? "N/A",
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
                  ],
                );
              },
              error: (error, _) {
                return RetryButtons.scrollView(
                  error,
                  onRetry: () => ref.refresh(
                    landlordLaborDetails(widget.id).future,
                  ),
                );
              },
              loading: () {
                return Skeletonizer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Labor Details
                      ...{
                        "Full Name": "Jenny Wilson",
                        "Email Address": "jennywilson@gmail.com",
                        "Phone Number": "03-20783635",
                        "Labor Salary ": "RM 500",
                        "Gender": "Male",
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
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: Skeletonizer(
          enabled: _details.isLoading,
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () async {
                      return await _handleDelete(
                        context,
                        () => ref
                            .read(landlordLaborRepoProvider)
                            .deleteLabor(widget.id),
                      );
                    },
                    style: CustomButtonStyles.destructiveOutline(),
                    child: const Text('Delete'),
                  ),
                ),
              ),
              const SizedBox.square(dimension: 16),
              Expanded(
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_details.value == null) {
                        showCustomSnackBar(
                          context,
                          content: Text(
                            'Invalid labor details, please try again',
                          ),
                          customSnackBarType: CustomOverlayType.error,
                        );
                        return;
                      }
                      await context.router.push(
                        LandlordManageLaborRoute(
                          editModel: _details.value,
                        ),
                      );
                    },
                    child: const Text('Edit'),
                  ),
                ),
              ),
            ],
          ).fMarginLTRB(24, 18, 24, 12),
        ),
      ),
    );
  }

  Future<void> _handleDelete(
    BuildContext context,
    Future<Either<String, String>> Function() callback,
  ) async {
    final _confirmation = await showDialog<bool>(
      context: context,
      builder: (popContext) {
        return InfoDialog.confirmation(
          // title: 'Delete Labor?',
          title: context.t.prompt.labor.delete.title,
          // description: 'Are you sure to delete this labor?',
          description: context.t.prompt.labor.delete.description,
          onDecide: Navigator.of(popContext).pop,
        );
      },
    );
    if (_confirmation != true) return;

    if (context.mounted) {
      final _result = await showAsyncLoadingOverlay(
        context,
        asyncFunction: () => Future.microtask(callback),
      );

      if (context.mounted) {
        if (_result.isFailure) {
          showCustomSnackBar(
            context,
            content: Text(_result.left!),
            customSnackBarType: CustomOverlayType.error,
          );
          return;
        }

        return context.router.back();
      }
    }
  }
}
