part of '_step_two_fields.dart';

class HousePropertyStepTwoFields extends Step2DataGetter {
  const HousePropertyStepTwoFields({
    super.key,
    super.editModel,
    required super.onSave,
  });

  @override
  State<HousePropertyStepTwoFields> createState() =>
      _HousePropertyStepTowFieldsState();
}

class _HousePropertyStepTowFieldsState
    extends State<HousePropertyStepTwoFields> {
  //---------------------Form Field Props---------------------//
  int? selectedHouseType;
  String? selectedBedrooms;
  String? selectedBathrooms;
  late final propertySizeController = TextEditingController();
  String? selectedFurnishing;
  List<int> selectedFacilities = [];
  List<int> selectedAmenities = [];
  late final completionYearController = TextEditingController();
  late final securityDepositController = TextEditingController();
  late final utilityDepositController = TextEditingController();
  //---------------------Form Field Props---------------------//

  @override
  void initState() {
    _initEdit();
    super.initState();
  }

  void _initEdit() {
    final _editModel = widget.editModel;
    if (_editModel == null || _editModel is! model.HousePropertyStep2Model) {
      return;
    }
    selectedHouseType = _editModel.houseType;
    selectedBedrooms = _editModel.bedrooms;
    selectedBathrooms = _editModel.bathrooms;
    propertySizeController.text = _editModel.propertySize ?? '';
    selectedFurnishing = _editModel.furnishings;
    selectedFacilities = [...?_editModel.facilities];
    completionYearController.text = _editModel.completionYear ?? '';
    securityDepositController.text = _editModel.securityDeposit ?? '';
    utilityDepositController.text = _editModel.utilityDeposit ?? '';
    selectedAmenities = [...?_editModel.amenity];
  }

  void _onSave() {
    final _data = model.HousePropertyStep2Model(
      houseType: selectedHouseType,
      bedrooms: selectedBedrooms,
      bathrooms: selectedBathrooms,
      propertySize: propertySizeController.text,
      furnishings: selectedFurnishing,
      facilities: selectedFacilities,
      completionYear: completionYearController.text,
      securityDeposit: securityDepositController.text,
      utilityDeposit: utilityDepositController.text,
      amenity: selectedAmenities,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // House Type
        Consumer(
          builder: (_, ref, __) {
            final _houseTypes = ref.watch(houseTypesProvider);
            return _houseTypes.when(
              skipLoadingOnRefresh: false,
              data: (data) {
                return DropdownButtonFormField<int>(
                  // hint: const Text('Select house type'),
                  hint: Text(
                    context.t.form.anyDropdown
                        .hint(label: context.t.common.houseType)
                        .sentenceCase,
                  ),
                  decoration: InputDecoration(
                    // labelText: 'House Type',
                    labelText: context.t.form.anyDropdown.label(
                      label: context.t.common.houseType,
                    ),
                  ),
                  isExpanded: true,
                  menuMaxHeight: 300,
                  value: selectedHouseType,
                  items: [
                    ...?data.data?.map((houseType) {
                      return DropdownMenuItem(
                        value: houseType.id,
                        child: Text(houseType.name ?? 'N/A'),
                      );
                    })
                  ],
                  onChanged: (v) => setState(() => selectedHouseType = v),
                  validator: (value) {
                    if (value == null || value <= 0) {
                      // return "Please select a house type.";
                      return context.t.form.anyDropdown.errors
                          .required(label: context.t.common.houseType)
                          .sentenceCase;
                    }

                    return null;
                  },
                );
              },
              error: (error, _) {
                return Text.rich(
                  RetryButtons.inlineText(
                    error,
                    onRetry: () => ref.refresh(houseTypesProvider),
                  ),
                );
              },
              loading: () => Skeletonizer(
                child: DropdownButtonFormField<int>(
                  hint: const Text('Select house type'),
                  decoration: const InputDecoration(labelText: 'House Type'),
                  items: [],
                  onChanged: (value) {},
                ),
              ),
            );
          },
        ),
        const SizedBox.square(dimension: 24),

        // Bedrooms
        OneToTenDropdown(
          labelText: OneToTenDropdown.bedroomLabel(context),
          hintText: OneToTenDropdown.bedroomHint(context),
          value: selectedBedrooms,
          onChanged: (v) => setState(() => selectedBedrooms = v),
        ),
        const SizedBox.square(dimension: 24),

        // Bathrooms
        OneToTenDropdown(
          labelText: OneToTenDropdown.bathroomLabel(context),
          hintText: OneToTenDropdown.bathroomHint(context),
          value: selectedBathrooms,
          onChanged: (v) => setState(() => selectedBathrooms = v),
        ),
        const SizedBox.square(dimension: 24),

        // Property Size
        TextFormField(
          controller: propertySizeController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Property size',
            labelText: context.t.form.anyField
                .label(label: context.t.common.propertySize),
            // hintText: 'Enter property size',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.propertySize),
            suffixIcon: IntrinsicWidth(
              child: Center(
                // child: Text('sq.ft.'),
                child: Text(context.t.common.sqft),
              ),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return "Please enter property size";
              return context.t.form.anyField.errors
                  .required(label: context.t.common.propertySize)
                  .sentenceCase;
            }

            final _size = num.tryParse(value) ?? 0;
            if (_size <= 0) {
              // return "Property size should be greater than zero";
              return context
                  .t.common.propertySizeMustBeGreaterThan0.sentenceCase;
            }
            return null;
          },
        ),
        const SizedBox.square(dimension: 24),

        // Furnishings
        FurnishingsDropdown(
          value: selectedFurnishing,
          onChanged: (v) => setState(() => selectedFurnishing = v),
        ),
        const SizedBox.square(dimension: 16),

        // Facilities
        FacilitySelector(
          selectedFacilities: selectedFacilities,
          onChanged: (v) => setState(() => selectedFacilities = v),
        ),
        const SizedBox.square(dimension: 20),

        // Completion year
        YearFormField(
          controller: completionYearController,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Completion year',
            labelText: context.t.form.anyField
                .label(label: context.t.common.completionYear),
            // hintText: 'Enter year',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.completionYear)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return "Please enter completion year";
              return context.t.form.anyField.errors
                  .required(label: context.t.common.completionYear)
                  .sentenceCase;
            }
            final _year = int.tryParse(value) ?? 0;

            if (_year < YearFormField.firstYear ||
                _year > YearFormField.lastYear) {
              // return "Invalid date range.";
              return context.t.exceptions.invalidDateRange;
            }

            return null;
          },
        ),
        const SizedBox.square(dimension: 24),

        // Security Deposit
        NumberFormField(
          controller: securityDepositController,
          decoration: InputDecoration(
            // labelText: 'Security Deposit',
            labelText: context.t.form.anyField
                .label(label: context.t.common.securityDeposit),
            // hintText: 'Enter amount',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.securityDeposit)
                .sentenceCase,
          ),
          textInputAction: TextInputAction.next,
          validator: (value) {
            return NumberFormField.nonZeroRequired(
              value,
              // errorText: 'Please enter security deposit amount',
              errorText: context.t.form.anyField.errors
                  .required(label: context.t.common.securityDeposit)
                  .sentenceCase,
            );
          },
        ),
        const SizedBox.square(dimension: 24),

        // Utility Deposit
        NumberFormField(
          controller: utilityDepositController,
          decoration: InputDecoration(
            // labelText: 'Utility Bill',
            labelText: context.t.form.anyField
                .label(label: context.t.common.utilityBill),
            // hintText: 'Enter amount',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.utilityBill)
                .sentenceCase,
          ),
          textInputAction: TextInputAction.next,
          validator: (value) {
            return NumberFormField.nonZeroRequired(
              value,
              // errorText: 'Please enter utility bill amount',
              errorText: context.t.form.anyField.errors
                  .required(label: context.t.common.utilityBill)
                  .sentenceCase,
            );
          },
        ),
        const SizedBox.square(dimension: 16),

        // Amenities
        AmenitySelector(
          selectedAmenities: selectedAmenities,
          onChanged: (v) => setState(() => selectedAmenities = v),
        ),
      ],
    );
  }
}
