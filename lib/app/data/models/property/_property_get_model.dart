part of '_property_model.dart';

//-------------------------Single Property-------------------------//
class PropertyResponseModel {
  String? message;
  PropertyModel? data;

  PropertyResponseModel({
    this.message,
    this.data,
  });

  factory PropertyResponseModel.fromJson(Map<String, dynamic> json) {
    return PropertyResponseModel(
      message: json["message"],
      data: json["data"] == null ? null : PropertyModel.fromJson(json["data"]),
    );
  }
}

class PropertyModel {
  int? id;
  int? categoryId;
  String? pUid;
  int? landlordId;
  int? houseTypeId;
  // int? agreementId;
  String? buildingName;
  num? utilityDeposit;
  num? securityDeposit;
  num? rentalDeposit;
  List<DynamicFileType>? coverImage;
  RoomInfo? roomInfo;
  int? status;
  RentInfo? rentInfo;
  PropertyAddressInfo? addressInfo;
  DateTime? createdAt;
  DateTime? updatedAt;
  PropertyDetail? propertyDetail;
  Agreement? agreement;
  Category? houseType;
  Category? category;
  Tenant? landlord;
  FavoriteModel? favorite;
  RentDetails? rentDetails;

  bool get isRented => rentDetails != null;
  bool get isFavorite => favorite != null;

  PropertyModel({
    this.id,
    this.categoryId,
    this.pUid,
    this.landlordId,
    this.houseTypeId,
    // this.agreementId,
    this.buildingName,
    this.utilityDeposit,
    this.securityDeposit,
    this.rentalDeposit,
    this.coverImage,
    this.roomInfo,
    this.status,
    this.rentInfo,
    this.addressInfo,
    this.createdAt,
    this.updatedAt,
    this.propertyDetail,
    this.agreement,
    this.houseType,
    this.category,
    this.landlord,
    this.favorite,
    this.rentDetails,
  });

  factory PropertyModel.fromJson(Map<String, dynamic> json) {
    return PropertyModel(
      id: json["id"],
      categoryId: json["category_id"],
      pUid: json['puid'],
      landlordId: json["landlord_id"],
      houseTypeId: json["house_type_id"],
      // agreementId: json["agreement_id"],
      buildingName: json["building_name"],
      utilityDeposit: json["utility_deposit"],
      securityDeposit: json["security_deposit"],
      rentalDeposit: json["rental_deposit"],
      coverImage: json["cover_image"] == null
          ? []
          : List<DynamicFileType>.from(
              json["cover_image"]!
                  .where((x) => x != null)
                  .map((x) => DynamicFileType(remote: x)),
            ),
      roomInfo: json["room_info"] == null
          ? null
          : RoomInfo.fromJson(json["room_info"]),
      status: json["status"],
      rentInfo: json["rent_info"] == null
          ? null
          : RentInfo.fromJson(json["rent_info"]),
      addressInfo: json["address_info"] == null
          ? null
          : PropertyAddressInfo.fromJson(json["address_info"]),
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
      propertyDetail: json["property_detail"] == null
          ? null
          : PropertyDetail.fromJson(json["property_detail"]),
      agreement: json["agreement"] == null
          ? null
          : Agreement.fromJson(json["agreement"]),
      houseType: json["house_type"] == null
          ? null
          : Category.fromJson(json["house_type"]),
      category:
          json["category"] == null ? null : Category.fromJson(json["category"]),
      landlord:
          json["landlord"] == null ? null : Tenant.fromJson(json["landlord"]),
      favorite: json['favorite'] == null
          ? null
          : FavoriteModel.fromJson(json['favorite']),
      rentDetails:
          json["rent"] == null ? null : RentDetails.fromJson(json["rent"]),
    );
  }

  ({String sizeUnit, num? size}) buildPropertySize(int? categoryId) {
    return switch (categoryId) {
      4 => (sizeUnit: 'acre(s)', size: propertyDetail?.propertyInfo?.landSize),
      3 => (sizeUnit: 'sqft.', size: roomInfo?.unitSize),
      _ => (
          sizeUnit: 'sqft.',
          size: propertyDetail?.propertyInfo?.propertySize
        ),
    };
  }
}

class PropertyAddressInfo {
  String? country;
  String? city;
  String? state;
  String? address;
  String? postcode;

  PropertyAddressInfo({
    this.country,
    this.city,
    this.state,
    this.address,
    this.postcode,
  });

  factory PropertyAddressInfo.fromJson(Map<String, dynamic> json) =>
      PropertyAddressInfo(
        country: json["country"],
        city: json["city"],
        state: json["state"],
        address: json["address"],
        postcode: json["postcode"],
      );

  Map<String, dynamic> toJson() => {
        "country": country,
        "city": city,
        "state": state,
        "address": address,
        "postcode": postcode,
      };
}

class Agreement {
  int? id;
  String? title;

