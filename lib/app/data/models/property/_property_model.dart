import '../../../core/core.dart';
import '../admin/models.dart';

export '_facility_amenity_model.dart';

part '_property_get_model.dart';

//-----------------Add Property Step Two-----------------//
abstract interface class AddPropertyStep2Base {
  Map<String, dynamic> toRequest();
}

// House Property Model
class HousePropertyStep2Model extends AddPropertyStep2Base {
  int? houseType;
  String? bedrooms;
  String? bathrooms;
  String? propertySize;
  String? furnishings;
  List<int>? facilities;
  String? completionYear;
  String? securityDeposit;
  String? utilityDeposit;
  List<int>? amenity;

  HousePropertyStep2Model({
    this.houseType,
    this.bedrooms,
    this.bathrooms,
    this.propertySize,
    this.furnishings,
    this.facilities,
    this.completionYear,
    this.securityDeposit,
    this.utilityDeposit,
    this.amenity,
  });

  HousePropertyStep2Model copyWith({
    int? houseType,
    String? bedrooms,
    String? bathrooms,
    String? propertySize,
    String? furnishings,
    List<int>? facilities,
    String? completionYear,
    String? securityDeposit,
    String? utilityDeposit,
    List<int>? amenity,
  }) {
    return HousePropertyStep2Model(
      houseType: houseType ?? this.houseType,
      bedrooms: bedrooms ?? this.bedrooms,
      bathrooms: bathrooms ?? this.bathrooms,
      propertySize: propertySize ?? this.propertySize,
      furnishings: furnishings ?? this.furnishings,
      facilities: facilities ?? this.facilities,
      completionYear: completionYear ?? this.completionYear,
      securityDeposit: securityDeposit ?? this.securityDeposit,
      utilityDeposit: utilityDeposit ?? this.utilityDeposit,
      amenity: amenity ?? this.amenity,
    );
  }

  @override
  Map<String, dynamic> toRequest() {
    return {
      "house_type_id": houseType,
      "room_info[bedroom]": bedrooms,
      "room_info[bathroom]": bathrooms,
      "property_info[property_size]": propertySize,
      "furnishing": furnishings,
      "facilities[]": facilities,
      "rent_info[completion_year]": completionYear,
      "security_deposit": securityDeposit,
      "utility_deposit": utilityDeposit,
      "amenities[]": amenity,
    };
  }
}

// Apartment Condominium Property Model
class ApartmentCondominiumStep2Model extends AddPropertyStep2Base {
  String? buildingName;

  String? unitNumber;

  String? residentialType;
  String? floorRange;
  String? bedrooms;
  String? bathrooms;
  String? propertySize;
  String? furnishings;
  List<int>? facilities;
  String? parkingLot;
  String? securityDeposit;
  String? utilityDeposit;
  List<int>? amenity;

  ApartmentCondominiumStep2Model({
    this.buildingName,
    this.unitNumber,
    this.residentialType,
    this.floorRange,
    this.bedrooms,
    this.bathrooms,
    this.propertySize,
    this.furnishings,
    this.facilities,
    this.parkingLot,
    this.securityDeposit,
    this.utilityDeposit,
    this.amenity,
  });

  ApartmentCondominiumStep2Model copyWith({
    String? buildingName,
    String? unitNumber,
    String? residentialType,
    String? floorRange,
    String? bedrooms,
    String? bathrooms,
    String? propertySize,
    String? furnishings,
    List<int>? facilities,
    String? parkingLot,
    String? securityDeposit,
    String? utilityDeposit,
    List<int>? amenity,
    String? adTitle,
    String? description,
    String? monthlyRent,
    String? minRentalPeriod,
  }) {
    return ApartmentCondominiumStep2Model(
      buildingName: buildingName ?? this.buildingName,
      unitNumber: unitNumber ?? this.unitNumber,
      residentialType: residentialType ?? this.residentialType,
      floorRange: floorRange ?? this.floorRange,
      bedrooms: bedrooms ?? this.bedrooms,
      bathrooms: bathrooms ?? this.bathrooms,
      propertySize: propertySize ?? this.propertySize,
      furnishings: furnishings ?? this.furnishings,
      facilities: facilities ?? this.facilities,
      parkingLot: parkingLot ?? this.parkingLot,
      securityDeposit: securityDeposit ?? this.securityDeposit,
      utilityDeposit: utilityDeposit ?? this.utilityDeposit,
      amenity: amenity ?? this.amenity,
    );
  }

  @override
  Map<String, dynamic> toRequest() {
    return {
      "building_name": buildingName,
      "property_info[unit_number]": unitNumber,
      "residential_type": residentialType,
      "room_info[floor_rang]": floorRange,
      "room_info[bedroom]": bedrooms,
      "room_info[bathroom]": bathrooms,
      "property_info[property_size]": propertySize,
      "furnishing": furnishings,
      "facilities[]": facilities,
      "parking_lot": parkingLot,
      "security_deposit": securityDeposit,
      "utility_deposit": utilityDeposit,
      "amenities[]": amenity,
    };
  }
}

