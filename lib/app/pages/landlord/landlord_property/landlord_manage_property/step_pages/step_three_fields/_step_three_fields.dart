import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';

import '../../../../../../../i18n/strings.g.dart';
import '../../../../../../data/models/models.dart' as model;
import '../../../../../../data/repositories/repositories.dart';
import '../../../../../../widgets/widgets.dart';
import '../../components/components.dart';

class AddPropertyStepThreeFields extends ConsumerStatefulWidget {
  const AddPropertyStepThreeFields({
    super.key,
    this.categoryId,
    this.step3Model,
    required this.onSave,
  });

  final int? categoryId;
  final model.PropertyDescriptionPricingModel? step3Model;
  final void Function(model.PropertyDescriptionPricingModel? value) onSave;
  @override
  ConsumerState<AddPropertyStepThreeFields> createState() =>
      _AddPropertyStepThreeFieldsState();
}

class _AddPropertyStepThreeFieldsState
    extends ConsumerState<AddPropertyStepThreeFields> {
  //---------------------Form Field Props---------------------//
  late final adTitleController = TextEditingController();
  late final adDescriptionController = TextEditingController();
  late final monthlyRentController = TextEditingController();
  String? selectedMinimumRentalPeriod;
  late final addressController = TextEditingController();
  late final lotNumberController = TextEditingController();
  late final cityController = TextEditingController();
  late final stateController = TextEditingController();
  late final postalCodeController = TextEditingController();
  String? selectedCountry;
  //---------------------Form Field Props---------------------//

  @override
  void initState() {
    _initEdit();
    super.initState();
  }

  void _initEdit() {
    final _editModel = widget.step3Model;
    if (_editModel == null) return;

    adTitleController.text = _editModel.adTitle ?? '';
    adDescriptionController.text = _editModel.description ?? '';
    monthlyRentController.text = _editModel.monthlyRent ?? '';
    selectedMinimumRentalPeriod = _editModel.minimumRentalPeriod;
    addressController.text = _editModel.address ?? '';
    lotNumberController.text = _editModel.lotNumber ?? '';
    cityController.text = _editModel.city ?? '';
    stateController.text = _editModel.state ?? '';
    postalCodeController.text = _editModel.postalCode ?? '';
    selectedCountry = _editModel.country;
  }

  void _onSave() {
    final _data = model.PropertyDescriptionPricingModel(
      adTitle: adTitleController.text,
      description: adDescriptionController.text,
      monthlyRent: monthlyRentController.text,
      minimumRentalPeriod: selectedMinimumRentalPeriod,
      lotNumber: lotNumberController.text,
      address: addressController.text,
      city: cityController.text,
      state: stateController.text,
      postalCode: postalCodeController.text,
      country: selectedCountry,
    );
    widget.onSave(_data);
  }

  @override
  void dispose() {
    _onSave();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _countryProvider = ref.watch(countryProvider);

    final _theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 20,
      children: [
        // Title
        StepTitle(switch (widget.categoryId) {
          // 1 || 2 => 'Description & Pricing',
          1 || 2 => context.t.common.descriptionPricing,
          // 3 => "Describe the commercial Property",
          3 => context.t.common.describeTheProperty(
              propertyType: context.t.enums.propertyType.commercialProperty,
            ),
          // 4 => "Describe the Land",
          4 => context.t.common.describeTheProperty(
              propertyType: context.t.enums.propertyType.land,
            ),
          // 5 => "Describe the Room",
          5 => context.t.common.describeTheProperty(
              propertyType: context.t.enums.propertyType.room,
            ),
          _ => ''
        }),

        // Ad Title
        TextFormField(
          controller: adTitleController,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Ad Title',
            labelText:
                context.t.form.anyField.label(label: context.t.common.adTitle),
            // hintText: 'Enter you ad title',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.adTitle)
                .sentenceCase,
            counterStyle: TextStyle(
              color: _theme.colorScheme.secondary,
            ),
          ),
          maxLength: 60,
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter ad title';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.adTitle)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Description
        TextFormField(
          controller: adDescriptionController,
          textInputAction: TextInputAction.newline,
          decoration: InputDecoration(
            // labelText: 'Description',
            labelText: context.t.form.anyField
                .label(label: context.t.common.description),
            // hintText: 'Enter description',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.description)
                .sentenceCase,
            counterStyle: TextStyle(
              color: _theme.colorScheme.secondary,
            ),
            contentPadding: EdgeInsets.all(14),
          ),
          maxLength: 300,
          maxLines: 3,
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter description';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.description)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Monthly Rent
        NumberFormField(
          controller: monthlyRentController,
          decoration: InputDecoration(
            // labelText: 'Monthly Rent',
            labelText: context.t.form.anyField
                .label(label: context.t.common.monthlyRent),
            // hintText: 'Enter amount',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.monthlyRent)
                .sentenceCase,
          ),
          textInputAction: TextInputAction.next,
          validator: (value) {
            return NumberFormField.nonZeroRequired(
              value,
              // errorText: 'Please enter monthly rent amount',
              errorText: context.t.form.anyField.errors
                  .required(label: context.t.common.monthlyRent)
                  .sentenceCase,
            );
          },
        ),

        // Minimum Rental Period
        DropdownButtonFormField<String?>(
          // hint: const Text('Select minimum rental period'),
          hint: Text(
            context.t.form.anyField
                .hint(label: context.t.common.minimumRentalPeriod)
                .sentenceCase,
          ),
          decoration: InputDecoration(
            // labelText: 'Minimum Rental Period',
            labelText: context.t.form.anyField
                .label(label: context.t.common.minimumRentalPeriod),
          ),
          isExpanded: true,
          value: selectedMinimumRentalPeriod,
          items: {
            "6 Months": context.t.enums.minimumRentalPeriod.sixMonths,
            "1 Year": context.t.enums.minimumRentalPeriod.oneYear,
            "1.5 Years": context.t.enums.minimumRentalPeriod.oneAndHalfYears,
            "2 Years": context.t.enums.minimumRentalPeriod.twoYears,
            "2.5 Years": context.t.enums.minimumRentalPeriod.twoAndHalfYears,
          }.entries.map(
            (type) {
              return DropdownMenuItem<String>(
                value: type.key,
                child: Text(type.value),
              );
            },
          ).toList(),
          onChanged: (v) => setState(() => selectedMinimumRentalPeriod = v),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please select minimum rental period';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.minimumRentalPeriod)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Lot Number
        TextFormField(
          controller: lotNumberController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            // labelText: 'Lot Number',
            labelText: context.t.form.anyField
                .label(label: context.t.common.lotNumber),
            // hintText: 'Enter lot number',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.lotNumber)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter lot number';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.lotNumber)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Address
        TextFormField(
          controller: addressController,
          keyboardType: TextInputType.streetAddress,
          decoration: InputDecoration(
            // labelText: 'Address',
            labelText:
                context.t.form.anyField.label(label: context.t.common.address),
            // hintText: 'Enter address',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.address)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter address';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.address)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // City
        TextFormField(
          controller: cityController,
          keyboardType: TextInputType.streetAddress,
          autofillHints: [AutofillHints.addressCity],
          decoration: InputDecoration(
            // labelText: 'City',
            labelText:
                context.t.form.anyField.label(label: context.t.common.city),
            // hintText: 'Enter city',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.city)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter city';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.city)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // State
        TextFormField(
          controller: stateController,
          keyboardType: TextInputType.streetAddress,
          autofillHints: [AutofillHints.addressState],
          decoration: InputDecoration(
            // labelText: 'State',
            labelText:
                context.t.form.anyField.label(label: context.t.common.state),
            // hintText: 'Enter state',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.state)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter state';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.state)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Country
        _countryProvider.when(
          skipLoadingOnRefresh: false,
          data: (data) {
            return DropdownButtonFormField<String?>(
              // hint: const Text('Select country'),
              hint: Text(
                context.t.form.anyDropdown
                    .hint(label: context.t.common.country)
                    .sentenceCase,
              ),
              decoration: InputDecoration(
                // labelText: 'Country',
                labelText: context.t.form.anyDropdown
                    .label(label: context.t.common.country),
              ),
              value: selectedCountry,
              isExpanded: true,
              items: [
                ...?data.right?.map((country) {
                  return DropdownMenuItem(
                    value: country.name,
                    child: Text(country.name ?? ''),
                  );
                })
              ],
              onChanged: (v) => setState(() => selectedCountry = v),
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  // return 'Please select your country';
                  return context.t.form.anyDropdown.errors
                      .required(label: context.t.common.country)
                      .sentenceCase;
                }
                return null;
              },
            );
          },
          error: (err, _) => Text(err.toString()),
          loading: () => const CircularProgressIndicator(),
        ),

        // Postal Code
        TextFormField(
          controller: postalCodeController,
          keyboardType: TextInputType.streetAddress,
          autofillHints: [AutofillHints.postalCode],
          decoration: InputDecoration(
            // labelText: 'Postal Code',
            labelText: context.t.form.anyField
                .label(label: context.t.common.postalCode),
            // hintText: 'Enter postal code',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.postalCode)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter postal code';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.postalCode)
                  .sentenceCase;
            }
            return null;
          },
        ),
      ],
    );
  }
}
