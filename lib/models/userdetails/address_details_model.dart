class AddressDetailsModel {
  String? address;
  String? city;
  String? state;
  String? stateCode;
  String? postalCode;
  String? country;

  AddressDetailsModel(
      {this.address,
        this.city,
        this.state,
        this.stateCode,
        this.postalCode,
        this.country});

  AddressDetailsModel.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    city = json['city'];
    state = json['state'];
    stateCode = json['stateCode'];
    postalCode = json['postalCode'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['stateCode'] = this.stateCode;
    data['postalCode'] = this.postalCode;
    data['country'] = this.country;
    return data;
  }
}