part of 'landlord_manage_property_view.dart';

class LandlordManagePropertyNotifier extends ChangeNotifier {
  final PropertyRepository _repo;
  LandlordManagePropertyNotifier(this._repo);

  int currentStep = 0;
  void handleStep(int totalStep, [bool next = true]) {
    currentStep = (currentStep + (next ? 1 : -1)).clamp(0, totalStep - 1);
    notifyListeners();
  }

  //------------------Form Field Props------------------//
  int? selectedPropertyCategory;
  int? _tempPropertyCategory;
  void handlePropertyCategory(int? value) {
    _tempPropertyCategory ??= value;
    if (_tempPropertyCategory != null && _tempPropertyCategory != value) {
      _resetBasedOnCategory();
      _tempPropertyCategory = value;
    }
    selectedPropertyCategory = value;
    notifyListeners();
  }

  model.AddPropertyStep2Base? step2Data;
  model.PropertyDescriptionPricingModel? step3Data;
  model.PropertyContactInfoModel? step4Data;
  model.PropertyImagesModel? step5Data;
  void _resetBasedOnCategory() {
    step2Data = null;
    step3Data = null;
    step4Data = null;
  }

  PropertyCardData cardData = PropertyCardData(id: 1);
  void updateCardData(PropertyModel? data) {
    if (data == null) return;

    final _sizeInfo = data.buildPropertySize(
      data.categoryId,
    );
    cardData = PropertyCardData(
      id: data.id!,
      landlordName: data.landlord?.name,
      propertyTitle: data.propertyDetail?.propertyInfo?.propertyTitle,
      bedRooms: data.roomInfo?.bedroom,
      bathRooms: data.roomInfo?.bathroom,
      propertySize: _sizeInfo.size,
      sizeUnit: _sizeInfo.sizeUnit,
      monthlyRent: data.rentInfo?.monthlyRent,
      coverImageUrl: data.coverImage?.firstOrNull?.remote,
      address: PropertyCardData.buildAddress([
        data.addressInfo?.address,
        data.addressInfo?.city,
        data.addressInfo?.state,
      ]),
      category: data.category?.name,
    );
    notifyListeners();
  }
  //------------------Form Field Props------------------//

