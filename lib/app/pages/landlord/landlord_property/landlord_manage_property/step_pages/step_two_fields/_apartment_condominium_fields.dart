part of '_step_two_fields.dart';

class ApartmentCondominiumPropertyStepTwoFields extends Step2DataGetter {
  const ApartmentCondominiumPropertyStepTwoFields({
    super.key,
    super.editModel,
    required super.onSave,
  });

  @override
  State<ApartmentCondominiumPropertyStepTwoFields> createState() =>
      _ApartmentCondominiumPropertyStepTowFieldsState();
}

class _ApartmentCondominiumPropertyStepTowFieldsState
    extends State<ApartmentCondominiumPropertyStepTwoFields> {
  //---------------------Form Field Props---------------------//
  late final buildingNameController = TextEditingController();
  late final unitNumberController = TextEditingController();
  String? selectedResidentialType;
  String? selectedFloorRange;
  String? selectedBedrooms;
  String? selectedBathrooms;
  late final propertySizeController = TextEditingController();
  String? selectedFurnishing;
  String? selectedParkingLot;
  List<int> selectedFacilities = [];
  List<int> selectedAmenities = [];
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
    if (_editModel == null ||
        _editModel is! model.ApartmentCondominiumStep2Model) {
      return;
    }

    buildingNameController.text = _editModel.buildingName ?? '';
    unitNumberController.text = _editModel.unitNumber ?? '';
    selectedResidentialType = _editModel.residentialType;
    selectedFloorRange = _editModel.floorRange;
    selectedBedrooms = _editModel.bedrooms;
    selectedBathrooms = _editModel.bathrooms;
    propertySizeController.text = _editModel.propertySize ?? '';
    selectedFurnishing = _editModel.furnishings;
    selectedFacilities = [...?_editModel.facilities];
    selectedParkingLot = _editModel.parkingLot;
    securityDepositController.text = _editModel.securityDeposit ?? '';
    utilityDepositController.text = _editModel.utilityDeposit ?? '';
    selectedAmenities = [...?_editModel.amenity];
  }

  void _onSave() {
    final _data = model.ApartmentCondominiumStep2Model(
      buildingName: buildingNameController.text,
      unitNumber: unitNumberController.text,
      residentialType: selectedResidentialType,
      floorRange: selectedFloorRange,
      bedrooms: selectedBedrooms,
      bathrooms: selectedBathrooms,
      propertySize: propertySizeController.text,
      furnishings: selectedFurnishing,
      facilities: selectedFacilities,
      parkingLot: selectedParkingLot,
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
      spacing: 20,
      children: [
        // Building Name
        TextFormField(
          controller: buildingNameController,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            // labelText: 'Building Name',
            labelText: context.t.form.anyField
                .label(label: context.t.common.buildingName),
            // hintText: 'Enter building name',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.buildingName)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter building name';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.buildingName)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Unit Number
        TextFormField(
          controller: unitNumberController,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            // labelText: 'Unit Number',
            labelText: context.t.form.anyField
                .label(label: context.t.common.unitNumber),
            // hintText: 'Enter unit number',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.unitNumber)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please enter unit number';
              return context.t.form.anyField.errors
                  .required(label: context.t.common.unitNumber)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Residential Type
        DropdownButtonFormField<String?>(
          // hint: const Text('Select Residential Type'),
          hint: Text(
            context.t.form.anyDropdown
                .hint(label: context.t.common.residentialType)
                .sentenceCase,
          ),
          decoration: InputDecoration(
            // labelText: 'Residential Type',
            labelText: context.t.form.anyDropdown.label(
              label: context.t.common.residentialType,
            ),
          ),
          isExpanded: true,
          value: selectedResidentialType,
          items: {
            "Flat": context.t.enums.residentialType.flat,
            "Apartment": context.t.enums.residentialType.apartment,
            "Condominium": context.t.enums.residentialType.condominium,
            "Service Residence":
                context.t.enums.residentialType.serviceResidence,
            "Studio": context.t.enums.residentialType.studio,
            "Duplex": context.t.enums.residentialType.duplex,
            "Townhouse Condo": context.t.enums.residentialType.townhouseCondo,
            "Others": context.t.enums.residentialType.others,
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
              return context.t.form.anyDropdown.errors
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
            labelText: context.t.form.anyDropdown
                .hint(label: context.t.common.floorRange)
                .sentenceCase,
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

        // Bed/Bath Rooms
        Row(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bedrooms
            Expanded(
              child: OneToTenDropdown(
                labelText: OneToTenDropdown.bedroomLabel(context),
                hintText: OneToTenDropdown.bedroomHint(context),
                value: selectedBedrooms,
                onChanged: (v) => setState(() => selectedBedrooms = v),
              ),
            ),

            // Bathrooms
            Expanded(
              child: OneToTenDropdown(
                labelText: OneToTenDropdown.bathroomLabel(context),
                hintText: OneToTenDropdown.bathroomHint(context),
                value: selectedBathrooms,
                onChanged: (v) => setState(() => selectedBathrooms = v),
              ),
            ),
          ],
        ),

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
                .hint(label: context.t.common.propertySize)
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
              // return "Please enter property size";
              return context.t.form.anyField.errors
                  .required(label: context.t.common.propertySize)
                  .sentenceCase;
            }

            final _size = num.tryParse(value) ?? 0;
            if (_size <= 0) {
              // return "Property size should be greater than zero";
              return context.t.common.propertySizeMustBeGreaterThan0;
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

        // Amenities
        AmenitySelector(
          selectedAmenities: selectedAmenities,
          onChanged: (v) => setState(() => selectedAmenities = v),
        ),
      ],
    );
  }
}
