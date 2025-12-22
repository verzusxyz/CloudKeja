import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../../i18n/strings.g.dart';
import '../../../../../data/repositories/repositories.dart';
import '../../../../../widgets/widgets.dart';

class FacilitySelector extends ConsumerWidget {
  const FacilitySelector({
    super.key,
    required this.selectedFacilities,
    required this.onChanged,
  });
  final List<int> selectedFacilities;
  final void Function(List<int> id) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(facilitiesProvider);

    return _data.when(
      skipLoadingOnRefresh: false,
      data: (data) {
        return MultiChoiceSelector<int>(
          // headerText: 'What are the facilities?',
          headerText: context.t.common.whatAreTheFacility,
          value: selectedFacilities,
          items: [
            ...?data.data?.map((facility) {
              return MultiChoiceItem(
                value: facility.id,
                label: facility.name ?? 'N/A',
              );
            })
          ],
          onChanged: onChanged,
        );
      },
      error: (error, _) => Text.rich(
        RetryButtons.inlineText(
          error,
          onRetry: () => ref.refresh(facilitiesProvider),
        ),
      ),
      loading: () => Skeletonizer(
        child: MultiChoiceSelector<int>(
          headerText: 'What are the facilities?',
          items: List.generate(
            10,
            (index) => MultiChoiceItem(value: index, label: 'Data $index'),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}

class AmenitySelector extends ConsumerWidget {
  const AmenitySelector({
    super.key,
    required this.selectedAmenities,
    required this.onChanged,
  });
  final List<int> selectedAmenities;
  final void Function(List<int> id) onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _data = ref.watch(amenitiesProvider);

    return _data.when(
      skipLoadingOnRefresh: false,
      data: (data) {
        return MultiChoiceSelector<int>(
          // headerText: 'What are the amenities?',
          headerText: context.t.common.whatAreTheAmenity,
          value: selectedAmenities,
          items: [
            ...?data.data?.map((facility) {
              return MultiChoiceItem(
                value: facility.id,
                label: facility.name ?? 'N/A',
              );
            })
          ],
          onChanged: onChanged,
        );
      },
      error: (error, _) => Text.rich(
        RetryButtons.inlineText(
          error,
          onRetry: () => ref.refresh(amenitiesProvider),
        ),
      ),
      loading: () => Skeletonizer(
        child: MultiChoiceSelector<int>(
          headerText: 'What are the facilities?',
          items: List.generate(
            10,
            (index) => MultiChoiceItem(value: index, label: 'Data $index'),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
