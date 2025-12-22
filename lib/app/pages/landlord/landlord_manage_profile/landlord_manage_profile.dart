import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

import '../../../../i18n/strings.g.dart';
import '../../../core/core.dart';
import '../../../data/repositories/repositories.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../widgets/widgets.dart';
import '../../common/widgets/widgets.dart';

part '_landlord_manage_profile_provider.dart';
part 'pages/landlord_edit_profile_view.dart';
part 'pages/landlord_setup_profile_view.dart';

class LandLordManageProfileFormsFields extends ConsumerWidget {
  const LandLordManageProfileFormsFields({super.key, this.isEditMode = false});
  final bool isEditMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(landlordManageProfileProvider);
    final _countryProvider = ref.watch(countryProvider);

    final _theme = Theme.of(context);

    return Column(
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
              return context.t.form.fullName.errors.required;
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
          enabled: !isEditMode,
          decoration: InputDecoration(
            // labelText: 'Email',
            labelText: context.t.form.email.label,
            // hintText: 'Enter your email',
            hintText: context.t.form.email.hint,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter your email address';
              return context.t.form.email.errors.required;
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
          onCountrySelect: controller.selectCountryCode,
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter your mobile number';
              return context.t.form.mobileNumber.errors.required;
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
            hintText: context.t.form.address1.hint,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please enter your address';
              return context.t.form.address1.errors.required;
            }
            return null;
          },
        ),
        const SizedBox.square(dimension: 20),

        // Address 2
        TextFormField(
          controller: controller.address2Controller,
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.postalAddress],
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Address 2',
            labelText: context.t.form.address2.label,
            // hintText: 'Apartment,suite,unit,etc',
            hintText: context.t.form.address2.hint,
          ),
        ),
        const SizedBox.square(dimension: 20),

        // Postal Code
        TextFormField(
          controller: controller.postCodeController,
          keyboardType: TextInputType.text,
          autofillHints: const [AutofillHints.postalCode],
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Postal Code',
            labelText: context.t.form.postalCode.label,
            // hintText: 'Enter postal code.',
            hintText: context.t.form.postalCode.hint,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please enter postal code.';
              return context.t.form.postalCode.errors.required;
            }
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
              hint: Text(context.t.form.country.hint),
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
                  return context.t.form.country.errors.required;
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
            hintText: context.t.form.state.hint,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please enter state name.';
              return context.t.form.state.errors.required;
            }
            return null;
          },
        ),
        const SizedBox.square(dimension: 20),

        // City
        TextFormField(
          controller: controller.cityController,
          keyboardType: TextInputType.streetAddress,
          autofillHints: const [AutofillHints.addressState],
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'City',
            labelText: context.t.form.city.label,
            // hintText: 'Enter city name.',
            hintText: context.t.form.city.hint,
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please enter city name.';
              return context.t.form.city.errors.required;
            }
            return null;
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
          onChanged: (v) => controller.selectedGender = v,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              // return 'Please select your gender';
              return context.t.form.gender.errors.required.sentenceCase;
            }
            return null;
          },
        ),
        const SizedBox.square(dimension: 20),

        // NID/Passport Id
        TextFormField(
          controller: controller.nidPassportIdController,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'NID/Passport Id',
            labelText: context.t.form.anyField.label(
              label: context.t.common.nidPassportId,
            ),
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
