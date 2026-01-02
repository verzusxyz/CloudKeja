import 'package:equatable/equatable.dart';

import '../../../core/core.dart' show DynamicFileType, TenantProfileType;
import '../admin/models.dart' show SubscriptionPlan;

export '_signin_model.dart';
export '_submit_otp_model.dart';

class UserModel {
  String? message;
  User? data;

  UserModel({
    this.message,
    this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        message: json["message"],
        data: json["data"] == null ? null : User.fromJson(json["data"]),
      );
}

class User extends Equatable {
  final int? id;
  final String? name;
  final String? role;
  final String? email;
  final DynamicFileType? image;
  final Phone? phone;
  final int? isSetupped;
  final num? balance;
  final TenantProfileType? profileType;
  final DateTime? emailVerifiedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final UserDetails? userDetails;
  final SubscriptionPlan? subscriptionPlan;
  final DateTime? willExpireAt;

  bool get isPlanExpired {
    final _now = DateTime.now();
    final _realNow = DateTime(_now.year, _now.month, _now.day);

    if (willExpireAt != null) {
      return _realNow.isAfter(willExpireAt!);
    }

    return true;
  }

  const User({
    this.id,
    this.name,
    this.role,
    this.email,
    this.image,
    this.phone,
    this.isSetupped,
    this.balance,
    this.profileType,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.userDetails,
    this.subscriptionPlan,
    this.willExpireAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"],
      role: json["role"],
      email: json["email"],
      image:
          json['image'] != null ? DynamicFileType(remote: json['image']) : null,
      phone: json["phone"] == null ? null : Phone.fromJson(json["phone"]),
      isSetupped: json["is_setupped"],
      balance: json["balance"],
      profileType: TenantProfileType.fromString(json["profile_type"]),
      emailVerifiedAt: json["email_verified_at"] == null
          ? null
          : DateTime.parse(json["email_verified_at"]),
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
      userDetails: json["user_details"] == null
          ? null
          : UserDetails.fromJson(json["user_details"]),
      subscriptionPlan: json["plan_subscribe"]?["plan"] == null
          ? null
          : SubscriptionPlan.fromJson(json["plan_subscribe"]?["plan"]),
      willExpireAt: json["will_expire"] == null
          ? null
          : DateTime.parse(json["will_expire"]),
    );
  }

  Map<String, dynamic> toRequest() {
    return {
      "profile_type": profileType?.name,
      "name": name,
      "email": email,
      "image": image?.local,
      "phone[mobile_code]": phone?.mobileCode,
      "phone[mobile_no]": phone?.mobileNo,
      "gender": userDetails?.gender,
      if (userDetails?.birthDate != null)
        "birth_date":
            "${userDetails!.birthDate!.year.toString().padLeft(4, '0')}-${userDetails!.birthDate!.month.toString().padLeft(2, '0')}-${userDetails!.birthDate!.day.toString().padLeft(2, '0')}",

      // Mykad
      "mykad_id": userDetails?.mykadId,
      "mykad[front_image]": userDetails?.mykad?.frontImage.local,
      "mykad[back_image]": userDetails?.mykad?.backImage.local,

      // Address
      "address_info[address_one]": userDetails?.addressInfo?.addressOne,
      "address_info[address_two]": userDetails?.addressInfo?.addressTwo,
      "address_info[postal_code]": userDetails?.addressInfo?.postalCode,
      "address_info[city]": userDetails?.addressInfo?.city,
      "address_info[state]": userDetails?.addressInfo?.state,
      "address_info[country]": userDetails?.addressInfo?.country,

      // Nominee Info
      "nominee_info[name]": userDetails?.nomineeInfo?.name,
      "nominee_info[email]": userDetails?.nomineeInfo?.email,
      "nominee_info[mobile_code]": userDetails?.nomineeInfo?.phone?.mobileCode,
      "nominee_info[mobile_no]": userDetails?.nomineeInfo?.phone?.mobileNo,

      // Emergency Contact
      "emergency_contact[relation_with]":
          userDetails?.emergencyContact?.relationWith,
      "emergency_contact[name]": userDetails?.emergencyContact?.name,
      "emergency_contact[mobile_no]":
          userDetails?.emergencyContact?.phone?.mobileNo,
      "emergency_contact[mobile_code]":
          userDetails?.emergencyContact?.phone?.mobileCode,

      // Company info
      "company_info[company_name]": userDetails?.companyInfo?.companyName,
      "company_info[company_ssm_no]": userDetails?.companyInfo?.companySsmNo,

      // Workplace
      "workplace[company_name]": userDetails?.workplace?.companyName,
      "workplace[address_one]": userDetails?.workplace?.addressOne,
      "workplace[address_two]": userDetails?.workplace?.addressTwo,
      "workplace[postal_code]": userDetails?.workplace?.postalCode,
      "workplace[city]": userDetails?.workplace?.city,
      "workplace[state]": userDetails?.workplace?.state,
      "workplace[country]": userDetails?.workplace?.country,
      "workplace[office_phone]": userDetails?.workplace?.officePhone,
      "workplace[mobile_code]": userDetails?.workplace?.phone?.mobileCode,
      "workplace[mobile_no]": userDetails?.workplace?.phone?.mobileNo,
      "workplace[email]": userDetails?.workplace?.email,

      // Vehicles Info
      if (userDetails?.vehiclesInfo?.isNotEmpty == true)
        for (int i = 0; i < (userDetails?.vehiclesInfo?.length ?? 0); i++) ...{
          "vehicles_info[$i][type]": userDetails?.vehiclesInfo?[i].type,
          "vehicles_info[$i][reg_no]": userDetails?.vehiclesInfo?[i].regNo,
          "vehicles_info[$i][brand]": userDetails?.vehiclesInfo?[i].brand,
        }
    };
  }

