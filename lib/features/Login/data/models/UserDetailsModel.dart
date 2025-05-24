class UsersModel {
  String? subscriber;
  String? userType;
  String? surname;
  String? forenames;
  dynamic addressHouseName;
  String? address1;
  dynamic address2;
  dynamic address3;
  String? addressTown;
  String? addressCounty;
  String? addressPostCode;
  double? lat;
  double? long;
  String? mobile;
  String? telephone;
  String? email;
  Parameter? parameter;
  int? userDetailsID;
  int? subscriberID;
  dynamic branchID;
  dynamic clientID;
  dynamic clientCategoryID;
  dynamic roleID;
  int? userTypeID;
  String? userName;
  dynamic eMailAddress;
  dynamic fullName;
  dynamic password;
  dynamic passwordQuestion;
  dynamic mainContactNumber;
  dynamic comment;
  dynamic oTP;
  dynamic oTPSaveDate;
  dynamic oTPSaveTime;
  bool? oTPRememberMeYN;
  int? oTPRememberDays;
  dynamic lastLoginDate;
  dynamic lastActivityDate;
  dynamic lastPasswordChangedDate;
  dynamic lastLockedOutDate;
  bool? approvedYN;
  bool? detailTimelineYN;
  bool? inActiveYN;
  bool? loggedInYN;
  dynamic logOutYN;
  bool? lockedOutYN;
  bool? missionMemberYN;
  bool? mustChangePasswordYN;
  bool? newTabHyperLinkYN;
  bool? providerYN;
  bool? freezeHorizontalScrollYN;
  int? failedPasswordAttemptCount;
  int? failedPasswordAnswerAttemptCount;
  String? failedPasswordAttemptWindowStart;
  String? failedPasswordAnswerAttemptWindowStart;
  bool? sendSMSYN;
  bool? sessionTimeoutYN;
  bool? showProviderNoteAlertYN;
  bool? selfServiceClientYN;
  bool? subGridVisibleYN;
  bool? multipleTabsOpenAfterLoginYN;
  int? sessionTimeOut;
  dynamic tabsInfo;
  dynamic tabsInfo1;
  dynamic pageURL;
  dynamic pageName;
  dynamic providerPageURL;
  dynamic providerPageName;
  dynamic providerTabsInfo;
  dynamic providerTabsInfo1;
  String? notificationToken;
  dynamic deviceInfo;
  String? deviceID;
  dynamic columnPosition;
  dynamic timelineTabsInfo;
  dynamic sessionID;
  dynamic salesCode;
  String? createdDate;
  String? createdTime;
  int? createdBy;
  String? changedDate;
  String? changedTime;
  int? changedBy;
  dynamic authToken;
  int? passengerID;
  int? driverID;

  UsersModel({
    this.subscriber,
    this.userType,
    this.surname,
    this.forenames,
    this.addressHouseName,
    this.address1,
    this.address2,
    this.address3,
    this.addressTown,
    this.addressCounty,
    this.addressPostCode,
    this.lat,
    this.long,
    this.mobile,
    this.telephone,
    this.email,
    this.parameter,
    this.userDetailsID,
    this.subscriberID,
    this.branchID,
    this.clientID,
    this.clientCategoryID,
    this.roleID,
    this.userTypeID,
    this.userName,
    this.eMailAddress,
    this.fullName,
    this.password,
    this.passwordQuestion,
    this.mainContactNumber,
    this.comment,
    this.oTP,
    this.oTPSaveDate,
    this.oTPSaveTime,
    this.oTPRememberMeYN,
    this.oTPRememberDays,
    this.lastLoginDate,
    this.lastActivityDate,
    this.lastPasswordChangedDate,
    this.lastLockedOutDate,
    this.approvedYN,
    this.detailTimelineYN,
    this.inActiveYN,
    this.loggedInYN,
    this.logOutYN,
    this.lockedOutYN,
    this.missionMemberYN,
    this.mustChangePasswordYN,
    this.newTabHyperLinkYN,
    this.providerYN,
    this.freezeHorizontalScrollYN,
    this.failedPasswordAttemptCount,
    this.failedPasswordAnswerAttemptCount,
    this.failedPasswordAttemptWindowStart,
    this.failedPasswordAnswerAttemptWindowStart,
    this.sendSMSYN,
    this.sessionTimeoutYN,
    this.showProviderNoteAlertYN,
    this.selfServiceClientYN,
    this.subGridVisibleYN,
    this.multipleTabsOpenAfterLoginYN,
    this.sessionTimeOut,
    this.tabsInfo,
    this.tabsInfo1,
    this.pageURL,
    this.pageName,
    this.providerPageURL,
    this.providerPageName,
    this.providerTabsInfo,
    this.providerTabsInfo1,
    this.notificationToken,
    this.deviceInfo,
    this.deviceID,
    this.columnPosition,
    this.timelineTabsInfo,
    this.sessionID,
    this.salesCode,
    this.createdDate,
    this.createdTime,
    this.createdBy,
    this.changedDate,
    this.changedTime,
    this.changedBy,
    this.authToken,
    this.passengerID,
    this.driverID,
  });

  UsersModel.fromJson(Map<String, dynamic> json) {
    subscriber = json['Subscriber'];
    userType = json['UserType'];
    surname = json['Surname'];
    forenames = json['Forenames'];
    addressHouseName = json['AddressHouseName'];
    address1 = json['Address1'];
    address2 = json['Address2'];
    address3 = json['Address3'];
    addressTown = json['AddressTown'];
    addressCounty = json['AddressCounty'];
    addressPostCode = json['AddressPostCode'];
    lat = json['Lat'];
    long = json['Long'];
    mobile = json['Mobile'];
    telephone = json['Telephone'];
    email = json['Email'];
    parameter = json['Parameter'] != null
        ? new Parameter.fromJson(json['Parameter'])
        : null;
    userDetailsID = json['UserDetailID'];
    subscriberID = json['SubscriberID'];
    branchID = json['BranchID'];
    clientID = json['ClientID'];
    clientCategoryID = json['ClientCategoryID'];
    roleID = json['RoleID'];
    userTypeID = json['UserTypeID'];
    userName = json['UserName'];
    eMailAddress = json['EMailAddress'];
    fullName = json['FullName'];
    password = json['Password'];
    passwordQuestion = json['PasswordQuestion'];
    mainContactNumber = json['MainContactNumber'];
    comment = json['Comment'];
    oTP = json['OTP'];
    oTPSaveDate = json['OTPSaveDate'];
    oTPSaveTime = json['OTPSaveTime'];
    oTPRememberMeYN = json['OTPRememberMeYN'];
    oTPRememberDays = json['OTPRememberDays'];
    lastLoginDate = json['LastLoginDate'];
    lastActivityDate = json['LastActivityDate'];
    lastPasswordChangedDate = json['LastPasswordChangedDate'];
    lastLockedOutDate = json['LastLockedOutDate'];
    approvedYN = json['ApprovedYN'];
    detailTimelineYN = json['DetailTimelineYN'];
    inActiveYN = json['InActiveYN'];
    loggedInYN = json['LoggedInYN'];
    logOutYN = json['LogOutYN'];
    lockedOutYN = json['LockedOutYN'];
    missionMemberYN = json['MissionMemberYN'];
    mustChangePasswordYN = json['MustChangePasswordYN'];
    newTabHyperLinkYN = json['NewTabHyperLinkYN'];
    providerYN = json['ProviderYN'];
    freezeHorizontalScrollYN = json['FreezeHorizontalScrollYN'];
    failedPasswordAttemptCount = json['FailedPasswordAttemptCount'];
    failedPasswordAnswerAttemptCount = json['FailedPasswordAnswerAttemptCount'];
    failedPasswordAttemptWindowStart = json['FailedPasswordAttemptWindowStart'];
    failedPasswordAnswerAttemptWindowStart =
        json['FailedPasswordAnswerAttemptWindowStart'];
    sendSMSYN = json['SendSMSYN'];
    sessionTimeoutYN = json['SessionTimeoutYN'];
    showProviderNoteAlertYN = json['ShowProviderNoteAlertYN'];
    selfServiceClientYN = json['SelfServiceClientYN'];
    subGridVisibleYN = json['SubGridVisibleYN'];
    multipleTabsOpenAfterLoginYN = json['MultipleTabsOpenAfterLoginYN'];
    sessionTimeOut = json['SessionTimeOut'];
    tabsInfo = json['TabsInfo'];
    tabsInfo1 = json['TabsInfo1'];
    pageURL = json['PageURL'];
    pageName = json['PageName'];
    providerPageURL = json['ProviderPageURL'];
    providerPageName = json['ProviderPageName'];
    providerTabsInfo = json['ProviderTabsInfo'];
    providerTabsInfo1 = json['ProviderTabsInfo1'];
    notificationToken = json['NotificationToken'];
    deviceInfo = json['DeviceInfo'];
    deviceID = json['DeviceID'];
    columnPosition = json['ColumnPosition'];
    timelineTabsInfo = json['TimelineTabsInfo'];
    sessionID = json['SessionID'];
    salesCode = json['SalesCode'];
    createdDate = json['CreatedDate'];
    createdTime = json['CreatedTime'];
    createdBy = json['CreatedBy'];
    changedDate = json['ChangedDate'];
    changedTime = json['ChangedTime'];
    changedBy = json['ChangedBy'];
    authToken = json['AuthToken'];
    driverID = json['DriverID'];
    passengerID = json['PassengerID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Subscriber'] = this.subscriber;
    data['UserType'] = this.userType;
    data['Surname'] = this.surname;
    data['Forenames'] = this.forenames;
    data['AddressHouseName'] = this.addressHouseName;
    data['Address1'] = this.address1;
    data['Address2'] = this.address2;
    data['Address3'] = this.address3;
    data['AddressTown'] = this.addressTown;
    data['AddressCounty'] = this.addressCounty;
    data['AddressPostCode'] = this.addressPostCode;
    data['Lat'] = this.lat;
    data['Long'] = this.long;
    data['Mobile'] = this.mobile;
    data['Telephone'] = this.telephone;
    data['Email'] = this.email;
    if (this.parameter != null) {
      data['Parameter'] = this.parameter!.toJson();
    }
    data['UserDetailID'] = this.userDetailsID;
    data['SubscriberID'] = this.subscriberID;
    data['BranchID'] = this.branchID;
    data['ClientID'] = this.clientID;
    data['ClientCategoryID'] = this.clientCategoryID;
    data['RoleID'] = this.roleID;
    data['UserTypeID'] = this.userTypeID;
    data['UserName'] = this.userName;
    data['EMailAddress'] = this.eMailAddress;
    data['FullName'] = this.fullName;
    data['Password'] = this.password;
    data['PasswordQuestion'] = this.passwordQuestion;
    data['MainContactNumber'] = this.mainContactNumber;
    data['Comment'] = this.comment;
    data['OTP'] = this.oTP;
    data['OTPSaveDate'] = this.oTPSaveDate;
    data['OTPSaveTime'] = this.oTPSaveTime;
    data['OTPRememberMeYN'] = this.oTPRememberMeYN;
    data['OTPRememberDays'] = this.oTPRememberDays;
    data['LastLoginDate'] = this.lastLoginDate;
    data['LastActivityDate'] = this.lastActivityDate;
    data['LastPasswordChangedDate'] = this.lastPasswordChangedDate;
    data['LastLockedOutDate'] = this.lastLockedOutDate;
    data['ApprovedYN'] = this.approvedYN;
    data['DetailTimelineYN'] = this.detailTimelineYN;
    data['InActiveYN'] = this.inActiveYN;
    data['LoggedInYN'] = this.loggedInYN;
    data['LogOutYN'] = this.logOutYN;
    data['LockedOutYN'] = this.lockedOutYN;
    data['MissionMemberYN'] = this.missionMemberYN;
    data['MustChangePasswordYN'] = this.mustChangePasswordYN;
    data['NewTabHyperLinkYN'] = this.newTabHyperLinkYN;
    data['ProviderYN'] = this.providerYN;
    data['FreezeHorizontalScrollYN'] = this.freezeHorizontalScrollYN;
    data['FailedPasswordAttemptCount'] = this.failedPasswordAttemptCount;
    data['FailedPasswordAnswerAttemptCount'] =
        this.failedPasswordAnswerAttemptCount;
    data['FailedPasswordAttemptWindowStart'] =
        this.failedPasswordAttemptWindowStart;
    data['FailedPasswordAnswerAttemptWindowStart'] =
        this.failedPasswordAnswerAttemptWindowStart;
    data['SendSMSYN'] = this.sendSMSYN;
    data['SessionTimeoutYN'] = this.sessionTimeoutYN;
    data['ShowProviderNoteAlertYN'] = this.showProviderNoteAlertYN;
    data['SelfServiceClientYN'] = this.selfServiceClientYN;
    data['SubGridVisibleYN'] = this.subGridVisibleYN;
    data['MultipleTabsOpenAfterLoginYN'] = this.multipleTabsOpenAfterLoginYN;
    data['SessionTimeOut'] = this.sessionTimeOut;
    data['TabsInfo'] = this.tabsInfo;
    data['TabsInfo1'] = this.tabsInfo1;
    data['PageURL'] = this.pageURL;
    data['PageName'] = this.pageName;
    data['ProviderPageURL'] = this.providerPageURL;
    data['ProviderPageName'] = this.providerPageName;
    data['ProviderTabsInfo'] = this.providerTabsInfo;
    data['ProviderTabsInfo1'] = this.providerTabsInfo1;
    data['NotificationToken'] = this.notificationToken;
    data['DeviceInfo'] = this.deviceInfo;
    data['DeviceID'] = this.deviceID;
    data['ColumnPosition'] = this.columnPosition;
    data['TimelineTabsInfo'] = this.timelineTabsInfo;
    data['SessionID'] = this.sessionID;
    data['SalesCode'] = this.salesCode;
    data['CreatedDate'] = this.createdDate;
    data['CreatedTime'] = this.createdTime;
    data['CreatedBy'] = this.createdBy;
    data['ChangedDate'] = this.changedDate;
    data['ChangedTime'] = this.changedTime;
    data['ChangedBy'] = this.changedBy;
    data['AuthToken'] = this.authToken;
    data['DriverID'] = this.driverID;
    data['PassengerID'] = this.passengerID;
    return data;
  }
}