// Commercial Property Model
class CommercialDetailsFieldsModel extends AddPropertyStep2Base {
  String? propertyType;
  String? unitOrLotSize;
  List<int>? facilities;
  String? parkingLot;
  String? completionYear;
  String? securityDeposit;
  String? utilityDeposit;
  List<int>? amenity;

  CommercialDetailsFieldsModel({
    this.propertyType,
    this.unitOrLotSize,
    this.facilities,
    this.parkingLot,
    this.completionYear,
    this.securityDeposit,
    this.utilityDeposit,
    this.amenity,
  });

  CommercialDetailsFieldsModel copyWith({
    String? propertyType,
    String? unitOrLotSize,
    List<int>? facilities,
    String? parkingLot,
    String? completionYear,
    String? securityDeposit,
    String? utilityDeposit,
    List<int>? amenity,
  }) {
    return CommercialDetailsFieldsModel(
      propertyType: propertyType ?? this.propertyType,
      unitOrLotSize: unitOrLotSize ?? this.unitOrLotSize,
      facilities: facilities ?? this.facilities,
      parkingLot: parkingLot ?? this.parkingLot,
      completionYear: completionYear ?? this.completionYear,
      securityDeposit: securityDeposit ?? this.securityDeposit,
      utilityDeposit: utilityDeposit ?? this.utilityDeposit,
      amenity: amenity ?? this.amenity,
    );
  }

  @override
  Map<String, dynamic> toRequest() {
    return {
      "property_type": propertyType,
      "room_info[unit_size]": unitOrLotSize,
      "facilities[]": facilities,
      "parking_lot": parkingLot,
      "rent_info[completion_year]": completionYear,
      "security_deposit": securityDeposit,
      "utility_deposit": utilityDeposit,
      "amenities[]": amenity,
    };
  }
}

// Land Property Model
class LandDetailsFieldsModel extends AddPropertyStep2Base {
  String? propertyType;
  String? landSize;
  List<int>? amenity;
  String? securityDeposit;
  // String? rentalDeposit;

  LandDetailsFieldsModel({
    this.propertyType,
    this.landSize,
    this.amenity,
    this.securityDeposit,
    // this.rentalDeposit,
  });

  LandDetailsFieldsModel copyWith({
    String? propertyType,
    String? landSize,
    List<int>? amenity,
    String? securityDeposit,
    // String? rentalDeposit,
  }) {
    return LandDetailsFieldsModel(
      propertyType: propertyType ?? this.propertyType,
      landSize: landSize ?? this.landSize,
      amenity: amenity ?? this.amenity,
      securityDeposit: securityDeposit ?? this.securityDeposit,
      // rentalDeposit: rentalDeposit ?? this.rentalDeposit,
    );
  }

  @override
  Map<String, dynamic> toRequest() {
    return {
      "property_type": propertyType,
      "property_info[land_size]": landSize,
      "amenities[]": amenity,
      "security_deposit": securityDeposit,
      // "rental_deposit": rentalDeposit,
    };
  }
}

// Room Property Model
class RoomDetailsFieldsModel extends AddPropertyStep2Base {
  String? residentialType;
  String? floorRange;
  String? roomSize;
  String? furnishings;
  List<int>? facilities;
  List<int>? amenity;
  String? parkingLot;
  String? completionYear;
  String? securityDeposit;
  // String? rentalDeposit;
  List<String>? tenantPreference;

  RoomDetailsFieldsModel({
    this.residentialType,
    this.floorRange,
    this.roomSize,
    this.furnishings,
    this.facilities,
    this.amenity,
    this.parkingLot,
    this.completionYear,
    this.securityDeposit,
    // this.rentalDeposit,
    this.tenantPreference,
  });

  RoomDetailsFieldsModel copyWith({
    String? residentialType,
    String? floorRange,
    String? roomSize,
    String? furnishings,
    List<int>? facilities,
    List<int>? amenity,
    String? parkingLot,
    String? completionYear,
    String? securityDeposit,
    String? utilityDeposit,
    List<String>? tenantPreference,
  }) {
    return RoomDetailsFieldsModel(
      residentialType: residentialType ?? this.residentialType,
      floorRange: floorRange ?? this.floorRange,
      roomSize: roomSize ?? this.roomSize,
      furnishings: furnishings ?? this.furnishings,
      facilities: facilities ?? this.facilities,
      amenity: amenity ?? this.amenity,
      parkingLot: parkingLot ?? this.parkingLot,
      completionYear: completionYear ?? this.completionYear,
      securityDeposit: securityDeposit ?? this.securityDeposit,
      // rentalDeposit: utilityDeposit ?? rentalDeposit,
      tenantPreference: tenantPreference ?? this.tenantPreference,
    );
  }

  @override
  Map<String, dynamic> toRequest() {
    return {
      "residential_type": residentialType,
      "room_info[floor_rang]": floorRange,
      "room_info[room_size]": roomSize,
      "furnishing": furnishings,
      "facilities[]": facilities,
      "amenities[]": amenity,
      "parking_lot": parkingLot,
      "rent_info[completion_year]": completionYear,
      "security_deposit": securityDeposit,
      // "rental_deposit": rentalDeposit,
      "tenant_preference[]": tenantPreference,
    };
  }
}
//-----------------Add Property Step Two-----------------//