  @override
  List<Object?> get props => [id, name, role];
}

class Phone {
  String? mobileNo;
  String? mobileCode;

  Phone({
    this.mobileNo,
    this.mobileCode,
  });

  Phone copyWith({
    String? mobileNo,
    String? mobileCode,
  }) =>
      Phone(
        mobileNo: mobileNo ?? this.mobileNo,
        mobileCode: mobileCode ?? this.mobileCode,
      );

  factory Phone.fromJson(Map<String, dynamic> json) => Phone(
        mobileNo: json["mobile_no"],
        mobileCode: json["mobile_code"],
      );

  Map<String, dynamic> toJson() => {
        "mobile_no": mobileNo,
        "mobile_code": mobileCode,
      };

  String? get buildPhone {
    if (mobileCode == null && mobileNo == null) return null;

    return "${mobileCode ?? ''}${mobileNo ?? ''}";
  }
}

class UserDetails {
  int? id;
  int? userId;
  Mykad? mykad;
  String? gender;
  DateTime? birthDate;
  String? mykadId;
  String? lang;
  CompanyInfo? companyInfo;
  AddressInfo? addressInfo;
  EmergencyContact? nomineeInfo;
  EmergencyContact? emergencyContact;
  Workplace? workplace;
  List<VehiclesInfo>? vehiclesInfo;
  DateTime? createdAt;
  DateTime? updatedAt;

  UserDetails({
    this.id,
    this.userId,
    this.mykad,
    this.gender,
    this.birthDate,
    this.mykadId,
    this.lang,
    this.companyInfo,
    this.addressInfo,
    this.nomineeInfo,
    this.emergencyContact,
    this.workplace,
    this.vehiclesInfo,
    this.createdAt,
    this.updatedAt,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      id: json["id"],
      userId: json["user_id"],
      mykad: json["mykad"] == null ? null : Mykad.fromJson(json["mykad"]),
      gender: json["gender"],
      birthDate: json["birth_date"] == null
          ? null
          : DateTime.parse(json["birth_date"]),
      mykadId: json["mykad_id"],
      lang: json["lang"],
      companyInfo: json["company_info"] == null
          ? null
          : CompanyInfo.fromJson(json["company_info"]),
      addressInfo: json["address_info"] == null
          ? null
          : AddressInfo.fromJson(json["address_info"]),
      nomineeInfo: json["nominee_info"] == null
          ? null
          : EmergencyContact.fromJson(json["nominee_info"]),
      emergencyContact: json["emergency_contact"] == null
          ? null
          : EmergencyContact.fromJson(json["emergency_contact"]),
      workplace: json["workplace"] == null
          ? null
          : Workplace.fromJson(json["workplace"]),
      vehiclesInfo: json["vehicles_info"] == null
          ? []
          : List<VehiclesInfo>.from(
              json["vehicles_info"]!.map((x) => VehiclesInfo.fromJson(x))),
      createdAt: json["created_at"] == null
          ? null
          : DateTime.parse(json["created_at"]),
      updatedAt: json["updated_at"] == null
          ? null
          : DateTime.parse(json["updated_at"]),
    );
  }
}

class AddressInfo {
  String? addressOne;
  String? addressTwo;
  String? postalCode;
  String? city;
  String? state;
  String? country;

