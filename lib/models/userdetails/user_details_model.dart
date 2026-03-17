import 'package:bloc_demo/models/userdetails/address_details_model.dart';
import 'package:bloc_demo/models/userdetails/bank_details_model.dart';
import 'package:bloc_demo/models/userdetails/company_details_model.dart';

class UserDetailsModel {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  double? height;
  double? weight;
  String? eyeColor;
  String? ip;
  AddressDetailsModel? address;
  String? macAddress;
  String? university;
  BankDetailsModel? bank;
  CompanyDetailsModel? company;
  String? ein;
  String? ssn;
  String? userAgent;
  String? role;

  UserDetailsModel({
    this.id,
    this.firstName,
    this.lastName,
    this.maidenName,
    this.age,
    this.gender,
    this.email,
    this.phone,
    this.username,
    this.password,
    this.birthDate,
    this.image,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.ip,
    this.address,
    this.macAddress,
    this.university,
    this.bank,
    this.company,
    this.ein,
    this.ssn,
    this.userAgent,
    this.role,
  });

  UserDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    maidenName = json['maidenName'];
    age = json['age'];
    gender = json['gender'];
    email = json['email'];
    phone = json['phone'];
    username = json['username'];
    password = json['password'];
    birthDate = json['birthDate'];
    image = json['image'];
    bloodGroup = json['bloodGroup'];
    height = json['height'];
    weight = json['weight'];
    eyeColor = json['eyeColor'];
    ip = json['ip'];
    address = json['address'] != null
        ? new AddressDetailsModel.fromJson(json['address'])
        : null;
    macAddress = json['macAddress'];
    university = json['university'];
    bank = json['bank'] != null
        ? new BankDetailsModel.fromJson(json['bank'])
        : null;
    company = json['company'] != null
        ? new CompanyDetailsModel.fromJson(json['company'])
        : null;
    ein = json['ein'];
    ssn = json['ssn'];
    userAgent = json['userAgent'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['maidenName'] = this.maidenName;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['username'] = this.username;
    data['password'] = this.password;
    data['birthDate'] = this.birthDate;
    data['image'] = this.image;
    data['bloodGroup'] = this.bloodGroup;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['eyeColor'] = this.eyeColor;
    data['ip'] = this.ip;
    if (this.address != null) {
      data['address'] = this.address?.toJson();
    }
    data['macAddress'] = this.macAddress;
    data['university'] = this.university;
    if (this.bank != null) {
      data['bank'] = this.bank?.toJson();
    }
    if (this.company != null) {
      data['company'] = this.company?.toJson();
    }
    data['ein'] = this.ein;
    data['ssn'] = this.ssn;
    data['userAgent'] = this.userAgent;
    data['role'] = this.role;
    return data;
  }
}
