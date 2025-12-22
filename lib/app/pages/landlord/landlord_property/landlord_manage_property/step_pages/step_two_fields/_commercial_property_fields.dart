part of '_step_two_fields.dart';

class CommercialPropertyStepTwoFields extends Step2DataGetter {
  const CommercialPropertyStepTwoFields({
    super.key,
    super.editModel,
    required super.onSave,
  });

  @override
  State<CommercialPropertyStepTwoFields> createState() =>
      _CommercialPropertyStepTwoFieldsState();
}

class _CommercialPropertyStepTwoFieldsState
    extends State<CommercialPropertyStepTwoFields> {
  //---------------------Form Field Props---------------------//
  String? selectedPropertyType;
  late final unitLotSizeController = TextEditingController();
  List<int> selectedFacilities = [];
  List<int> selectedAmenities = [];
  String? selectedParkingLot;
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
    if (_editModel == null ||
        _editModel is! model.CommercialDetailsFieldsModel) {
      return;
    }

    selectedPropertyType = _editModel.propertyType;
    unitLotSizeController.text = _editModel.unitOrLotSize ?? '';
    selectedFacilities = [...?_editModel.facilities];
    selectedParkingLot = _editModel.parkingLot;
    completionYearController.text = _editModel.completionYear ?? '';
    securityDepositController.text = _editModel.securityDeposit ?? '';
    utilityDepositController.text = _editModel.utilityDeposit ?? '';
    selectedAmenities = [...?_editModel.amenity];
  }

  void _onSave() {
    final _data = model.CommercialDetailsFieldsModel(
      propertyType: selectedPropertyType,
      unitOrLotSize: unitLotSizeController.text,
      facilities: selectedFacilities,
      parkingLot: selectedParkingLot,
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
      spacing: 20,
      children: [
        // Property Type
        DropdownButtonFormField<String?>(
          // hint: const Text('Select property type'),
          hint: Text(context.t.form.anyDropdown
              .hint(label: context.t.common.propertyType)),
          decoration: InputDecoration(
            // labelText: 'Property Type',
            labelText: context.t.form.anyDropdown
                .label(label: context.t.common.propertyType)
                .sentenceCase,
          ),
          isExpanded: true,
          value: selectedPropertyType,
          items: {
            "Office space": context.t.enums.commercialPropertyType.officeSpace,
            "Retail space": context.t.enums.commercialPropertyType.retailSpace,
            "Shop lot": context.t.enums.commercialPropertyType.shopLot,
            "Warehouse / Factory":
                context.t.enums.commercialPropertyType.warehouseFactory,
            "Hotel / Resort":
                context.t.enums.commercialPropertyType.hotelResort,
            "Sofo": context.t.enums.commercialPropertyType.sofo,
            "Soho": context.t.enums.commercialPropertyType.soho,
            "Sovo": context.t.enums.commercialPropertyType.sovo,
            "Others": context.t.enums.commercialPropertyType.others,
          }.entries.map(
            (type) {
              return DropdownMenuItem<String>(
                value: type.key,
                child: Text(type.value),
              );
            },
          ).toList(),
          onChanged: (v) => setState(() => selectedPropertyType = v),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return 'Please select property type';
              return context.t.form.anyDropdown.errors
                  .required(label: context.t.common.propertyType)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Unit /  Lot Size
        TextFormField(
          controller: unitLotSizeController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Unit / Lot Size',
            labelText: context.t.form.anyField
                .label(label: context.t.common.unitLotSize),
            // hintText: 'Enter unit / lot size',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.unitLotSize)
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
              // return "Please enter unit / lot size";
              return context.t.form.anyField.errors
                  .required(label: context.t.common.unitLotSize)
                  .sentenceCase;
            }

            final _size = num.tryParse(value) ?? 0;
            if (_size <= 0) {
              // return "Unit / Lot should be greater than zero";
              return context.t.exceptions
                  .valueMustBeGreaterThanZero(
                      value: context.t.common.unitLotSize)
                  .sentenceCase;
            }
            return null;
          },
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
