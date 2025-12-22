part of '_step_two_fields.dart';

class RoomPropertyStepTwoFields extends Step2DataGetter {
  const RoomPropertyStepTwoFields({
    super.key,
    super.editModel,
    required super.onSave,
  });

  @override
  State<RoomPropertyStepTwoFields> createState() =>
      _RoomPropertyStepTwoFieldsState();
}

class _RoomPropertyStepTwoFieldsState extends State<RoomPropertyStepTwoFields> {
  //---------------------Form Field Props---------------------//
  String? selectedResidentialType;
  String? selectedFloorRange;
  late final roomSizeController = TextEditingController();
  String? selectedFurnishing;
  List<int> selectedFacilities = [];
  List<int> selectedAmenities = [];
  String? selectedParkingLot;
  late final completionYearController = TextEditingController();
  late final securityDepositController = TextEditingController();
  // late final rentalDepositController = TextEditingController();
  List<String> selectedTenantPreferences = [];
  //---------------------Form Field Props---------------------//

  @override
  void initState() {
    _initEdit();
    super.initState();
  }

  void _initEdit() {
    final _editModel = widget.editModel;
    if (_editModel == null || _editModel is! model.RoomDetailsFieldsModel) {
      return;
    }

    selectedResidentialType = _editModel.residentialType;
    selectedFloorRange = _editModel.floorRange;
    roomSizeController.text = _editModel.roomSize ?? '';
    selectedFurnishing = _editModel.furnishings;
    selectedFacilities = [...?_editModel.facilities];
    selectedAmenities = [...?_editModel.amenity];
    selectedParkingLot = _editModel.parkingLot;
    completionYearController.text = _editModel.completionYear ?? '';
    securityDepositController.text = _editModel.securityDeposit ?? '';
    // rentalDepositController.text = _editModel.rentalDeposit ?? '';
    selectedTenantPreferences = [...?_editModel.tenantPreference];
  }

  void _onSave() {
    final _data = model.RoomDetailsFieldsModel(
      residentialType: selectedResidentialType,
      floorRange: selectedFloorRange,
      roomSize: roomSizeController.text,
      furnishings: selectedFurnishing,
      facilities: selectedFacilities,
      amenity: selectedAmenities,
      parkingLot: selectedParkingLot,
      completionYear: completionYearController.text,
      securityDeposit: securityDepositController.text,
      // rentalDeposit: rentalDepositController.text,
      tenantPreference: selectedTenantPreferences,
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
      spacing: 20,
      children: [
        // Residential Type
        DropdownButtonFormField<String?>(
          // hint: const Text('Select Residential Type'),
          hint: Text(
            context.t.form.anyField
                .label(label: context.t.common.residentialType)
                .sentenceCase,
          ),
          decoration: InputDecoration(
            // labelText: 'Residential Type',
            labelText: context.t.form.anyField
                .label(label: context.t.common.residentialType),
          ),
          isExpanded: true,
          value: selectedResidentialType,
          items: {
            "Condo / Services residence / Penthouse":
                context.t.enums.residentPropertyType.condo,
            "Apartment / Flat": context.t.enums.residentPropertyType.apartment,
            "Houses": context.t.enums.residentPropertyType.house,
            "Shoplot": context.t.enums.residentPropertyType.shoplot,
            "Sharing a house / Flat":
                context.t.enums.residentPropertyType.sharing,
            "Others": context.t.enums.residentPropertyType.others,
          }.entries.map(
            (type) {
              return DropdownMenuItem<String>(
                value: type.key,
                child: Text(type.value),
              );
            },
          ).toList(),
          onChanged: (v) => setState(() => selectedResidentialType = v),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please select residential type';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.residentialType)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Floor Range
        DropdownButtonFormField<String?>(
          // hint: const Text('Select floor range'),
          hint: Text(
            context.t.form.anyDropdown
                .hint(label: context.t.common.floorRange)
                .sentenceCase,
          ),
          decoration: InputDecoration(
            // labelText: 'Floor Range',
            labelText: context.t.form.anyDropdown.label(
              label: context.t.common.floorRange,
            ),
          ),
          isExpanded: true,
          value: selectedFloorRange,
          items: {
            "High": context.t.enums.floorRange.high,
            "Medium": context.t.enums.floorRange.medium,
            "Low": context.t.enums.floorRange.low,
          }.entries.map(
            (type) {
              return DropdownMenuItem<String>(
                value: type.key,
                child: Text(type.value),
              );
            },
          ).toList(),
          onChanged: (v) => setState(() => selectedFloorRange = v),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please select floor range';
              return context.t.form.anyDropdown.errors
                  .required(label: context.t.common.floorRange)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Room Size
        TextFormField(
          controller: roomSizeController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Room size',
            labelText:
                context.t.form.anyField.label(label: context.t.common.roomSize),
            // hintText: 'Enter room size',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.roomSize)
                .sentenceCase,
            suffixIcon: IntrinsicWidth(
              child: Center(
                // child: const Text('sq.ft.'),
                child: Text(context.t.common.sqft),
              ),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return "Please enter room size";
              return context.t.form.anyField.errors
                  .required(label: context.t.common.roomSize)
                  .sentenceCase;
            }

            final _size = num.tryParse(value) ?? 0;
            if (_size <= 0) {
              // return "Room size should be greater than zero";
              return context.t.exceptions
                  .valueMustBeGreaterThanZero(value: context.t.common.roomSize)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Furnishings
        FurnishingsDropdown(
          value: selectedFurnishing,
          onChanged: (v) => setState(() => selectedFurnishing = v),
        ),

        // Facilities
        FacilitySelector(
          selectedFacilities: selectedFacilities,
          onChanged: (v) => setState(() => selectedFacilities = v),
        ),

        // Amenities
        AmenitySelector(
          selectedAmenities: selectedAmenities,
          onChanged: (v) => setState(() => selectedAmenities = v),
        ),

        // Parking Lot
        OneToTenDropdown(
          // labelText: 'Parking Lot',
          labelText: context.t.form.anyDropdown
              .label(label: context.t.common.parkingLot),
          // hintText: "Select parking lot",
          hintText: context.t.form.anyDropdown
              .hint(label: context.t.common.parkingLot)
              .sentenceCase,
          value: selectedParkingLot,
          onChanged: (v) => setState(() => selectedParkingLot = v),
        ),

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

        // Rental Deposit
        /*
        NumberFormField(
          controller: rentalDepositController,
          decoration: InputDecoration(
            labelText: 'Rental Deposit',
            hintText: 'Enter amount',
          ),
          textInputAction: TextInputAction.next,
          validator: (value) {
            return NumberFormField.nonZeroRequired(
              value,
              errorText: 'Please enter rental deposit amount',
            );
          },
        ),
        */

        // Tenant Preference?
        MultiChoiceSelector<String>(
          // headerText: 'What is your tenant preference?',
          headerText: context.t.common.askTenantPreference,
          value: selectedTenantPreferences,
          items: [
            ...{
              "male": context.t.enums.gender.male,
              "female": context.t.enums.gender.female,
              "couple": context.t.common.couple,
            }.entries.map((tenantPreference) {
              return MultiChoiceItem(
                value: tenantPreference.key,
                label: tenantPreference.value,
              );
            })
          ],
          onChanged: (v) => setState(() => selectedTenantPreferences = v),
        ),
      ],
    );
  }
}
