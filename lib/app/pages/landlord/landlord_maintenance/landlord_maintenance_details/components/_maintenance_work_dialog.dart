import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/core.dart';
import '../../../../../data/repositories/repositories.dart';
import '../../../../../widgets/widgets.dart';

class MaintenanceWorkDialog<T> extends StatefulWidget {
  const MaintenanceWorkDialog({super.key});

  @override
  State<MaintenanceWorkDialog<T>> createState() =>
      _MaintenanceWorkDialogState<T>();
}

class _MaintenanceWorkDialogState<T> extends State<MaintenanceWorkDialog<T>> {
  int? selectedLaborId;
  late final maintenanceCostController = TextEditingController();
  late final commentController = TextEditingController();

  @override
  void dispose() {
    maintenanceCostController.dispose();
    commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return FormWrapper(
      builder: (formContext) {
        return Dialog(
          insetPadding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Form
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      Text(
                        'Maintenance work',
                        style: _theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const Divider(),
                      const SizedBox.square(dimension: 12),

                      // Select Labor
                      Consumer(
                        builder: (_, ref, __) {
                          final _laborsResp = ref.watch(laborListProvider);
                          if (_laborsResp.hasError && !_laborsResp.hasValue) {
                            return Text.rich(
                              RetryButtons.inlineText(
                                _laborsResp.error!,
                                onRetry: () => ref.refresh(laborListProvider),
                              ),
                            );
                          }
                          final _labors = [
                            ...?_laborsResp.valueOrNull?.data?.data
                          ];

                          return Skeletonizer(
                            enabled: _laborsResp.isAnyLoading,
                            child: DropdownButtonFormField<int>(
                              hint: const Text('Select Labor'),
                              decoration: InputDecoration(
                                labelText: 'Select Labor',
                              ),
                              isExpanded: true,
                              value: selectedLaborId,
                              items: List.generate(
                                _labors.length,
                                (index) {
                                  final _labor = _labors[index];
                                  return DropdownMenuItem<int>(
                                    value: _labor.id,
                                    child: Text(_labor.name ?? "N/A"),
                                  );
                                },
                              ),
                              menuMaxHeight: 250,
                              onChanged: (v) => setState(
                                () => selectedLaborId = v,
                              ),
                              validator: (value) {
                                if (value == null || value <= 0) {
                                  return "Please select a labor.";
                                }
                                return null;
                              },
                            ),
                          );
                        },
                      ),
                      const SizedBox.square(dimension: 16),

                      // Maintenance cost
                      NumberFormField(
                        controller: maintenanceCostController,
                        decoration: InputDecoration(
                          labelText: 'Maintenance cost',
                          hintText: 'Enter maintenance cost',
                        ),
                        textInputAction: TextInputAction.next,
                        validator: (value) {
                          return NumberFormField.nonZeroRequired(
                            value,
                            errorText: 'Please enter maintenance cost',
                          );
                        },
                      ),
                      const SizedBox.square(dimension: 16),

                      // Comment
                      TextFormField(
                        controller: commentController,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          labelText: 'Comment',
                          hintText: 'Write comment',
                          contentPadding: EdgeInsets.all(14),
                        ),
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox.square(dimension: 16),

              // Action
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: OutlinedButton(
                        onPressed: Navigator.maybeOf(context)?.pop,
                        style: CustomButtonStyles.destructiveOutline(),
                        child: const Text('Cancel'),
                      ),
                    ),
                  ),
                  const SizedBox.square(dimension: 16),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (Form.maybeOf(formContext)?.validate() ?? false) {
                            final _cost =
                                maintenanceCostController.getNumber ?? 0;
                            final MaintenanceWorkDialogData _data = (
                              laborId: selectedLaborId!,
                              maintenanceCost: _cost,
                              comment: commentController.text,
                            );

                            return Navigator.maybeOf(context)?.pop(_data);
                          }
                        },
                        child: Text('Done'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ).fMarginAll(16),
        );
      },
    ).unfocusPrimary();
  }
}

typedef MaintenanceWorkDialogData = ({
  int laborId,
  num maintenanceCost,
  String comment,
});

final laborListProvider = FutureProvider.autoDispose(
  (ref) => Future.microtask(
    () => ref.read(landlordLaborRepoProvider).getLabors(noPaging: true),
  ),
);