//-----------------Add Property Step Three-----------------//
class PropertyDescriptionPricingModel {
  String? adTitle;
  String? description;
  String? monthlyRent;
  String? minimumRentalPeriod;
  String? address;
  String? country;
  String? lotNumber;
  String? city;
  String? state;
  String? postalCode;

  PropertyDescriptionPricingModel({
    this.adTitle,
    this.description,
    this.monthlyRent,
    this.minimumRentalPeriod,
    this.address,
    this.country,
    this.lotNumber,
    this.city,
    this.state,
    this.postalCode,
  });

  Map<String, dynamic> toRequest() {
    return {
      "property_info[property_title]": adTitle,
      "property_info[property_description]": description,
      "rent_info[monthly_rent]": monthlyRent,
      "rent_info[rental_period]": minimumRentalPeriod,
      "property_info[lot_number]": lotNumber,
      "address_info[address]": address,
      "address_info[city]": city,
      "address_info[country]": country,
      "address_info[state]": state,
      "address_info[postcode]": postalCode,
    };
  }
}
//-----------------Add Property Step Three-----------------//

//-----------------Add Property Step Four-----------------//
class PropertyContactInfoModel {
  String? fullName;
  String? emailAddress;
  String? whatsappNumber;

  PropertyContactInfoModel({
    this.fullName,
    this.emailAddress,
    this.whatsappNumber,
  });

  Map<String, dynamic> toRequest() {
    return {
      "full_name": fullName,
      "email": emailAddress,
      "phone": whatsappNumber,
    };
  }
}
//-----------------Add Property Step Four-----------------//

//-----------------Add Property Step Five-----------------//
class PropertyImagesModel {
  List<DynamicFileType>? coverImages;
  DynamicFileType? livingRoomImage;
  DynamicFileType? bedRoomImage;
  DynamicFileType? kitchenRoomImage;
  DynamicFileType? bathRoomImage;
  DynamicFileType? floorPlanImage;

  PropertyImagesModel({
    this.coverImages,
    this.livingRoomImage,
    this.bedRoomImage,
    this.kitchenRoomImage,
    this.bathRoomImage,
    this.floorPlanImage,
  });

  Map<String, dynamic> toRequest() {
    final _coverImages = [
      ...?coverImages
          ?.where((image) => image.local?.path.isNotEmpty == true)
          .map((image) => image.local)
    ];

    return {
      if (_coverImages.isNotEmpty)
        ..._coverImages
            .asMap()
            .map((idx, value) => MapEntry("cover_image[$idx]", value)),
      if (livingRoomImage?.local?.path.isNotEmpty == true)
        "living_image": livingRoomImage?.local,
      if (bedRoomImage?.local?.path.isNotEmpty == true)
        "bedroom_image": bedRoomImage?.local,
      if (bathRoomImage?.local?.path.isNotEmpty == true)
        "bathroom_image": bathRoomImage?.local,
      if (kitchenRoomImage?.local?.path.isNotEmpty == true)
        "kitchen_image": kitchenRoomImage?.local,
      if (floorPlanImage?.local?.path.isNotEmpty == true)
        "floorplan_image": floorPlanImage?.local,
    };
  }
}
//-----------------Add Property Step Five-----------------//

class ManagePropertyModel {
  int? categoryId;
  AddPropertyStep2Base? step2Model;
  PropertyDescriptionPricingModel? step3Model;
  PropertyContactInfoModel? step4Model;
  PropertyImagesModel? step5Model;
  List<String>? removedImages;

  ManagePropertyModel({
    this.categoryId,
    this.step2Model,
    this.step3Model,
    this.step4Model,
    this.step5Model,
    this.removedImages,
  });

  ManagePropertyModel copyWith({
    int? categoryId,
    AddPropertyStep2Base? step2Model,
    PropertyDescriptionPricingModel? step3Model,
    PropertyContactInfoModel? step4Model,
    PropertyImagesModel? step5Model,
    List<String>? removedImages,
  }) {
    return ManagePropertyModel(
      categoryId: categoryId ?? this.categoryId,
      step2Model: step2Model ?? this.step2Model,
      step3Model: step3Model ?? this.step3Model,
      step4Model: step4Model ?? this.step4Model,
      step5Model: step5Model ?? this.step5Model,
      removedImages: removedImages ?? this.removedImages,
    );
  }

  factory ManagePropertyModel.fromJson(Map<String, dynamic> json) {
    return ManagePropertyModel();
  }
  Map<String, dynamic> toRequest() {
    return {
      "category_id": categoryId,
      ...?step2Model?.toRequest(),
      ...?step3Model?.toRequest(),
      ...?step4Model?.toRequest(),
      ...?step5Model?.toRequest(),

      // Removed Image [Only when updating property]
      if (removedImages?.isNotEmpty == true)
        ...?removedImages?.asMap().map((idx, value) {
          return MapEntry("removed_images[$idx]", value);
        })
    };
  }
}