  AddressInfo({
    this.addressOne,
    this.addressTwo,
    this.postalCode,
    this.city,
    this.state,
    this.country,
  });

  factory AddressInfo.fromJson(Map<String, dynamic> json) => AddressInfo(
        addressOne: json["address_one"],
        addressTwo: json["address_two"],
        postalCode: json["postal_code"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
      );
}

class CompanyInfo {
  String? companyName;
  String? companySsmNo;

  CompanyInfo({
    this.companyName,
    this.companySsmNo,
  });

  factory CompanyInfo.fromJson(Map<String, dynamic> json) => CompanyInfo(
        companyName: json["company_name"],
        companySsmNo: json["company_ssm_no"],
      );
}

class EmergencyContact {
  String? relationWith;
  String? name;
  String? email;
  Phone? phone;

  EmergencyContact({
    this.relationWith,
    this.name,
    this.email,
    this.phone,
  });

  factory EmergencyContact.fromJson(Map<String, dynamic> json) {
    return EmergencyContact(
      relationWith: json["relation_with"],
      name: json["name"],
      email: json["email"],
      phone: [json["mobile_code"], json["mobile_no"]]
              .any((element) => element != null)
          ? Phone(
              mobileCode: json["mobile_code"],
              mobileNo: json["mobile_no"],
            )
          : null,
    );
  }
}

class Mykad {
  DynamicFileType frontImage;
  DynamicFileType backImage;

  Mykad({required this.frontImage, required this.backImage});

  Mykad copyWith({
    DynamicFileType? frontImage,
    DynamicFileType? backImage,
  }) {
    return Mykad(
      frontImage: frontImage ?? this.frontImage,
      backImage: backImage ?? this.backImage,
    );
  }

  factory Mykad.fromJson(Map<String, dynamic> json) {
    return Mykad(
      frontImage: DynamicFileType(remote: json["front_image"]),
      backImage: DynamicFileType(remote: json["back_image"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "front_image": frontImage.remote,
      "back_image": backImage.remote,
    };
  }
}

class VehiclesInfo {
  String? type;
  String? regNo;
  String? brand;

  VehiclesInfo({
    this.type,
    this.regNo,
    this.brand,
  });

  factory VehiclesInfo.fromJson(Map<String, dynamic> json) => VehiclesInfo(
        type: json["type"],
        regNo: json["reg_no"],
        brand: json["brand"],
      );
}

class Workplace {
  String? companyName;
  String? addressOne;
  String? addressTwo;
  String? postalCode;
  String? city;
  String? state;
  String? country;
  String? officePhone;
  String? email;
  Phone? phone;

  Workplace({
    this.companyName,
    this.addressOne,
    this.addressTwo,
    this.postalCode,
    this.city,
    this.state,
    this.country,
    this.officePhone,
    this.email,
    this.phone,
  });

  factory Workplace.fromJson(Map<String, dynamic> json) {
    return Workplace(
      companyName: json["company_name"],
      addressOne: json["address_one"],
      addressTwo: json["address_two"],
      postalCode: json["postal_code"],
      city: json["city"],
      state: json["state"],
      country: json["country"],
      officePhone: json["office_phone"],
      email: json["email"],
      phone: [json["mobile_code"], json["mobile_no"]]
              .any((element) => element != null)
          ? Phone(
              mobileCode: json["mobile_code"],
              mobileNo: json["mobile_no"],
            )
          : null,
    );
  }
}
