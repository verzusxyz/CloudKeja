import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:recase/recase.dart';

import '../../../../../../../i18n/strings.g.dart';
import '../../../../../../data/models/models.dart' as model;
import '../../components/components.dart';

class AddPropertyStepFourFields extends StatefulWidget {
  const AddPropertyStepFourFields({
    super.key,
    this.step4Model,
    required this.onSave,
  });

  final model.PropertyContactInfoModel? step4Model;
  final void Function(model.PropertyContactInfoModel? value) onSave;

  @override
  State<AddPropertyStepFourFields> createState() =>
      _AddPropertyStepFourFieldsState();
}

class _AddPropertyStepFourFieldsState extends State<AddPropertyStepFourFields> {
  //---------------------Form Field Props---------------------//
  late final fullNameController = TextEditingController();
  late final emailAddressController = TextEditingController();
  late final whatsappNumberController = TextEditingController();
  int? selectedAgreement;
  //---------------------Form Field Props---------------------//

  @override
  void initState() {
    _initEdit();
    super.initState();
  }

  void _initEdit() {
    final _editModel = widget.step4Model;
    if (_editModel == null) return;
    fullNameController.text = _editModel.fullName ?? '';
    emailAddressController.text = _editModel.emailAddress ?? '';
    whatsappNumberController.text = _editModel.whatsappNumber ?? '';
    // selectedAgreement = _editModel.agreementId;
  }

  void _onSave() {
    final _data = model.PropertyContactInfoModel(
      fullName: fullNameController.text,
      emailAddress: emailAddressController.text,
      whatsappNumber: whatsappNumberController.text,
      // agreementId: selectedAgreement,
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
      spacing: 20,
      children: [
        // Title
        StepTitle(
          // 'Contact',
          context.t.common.contact,
        ),

        // Full Name
        TextFormField(
          controller: fullNameController,
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

        // Email
        TextFormField(
          controller: emailAddressController,
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
              return context.t.form.email.errors.required;
            }
            if (!value.isEmail) {
              // return '⦸ Invalid Email, Please Try Again';
              return context.t.form.email.errors.invalid;
            }
            return null;
          },
        ),

        // WhatsApp Number
        TextFormField(
          controller: whatsappNumberController,
          keyboardType: TextInputType.phone,
          autofillHints: const [AutofillHints.telephoneNumber],
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            // labelText: 'WhatsApp Number',
            labelText: context.t.form.anyField
                .label(label: context.t.common.whatsappNumber),
            // hintText: 'Enter WhatsApp number',
            hintText: context.t.form.anyField
                .hint(label: context.t.common.whatsappNumber)
                .sentenceCase,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              // return "Please enter your whatsapp number";
              return context.t.form.anyField.errors
                  .required(label: context.t.common.whatsappNumber)
                  .sentenceCase;
            }
            return null;
          },
        ),
      ],
    );
  }
}