  Agreement({this.id, this.title});

  factory Agreement.fromJson(Map<String, dynamic> json) => Agreement(
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}

class Category {
  int? id;
  String? name;

  Category({
    this.id,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class PropertyDetail {
  int? id;
  int? propertyId;
  String? furnishing;
  List<int>? facilities;
  int? parkingLot;
  List<int>? amenities;
  String? fullName;
  String? phone;
  String? email;
  DynamicFileType? livingImage;
  DynamicFileType? bedroomImage;
  DynamicFileType? kitchenImage;
  DynamicFileType? bathroomImage;
  DynamicFileType? floorplanImage;
  String? residentialType;
  String? propertyType;
  PropertyInfo? propertyInfo;
  List<String>? tenantPreference;
  DateTime? createdAt;
  DateTime? updatedAt;

  PropertyDetail({
    this.id,
    this.propertyId,
    this.furnishing,
    this.facilities,
    this.parkingLot,
    this.amenities,
    this.fullName,
    this.phone,
    this.email,
    this.livingImage,
    this.bedroomImage,
    this.kitchenImage,
    this.bathroomImage,
    this.floorplanImage,
    this.residentialType,
    this.propertyType,
    this.propertyInfo,
    this.tenantPreference,
    this.createdAt,
    this.updatedAt,
  });

  factory PropertyDetail.fromJson(Map<String, dynamic> json) => PropertyDetail(
        id: json["id"],
        propertyId: json["property_id"],
        furnishing: json["furnishing"],
        facilities: json["facilities"] == null
            ? []
            : List<int>.from(json["facilities"]!.map((x) => int.parse(x))),
        parkingLot: json["parking_lot"],
        amenities: json["amenities"] == null
            ? []
            : List<int>.from(json["amenities"]!.map((x) => int.parse(x))),
        fullName: json["full_name"],
        phone: json["phone"],
        email: json["email"],
        livingImage: json["living_image"] == null
            ? null
            : DynamicFileType(remote: json["living_image"]),
        bedroomImage: json["bedroom_image"] == null
            ? null
            : DynamicFileType(remote: json["bedroom_image"]),
        kitchenImage: json["kitchen_image"] == null
            ? null
            : DynamicFileType(remote: json["kitchen_image"]),
        bathroomImage: json["bathroom_image"] == null
            ? null
            : DynamicFileType(remote: json["bathroom_image"]),
        floorplanImage: json["floorplan_image"] == null
            ? null
            : DynamicFileType(remote: json["floorplan_image"]),
        residentialType: json["residential_type"],
        propertyType: json["property_type"],
        propertyInfo: json["property_info"] == null
            ? null
            : PropertyInfo.fromJson(json["property_info"]),
        tenantPreference: json["tenant_preference"] == null
            ? []
            : List<String>.from(json["tenant_preference"]!.map((x) => x)),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "property_id": propertyId,
        "furnishing": furnishing,
        "facilities": facilities == null
            ? []
            : List<dynamic>.from(facilities!.map((x) => x)),
        "parking_lot": parkingLot,
        "amenities": amenities == null
            ? []
            : List<dynamic>.from(amenities!.map((x) => x)),
        "full_name": fullName,
        "phone": phone,
        "email": email,
        "living_image": livingImage,
        "bedroom_image": bedroomImage,
        "kitchen_image": kitchenImage,
        "bathroom_image": bathroomImage,
        "floorplan_image": floorplanImage,
        "residential_type": residentialType,
        "property_type": propertyType,
        "property_info": propertyInfo?.toJson(),
        "tenant_preference": tenantPreference == null
            ? []
            : List<dynamic>.from(tenantPreference!.map((x) => x)),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class PropertyInfo {
  String? propertyDescription;
  String? propertyTitle;
  num? landSize;
  String? unitNumber;
  num? propertySize;
  String? lotNumber;

  PropertyInfo({
    this.propertyDescription,
    this.propertyTitle,
    this.landSize,
    this.unitNumber,
    this.propertySize,
    this.lotNumber,
  });

  factory PropertyInfo.fromJson(Map<String, dynamic> json) {
    return PropertyInfo(
      propertyDescription: json["property_description"],
      propertyTitle: json["property_title"],
      landSize:
          json["land_size"] == null ? null : num.tryParse(json["land_size"]),
      unitNumber: json["unit_number"],
      propertySize: json["property_size"] == null
          ? null
          : num.tryParse(json["property_size"]),
      lotNumber: json["lot_number"],
    );
  }

  Map<String, dynamic> toJson() => {
        "property_description": propertyDescription,
        "property_title": propertyTitle,
        "land_size": landSize,
        "unit_number": unitNumber,
        "property_size": propertySize,
        "lot_number": lotNumber,
      };
}

class RentInfo {
  num? propertyRent;
  num? monthlyRent;
  String? rentalPeriod;
  String? completionYear;

  RentInfo({
    this.propertyRent,
    this.monthlyRent,
    this.rentalPeriod,
    this.completionYear,
  });

  factory RentInfo.fromJson(Map<String, dynamic> json) => RentInfo(
        propertyRent: json["property_rent"] == null
            ? null
            : num.tryParse(json["property_rent"]),
        monthlyRent: json["monthly_rent"] == null
            ? null
            : num.tryParse(json["monthly_rent"]),
        rentalPeriod: json["rental_period"],
        completionYear: json["completion_year"],
      );

  Map<String, dynamic> toJson() => {
        "property_rent": propertyRent,
        "monthly_rent": monthlyRent,
        "rental_period": rentalPeriod,
        "completion_year": completionYear,
      };
}

class RoomInfo {
  int? bedroom;
  int? bathroom;
  num? roomSize;
  num? unitSize;
  String? floorRang;

  RoomInfo({
    this.bedroom,
    this.bathroom,
    this.roomSize,
    this.unitSize,
    this.floorRang,
  });

  factory RoomInfo.fromJson(Map<String, dynamic> json) => RoomInfo(
        bedroom: json["bedroom"] == null ? null : int.tryParse(json["bedroom"]),
        bathroom:
            json["bathroom"] == null ? null : int.tryParse(json["bathroom"]),
        roomSize:
            json["room_size"] == null ? null : num.tryParse(json["room_size"]),
        unitSize:
            json["unit_size"] == null ? null : num.tryParse(json["unit_size"]),
        floorRang: json["floor_rang"],
      );

  Map<String, dynamic> toJson() => {
        "bedroom": bedroom,
        "bathroom": bathroom,
        "room_size": roomSize,
        "unit_size": unitSize,
        "floor_rang": floorRang,
      };
}
//-------------------------Single Property-------------------------//

//-------------------------Property Details-------------------------//
class PropertyDetailsResponseModel {
  String? message;
  PropertyDetailsModel? data;

  PropertyDetailsResponseModel({
    this.message,
    this.data,
  });

  factory PropertyDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    return PropertyDetailsResponseModel(
      message: json["message"],
      data: json["data"] == null
          ? null
          : PropertyDetailsModel.fromJson(json["data"]),
    );
  }
}

class PropertyDetailsModel {
  PropertyModel? property;
  List<Review>? reviews;
  Ratings? ratings;
  bool canReview;

  PropertyDetailsModel({
    this.property,
    this.reviews,
    this.ratings,
    this.canReview = false,
  });

  factory PropertyDetailsModel.fromJson(Map<String, dynamic> json) =>
      PropertyDetailsModel(
        property: json["property"] == null
            ? null
            : PropertyModel.fromJson(json["property"]),
        reviews: json["reviews"] == null
            ? []
            : List<Review>.from(
                json["reviews"]!.map((x) => Review.fromJson(x))),
        ratings:
            json["ratings"] == null ? null : Ratings.fromJson(json["ratings"]),
        canReview: json['can_review'] ?? false,
      );
}

class Review {
  int? id;
  int? propertyId;
  int? tenantId;
  num? review;
  String? comment;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  ReviewTenant? tenant;

  Review({
    this.id,
    this.propertyId,
    this.tenantId,
    this.review,
    this.comment,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.tenant,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["id"],
        propertyId: json["property_id"],
        tenantId: json["tenant_id"],
        review: json["review"],
        comment: json["comment"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        tenant: json["tenant"] == null
            ? null
            : ReviewTenant.fromJson(json["tenant"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "property_id": propertyId,
        "tenant_id": tenantId,
        "review": review,
        "comment": comment,
        "status": status,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "tenant": tenant?.toJson(),
      };
}

class ReviewTenant {
  int? id;
  String? name;
  String? image;

  ReviewTenant({
    this.id,
    this.name,
    this.image,
  });

  factory ReviewTenant.fromJson(Map<String, dynamic> json) => ReviewTenant(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
      };
}

class Ratings {
  int? total;
  num? average;

  Ratings({
    this.total,
    this.average,
  });

  factory Ratings.fromJson(Map<String, dynamic> json) => Ratings(
        total: json["total"],
        average: json["average"] == null
            ? null
            : num.tryParse(json["average"]?.toStringAsFixed(2) ?? "0"),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "average": average,
      };
}

//-------------------------Property Details-------------------------//

//-------------------------Favorite List-------------------------//
class FavoriteModel {
  int? id;
  int? propertyId;
  int? tenantId;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  PropertyModel? property;

  FavoriteModel({
    this.id,
    this.propertyId,
    this.tenantId,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.property,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) => FavoriteModel(
        id: json["id"],
        propertyId: json["property_id"],
        tenantId: json["tenant_id"],
        status: json["status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        property: json["property"] == null
            ? null
            : PropertyModel.fromJson(json["property"]),
      );
}
//-------------------------Favorite List-------------------------//