  //------------------Handle Edit Init------------------//
  void handleEditInit(model.PropertyModel data) {
    // Step 1 Fields
    selectedPropertyCategory = data.categoryId;

    // Step 2 Fields
    if (selectedPropertyCategory == 1) {
      step2Data = model.ApartmentCondominiumStep2Model(
        buildingName: data.buildingName,
        unitNumber: data.propertyDetail?.propertyInfo?.unitNumber,
        residentialType: data.propertyDetail?.residentialType,
        floorRange: data.roomInfo?.floorRang,
        bedrooms: data.roomInfo?.bedroom?.toString(),
        bathrooms: data.roomInfo?.bathroom?.toString(),
        propertySize:
            data.propertyDetail?.propertyInfo?.propertySize?.toString(),
        furnishings: data.propertyDetail?.furnishing,
        facilities: data.propertyDetail?.facilities,
        parkingLot: data.propertyDetail?.parkingLot?.toString(),
        securityDeposit: data.securityDeposit?.toString(),
        utilityDeposit: data.utilityDeposit?.toString(),
        amenity: data.propertyDetail?.amenities,
      );
    } else if (selectedPropertyCategory == 2) {
      step2Data = model.HousePropertyStep2Model(
        houseType: data.houseTypeId,
        bedrooms: data.roomInfo?.bedroom?.toString(),
        bathrooms: data.roomInfo?.bathroom?.toString(),
        propertySize:
            data.propertyDetail?.propertyInfo?.propertySize?.toString(),
        furnishings: data.propertyDetail?.furnishing,
        facilities: data.propertyDetail?.facilities,
        completionYear: data.rentInfo?.completionYear,
        securityDeposit: data.securityDeposit?.toString(),
        utilityDeposit: data.utilityDeposit?.toString(),
        amenity: data.propertyDetail?.amenities,
      );
    } else if (selectedPropertyCategory == 3) {
      step2Data = model.CommercialDetailsFieldsModel(
        propertyType: data.propertyDetail?.propertyType,
        unitOrLotSize: data.roomInfo?.unitSize?.toString(),
        facilities: data.propertyDetail?.facilities,
        parkingLot: data.propertyDetail?.parkingLot?.toString(),
        completionYear: data.rentInfo?.completionYear,
        securityDeposit: data.securityDeposit?.toString(),
        utilityDeposit: data.utilityDeposit?.toString(),
        amenity: data.propertyDetail?.amenities,
      );
    } else if (selectedPropertyCategory == 4) {
      step2Data = model.LandDetailsFieldsModel(
        propertyType: data.propertyDetail?.propertyType,
        landSize: data.propertyDetail?.propertyInfo?.landSize?.toString(),
        amenity: data.propertyDetail?.amenities,
        securityDeposit: data.securityDeposit?.toString(),
        // rentalDeposit: data.rentalDeposit?.toString(),
      );
    } else if (selectedPropertyCategory == 5) {
      step2Data = model.RoomDetailsFieldsModel(
        residentialType: data.propertyDetail?.residentialType,
        floorRange: data.roomInfo?.floorRang,
        roomSize: data.roomInfo?.roomSize?.toString(),
        furnishings: data.propertyDetail?.furnishing,
        facilities: data.propertyDetail?.facilities,
        amenity: data.propertyDetail?.amenities,
        parkingLot: data.propertyDetail?.parkingLot?.toString(),
        completionYear: data.rentInfo?.completionYear,
        securityDeposit: data.securityDeposit?.toString(),
        // rentalDeposit: data.rentalDeposit?.toString(),
        tenantPreference: data.propertyDetail?.tenantPreference,
      );
    }

    // Step 3 Fields
    step3Data = model.PropertyDescriptionPricingModel(
      adTitle: data.propertyDetail?.propertyInfo?.propertyTitle,
      description: data.propertyDetail?.propertyInfo?.propertyDescription,
      monthlyRent: data.rentInfo?.monthlyRent?.toString(),
      minimumRentalPeriod: data.rentInfo?.rentalPeriod,
      lotNumber: data.propertyDetail?.propertyInfo?.lotNumber,
      address: data.addressInfo?.address,
      city: data.addressInfo?.city,
      state: data.addressInfo?.state,
      postalCode: data.addressInfo?.postcode,
      country: data.addressInfo?.country,
    );

    // Step 4 Fields
    step4Data = model.PropertyContactInfoModel(
      fullName: data.propertyDetail?.fullName,
      emailAddress: data.propertyDetail?.email,
      whatsappNumber: data.propertyDetail?.phone,
    );

    // Step 5 Fields
    step5Data = model.PropertyImagesModel(
      bathRoomImage: data.propertyDetail?.bathroomImage,
      bedRoomImage: data.propertyDetail?.bedroomImage,
      kitchenRoomImage: data.propertyDetail?.kitchenImage,
      floorPlanImage: data.propertyDetail?.floorplanImage,
      livingRoomImage: data.propertyDetail?.livingImage,
      coverImages: data.coverImage,
    );
    if (step5Data?.coverImages?.isNotEmpty == true) {
      _previousImages = [
        ...?step5Data?.coverImages
            ?.where((element) => element.remote != null)
            .map((e) => e.remote!)
      ];
    }

    notifyListeners();
  }

  //------------------Handle Edit Init------------------//
  List<String>? _previousImages;
  Future<PropertyModel> handleManageProperty([int? id]) async {
    var _data = model.ManagePropertyModel(
      categoryId: selectedPropertyCategory,
      step2Model: step2Data,
      step3Model: step3Data,
      step4Model: step4Data,
      step5Model: step5Data,
    );

    if (_previousImages?.isNotEmpty == true) {
      List<String> _removedImages = [];
      for (var previousImage in _previousImages!) {
        final isRemoved = !(_data.step5Model?.coverImages?.any(
              (newImage) => newImage.remote == previousImage,
            ) ??
            false);

        if (isRemoved) {
          _removedImages.add(
            previousImage.split('${DAPIEndpoints.baseURL}/').last,
          );
        }
      }
      _data = _data.copyWith(removedImages: _removedImages);
    }

    return await _repo.manageProperty(data: _data, id: id);
  }
}

final landlordManagePropertyProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LandlordManagePropertyNotifier(ref.read(propertyRepoProvider)),
);