class Parameter {
  String? logoPath;
  dynamic mapKey;
  String? companyName;
  String? countryRegion;
  String? address1;
  dynamic address2;
  dynamic address3;
  String? addressTown;
  String? addressCounty;
  String? addressPostCode;
  dynamic addressHouseName;
  dynamic addressUPRN;
  String? telephone;
  dynamic fax;
  String? email;
  String? timeZoneName;
  String? website;
  String? mainContactName;
  String? aPIURL;
  String? iANATimeZone;
  int? locationSendingFrequencyInSeconds;


  Parameter(
      {this.logoPath,
      this.mapKey,
      this.companyName,
      this.countryRegion,
      this.address1,
      this.address2,
      this.address3,
      this.addressTown,
      this.addressCounty,
      this.addressPostCode,
      this.addressHouseName,
      this.addressUPRN,
      this.telephone,
      this.fax,
      this.email,
      this.timeZoneName,
      this.website,
      this.mainContactName,
      this.aPIURL,
      this.iANATimeZone,
      this.locationSendingFrequencyInSeconds,
  });

  Parameter.fromJson(Map<String, dynamic> json) {
    logoPath = json['LogoPath'];
    mapKey = json['MapKey'];
    companyName = json['CompanyName'];
    countryRegion = json['CountryRegion'];
    address1 = json['Address1'];
    address2 = json['Address2'];
    address3 = json['Address3'];
    addressTown = json['AddressTown'];
    addressCounty = json['AddressCounty'];
    addressPostCode = json['AddressPostCode'];
    addressHouseName = json['AddressHouseName'];
    addressUPRN = json['AddressUPRN'];
    telephone = json['Telephone'];
    fax = json['Fax'];
    email = json['Email'];
    timeZoneName = json['TimeZoneName'];
    website = json['Website'];
    mainContactName = json['MainContactName'];
    aPIURL = json['APIURL'];
    iANATimeZone = json['IANATimeZone'];
    locationSendingFrequencyInSeconds =
        json['LocationSendingFrequencyInSeconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['LogoPath'] = this.logoPath;
    data['MapKey'] = this.mapKey;
    data['CompanyName'] = this.companyName;
    data['CountryRegion'] = this.countryRegion;
    data['Address1'] = this.address1;
    data['Address2'] = this.address2;
    data['Address3'] = this.address3;
    data['AddressTown'] = this.addressTown;
    data['AddressCounty'] = this.addressCounty;
    data['AddressPostCode'] = this.addressPostCode;
    data['AddressHouseName'] = this.addressHouseName;
    data['AddressUPRN'] = this.addressUPRN;
    data['Telephone'] = this.telephone;
    data['Fax'] = this.fax;
    data['Email'] = this.email;
    data['TimeZoneName'] = this.timeZoneName;
    data['Website'] = this.website;
    data['MainContactName'] = this.mainContactName;
    data['APIURL'] = this.aPIURL;
    data['IANATimeZone'] = this.iANATimeZone;
    data['LocationSendingFrequencyInSeconds'] =
        this.locationSendingFrequencyInSeconds;
    return data;
  }
}
