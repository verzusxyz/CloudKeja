import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

part '_landlord_manage_labor_view_provider.dart';

@RoutePage()
class LandlordManageLaborView extends ConsumerStatefulWidget {
  const LandlordManageLaborView({super.key, this.editModel});
  final Labor? editModel;

  @override
  ConsumerState<LandlordManageLaborView> createState() =>
      _LandlordManageLaborViewState();
}

class _LandlordManageLaborViewState
    extends ConsumerState<LandlordManageLaborView> {
  @override
  void initState() {
    if (widget.editModel != null) {
      ref.read(landlordManageLaborProvider).handleInitEdit(
            widget.editModel!,
          );
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(landlordManageLaborProvider);
    return FormWrapper(
      builder: (formContext) {
        return Scaffold(
          appBar: CustomAppBar(
            title: Text(
              widget.editModel != null
                  ? context.t.common.editLabor
                  : context.t.common.addNewLabor,
            ),
          ),
          body: ScaffoldBodyWrapper(
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Full Name
                  TextFormField(
                    controller: controller.fullNameController,
                    keyboardType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      // labelText: 'Full Name',
                      labelText: context.t.form.fullName.label,
                      // hintText: 'Enter full name',
                      hintText: context.t.form.fullName.hint,
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        // return 'Please enter your name';
                        return context.t.form.anyField.errors
                            .required(label: context.t.common.fullName)
                            .sentenceCase;
                      }
                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 20),

                  // Email
                  TextFormField(
                    controller: controller.emailController,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: const [AutofillHints.email],
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      // labelText: 'Email',
                      labelText: context.t.form.email.label,
                      // hintText: 'Enter your email',
                      hintText: context.t.form.email.hint,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        // return 'Please enter your email address';
                        return context.t.form.anyField.errors
                            .required(label: context.t.common.email)
                            .sentenceCase;
                      }
                      if (!value.isEmail) {
                        // return '⦸ Invalid Email, Please Try Again';
                        return context.t.form.email.errors.invalid;
                      }
                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 20),

                  // Mobile Number
                  PhoneFormField(
                    controller: controller.mobileNumberController,
                    keyboardType: TextInputType.phone,
                    autofillHints: const [AutofillHints.telephoneNumber],
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      // labelText: 'Mobile Number',
                      labelText: context.t.form.mobileNumber.label,
                      // hintText: '(+60) 555-0123',
                      hintText: context.t.form.mobileNumber.hint,
                    ),
                    selectedCountry: controller.selectedCountryCode,
                    onCountrySelect: controller.handleSelectCountryCode,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        // return 'Please enter your mobile number';
                        return context.t.form.anyField.errors
                            .required(label: context.t.common.mobileNumber)
                            .sentenceCase;
                      }

                      return null;
                    },
                  ),
                  const SizedBox.square(dimension: 20),

                  // Salary
                  NumberFormField(
                    controller: controller.salaryController,
                    decoration: InputDecoration(
                      // labelText: 'Labor Salary',
                      labelText: context.t.form.anyField.label(
                        label: context.t.common.laborSalary,
                      ),
                      // hintText: 'Enter Amount',
                      hintText: context.t.form.anyField.hint(
                        label: context.t.common.enterAmount,
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      return NumberFormField.nonZeroRequired(
                        value,
                        errorText: context.t.form.anyField.errors
                            .required(label: context.t.common.laborSalary)
                            .sentenceCase,
                      );
                    },
                  ),
                  const SizedBox.square(dimension: 20),

                  // Gender
                  DropdownButtonFormField<String?>(
                    // hint: const Text('Select gender'),
                    hint: Text(context.t.form.gender.hint.sentenceCase),
                    isExpanded: true,
                    decoration: InputDecoration(
                      // labelText: 'Gender',
                      labelText: context.t.form.gender.label,
                    ),
                    value: controller.selectedGender,
                    items: [
                      ...{
                        "Male": context.t.enums.gender.male,
                        "Female": context.t.enums.gender.female,
                        "Other": context.t.enums.gender.other,
                      }.entries.map(
                            (gender) => DropdownMenuItem<String?>(
                              value: gender.key,
                              child: Text(gender.value),
                            ),
                          ),
                    ],
                    onChanged: controller.handleSelectGender,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        // return 'Please select your gender';
                        return context
                            .t.form.gender.errors.required.sentenceCase;
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
              child: ElevatedButton(
                onPressed: () async {
                  if (Form.maybeOf(formContext)?.validate() == true) {
                    return await _handleFormSubmit(
                      context,
                      () => controller.handleManageLabor(widget.editModel?.id),
                    );
                  }
                },
                // child: const Text('Save'),
                child: Text(context.t.action.save),
              ),
            ).fMarginLTRB(24, 18, 24, 12),
          ),
        );
      },
    ).unfocusPrimary();
  }

  Future<void> _handleFormSubmit(
    BuildContext ctx,
    Future<Either<String, Labor>> Function() callback,
  ) async {
    final _result = await showAsyncLoadingOverlay(
      ctx,
      asyncFunction: () => Future.microtask(callback),
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

      return ctx.router.back();
    }
  }
}
