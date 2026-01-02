import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../data/models/admin/models.dart' as model;
import '../../../../data/repositories/repositories.dart';
import '../../../../routes/app_routes.gr.dart';
import '../../../../widgets/widgets.dart';
import 'step_pages/step_pages.dart';

part '_landlord_manage_property_view_provider.dart';

@RoutePage()
class LandlordManagePropertyView extends ConsumerStatefulWidget {
  const LandlordManagePropertyView({super.key, this.editModel});
  final model.PropertyModel? editModel;

  @override
  ConsumerState<LandlordManagePropertyView> createState() =>
      _LandlordManagePropertyViewState();
}

class _LandlordManagePropertyViewState
    extends ConsumerState<LandlordManagePropertyView> {
  late final List<String> stepNames = [
    // "Basic Information",
    context.t.common.basicInfo,
    // "Property Details",
    context.t.common.propertyDetails,
    // "Description & Pricing",
    context.t.common.descriptionPricing,
    // "Contact",
    context.t.common.contact,
    // "Photos",
    context.t.common.photos,
    // "Successfully Submitted",
    context.t.common.photos,
  ];

  late final scrollController = ScrollController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.editModel != null) {
        ref
            .read(landlordManagePropertyProvider)
            .handleEditInit(widget.editModel!);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(landlordManagePropertyProvider);

    final _theme = Theme.of(context);
    final _isLastStep = controller.currentStep == stepNames.length - 1;

    return FormWrapper(
      useDefaultInvoker: !_isLastStep,
      // title: 'Are you sure to go back?',
      title: context.t.prompt.unsavedChanges.title,
      // description: 'Fields that are changed will not be saved!',
      description: context.t.prompt.unsavedChanges.message,
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              // widget.editModel != null ? 'Edit Property' : 'Add New Property',
              widget.editModel != null
                  ? context.t.common.editProperty
                  : context.t.common.addNewProperty,
            ),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Steps Indicator
                  _buildStepCounter(context),

                  // Steps
                  Padding(
                    padding: const EdgeInsetsDirectional.all(24),
                    child: [
                      // Step 1
                      AddPropertyStepOne(
                        value: controller.selectedPropertyCategory,
                        onChanged: controller.handlePropertyCategory,
                      ),

                      // Step 2
                      AddPropertyStepTwoFields(
                        categoryId: controller.selectedPropertyCategory,
                        step2Model: controller.step2Data,
                        onSave: (v) => controller.step2Data = v,
                      ),

                      // Step 3
                      AddPropertyStepThreeFields(
                        categoryId: controller.selectedPropertyCategory,
                        step3Model: controller.step3Data,
                        onSave: (v) => controller.step3Data = v,
                      ),

                      //  Step 4
                      AddPropertyStepFourFields(
                        step4Model: controller.step4Data,
                        onSave: (v) => controller.step4Data = v,
                      ),

                      // Step 5
                      AddPropertyStepFiveFields(
                        hasSeparateImages: switch (
                            controller.selectedPropertyCategory) {
                          1 || 2 => true,
                          _ => false,
                        },
                        step5Model: controller.step5Data,
                        onSave: (v) => controller.step5Data = v,
                      ),

                      // Step 6
                      AddPropertyStepSixFields(
                        // statusMessage: 'Your ad has been submitted for review.',
                        statusMessage:
                            context.t.common.propertyManageRequestSuccess,
                        cardData: controller.cardData,
                      )
                    ][controller.currentStep],
                  ),

                  // Actions
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(
                      24,
                      0,
                      24,
                      24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (!_isLastStep)
                          Row(
                            children: [
                              // Previous Button
                              if (controller.currentStep != 0) ...[
                                Expanded(
                                  child: SizedBox(
                                    height: 50,
                                    child: OutlinedButton(
                                      onPressed: () => controller.handleStep(
                                        stepNames.length,
                                        false,
                                      ),
                                      // child: const Text('Previous'),
                                      child: Text(context.t.action.previous),
                                    ),
                                  ),
                                ),
                                const SizedBox.square(dimension: 16),
                              ],

                              // Next Button
                              Expanded(
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      final _isValid = Form.maybeOf(formContext)
                                              ?.validate() ==
                                          true;
                                      if (!_isValid) return;

                                      final _submitForm =
                                          controller.currentStep ==
                                              stepNames.length - 2;

                                      if (!_submitForm) {
                                        controller.handleStep(stepNames.length);
                                        await Future.delayed(
                                          const Duration(milliseconds: 5),
                                          () => scrollController.animateTo(
                                            scrollController
                                                .initialScrollOffset,
                                            duration: Durations.medium3,
                                            curve: Curves.linear,
                                          ),
                                        );
                                        return;
                                      }

                                      await _handleFormSubmit(context).then(
                                        (success) {
                                          if (success) {
                                            controller.handleStep(
                                              stepNames.length,
                                            );
                                          }
                                        },
                                      );
                                    },
                                    // child: const Text('Next'),
                                    child: Text(context.t.action.next),
                                  ),
                                ),
                              ),
                            ],
                          )
                        else ...[
                          SizedBox.fromSize(
                            size: Size.fromHeight(50),
                            child: ElevatedButton(
                              onPressed: () {
                                context.router.popAndPush(
                                  LandlordManagePropertyRoute(),
                                );
                                // ignore: unused_result
                                ref.refresh(landlordManagePropertyProvider);
                              },
                              // child: const Text('Post Another Property'),
                              child: Text(context.t.common.postAnotherProperty),
                            ),
                          ),
                          const SizedBox.square(dimension: 16),
                          SizedBox.fromSize(
                            size: Size.fromHeight(50),
                            child: ElevatedButton(
                              onPressed: context.router.back,
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    _theme.colorScheme.primary.withValues(
                                  alpha: 0.15,
                                ),
                                foregroundColor: _theme.colorScheme.primary,
                                elevation: 0,
                                shadowColor: Colors.transparent,
                              ),
                              // child: const Text('Browse your Property'),
                              child: Text(context.t.common.browseYourProperty),
                            ),
                          )
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Widget _buildStepCounter(BuildContext context) {
    final controller = ref.watch(landlordManagePropertyProvider);

    final _theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 8),
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: _theme.colorScheme.outline.withValues(alpha: 0.25),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Step Name
          Text(
            stepNames[controller.currentStep],
            style: _theme.textTheme.bodyMedium?.copyWith(
              color: _theme.colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 8),

          // Step Indicator
          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: 0,
              end: (controller.currentStep + 1) / stepNames.length,
            ),
            duration: const Duration(milliseconds: 500),
            builder: (context, value, child) {
              return LinearProgressIndicator(
                value: value,
                backgroundColor:
                    _theme.colorScheme.outline.withValues(alpha: 0.25),
                borderRadius: BorderRadius.circular(6),
              );
            },
          ),
          const SizedBox(height: 8),

          // Step Indicator
          Text.rich(
            context.t.common.stepIndicator(
              step: TextSpan(
                text: (controller.currentStep + 1).toString(),
                style: TextStyle(
                  color: _theme.colorScheme.onPrimaryContainer,
                ),
              ),
              totalSteps: TextSpan(
                text: stepNames.length.toString(),
              ),
            ),
            style: _theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: _theme.colorScheme.secondary,
            ),
          )
        ],
      ),
    );
  }

  Future<bool> _handleFormSubmit(BuildContext context) async {
    final controller = ref.read(landlordManagePropertyProvider);
    try {
      final _result = await showAsyncLoadingOverlay(
        context,
        asyncFunction: () => Future.microtask(
          () => controller.handleManageProperty(widget.editModel?.id),
        ),
      );
      controller.updateCardData(_result);
      return true;
    } catch (e) {
      if (context.mounted) {
        showCustomSnackBar(
          context,
          content: Text(e.toString()),
          customSnackBarType: CustomOverlayType.error,
        );
      }
    }
    return false;
  }
}
