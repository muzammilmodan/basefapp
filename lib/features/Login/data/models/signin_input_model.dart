class SigninInputModel {
  String? UserName;
  String? Password;
  String? DeviceInfo;
  String? notificationToken;
  String? mobileDeviceId;
  String? LoginDateTime;

  SigninInputModel({
    this.UserName,
    this.Password,
    this.DeviceInfo,
    this.notificationToken,
    this.mobileDeviceId,this.LoginDateTime,
  });

  SigninInputModel.fromJson(Map<String, dynamic> json) {
    DeviceInfo = json["DeviceInfo"];
    UserName = json["UserName"];
    Password = json["Password"];
    notificationToken = json["NotificationToken"];
    mobileDeviceId  = json["DeviceID"];
    LoginDateTime  = json["LoginDateTime"];
  }

  Map<String, dynamic> toJson() => {
    "UserName": UserName,
    "Password": Password,
    "DeviceInfo": DeviceInfo,
    "NotificationToken": notificationToken,
    "DeviceID": mobileDeviceId ,
    "LoginDateTime": LoginDateTime ,
  };
}