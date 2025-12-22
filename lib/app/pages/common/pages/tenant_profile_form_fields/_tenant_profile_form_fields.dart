import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:recase/recase.dart';

import '../../../../../i18n/strings.g.dart';
import '../../../../core/core.dart';
import '../../../../data/repositories/repositories.dart';
import '../../../../widgets/widgets.dart';

part '_tenant_profile_form_field_provider.dart';

class TenantProfileFormFields extends ConsumerWidget {
  const TenantProfileFormFields({
    super.key,
    this.isLandlord = false,
    this.isEditing = false,
  });
  final bool isLandlord;
  final bool isEditing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(tenantProfileFormFieldProvider);
    final _countryProvider = ref.watch(countryProvider);

    final _theme = Theme.of(context);

    final _cLabelStyle = _theme.textTheme.bodyLarge?.copyWith(
      fontWeight: FontWeight.w600,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tenant Type
        Text(
          // 'Types of Tenant*',
          "${context.t.common.typeOfTenant}*",
          style: _theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox.square(dimension: 16),
        Row(
          children: List.generate(
            TenantProfileType.values.length,
            (index) {
              final _type = TenantProfileType.values[index];
              final _isSelected = controller.tenantType == _type;
              final _color = _isSelected ? null : _theme.colorScheme.secondary;
              return Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: SizedBox.fromSize(
                        size: Size.square(20.fH),
                        child: Checkbox(
                          value: _isSelected,
                          onChanged: (_) => controller.handleTenantType(_type),
                          visualDensity: const VisualDensity(
                            horizontal: -4,
                            vertical: -4,
                          ),
                          side: _isSelected ? null : BorderSide(color: _color!),
                        ),
                      ).fMarginOnly(right: 8),
                    ),
                    TextSpan(
                      text: _type.label(context),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => controller.handleTenantType(_type),
                    )
                  ],
                ),
                style: _theme.textTheme.bodyMedium?.copyWith(
                  color: _color,
                ),
              ).fMarginOnly(right: index == 0 ? 24 : 0);
            },
          ),
        ),
        const SizedBox.square(dimension: 16),

        // Tenant Image
        ImageFormField(
          initialValue: controller.avatarImage,
          decoration: ImageFieldDecoration(
            // labelText: 'Tenant Image (Optional)',
            labelText: context.t.common.tenantImageOp,
          ),
          previewSize: const Size.square(72),
          onSelectImage: (value) => controller.handleAvatarImage(value.local),
        ),
        const SizedBox.square(dimension: 16),

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
            hintText: context.t.form.fullName.hint.sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please enter your name';
              return context.t.form.fullName.errors.required.sentenceCase;
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
            enabled: isLandlord && !isEditing,
            // labelText: 'Email',
            labelText: context.t.form.email.label,
            // hintText: 'Enter your email',
            hintText: context.t.form.email.hint.sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter your email address';
              return context.t.form.email.errors.required.sentenceCase;
            }
            if (!value.isEmail) {
              // return '⦸ Invalid Email, Please Try Again';
              return context.t.form.email.errors.invalid.sentenceCase;
            }
            return null;
          },
        ),
        const SizedBox.square(dimension: 20),

        if (isLandlord && !isEditing) ...[
          TextFormField(
            controller: controller.passwordController,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.visiblePassword,
            obscureText: controller.obscurePassword,
            decoration: InputDecoration(
              // labelText: 'Password',
              labelText: context.t.form.password.label,
              // hintText: '* * * * * * * *',
              hintText: context.t.form.password.hint,
              suffixIcon: IconButton(
                onPressed: controller.toggleObscure,
                color: _theme.colorScheme.outline,
                icon: Icon(
                  controller.obscurePassword
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                ),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                // return 'Please enter your password.';
                return context.t.form.password.errors.required.sentenceCase;
              }

              if (value.length < 6) {
                // return 'Password must be at least 6 characters!';
                return context.t.form.password.errors
                    .minLength(count: 6)
                    .sentenceCase;
              }

              return null;
            },
          ),
          const SizedBox.square(dimension: 16),
        ],

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
          onCountrySelect: controller.selectCountryCode,
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter your mobile number';
              return context.t.form.mobileNumber.errors.required.sentenceCase;
            }

            return null;
          },
        ),
        const SizedBox.square(dimension: 20),

        // Address 1
        TextFormField(
          controller: controller.address1Controller,
          keyboardType: TextInputType.streetAddress,
          autofillHints: const [AutofillHints.streetAddressLevel1],
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Address 1',
            labelText: context.t.form.address1.label,
            // hintText: 'House number and street name',
            hintText: context.t.form.address1.hint.sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please enter your address';
              return context.t.form.address1.errors.required.sentenceCase;
            }
            return null;
          },
        ),
        const SizedBox.square(dimension: 20),

        // Address 2
        TextFormField(
          controller: controller.address2Controller,
          keyboardType: TextInputType.streetAddress,
          autofillHints: const [AutofillHints.postalAddress],
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Address 2',
            labelText: context.t.form.address2.label,
            // hintText: 'Apartment,suite,unit,etc',
            hintText: context.t.form.address2.hint.sentenceCase,
          ),
        ),
        const SizedBox.square(dimension: 20),

        // Country
        _countryProvider.when(
          skipLoadingOnRefresh: false,
          data: (data) {
            return DropdownButtonFormField<String?>(
              // hint: const Text('Select country'),
              hint: Text(context.t.form.country.hint.sentenceCase),
              decoration: InputDecoration(
                // labelText: 'Country',
                labelText: context.t.form.country.label,
              ),
              value: controller.selectedCountry,
              isExpanded: true,
              items: [
                ...?data.right?.map((country) {
                  return DropdownMenuItem(
                    value: country.name,
                    child: Text(country.name ?? ''),
                  );
                })
              ],
              onChanged: (v) => controller.selectedCountry = v,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  // return 'Please select your country';
                  return context.t.form.country.errors.required.sentenceCase;
                }
                return null;
              },
            );
          },
          error: (err, _) => Text(err.toString()),
          loading: () => const CircularProgressIndicator(),
        ),
        const SizedBox.square(dimension: 20),

        // State
        TextFormField(
          controller: controller.stateController,
          keyboardType: TextInputType.streetAddress,
          autofillHints: const [AutofillHints.addressState],
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'State',
            labelText: context.t.form.state.label,
            // hintText: 'Enter state name.',
            hintText: context.t.form.state.hint.sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please enter state name.';
              return context.t.form.state.errors.required.sentenceCase;
            }
            return null;
          },
        ),
        const SizedBox.square(dimension: 20),

        // City & Postal Code
        Row(
          children: [
            // Postal Code
            Expanded(
              child: TextFormField(
                controller: controller.postCodeController,
                keyboardType: TextInputType.text,
                autofillHints: const [AutofillHints.postalCode],
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  // labelText: 'Postal Code',
                  labelText: context.t.form.postalCode.label,
                  // hintText: 'Enter postal code.',
                  hintText: context.t.form.postalCode.hint.sentenceCase,
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    // return 'Please enter postal code.';
                    return context
                        .t.form.postalCode.errors.required.sentenceCase;
                  }
                  return null;
                },
              ),
            ),
            const SizedBox.square(dimension: 16),

            // City
            Expanded(
              child: TextFormField(
                controller: controller.cityController,
                keyboardType: TextInputType.streetAddress,
                autofillHints: const [AutofillHints.addressState],
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  // labelText: 'City',
                  labelText: context.t.form.city.label,
                  // hintText: 'Enter city name.',
                  hintText: context.t.form.city.hint.sentenceCase,
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    // return 'Please enter city name.';
                    return context.t.form.city.errors.required.sentenceCase;
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        const SizedBox.square(dimension: 20),

        // Gender & Date of Birth
        Row(
          children: [
            // Date of Birth
            Expanded(
              child: DateFormField(
                controller: controller.dateOfBirthController,
                dateFormat: CustomDateFormat('yyyy-MM-dd'),
                decoration: InputDecoration(
                  // labelText: 'Date of Birth',
                  labelText: context.t.form.date
                      .label(label: context.t.common.dateOfBirth),
                  // hintText: 'Select date',
                  hintText: context.t.form.date
                      .hint(label: context.t.common.dateOfBirth)
                      .sentenceCase,
                  suffixIcon: Icon(IconlyLight.calendar),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    // return 'Please select date of Birth';
                    return context.t.form.date.errors
                        .required(label: context.t.common.dateOfBirth)
                        .sentenceCase;
                  }
                  return null;
                },
              ),
            ),
            const SizedBox.square(dimension: 16),

            // Gender
            Expanded(
              child: DropdownButtonFormField<String?>(
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
                onChanged: (v) => controller.selectedGender = v,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    // return 'Please select your gender';
                    return context.t.form.gender.errors.required.sentenceCase;
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
        const SizedBox.square(dimension: 12),

        // Nominee
        ExpansionTile(
          key: const ValueKey('nominee-key'),
          controller: controller.nomineeSectionController,
          maintainState: true,
          visualDensity: const VisualDensity(
            horizontal: -4,
            vertical: -4,
          ),
          initiallyExpanded: true,
          shape: const Border(),
          // title: Text('Nominee', style: _cLabelStyle),
          title: Text(context.t.common.nominee, style: _cLabelStyle),
          tilePadding: EdgeInsetsDirectional.zero,
          childrenPadding: const EdgeInsetsDirectional.only(top: 12),
          children: [
            // Nominee Name
            TextFormField(
              controller: controller.nomineeNameController,
              keyboardType: TextInputType.name,
              autofillHints: const [AutofillHints.name],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Nominee Name',
                labelText: context.t.form.anyField.label(
                  label: context.t.common.nomineeName,
                ),
                // hintText: 'Enter nominee name',
                hintText: context.t.form.anyField
                    .hint(label: context.t.common.nomineeName)
                    .sentenceCase,
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  // return 'Please enter nominee name';
                  return context.t.form.anyField.errors
                      .required(label: context.t.common.nomineeName)
                      .sentenceCase;
                }
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // Nominee Email
            TextFormField(
              controller: controller.nomineeEmailController,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Nominee Email',
                labelText: context.t.form.anyField.label(
                  label: context.t.common.nomineeEmail,
                ),
                // hintText: 'Enter nominee email',
                hintText: context.t.form.anyField
                    .hint(label: context.t.common.nomineeEmail)
                    .sentenceCase,
              ),
              validator: (value) {
                if (value != null && !value.isEmail) {
                  // return '⦸ Invalid Email, Please Try Again';
                  return context.t.form.email.errors.invalid.sentenceCase;
                }

                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // Nominee Mobile Number
            PhoneFormField(
              controller: controller.nomineeMobileNumberController,
              keyboardType: TextInputType.phone,
              autofillHints: const [AutofillHints.telephoneNumber],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Nominee Mobile Number',
                labelText: context.t.form.anyField.label(
                  label: context.t.common.nomineeMobile.full,
                ),
                // hintText: 'Please enter mobile number',
                hintText: context.t.form.anyField
                    .hint(label: context.t.common.mobileNumber)
                    .sentenceCase,
              ),
              selectedCountry: controller.nomineeSelectedCountryCode,
              onCountrySelect: controller.nomineeSelectCountryCode,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  // return 'Please enter nominee mobile number';
                  return context.t.form.anyField.errors
                      .required(label: context.t.common.nomineeMobile.full)
                      .sentenceCase;
                }
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),
          ],
        ),
        const SizedBox.square(dimension: 8),

        // Emergency Contact
        ExpansionTile(
          key: const ValueKey('emergency-contact-key'),
          controller: controller.ecSectionController,
          maintainState: true,
          visualDensity: const VisualDensity(
            horizontal: -4,
            vertical: -4,
          ),
          initiallyExpanded: true,
          shape: const Border(),
          // title: Text('Emergency Contact', style: _cLabelStyle),
          title: Text(context.t.common.emergencyContact, style: _cLabelStyle),
          tilePadding: EdgeInsetsDirectional.zero,
          childrenPadding: const EdgeInsetsDirectional.only(top: 12),
          children: [
            // Relation With You
            DropdownButtonFormField<String?>(
              // hint: const Text('Select relation'),
              hint: Text(
                context.t.form.anyDropdown
                    .hint(label: context.t.common.relation)
                    .sentenceCase,
              ),
              decoration: InputDecoration(
                // labelText: 'Relation With You',
                labelText: context.t.form.anyDropdown.label(
                  label: context.t.common.relationWithYou,
                ),
              ),
              value: controller.ecSelectedRelation,
              isExpanded: true,
              items: [
                ...{
                  "Wife": context.t.enums.ecRelation.wife,
                  "Parent": context.t.enums.ecRelation.parent,
                  "Friend": context.t.enums.ecRelation.friend,
                  "Brother": context.t.enums.ecRelation.brother,
                  "Sister": context.t.enums.ecRelation.sister,
                  "Child": context.t.enums.ecRelation.child,
                }.entries.map((relation) {
                  return DropdownMenuItem(
                    value: relation.key,
                    child: Text(relation.value),
                  );
                })
              ],
              onChanged: (v) => controller.ecSelectedRelation = v,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  // return 'Please select a relation';
                  return context.t.form.anyDropdown.errors
                      .required(label: context.t.common.relation)
                      .sentenceCase;
                }
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // Name
            TextFormField(
              controller: controller.ecNameController,
              keyboardType: TextInputType.name,
              autofillHints: const [AutofillHints.name],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Name',
                labelText:
                    context.t.form.anyField.label(label: context.t.common.name),
                // hintText: 'Enter name',
                hintText: context.t.form.anyField
                    .hint(label: context.t.common.name)
                    .sentenceCase,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  // return 'Please enter contact name.';
                  return context.t.form.anyField.errors
                      .required(label: context.t.common.name)
                      .sentenceCase;
                }
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // Mobile Number
            PhoneFormField(
              controller: controller.ecMobileNumberController,
              keyboardType: TextInputType.phone,
              autofillHints: const [AutofillHints.telephoneNumber],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Mobile Number',
                labelText: context.t.form.mobileNumber.label,
                // hintText: 'Please enter mobile number',
                hintText: context.t.form.mobileNumber.hint.sentenceCase,
              ),
              selectedCountry: controller.ecSelectedCountryCode,
              onCountrySelect: controller.ecSelectCountryCode,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  // return 'Please enter mobile number';
                  return context
                      .t.form.mobileNumber.errors.required.sentenceCase;
                }
                return null;
              },
            ),
          ],
        ),
        const SizedBox.square(dimension: 8),

        // Company for Company type tenants
        if (controller.tenantType == TenantProfileType.company) ...[
          ExpansionTile(
            key: const ValueKey('company-key'),
            controller: controller.cCompanySectionController,
            visualDensity: const VisualDensity(
              horizontal: -4,
              vertical: -4,
            ),
            initiallyExpanded: true,
            shape: const Border(),
            // title: Text('Company', style: _cLabelStyle),
            title: Text(context.t.common.company, style: _cLabelStyle),
            tilePadding: EdgeInsetsDirectional.zero,
            childrenPadding: const EdgeInsetsDirectional.only(top: 12),
            children: [
              // Company Name
              TextFormField(
                controller: controller.cCompanyNameController,
                keyboardType: TextInputType.name,
                autofillHints: const [AutofillHints.name],
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  // labelText: 'Company Name',
                  labelText: context.t.form.anyField.label(
                    label: context.t.common.companyName,
                  ),
                  // hintText: 'Enter company name',
                  hintText: context.t.form.anyField
                      .hint(label: context.t.common.companyName)
                      .sentenceCase,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    // return 'Please enter company name.';
                    return context.t.form.anyField.errors
                        .required(label: context.t.common.companyName)
                        .sentenceCase;
                  }
                  return null;
                },
              ),
              const SizedBox.square(dimension: 20),

              // Company SSM No
              TextFormField(
                controller: controller.cCompanySSMController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  // labelText: 'Company SSM No',
                  labelText: context.t.form.anyField.label(
                    label: context.t.common.companySSMNo,
                  ),
                  // hintText: 'Enter company ssm no',
                  hintText: context.t.form.anyField
                      .hint(label: context.t.common.companySSMNo)
                      .sentenceCase,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    // return 'Please enter company ssm no';
                    return context.t.form.anyField.errors
                        .required(label: context.t.common.companySSMNo)
                        .sentenceCase;
                  }

                  return null;
                },
              ),
            ],
          ),
          const SizedBox.square(dimension: 8),
        ],

        // Workplace
        ExpansionTile(
          key: const ValueKey('workplace-key'),
          controller: controller.wCompanySectionController,
          maintainState: true,
          visualDensity: const VisualDensity(
            horizontal: -4,
            vertical: -4,
          ),
          initiallyExpanded: true,
          shape: const Border(),
          // title: Text('Workplace', style: _cLabelStyle),
          title: Text(context.t.common.workplace, style: _cLabelStyle),
          tilePadding: EdgeInsetsDirectional.zero,
          childrenPadding: const EdgeInsetsDirectional.only(top: 12),
          children: [
            // Company Name
            TextFormField(
              controller: controller.wCompanyNameController,
              keyboardType: TextInputType.name,
              autofillHints: const [AutofillHints.name],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Company Name',
                labelText: context.t.form.anyField.label(
                  label: context.t.common.companyName,
                ),
                // hintText: 'Enter company name',
                hintText: context.t.form.anyField
                    .hint(label: context.t.common.companyName)
                    .sentenceCase,
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  // return 'Please enter company name';
                  return context.t.form.anyField.errors
                      .required(label: context.t.common.companyName)
                      .sentenceCase;
                }
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // Address 1
            TextFormField(
              controller: controller.wCompanyAddress1Controller,
              keyboardType: TextInputType.streetAddress,
              autofillHints: const [AutofillHints.streetAddressLevel1],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Address 1',
                labelText: context.t.form.address1.label,
                // hintText: 'House number and street name',
                hintText: context.t.form.address1.hint.sentenceCase,
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  // return 'Please enter workplace address.';
                  return context.t.form.address1.errors.required.sentenceCase;
                }
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // Address 2
            TextFormField(
              controller: controller.wCompanyAddress2Controller,
              keyboardType: TextInputType.streetAddress,
              autofillHints: const [AutofillHints.postalAddress],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Address 2',
                labelText: context.t.form.address2.label,
                // hintText: 'Apartment,suite,unit,etc',
                hintText: context.t.form.address2.hint.sentenceCase,
              ),
              validator: (value) {
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // Country
            _countryProvider.when(
              skipLoadingOnRefresh: false,
              data: (data) {
                return DropdownButtonFormField<String?>(
                  // hint: const Text('Select country'),
                  hint: Text(context.t.form.country.hint.sentenceCase),
                  decoration: InputDecoration(
                    // labelText: 'Country',
                    labelText: context.t.form.country.label,
                  ),
                  value: controller.wSelectedCountry,
                  isExpanded: true,
                  items: [
                    ...?data.right?.map((country) {
                      return DropdownMenuItem(
                        value: country.name,
                        child: Text(country.name ?? ''),
                      );
                    })
                  ],
                  onChanged: (v) => controller.wSelectedCountry = v,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      // return "Please select workplace country.";
                      return context
                          .t.form.country.errors.required.sentenceCase;
                    }
                    return null;
                  },
                );
              },
              error: (err, _) => Text(err.toString()),
              loading: () => const CircularProgressIndicator(),
            ),
            const SizedBox.square(dimension: 20),

            // State
            TextFormField(
              controller: controller.wCompanyStateController,
              keyboardType: TextInputType.streetAddress,
              autofillHints: const [AutofillHints.addressState],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'State',
                labelText: context.t.form.state.label,
                // hintText: 'Enter state name.',
                hintText: context.t.form.state.hint.sentenceCase,
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  // return "Please enter workplace state name.";
                  return context.t.form.state.errors.required.sentenceCase;
                }
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // City & Postal Code
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Postal Code
                Expanded(
                  child: TextFormField(
                    controller: controller.wCompanyPostalCodeController,
                    keyboardType: TextInputType.text,
                    autofillHints: const [AutofillHints.postalCode],
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      // labelText: 'Postal Code',
                      labelText: context.t.form.postalCode.label,
                      // hintText: 'Enter postal code.',
                      hintText: context.t.form.postalCode.hint.sentenceCase,
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        // return 'Please enter postal code';
                        return context
                            .t.form.postalCode.errors.required.sentenceCase;
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox.square(dimension: 16),

                // City
                Expanded(
                  child: TextFormField(
                    controller: controller.wCompanyCityController,
                    keyboardType: TextInputType.streetAddress,
                    autofillHints: const [AutofillHints.addressState],
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      // labelText: 'City',
                      labelText: context.t.form.city.label,
                      // hintText: 'Enter city name.',
                      hintText: context.t.form.city.hint.sentenceCase,
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        // return 'Please enter city name.';
                        return context.t.form.city.errors.required.sentenceCase;
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox.square(dimension: 20),

            // Office Phone Number
            TextFormField(
              controller: controller.wCompanyOfficePhoneController,
              keyboardType: TextInputType.phone,
              autofillHints: const [AutofillHints.telephoneNumber],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Office Phone Number',
                labelText: context.t.form.anyField
                    .label(label: context.t.common.officePhoneNo),
                // hintText: 'Enter office phone number',
                hintText: context.t.form.anyField
                    .hint(label: context.t.common.officePhoneNo)
                    .sentenceCase,
              ),
              validator: (value) {
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // Office Mobile Number
            PhoneFormField(
              controller: controller.wCompanyOfficeMobileController,
              keyboardType: TextInputType.phone,
              autofillHints: const [AutofillHints.telephoneNumber],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Office Mobile Number',
                labelText: context.t.form.anyField.label(
                  label: context.t.common.officeMobileNo,
                ),
                // hintText: 'Enter office mobile number',
                hintText: context.t.form.anyField
                    .hint(label: context.t.common.officeMobileNo)
                    .sentenceCase,
              ),
              selectedCountry: controller.wCSelectedCountryCode,
              onCountrySelect: controller.wCSelectCountryCode,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  // return 'Please enter office mobile number.';
                  return context.t.form.anyField.errors
                      .required(label: context.t.common.officeMobileNo)
                      .sentenceCase;
                }
                return null;
              },
            ),
            const SizedBox.square(dimension: 20),

            // Email
            TextFormField(
              controller: controller.wCompanyEmailController,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.email],
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                // labelText: 'Email',
                labelText: context.t.form.email.label,
                // hintText: 'Enter email address',
                hintText: context.t.form.email.hint.sentenceCase,
              ),
              validator: (value) {
                if (value == null || value.trim().isEmpty) return null;

                if (!value.isEmail) {
                  // return "Please enter a valid email address";
                  return context.t.form.email.errors.invalid.sentenceCase;
                }

                return null;
              },
            ),
          ],
        ),
        const SizedBox.square(dimension: 8),

        // Vehicles Information (Optional)
        ExpansionTile(
          key: const ValueKey('vehicles-information-key'),
          controller: controller.wVehiclesSectionController,
          maintainState: true,
          visualDensity: const VisualDensity(
            horizontal: -4,
            vertical: -4,
          ),
          initiallyExpanded: true,
          shape: const Border(),
          // title: Text('Vehicles Information (Optional)', style: _cLabelStyle),
          title:
              Text(context.t.common.vehiclesInfo.optional, style: _cLabelStyle),
          tilePadding: EdgeInsetsDirectional.zero,
          childrenPadding: const EdgeInsetsDirectional.only(top: 12),
          children: [
            // Vehicle
            ...List.generate(
              controller.vehiclesInfo.length,
              (index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '#${index + 1} ${context.t.common.vehicle}',
                          style: _theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          onTap: () => controller.handleRemovingVehicle(index),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${context.t.action.remove} ',
                                style: _theme.inputDecorationTheme.errorStyle,
                              ),
                              Icon(
                                Icons.remove_circle_outline_outlined,
                                size: 18,
                                color: _theme
                                    .inputDecorationTheme.errorStyle?.color,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox.square(dimension: 16),
                    VehicleFormFields(
                      formProvider: controller.vehiclesInfo[index],
                    ),
                  ],
                ).fMarginOnly(
                  bottom: index + 1 == controller.vehiclesInfo.length ? 16 : 20,
                );
              },
            ),
            GestureDetector(
              onTap: () {
                final _result = controller.handleAddingNewVehicle();
                if (_result != null) {
                  if (_result.isFailure) {
                    showCustomSnackBar(
                      context,
                      content: Text(_result.left!),
                      customSnackBarType: CustomOverlayType.info,
                    );
                    return;
                  }
                }
              },
              child: Row(
                children: [
                  const Icon(Icons.add_circle_outline_outlined),
                  const SizedBox.square(dimension: 8),
                  // Text('Add New Vehicles')
                  Flexible(
                    child: Text(
                      context.t.common.addNewVechicle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const SizedBox.square(dimension: 20),

        // NID/Passport Id
        TextFormField(
          controller: controller.nidPassportIdController,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'NID/Passport Id',
            labelText: context.t.form.anyField
                .label(label: context.t.common.nidPassportId),
            // hintText: 'Enter NID/Passport id number',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.nidPassportId),
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please Enter NID/Passport id number.';
              return context.t.form.anyField.errors.required(
                label: context.t.common.nidPassportId,
              );
            }
            return null;
          },
        ),
        const SizedBox.square(dimension: 8),

        // Upload NID/Passport
        ListTile(
          // title: const Text('Upload NID/Passport'),
          title: Text(context.t.common.uploadNidPassport),
          // subtitle: const Text(
          //   'Only file type image will be accepted. File limit up to 2.5 MB.',
          // ),
          subtitle: Text(context.t.common.nidPassportUploadNote),
          subtitleTextStyle: _theme.textTheme.bodyMedium?.copyWith(
            color: _theme.colorScheme.secondary,
          ),
          contentPadding: EdgeInsets.zero,
        ),
        const SizedBox.square(dimension: 4),

        // NID/Passport Images
        SizedBox.fromSize(
          size: const Size.fromHeight(85),
          child: IDCardPreview.picker(
            images: controller.nidPassportImages,
            onSelectImage: controller.handleAddingNidPassportImage,
          ),
        ),
      ],
    );
  }
}

