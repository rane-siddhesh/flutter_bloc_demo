import 'package:bloc_demo/models/userdetails/address_details_model.dart';

class CompanyDetailsModel {
  String? department;
  String? name;
  String? title;
  AddressDetailsModel? address;

  CompanyDetailsModel({this.department, this.name, this.title, this.address});

  CompanyDetailsModel.fromJson(Map<String, dynamic> json) {
    department = json['department'];
    name = json['name'];
    title = json['title'];
    address =
    json['address'] != null ? new AddressDetailsModel.fromJson(json['address']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['department'] = this.department;
    data['name'] = this.name;
    data['title'] = this.title;
    if (this.address != null) {
      data['address'] = this.address?.toJson();
    }
    return data;
  }
}