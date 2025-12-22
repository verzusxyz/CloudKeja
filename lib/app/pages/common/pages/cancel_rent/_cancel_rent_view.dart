import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

class CancelRentView extends ConsumerStatefulWidget {
  const CancelRentView({super.key, required this.id, this.endDate});
  final int id;
  final DateTime? endDate;

  @override
  ConsumerState<CancelRentView> createState() => _CancelRentViewState();
}

class _CancelRentViewState extends ConsumerState<CancelRentView> {
  late final titleController = TextEditingController();
  late final endDateController = TextEditingController();
  late final reasonController = TextEditingController();

  @override
  void initState() {
    endDateController.text = widget.endDate?.formatDate() ?? '';
    super.initState();
  }

  @override
  void dispose() {
    for (var element in [
      titleController,
      endDateController,
      reasonController,
    ]) {
      element.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            // title: Text('Cancel Renting'),
            title: Text(context.t.common.cancelRenting),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Text(
                    // 'Why are you Cancel Renting?',
                    context.t.pages.cancelRenting.title,
                    style: _theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  // Title
                  TextFormField(
                    controller: titleController,
                    decoration: InputDecoration(
                      // labelText: 'Title',
                      labelText: context.t.form.title.label,
                      // hintText: 'Enter title',
                      hintText: context.t.form.title.hint,
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        // return "Please enter a title";
                        return context.t.form.title.errors.required;
                      }
                      return null;
                    },
                  ),

                  // End Date
                  DateFormField(
                    enabled: false,
                    controller: endDateController,
                    decoration: InputDecoration(
                      // labelText: 'End Date',
                      labelText: context.t.form.date
                          .label(label: context.t.common.endDate),
                      // hintText: 'Select end date',
                      hintText: context.t.form.date
                          .hint(label: context.t.common.endDate),
                      suffixIcon: Icon(IconlyLight.calendar),
                    ),
                  ),

                  // Reason
                  TextFormField(
                    controller: reasonController,
                    maxLines: 3,
                    decoration: InputDecoration(
                      // labelText: 'Enter Reason',
                      labelText: context.t.form.reason.label,
                      // hintText: 'write reason',
                      hintText: context.t.pages.cancelRenting.form.reason.hint,
                      contentPadding: EdgeInsets.all(14),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        // return "Please enter the reason for rent cancellation";
                        return context
                            .t.pages.cancelRenting.form.reason.errors.required;
                      }

                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ScaffoldBottomNavWrapper(
            child: SizedBox(
              height: 50,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () async {
                  if (Form.maybeOf(formContext)?.validate() == true) {
                    return await _handleCancel(context);
                  }
                },
                // child: const Text('Send'),
                child: Text(context.t.action.send),
              ),
            ).fMarginLTRB(24, 16, 24, 16),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleCancel(BuildContext ctx) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(
        () {
          return ref.read(myRentRepoProvider).cancelRent(
                widget.id,
                title: titleController.text,
                reason: reasonController.text,
              );
        },
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
      return Navigator.of(ctx).pop(true);
    }
  }
}
