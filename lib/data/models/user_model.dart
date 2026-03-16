import 'package:equatable/equatable.dart';

/// User model matching the API's UserDto schema.
class UserModel extends Equatable {
  final String id;
  final String? firstName;
  final String? lastName;
  final String name;
  final String email;
  final String? phone;
  final bool? verified;
  final bool? haveTransactionPin;
  final String? dob;
  final String? deviceId;
  final String? deviceModel;
  final String? platform;
  final String? avatarUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final bool? isAdmin;
  final Map<String, dynamic>? kycInfo;
  final String? lastLoggedIn;
  final String? onboardingState;

  const UserModel({
    required this.id,
    this.firstName,
    this.lastName,
    required this.name,
    required this.email,
    this.phone,
    this.verified,
    this.haveTransactionPin,
    this.dob,
    this.deviceId,
    this.deviceModel,
    this.platform,
    this.avatarUrl,
    this.createdAt,
    this.updatedAt,
    this.isAdmin,
    this.kycInfo,
    this.lastLoggedIn,
    this.onboardingState,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? '',
      firstName: json['firstName'],
      lastName: json['lastName'],
      name:
          json['name'] ??
          '${json['firstName'] ?? ''} ${json['lastName'] ?? ''}'.trim(),
      email: json['email'] ?? '',
      phone: json['phone'],
      verified: json['verified'],
      haveTransactionPin: json['haveTransactionPin'],
      dob: json['dob'],
      deviceId: json['deviceId'],
      deviceModel: json['deviceModel'],
      platform: json['platform'],
      avatarUrl: json['avatarUrl'],
      createdAt: json['createdAt'] != null
          ? DateTime.tryParse(json['createdAt'])
          : null,
      updatedAt: json['updatedAt'] != null
          ? DateTime.tryParse(json['updatedAt'])
          : null,
      isAdmin: json['isAdmin'],
      kycInfo: json['kycInfo'],
      lastLoggedIn: json['lastLoggedIn'],
      onboardingState: json['onboardingState'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'name': name,
      'email': email,
      'phone': phone,
      'verified': verified,
      'haveTransactionPin': haveTransactionPin,
      'dob': dob,
      'deviceId': deviceId,
      'deviceModel': deviceModel,
      'platform': platform,
    };
  }

  @override
  List<Object?> get props => [
    id,
    name,
    email,
    phone,
    verified,
    haveTransactionPin,
    onboardingState,
  ];
}