class VehicleFormFields extends StatelessWidget {
  const VehicleFormFields({super.key, required this.formProvider});
  final VehicleFormProvider formProvider;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final controller = ref.watch(formProvider);
        return Form(
          key: controller.formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Vehicle Type
              DropdownButtonFormField<String?>(
                // hint: const Text('Select vehicle type'),
                hint: Text(
                  context.t.form.anyDropdown
                      .label(label: context.t.common.vehiclesType)
                      .sentenceCase,
                ),
                decoration: InputDecoration(
                  // labelText: 'Vehicles Type',
                  labelText: context.t.form.anyDropdown.label(
                    label: context.t.common.vehiclesType,
                  ),
                ),
                value: controller.vehicleType,
                isExpanded: true,
                items: [
                  ...{
                    "Car": context.t.enums.vehicleType.car,
                    "Motorcycles": context.t.enums.vehicleType.motorcycles,
                    "Lorry": context.t.enums.vehicleType.lorry,
                  }.entries.map(
                        (type) => DropdownMenuItem(
                          value: type.key,
                          child: Text(type.value),
                        ),
                      ),
                ],
                onChanged: (v) => controller.vehicleType = v,
                validator: (value) {
                  if (controller.isRequired) {
                    if (value == null || value.trim().isEmpty) {
                      // return 'Please select vehicle type.';
                      return context.t.form.anyDropdown.errors
                          .required(label: context.t.common.vehiclesType)
                          .sentenceCase;
                    }
                  }
                  return null;
                },
              ),
              const SizedBox.square(dimension: 20),

              // Registration No
              TextFormField(
                controller: controller.registrationNoController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  // labelText: 'Registration No',
                  labelText: context.t.form.anyField.label(
                    label: context.t.common.vehicleRegistrationNo.short,
                  ),
                  // hintText: 'Enter Plate number',
                  hintText: context.t.form.anyField
                      .hint(label: context.t.common.vehicleRegistrationNo.alt)
                      .sentenceCase,
                ),
                validator: (value) {
                  if (controller.isRequired) {
                    if (value == null || value.trim().isEmpty) {
                      // return "Please enter vehicle registration number";

                      return context.t.form.anyField.errors
                          .required(
                            label:
                                context.t.common.vehicleRegistrationNo.normal,
                          )
                          .sentenceCase;
                    }
                  }
                  return null;
                },
              ),
              const SizedBox.square(dimension: 20),

              // Vehicles Brand
              TextFormField(
                controller: controller.vehicleBrandController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  // labelText: 'Vehicles Brand',
                  labelText: context.t.form.anyField.label(
                    label: context.t.common.vehicleBrand,
                  ),
                  // hintText: 'Enter Vehicles Brand',
                  hintText: context.t.form.anyField
                      .hint(label: context.t.common.vehicleBrand)
                      .sentenceCase,
                ),
                validator: (value) {
                  if (controller.isRequired) {
                    if (value == null || value.trim().isEmpty) {
                      // return "Please enter vehicle brand";
                      return context.t.form.anyField.errors
                          .required(label: context.t.common.vehicleBrand)
                          .sentenceCase;
                    }
                  }
                  return null;
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
