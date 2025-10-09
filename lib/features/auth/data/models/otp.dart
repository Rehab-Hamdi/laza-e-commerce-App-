class OtpModel {
  String? email;
  String? otp;

  OtpModel({this.email, this.otp});

  OtpModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    otp = json['otp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['email'] = email;
    data['otp'] = otp;
    return data;
  }
}
