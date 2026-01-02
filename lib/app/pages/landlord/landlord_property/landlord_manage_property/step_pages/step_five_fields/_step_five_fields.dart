import 'package:flutter/material.dart';

import '../../../../../../data/models/admin/models.dart' as model;
import '../../../../../../widgets/widgets.dart';
import '../../components/components.dart';

class AddPropertyStepFiveFields extends StatefulWidget {
  const AddPropertyStepFiveFields({
    super.key,
    this.hasSeparateImages = false,
    this.step5Model,
    required this.onSave,
  });

  final bool hasSeparateImages;
  final model.PropertyImagesModel? step5Model;
  final void Function(model.PropertyImagesModel? value) onSave;

  @override
  State<AddPropertyStepFiveFields> createState() =>
      _AddPropertyStepFiveFieldsState();
}

class _AddPropertyStepFiveFieldsState extends State<AddPropertyStepFiveFields> {
  @override
  void initState() {
    _initWidget();
    super.initState();
  }

  void _onSave() {
    final _data = model.PropertyImagesModel(
      livingRoomImage: modelData[ImageType.livingImage],
      bedRoomImage: modelData[ImageType.bedroomImage],
      bathRoomImage: modelData[ImageType.bathroomImage],
      kitchenRoomImage: modelData[ImageType.kitchenImage],
      floorPlanImage: modelData[ImageType.floorplanImage],
      coverImages: modelData[ImageType.genericCover],
    );
    widget.onSave(_data);
  }

  @override
  void dispose() {
    _onSave();
    modelData.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Header
        StepTitle("Photos for your Property"),
        const SizedBox.square(dimension: 8),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text.rich(
            TextSpan(
              text: '• Upload More photos to attract buyers\n',
              children: [
                TextSpan(text: '• Click to rotate image.'),
              ],
            ),
            style: _theme.textTheme.bodyMedium?.copyWith(
              color: _theme.colorScheme.secondary,
            ),
          ),
        ),
        const SizedBox.square(dimension: 20),

        //--------------------------Images--------------------------//
        // Cover Images

        ImagePreviewCard(
          image: modelData[ImageType.genericCover][0],
          svgPlaceholder: DAppImages.buildingCoverIcon,
          placeholderText: 'The building Add  Cover Photo',
          onTap: () async => await pickImage(
            imageType: ImageType.genericCover,
            index: 0,
          ),
        ),
        const SizedBox.square(dimension: 10),

        // Other Images
        GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 150,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          shrinkWrap: true,
          itemCount: 9,
          primary: false,
          itemBuilder: (_, index) {
            if (widget.hasSeparateImages &&
                index < (ImageType.values.length - 1)) {
              final _type = ImageType.values[index];

              return ImagePreviewCard(
                svgPlaceholder: _type.svgPlaceholder,
                placeholderText: _type.placeholderText,
                image: modelData[_type],
                onTap: () async => await pickImage(imageType: _type),
              );
            }

            final _coverIndex = index -
                (widget.hasSeparateImages ? ImageType.values.length - 1 : 0) +
                1;
            final _coverImage = modelData[ImageType.genericCover][_coverIndex];
            return ImagePreviewCard(
              image: _coverImage,
              svgPlaceholder: DAppImages.cameraIcon,
              onTap: () async => await pickImage(
                imageType: ImageType.genericCover,
                index: _coverIndex,
              ),
            );
          },
        ),
        //--------------------------Images--------------------------//

        const SizedBox.square(dimension: 10),

        // Terms & Conditions
        const TermsConditionsFormField(),
      ],
    );
  }

  void _initWidget() {
    modelData = {
      if (widget.hasSeparateImages) ...{
        ImageType.livingImage:
            widget.step5Model?.livingRoomImage ?? DynamicFileType(),
        ImageType.bedroomImage:
            widget.step5Model?.bedRoomImage ?? DynamicFileType(),
        ImageType.kitchenImage:
            widget.step5Model?.bathRoomImage ?? DynamicFileType(),
        ImageType.bathroomImage:
            widget.step5Model?.kitchenRoomImage ?? DynamicFileType(),
        ImageType.floorplanImage:
            widget.step5Model?.floorPlanImage ?? DynamicFileType(),
      },
      ImageType.genericCover: List.generate(maxCoverImage, (index) {
        if ((widget.step5Model?.coverImages?.length ?? 0) > index) {
          return widget.step5Model?.coverImages?[index] ?? DynamicFileType();
        }
        return DynamicFileType();
      })
    };
  }

  int get maxCoverImage => widget.hasSeparateImages ? 5 : 10;
  late final Map<ImageType, dynamic> modelData;
  Future<void> pickImage({
    required ImageType imageType,
    bool isCoverImage = false,
    int? index,
  }) async {
    final _result = await showImagePickerDialog(context).then((v) {
      if (v == null) return null;
      return DynamicFileType(local: v);
    });
    if (_result == null) return;

    setState(() {
      if (imageType == ImageType.genericCover && index != null) {
        modelData[ImageType.genericCover][index] = _result;
      } else {
        modelData[imageType] = _result;
      }
      _onSave();
    });
  }
}

enum ImageType {
  livingImage(
    placeholderText: 'Living Room',
    svgPlaceholder: DAppImages.livingRoomIcon,
  ),
  bedroomImage(
    placeholderText: 'Bedroom',
    svgPlaceholder: DAppImages.bedRoomIcon,
  ),
  kitchenImage(
    placeholderText: 'Kitchen',
    svgPlaceholder: DAppImages.kitchenRoomIcon,
  ),
  bathroomImage(
    placeholderText: 'Bathroom',
    svgPlaceholder: DAppImages.bathRoomIcon,
  ),
  floorplanImage(
    placeholderText: 'Florplan',
    svgPlaceholder: DAppImages.floorPlanIcon,
  ),
  genericCover(
    svgPlaceholder: DAppImages.cameraIcon,
  );

  final String svgPlaceholder;
  final String? placeholderText;
  const ImageType({
    required this.svgPlaceholder,
    this.placeholderText,
  });
}
