import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recase/recase.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../../i18n/strings.g.dart';
import '../../../../../../data/models/models.dart' as model;
import '../../../../../../data/repositories/repositories.dart'
    show houseTypesProvider;
import '../../../../../../widgets/widgets.dart';
import '../../components/components.dart';

part '_apartment_condominium_fields.dart';
part '_commercial_property_fields.dart';
part '_house_property_fields.dart';
part '_land_property_fields.dart';
part '_room_property_fields.dart';

class AddPropertyStepTwoFields extends StatelessWidget {
  const AddPropertyStepTwoFields({
    super.key,
    this.categoryId,
    this.step2Model,
    required this.onSave,
  });
  final int? categoryId;
  final model.AddPropertyStep2Base? step2Model;
  final void Function(model.AddPropertyStep2Base? value) onSave;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Title
        StepTitle(
          // 'Property Details',
          context.t.common.propertyDetails,
        ),
        const SizedBox.square(dimension: 16),

        // Fields
        switch (categoryId) {
          1 => ApartmentCondominiumPropertyStepTwoFields(
              editModel: step2Model,
              onSave: onSave,
            ),
          2 => HousePropertyStepTwoFields(
              editModel: step2Model,
              onSave: onSave,
            ),
          3 => CommercialPropertyStepTwoFields(
              editModel: step2Model,
              onSave: onSave,
            ),
          4 => LandPropertyStepTwoFields(
              editModel: step2Model,
              onSave: onSave,
            ),
          5 => RoomPropertyStepTwoFields(
              editModel: step2Model,
              onSave: onSave,
            ),
          _ => Center(
              // child: Text('Invalid category'),
              child: Text(context.t.common.invalidCategory),
            ),
        }
      ],
    );
  }
}

abstract interface class Step2DataGetter extends StatefulWidget {
  const Step2DataGetter({super.key, this.editModel, required this.onSave});

  final model.AddPropertyStep2Base? editModel;
  final void Function(model.AddPropertyStep2Base? value) onSave;
}
