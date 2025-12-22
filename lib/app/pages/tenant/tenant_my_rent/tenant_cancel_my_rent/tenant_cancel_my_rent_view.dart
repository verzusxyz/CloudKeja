import 'package:auto_route/auto_route.dart';
import 'package:fdevs_fitkit/fdevs_fitkit.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../widgets/date_form_field/_date_form_field.dart';
import '../../../../widgets/scaffold_wrappers/_scaffold_wrappers.dart';

@RoutePage()
class TenantCancelMyRentView extends StatelessWidget {
  const TenantCancelMyRentView({super.key});

  @override
  Widget build(BuildContext context) {
    final endDateController = TextEditingController();
    final _theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Cancel Renting'),
      ),
      body: ScaffoldBodyWrapper(
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Why are you Cancel Renting?',
                style: _theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),

              // Title form field
              const SizedBox.square(dimension: 20),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  hintText: 'Enter Title',
                ),
              ),

              // End Date
              const SizedBox.square(dimension: 20),
              DateFormField(
                controller: endDateController,
                dateFormat: CustomDateFormat('yyyy-MM-dd'),
                decoration: const InputDecoration(
                  labelText: 'End Date',
                  hintText: 'Select date',
                  suffixIcon: Icon(IconlyLight.calendar),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select end date';
                  }
                  return null;
                },
              ),

              // Reason
              const SizedBox.square(dimension: 20),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.text,
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Enter Reason',
                  hintText: 'Please describe briefly.',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ScaffoldBottomNavWrapper(
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Send'),
          ),
        ).fMarginLTRB(24, 18, 24, 12),
      ),
    ).unfocusPrimary();
  }
}
