part of '_step_two_fields.dart';

class LandPropertyStepTwoFields extends Step2DataGetter {
  const LandPropertyStepTwoFields({
    super.key,
    super.editModel,
    required super.onSave,
  });

  @override
  State<LandPropertyStepTwoFields> createState() =>
      _LandPropertyStepTwoFieldsState();
}

class _LandPropertyStepTwoFieldsState extends State<LandPropertyStepTwoFields> {
  //---------------------Form Field Props---------------------//
  String? selectedPropertyType;
  late final landSizeController = TextEditingController();
  List<int> selectedAmenities = [];
  late final securityDepositController = TextEditingController();
  // late final rentalDepositController = TextEditingController();
  //---------------------Form Field Props---------------------//

  @override
  void initState() {
    _initEdit();
    super.initState();
  }

  void _initEdit() {
    final _editModel = widget.editModel;
    if (_editModel == null || _editModel is! model.LandDetailsFieldsModel) {
      return;
    }

    selectedPropertyType = _editModel.propertyType;
    landSizeController.text = _editModel.landSize ?? '';
    selectedAmenities = [...?_editModel.amenity];
    securityDepositController.text = _editModel.securityDeposit ?? '';
    // rentalDepositController.text = _editModel.rentalDeposit ?? '';
  }

  void _onSave() {
    final _data = model.LandDetailsFieldsModel(
      propertyType: selectedPropertyType,
      landSize: landSizeController.text,
      amenity: selectedAmenities,
      securityDeposit: securityDepositController.text,
      // rentalDeposit: rentalDepositController.text,
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
          hint: Text(
            context.t.form.anyDropdown
                .hint(label: context.t.common.propertyType)
                .sentenceCase,
          ),
          decoration: InputDecoration(
            // labelText: 'Property Type',
            labelText: context.t.form.anyDropdown
                .label(label: context.t.common.propertyType),
          ),
          isExpanded: true,
          value: selectedPropertyType,
          items: {
            "Residential": context.t.enums.landPropertyType.residential,
            "Industrial": context.t.enums.landPropertyType.industrial,
            "Agricultural": context.t.enums.landPropertyType.agricultural,
            "Commercial": context.t.enums.landPropertyType.commercial,
            "Mixed Development":
                context.t.enums.landPropertyType.mixedDevelopment,
            "Others": context.t.enums.landPropertyType.others,
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

        // Land Size
        TextFormField(
          controller: landSizeController,
          keyboardType: TextInputType.number,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'Land Size',
            labelText:
                context.t.form.anyField.label(label: context.t.common.landSize),
            // hintText: 'Enter land size',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.landSize)
                .sentenceCase,
            suffixIcon: IntrinsicWidth(
              child: Center(
                // child: const Text('acre(s)'),
                child: Text(context.t.common.acres),
              ),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return "Please enter land size";
              return context.t.form.anyField.errors
                  .required(label: context.t.common.landSize)
                  .sentenceCase;
            }

            final _size = num.tryParse(value) ?? 0;
            if (_size <= 0) {
              // return "Land size should be greater than zero";
              return context.t.exceptions
                  .valueMustBeGreaterThanZero(value: context.t.common.landSize)
                  .sentenceCase;
            }
            return null;
          },
        ),

        // Amenities
        AmenitySelector(
          selectedAmenities: selectedAmenities,
          onChanged: (v) => setState(() => selectedAmenities = v),
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
      ],
    );
  }
}
