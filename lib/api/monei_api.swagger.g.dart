// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monei_api.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) => ResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: json['data'] as Object,
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$ResponseDtoToJson(ResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'errors': instance.errors,
    };

LogInUserDto _$LogInUserDtoFromJson(Map<String, dynamic> json) =>
    LogInUserDto(email: json['email'] as String, pin: json['pin'] as String);

Map<String, dynamic> _$LogInUserDtoToJson(LogInUserDto instance) =>
    <String, dynamic>{'email': instance.email, 'pin': instance.pin};

SignUpDto _$SignUpDtoFromJson(Map<String, dynamic> json) => SignUpDto(
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  email: json['email'] as String,
  pin: json['pin'] as String,
  phone: json['phone'] as String,
  deviceId: json['deviceId'] as String?,
  deviceModel: json['deviceModel'] as String?,
  deviceIp: json['deviceIp'] as String?,
  address: json['address'] as String?,
  transactionPin: json['transactionPin'] as String?,
  platform: signUpDtoPlatformNullableFromJson(json['platform']),
);

Map<String, dynamic> _$SignUpDtoToJson(SignUpDto instance) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'pin': instance.pin,
  'phone': instance.phone,
  'deviceId': instance.deviceId,
  'deviceModel': instance.deviceModel,
  'deviceIp': instance.deviceIp,
  'address': instance.address,
  'transactionPin': instance.transactionPin,
  'platform': signUpDtoPlatformNullableToJson(instance.platform),
};

ResetPinDto _$ResetPinDtoFromJson(Map<String, dynamic> json) => ResetPinDto(
  token: json['token'] as String,
  pin: json['pin'] as String,
  confirmPin: json['confirmPin'] as String,
);

Map<String, dynamic> _$ResetPinDtoToJson(ResetPinDto instance) =>
    <String, dynamic>{
      'token': instance.token,
      'pin': instance.pin,
      'confirmPin': instance.confirmPin,
    };

ChangePinDto _$ChangePinDtoFromJson(Map<String, dynamic> json) => ChangePinDto(
  oldPin: json['oldPin'] as String,
  newPin: json['newPin'] as String,
  confirmPin: json['confirmPin'] as String,
);

Map<String, dynamic> _$ChangePinDtoToJson(ChangePinDto instance) =>
    <String, dynamic>{
      'oldPin': instance.oldPin,
      'newPin': instance.newPin,
      'confirmPin': instance.confirmPin,
    };

TransactionPinDto _$TransactionPinDtoFromJson(Map<String, dynamic> json) =>
    TransactionPinDto(
      newPin: json['newPin'] as String,
      confirmPin: json['confirmPin'] as String,
    );

Map<String, dynamic> _$TransactionPinDtoToJson(TransactionPinDto instance) =>
    <String, dynamic>{
      'newPin': instance.newPin,
      'confirmPin': instance.confirmPin,
    };

ChangeTransactionPinDto _$ChangeTransactionPinDtoFromJson(
  Map<String, dynamic> json,
) => ChangeTransactionPinDto(
  oldPin: json['oldPin'] as String,
  newPin: json['newPin'] as String,
  confirmPin: json['confirmPin'] as String,
);

Map<String, dynamic> _$ChangeTransactionPinDtoToJson(
  ChangeTransactionPinDto instance,
) => <String, dynamic>{
  'oldPin': instance.oldPin,
  'newPin': instance.newPin,
  'confirmPin': instance.confirmPin,
};

UpdateUserEmailDto _$UpdateUserEmailDtoFromJson(Map<String, dynamic> json) =>
    UpdateUserEmailDto(email: json['email'] as String);

Map<String, dynamic> _$UpdateUserEmailDtoToJson(UpdateUserEmailDto instance) =>
    <String, dynamic>{'email': instance.email};

ResetTransactionPinDto _$ResetTransactionPinDtoFromJson(
  Map<String, dynamic> json,
) => ResetTransactionPinDto(
  transactionPin: json['transactionPin'] as String,
  confirmPin: json['confirmPin'] as String,
);

Map<String, dynamic> _$ResetTransactionPinDtoToJson(
  ResetTransactionPinDto instance,
) => <String, dynamic>{
  'transactionPin': instance.transactionPin,
  'confirmPin': instance.confirmPin,
};

RequestEmailSignupDto _$RequestEmailSignupDtoFromJson(
  Map<String, dynamic> json,
) => RequestEmailSignupDto(email: json['email'] as String);

Map<String, dynamic> _$RequestEmailSignupDtoToJson(
  RequestEmailSignupDto instance,
) => <String, dynamic>{'email': instance.email};

VerifyEmailOtpDto _$VerifyEmailOtpDtoFromJson(Map<String, dynamic> json) =>
    VerifyEmailOtpDto(
      email: json['email'] as String,
      otp: json['otp'] as String,
      pin: json['pin'] as String,
      confirmPin: json['confirmPin'] as String,
    );

Map<String, dynamic> _$VerifyEmailOtpDtoToJson(VerifyEmailOtpDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
      'pin': instance.pin,
      'confirmPin': instance.confirmPin,
    };

CompleteProfileDto _$CompleteProfileDtoFromJson(Map<String, dynamic> json) =>
    CompleteProfileDto(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$CompleteProfileDtoToJson(CompleteProfileDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };

SendPhoneOtpDto _$SendPhoneOtpDtoFromJson(Map<String, dynamic> json) =>
    SendPhoneOtpDto(phone: json['phone'] as String);

Map<String, dynamic> _$SendPhoneOtpDtoToJson(SendPhoneOtpDto instance) =>
    <String, dynamic>{'phone': instance.phone};

VerifyPhoneOtpDto _$VerifyPhoneOtpDtoFromJson(Map<String, dynamic> json) =>
    VerifyPhoneOtpDto(
      phone: json['phone'] as String,
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$VerifyPhoneOtpDtoToJson(VerifyPhoneOtpDto instance) =>
    <String, dynamic>{'phone': instance.phone, 'otp': instance.otp};

OnboardingStatusDto _$OnboardingStatusDtoFromJson(Map<String, dynamic> json) =>
    OnboardingStatusDto(
      state: onboardingStatusDtoStateFromJson(json['state']),
      nextStep: onboardingStatusDtoNextStepNullableFromJson(json['nextStep']),
      percentComplete: (json['percentComplete'] as num).toDouble(),
      emailVerified: json['emailVerified'] as bool,
      hasLoginPin: json['hasLoginPin'] as bool,
      hasProfile: json['hasProfile'] as bool,
      phoneVerified: json['phoneVerified'] as bool,
      hasTransactionPin: json['hasTransactionPin'] as bool,
      completedSteps:
          (json['completedSteps'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$OnboardingStatusDtoToJson(
  OnboardingStatusDto instance,
) => <String, dynamic>{
  'state': onboardingStatusDtoStateToJson(instance.state),
  'nextStep': onboardingStatusDtoNextStepNullableToJson(instance.nextStep),
  'percentComplete': instance.percentComplete,
  'emailVerified': instance.emailVerified,
  'hasLoginPin': instance.hasLoginPin,
  'hasProfile': instance.hasProfile,
  'phoneVerified': instance.phoneVerified,
  'hasTransactionPin': instance.hasTransactionPin,
  'completedSteps': instance.completedSteps,
};

OnboardingStatusResponseDto _$OnboardingStatusResponseDtoFromJson(
  Map<String, dynamic> json,
) => OnboardingStatusResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: OnboardingStatusDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OnboardingStatusResponseDtoToJson(
  OnboardingStatusResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
};

UserKycInfoDto _$UserKycInfoDtoFromJson(Map<String, dynamic> json) =>
    UserKycInfoDto(
      id: json['id'] as String,
      currentTier: userKycInfoDtoCurrentTierFromJson(json['currentTier']),
      status: userKycInfoDtoStatusFromJson(json['status']),
      ninVerified: json['ninVerified'] as bool,
      bvnVerified: json['bvnVerified'] as bool,
      governmentIdVerified: json['governmentIdVerified'] as bool,
      selfieVerified: json['selfieVerified'] as bool,
      addressVerified: json['addressVerified'] as bool,
      lastVerifiedAt: json['lastVerifiedAt'] == null
          ? null
          : DateTime.parse(json['lastVerifiedAt'] as String),
      canUpgrade: json['canUpgrade'] as bool,
      nextTier: userKycInfoDtoNextTierNullableFromJson(json['nextTier']),
      limits: json['limits'] as Object,
    );

Map<String, dynamic> _$UserKycInfoDtoToJson(UserKycInfoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentTier': userKycInfoDtoCurrentTierToJson(instance.currentTier),
      'status': userKycInfoDtoStatusToJson(instance.status),
      'ninVerified': instance.ninVerified,
      'bvnVerified': instance.bvnVerified,
      'governmentIdVerified': instance.governmentIdVerified,
      'selfieVerified': instance.selfieVerified,
      'addressVerified': instance.addressVerified,
      'lastVerifiedAt': instance.lastVerifiedAt?.toIso8601String(),
      'canUpgrade': instance.canUpgrade,
      'nextTier': userKycInfoDtoNextTierNullableToJson(instance.nextTier),
      'limits': instance.limits,
    };

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  deletedDate: DateTime.parse(json['deletedDate'] as String),
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String,
  phone: json['phone'] as String,
  haveTransactionPin: json['haveTransactionPin'] as bool?,
  verified: json['verified'] as bool?,
  dob: json['dob'] as String?,
  isAdmin: json['isAdmin'] as bool?,
  deviceId: json['deviceId'] as String?,
  deviceIp: json['deviceIp'] as String?,
  deviceModel: json['deviceModel'] as String?,
  platform: userDtoPlatformNullableFromJson(json['platform']),
  lastLoggedIn: json['lastLoggedIn'] as String?,
  kycInfo: json['kycInfo'] == null
      ? null
      : UserKycInfoDto.fromJson(json['kycInfo'] as Map<String, dynamic>),
  onboardingState: userDtoOnboardingStateNullableFromJson(
    json['onboardingState'],
  ),
);

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'deletedDate': instance.deletedDate.toIso8601String(),
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'haveTransactionPin': instance.haveTransactionPin,
  'verified': instance.verified,
  'dob': instance.dob,
  'isAdmin': instance.isAdmin,
  'deviceId': instance.deviceId,
  'deviceIp': instance.deviceIp,
  'deviceModel': instance.deviceModel,
  'platform': userDtoPlatformNullableToJson(instance.platform),
  'lastLoggedIn': instance.lastLoggedIn,
  'kycInfo': instance.kycInfo?.toJson(),
  'onboardingState': userDtoOnboardingStateNullableToJson(
    instance.onboardingState,
  ),
};

UserResponseDto _$UserResponseDtoFromJson(Map<String, dynamic> json) =>
    UserResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: UserDto.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$UserResponseDtoToJson(UserResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data.toJson(),
      'errors': instance.errors,
    };

UpdateUserDto _$UpdateUserDtoFromJson(Map<String, dynamic> json) =>
    UpdateUserDto(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      dob: json['dob'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$UpdateUserDtoToJson(UpdateUserDto instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dob': instance.dob,
      'phone': instance.phone,
    };

SupportedChainDto _$SupportedChainDtoFromJson(Map<String, dynamic> json) =>
    SupportedChainDto(
      chainId: (json['chainId'] as num).toDouble(),
      name: json['name'] as String,
      nativeToken: json['nativeToken'] as String,
      blockExplorerUrl: json['blockExplorerUrl'] as String,
      isTestnet: json['isTestnet'] as bool,
    );

Map<String, dynamic> _$SupportedChainDtoToJson(SupportedChainDto instance) =>
    <String, dynamic>{
      'chainId': instance.chainId,
      'name': instance.name,
      'nativeToken': instance.nativeToken,
      'blockExplorerUrl': instance.blockExplorerUrl,
      'isTestnet': instance.isTestnet,
    };

SupportedChainsResponseDto _$SupportedChainsResponseDtoFromJson(
  Map<String, dynamic> json,
) => SupportedChainsResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => SupportedChainDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$SupportedChainsResponseDtoToJson(
  SupportedChainsResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'errors': instance.errors,
};

BalanceDto _$BalanceDtoFromJson(Map<String, dynamic> json) =>
    BalanceDto(balance: json['balance'] as String);

Map<String, dynamic> _$BalanceDtoToJson(BalanceDto instance) =>
    <String, dynamic>{'balance': instance.balance};

BalanceResponseDto _$BalanceResponseDtoFromJson(Map<String, dynamic> json) =>
    BalanceResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: BalanceDto.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$BalanceResponseDtoToJson(BalanceResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data.toJson(),
      'errors': instance.errors,
    };

UserTokenBalanceDto _$UserTokenBalanceDtoFromJson(Map<String, dynamic> json) =>
    UserTokenBalanceDto(
      contractAddress: json['contractAddress'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      decimals: (json['decimals'] as num).toDouble(),
      logoUrl: json['logoUrl'] as String?,
      type: userTokenBalanceDtoTypeFromJson(json['type']),
      balance: json['balance'] as String,
      balanceUSD: json['balanceUSD'] as String,
      priceUSD: json['priceUSD'] as String,
      rawBalance: json['rawBalance'] as String,
      network: json['network'] as String,
    );

Map<String, dynamic> _$UserTokenBalanceDtoToJson(
  UserTokenBalanceDto instance,
) => <String, dynamic>{
  'contractAddress': instance.contractAddress,
  'name': instance.name,
  'symbol': instance.symbol,
  'decimals': instance.decimals,
  'logoUrl': instance.logoUrl,
  'type': userTokenBalanceDtoTypeToJson(instance.type),
  'balance': instance.balance,
  'balanceUSD': instance.balanceUSD,
  'priceUSD': instance.priceUSD,
  'rawBalance': instance.rawBalance,
  'network': instance.network,
};

UserEvmPortfolioDto _$UserEvmPortfolioDtoFromJson(Map<String, dynamic> json) =>
    UserEvmPortfolioDto(
      userId: json['userId'] as String,
      walletAddress: json['walletAddress'] as String,
      network: json['network'] as String,
      totalPortfolioValueUSD: json['totalPortfolioValueUSD'] as String,
      nativeToken: UserTokenBalanceDto.fromJson(
        json['nativeToken'] as Map<String, dynamic>,
      ),
      tokens:
          (json['tokens'] as List<dynamic>?)
              ?.map(
                (e) => UserTokenBalanceDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$UserEvmPortfolioDtoToJson(
  UserEvmPortfolioDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'walletAddress': instance.walletAddress,
  'network': instance.network,
  'totalPortfolioValueUSD': instance.totalPortfolioValueUSD,
  'nativeToken': instance.nativeToken.toJson(),
  'tokens': instance.tokens.map((e) => e.toJson()).toList(),
  'updatedAt': instance.updatedAt,
};

UserEvmPortfolioResponseDto _$UserEvmPortfolioResponseDtoFromJson(
  Map<String, dynamic> json,
) => UserEvmPortfolioResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: UserEvmPortfolioDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$UserEvmPortfolioResponseDtoToJson(
  UserEvmPortfolioResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

SendNativeTokenDto _$SendNativeTokenDtoFromJson(Map<String, dynamic> json) =>
    SendNativeTokenDto(
      to: json['to'] as String,
      amount: json['amount'] as String,
      chainId: (json['chainId'] as num).toDouble(),
    );

Map<String, dynamic> _$SendNativeTokenDtoToJson(SendNativeTokenDto instance) =>
    <String, dynamic>{
      'to': instance.to,
      'amount': instance.amount,
      'chainId': instance.chainId,
    };

Response$ _$Response$FromJson(Map<String, dynamic> json) =>
    Response$(txHash: json['txHash'] as String);

Map<String, dynamic> _$Response$ToJson(Response$ instance) => <String, dynamic>{
  'txHash': instance.txHash,
};

SendNativeTokenResponseDto _$SendNativeTokenResponseDtoFromJson(
  Map<String, dynamic> json,
) => SendNativeTokenResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: Response$.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$SendNativeTokenResponseDtoToJson(
  SendNativeTokenResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

SendTokenDto _$SendTokenDtoFromJson(Map<String, dynamic> json) => SendTokenDto(
  to: json['to'] as String,
  tokenAddress: json['tokenAddress'] as String,
  amount: json['amount'] as String,
  chainId: (json['chainId'] as num).toDouble(),
);

Map<String, dynamic> _$SendTokenDtoToJson(SendTokenDto instance) =>
    <String, dynamic>{
      'to': instance.to,
      'tokenAddress': instance.tokenAddress,
      'amount': instance.amount,
      'chainId': instance.chainId,
    };

SendTokenResponseDto _$SendTokenResponseDtoFromJson(
  Map<String, dynamic> json,
) => SendTokenResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: Response$.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$SendTokenResponseDtoToJson(
  SendTokenResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) =>
    AddressDto(address: json['address'] as String);

Map<String, dynamic> _$AddressDtoToJson(AddressDto instance) =>
    <String, dynamic>{'address': instance.address};

WalletAddressResponseDto _$WalletAddressResponseDtoFromJson(
  Map<String, dynamic> json,
) => WalletAddressResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: AddressDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$WalletAddressResponseDtoToJson(
  WalletAddressResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

TokenInfoDto _$TokenInfoDtoFromJson(Map<String, dynamic> json) => TokenInfoDto(
  mintAddress: json['mintAddress'] as String,
  name: json['name'] as String,
  symbol: json['symbol'] as String,
  balance: json['balance'] as String,
  rawBalance: json['rawBalance'] as String,
  decimals: (json['decimals'] as num).toDouble(),
  priceUsd: (json['priceUsd'] as num).toDouble(),
  valueUsd: (json['valueUsd'] as num).toDouble(),
);

Map<String, dynamic> _$TokenInfoDtoToJson(TokenInfoDto instance) =>
    <String, dynamic>{
      'mintAddress': instance.mintAddress,
      'name': instance.name,
      'symbol': instance.symbol,
      'balance': instance.balance,
      'rawBalance': instance.rawBalance,
      'decimals': instance.decimals,
      'priceUsd': instance.priceUsd,
      'valueUsd': instance.valueUsd,
    };

PortfolioDto _$PortfolioDtoFromJson(Map<String, dynamic> json) => PortfolioDto(
  userId: json['userId'] as String,
  address: json['address'] as String,
  nativeBalance: json['nativeBalance'] as String,
  nativeBalanceLamports: json['nativeBalanceLamports'] as String,
  nativeBalanceUsd: (json['nativeBalanceUsd'] as num).toDouble(),
  tokens:
      (json['tokens'] as List<dynamic>?)
          ?.map((e) => TokenInfoDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  totalValueUsd: (json['totalValueUsd'] as num).toDouble(),
);

Map<String, dynamic> _$PortfolioDtoToJson(PortfolioDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'address': instance.address,
      'nativeBalance': instance.nativeBalance,
      'nativeBalanceLamports': instance.nativeBalanceLamports,
      'nativeBalanceUsd': instance.nativeBalanceUsd,
      'tokens': instance.tokens.map((e) => e.toJson()).toList(),
      'totalValueUsd': instance.totalValueUsd,
    };

PortfolioResponseDto _$PortfolioResponseDtoFromJson(
  Map<String, dynamic> json,
) => PortfolioResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: PortfolioDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$PortfolioResponseDtoToJson(
  PortfolioResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

TransferSolDto _$TransferSolDtoFromJson(Map<String, dynamic> json) =>
    TransferSolDto(
      to: json['to'] as String,
      amount: json['amount'] as String,
      network: TransferSolDto.transferSolDtoNetworkNetworkNullableFromJson(
        json['network'],
      ),
    );

Map<String, dynamic> _$TransferSolDtoToJson(TransferSolDto instance) =>
    <String, dynamic>{
      'to': instance.to,
      'amount': instance.amount,
      'network': transferSolDtoNetworkNullableToJson(instance.network),
    };

SignatureDto _$SignatureDtoFromJson(Map<String, dynamic> json) =>
    SignatureDto(signature: json['signature'] as String);

Map<String, dynamic> _$SignatureDtoToJson(SignatureDto instance) =>
    <String, dynamic>{'signature': instance.signature};

SignatureResponseDto _$SignatureResponseDtoFromJson(
  Map<String, dynamic> json,
) => SignatureResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: SignatureDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$SignatureResponseDtoToJson(
  SignatureResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

TransferTokenDto _$TransferTokenDtoFromJson(Map<String, dynamic> json) =>
    TransferTokenDto(
      to: json['to'] as String,
      tokenMintAddress: json['tokenMintAddress'] as String,
      amount: json['amount'] as String,
      network: TransferTokenDto.transferTokenDtoNetworkNetworkNullableFromJson(
        json['network'],
      ),
    );

Map<String, dynamic> _$TransferTokenDtoToJson(TransferTokenDto instance) =>
    <String, dynamic>{
      'to': instance.to,
      'tokenMintAddress': instance.tokenMintAddress,
      'amount': instance.amount,
      'network': transferTokenDtoNetworkNullableToJson(instance.network),
    };

TransactionDataDto _$TransactionDataDtoFromJson(Map<String, dynamic> json) =>
    TransactionDataDto(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedDate: DateTime.parse(json['deletedDate'] as String),
      userId: json['userId'] as String,
      amount: (json['amount'] as num).toDouble(),
      type: json['type'] as String,
      status: json['status'] as String,
      reference: json['reference'] as String,
      currency: json['currency'] as String?,
      narration: json['narration'] as String,
    );

Map<String, dynamic> _$TransactionDataDtoToJson(TransactionDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedDate': instance.deletedDate.toIso8601String(),
      'userId': instance.userId,
      'amount': instance.amount,
      'type': instance.type,
      'status': instance.status,
      'reference': instance.reference,
      'currency': instance.currency,
      'narration': instance.narration,
    };

PaginationMetaDto _$PaginationMetaDtoFromJson(Map<String, dynamic> json) =>
    PaginationMetaDto(
      page: (json['page'] as num).toDouble(),
      limit: (json['limit'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      totalPages: (json['totalPages'] as num).toDouble(),
      hasNextPage: json['hasNextPage'] as bool,
      hasPreviousPage: json['hasPreviousPage'] as bool,
    );

Map<String, dynamic> _$PaginationMetaDtoToJson(PaginationMetaDto instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'totalPages': instance.totalPages,
      'hasNextPage': instance.hasNextPage,
      'hasPreviousPage': instance.hasPreviousPage,
    };

PaginatedResponseDto _$PaginatedResponseDtoFromJson(
  Map<String, dynamic> json,
) => PaginatedResponseDto(
  transactions:
      (json['transactions'] as List<dynamic>?)
          ?.map((e) => TransactionDataDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  pagination: PaginationMetaDto.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$PaginatedResponseDtoToJson(
  PaginatedResponseDto instance,
) => <String, dynamic>{
  'transactions': instance.transactions.map((e) => e.toJson()).toList(),
  'pagination': instance.pagination.toJson(),
};

PaginatedUserTransactionsResponseDto
_$PaginatedUserTransactionsResponseDtoFromJson(Map<String, dynamic> json) =>
    PaginatedUserTransactionsResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: PaginatedResponseDto.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$PaginatedUserTransactionsResponseDtoToJson(
  PaginatedUserTransactionsResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

TransactionDto _$TransactionDtoFromJson(Map<String, dynamic> json) =>
    TransactionDto(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedDate: DateTime.parse(json['deletedDate'] as String),
      user: json['user'] as Object,
      wallet: json['wallet'],
      subwallet: json['subwallet'] as Object,
      amount: (json['amount'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num?)?.toDouble(),
      fee: (json['fee'] as num?)?.toDouble(),
      type: json['type'] as String,
      nature: json['nature'] as String,
      status: json['status'] as String,
      currency: json['currency'] as String?,
      reference: json['reference'] as String?,
      fincraReference: json['fincraReference'] as String?,
      flutterwaveReference: json['flutterwaveReference'] as String?,
      flwId: json['flwId'] as String?,
      narration: json['narration'] as String,
      metadata: json['metadata'],
      customer: json['customer'],
      owner: json['owner'] as String?,
      environment: json['environment'] as String?,
    );

Map<String, dynamic> _$TransactionDtoToJson(TransactionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedDate': instance.deletedDate.toIso8601String(),
      'user': instance.user,
      'wallet': instance.wallet,
      'subwallet': instance.subwallet,
      'amount': instance.amount,
      'totalAmount': instance.totalAmount,
      'fee': instance.fee,
      'type': instance.type,
      'nature': instance.nature,
      'status': instance.status,
      'currency': instance.currency,
      'reference': instance.reference,
      'fincraReference': instance.fincraReference,
      'flutterwaveReference': instance.flutterwaveReference,
      'flwId': instance.flwId,
      'narration': instance.narration,
      'metadata': instance.metadata,
      'customer': instance.customer,
      'owner': instance.owner,
      'environment': instance.environment,
    };

TransactionResponseDto _$TransactionResponseDtoFromJson(
  Map<String, dynamic> json,
) => TransactionResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: TransactionDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$TransactionResponseDtoToJson(
  TransactionResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

Customization _$CustomizationFromJson(Map<String, dynamic> json) =>
    Customization(title: json['title'] as String?);

Map<String, dynamic> _$CustomizationToJson(Customization instance) =>
    <String, dynamic>{'title': instance.title};

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
  'email': instance.email,
  'phoneNumber': instance.phoneNumber,
  'name': instance.name,
};

FundWalletByNairaDto _$FundWalletByNairaDtoFromJson(
  Map<String, dynamic> json,
) => FundWalletByNairaDto(
  amount: (json['amount'] as num).toDouble(),
  reference: json['reference'] as String?,
  currency: json['currency'] as String?,
  redirectUrl: json['redirectUrl'] as String?,
  customization: Customization.fromJson(
    json['customization'] as Map<String, dynamic>,
  ),
  customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FundWalletByNairaDtoToJson(
  FundWalletByNairaDto instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'reference': instance.reference,
  'currency': instance.currency,
  'redirectUrl': instance.redirectUrl,
  'customization': instance.customization.toJson(),
  'customer': instance.customer.toJson(),
};

DepositResponseDto _$DepositResponseDtoFromJson(Map<String, dynamic> json) =>
    DepositResponseDto(link: json['link'] as String);

Map<String, dynamic> _$DepositResponseDtoToJson(DepositResponseDto instance) =>
    <String, dynamic>{'link': instance.link};

FundWalletByNairaResponseDto _$FundWalletByNairaResponseDtoFromJson(
  Map<String, dynamic> json,
) => FundWalletByNairaResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: DepositResponseDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$FundWalletByNairaResponseDtoToJson(
  FundWalletByNairaResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

BankDto _$BankDtoFromJson(Map<String, dynamic> json) => BankDto(
  id: json['id'] as String,
  code: json['code'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$BankDtoToJson(BankDto instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
};

BankListResponseDto _$BankListResponseDtoFromJson(Map<String, dynamic> json) =>
    BankListResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => BankDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$BankListResponseDtoToJson(
  BankListResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'errors': instance.errors,
};

BankDataDto _$BankDataDtoFromJson(Map<String, dynamic> json) => BankDataDto();

Map<String, dynamic> _$BankDataDtoToJson(BankDataDto instance) =>
    <String, dynamic>{};

VerifyBankAccountRequestDto _$VerifyBankAccountRequestDtoFromJson(
  Map<String, dynamic> json,
) => VerifyBankAccountRequestDto(
  accountNumber: json['accountNumber'] as String,
  bank: json['bank'] as String,
);

Map<String, dynamic> _$VerifyBankAccountRequestDtoToJson(
  VerifyBankAccountRequestDto instance,
) => <String, dynamic>{
  'accountNumber': instance.accountNumber,
  'bank': instance.bank,
};

BankAccountDto _$BankAccountDtoFromJson(Map<String, dynamic> json) =>
    BankAccountDto(
      accountName: json['accountName'] as String,
      accountNumber: json['accountNumber'] as String,
      bankCode: json['bankCode'] as String,
      bankName: json['bankName'] as String,
    );

Map<String, dynamic> _$BankAccountDtoToJson(BankAccountDto instance) =>
    <String, dynamic>{
      'accountName': instance.accountName,
      'accountNumber': instance.accountNumber,
      'bankCode': instance.bankCode,
      'bankName': instance.bankName,
    };

BankAccountResponseDto _$BankAccountResponseDtoFromJson(
  Map<String, dynamic> json,
) => BankAccountResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: BankAccountDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$BankAccountResponseDtoToJson(
  BankAccountResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

WithdrawWalletDto _$WithdrawWalletDtoFromJson(Map<String, dynamic> json) =>
    WithdrawWalletDto(
      amount: (json['amount'] as num).toDouble(),
      bank: json['bank'] as String,
      accountNumber: json['accountNumber'] as String,
      transactionPin: json['transactionPin'] as String,
      currency: json['currency'] as String?,
      reference: json['reference'] as String?,
      narration: json['narration'] as String?,
    );

Map<String, dynamic> _$WithdrawWalletDtoToJson(WithdrawWalletDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'bank': instance.bank,
      'accountNumber': instance.accountNumber,
      'transactionPin': instance.transactionPin,
      'currency': instance.currency,
      'reference': instance.reference,
      'narration': instance.narration,
    };

PeerTransferDto _$PeerTransferDtoFromJson(Map<String, dynamic> json) =>
    PeerTransferDto(
      receiver: json['receiver'] as String,
      amount: (json['amount'] as num).toDouble(),
      transactionPin: json['transactionPin'] as String,
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$PeerTransferDtoToJson(PeerTransferDto instance) =>
    <String, dynamic>{
      'receiver': instance.receiver,
      'amount': instance.amount,
      'transactionPin': instance.transactionPin,
      'currency': instance.currency,
    };

VirtualAccountDto _$VirtualAccountDtoFromJson(Map<String, dynamic> json) =>
    VirtualAccountDto(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedDate: DateTime.parse(json['deletedDate'] as String),
      accountNumber: json['accountNumber'] as String,
      bankName: json['bankName'] as String,
      reference: json['reference'] as String,
      status: json['status'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$VirtualAccountDtoToJson(VirtualAccountDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedDate': instance.deletedDate.toIso8601String(),
      'accountNumber': instance.accountNumber,
      'bankName': instance.bankName,
      'reference': instance.reference,
      'status': instance.status,
      'isActive': instance.isActive,
    };

SubWalletDto _$SubWalletDtoFromJson(Map<String, dynamic> json) => SubWalletDto(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  deletedDate: DateTime.parse(json['deletedDate'] as String),
  parentWalletId: json['parentWalletId'] as String,
  type: subWalletDtoTypeFromJson(json['type']),
  currency: json['currency'] as String,
  balance: (json['balance'] as num).toDouble(),
  chain: json['chain'] as String?,
  publicAddress: json['publicAddress'] as String?,
  virtualAccount: VirtualAccountDto.fromJson(
    json['virtualAccount'] as Map<String, dynamic>,
  ),
  evmPortfolio: json['evmPortfolio'],
  solPortfolio: json['solPortfolio'],
);

Map<String, dynamic> _$SubWalletDtoToJson(SubWalletDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedDate': instance.deletedDate.toIso8601String(),
      'parentWalletId': instance.parentWalletId,
      'type': subWalletDtoTypeToJson(instance.type),
      'currency': instance.currency,
      'balance': instance.balance,
      'chain': instance.chain,
      'publicAddress': instance.publicAddress,
      'virtualAccount': instance.virtualAccount.toJson(),
      'evmPortfolio': instance.evmPortfolio,
      'solPortfolio': instance.solPortfolio,
    };

UserWalletDto _$UserWalletDtoFromJson(Map<String, dynamic> json) =>
    UserWalletDto(
      nairaBalance: (json['nairaBalance'] as num).toDouble(),
      evmPortfolio: json['evmPortfolio'],
      solPortfolio: json['solPortfolio'],
      subwallets:
          (json['subwallets'] as List<dynamic>?)
              ?.map((e) => SubWalletDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$UserWalletDtoToJson(UserWalletDto instance) =>
    <String, dynamic>{
      'nairaBalance': instance.nairaBalance,
      'evmPortfolio': instance.evmPortfolio,
      'solPortfolio': instance.solPortfolio,
      'subwallets': instance.subwallets.map((e) => e.toJson()).toList(),
    };

UserWalletResponseDto _$UserWalletResponseDtoFromJson(
  Map<String, dynamic> json,
) => UserWalletResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: UserWalletDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$UserWalletResponseDtoToJson(
  UserWalletResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

SubWalletResponseDto _$SubWalletResponseDtoFromJson(
  Map<String, dynamic> json,
) => SubWalletResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: SubWalletDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$SubWalletResponseDtoToJson(
  SubWalletResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

CreateVirtualAccountDto _$CreateVirtualAccountDtoFromJson(
  Map<String, dynamic> json,
) => CreateVirtualAccountDto(
  nin: json['nin'] as String,
  reference: json['reference'] as String?,
);

Map<String, dynamic> _$CreateVirtualAccountDtoToJson(
  CreateVirtualAccountDto instance,
) => <String, dynamic>{'nin': instance.nin, 'reference': instance.reference};

VirtualAccountResponseDto _$VirtualAccountResponseDtoFromJson(
  Map<String, dynamic> json,
) => VirtualAccountResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: VirtualAccountDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$VirtualAccountResponseDtoToJson(
  VirtualAccountResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

CardDepositDto _$CardDepositDtoFromJson(Map<String, dynamic> json) =>
    CardDepositDto(
      expiryMonth: json['expiryMonth'] as String,
      expiryYear: json['expiryYear'] as String,
      cardNumber: json['cardNumber'] as String,
      cvv: json['cvv'] as String,
      cardHolderName: json['cardHolderName'] as String,
    );

Map<String, dynamic> _$CardDepositDtoToJson(CardDepositDto instance) =>
    <String, dynamic>{
      'expiryMonth': instance.expiryMonth,
      'expiryYear': instance.expiryYear,
      'cardNumber': instance.cardNumber,
      'cvv': instance.cvv,
      'cardHolderName': instance.cardHolderName,
    };

UssdDepositDto _$UssdDepositDtoFromJson(Map<String, dynamic> json) =>
    UssdDepositDto(bankCode: json['bankCode'] as String);

Map<String, dynamic> _$UssdDepositDtoToJson(UssdDepositDto instance) =>
    <String, dynamic>{'bankCode': instance.bankCode};

DepositDto _$DepositDtoFromJson(Map<String, dynamic> json) => DepositDto(
  amount: (json['amount'] as num).toDouble(),
  reference: json['reference'] as String?,
  currency: json['currency'] as String?,
  card: json['card'] == null
      ? null
      : CardDepositDto.fromJson(json['card'] as Map<String, dynamic>),
  ussd: json['ussd'] == null
      ? null
      : UssdDepositDto.fromJson(json['ussd'] as Map<String, dynamic>),
  narration: json['narration'] as String?,
);

Map<String, dynamic> _$DepositDtoToJson(DepositDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'reference': instance.reference,
      'currency': instance.currency,
      'card': instance.card?.toJson(),
      'ussd': instance.ussd?.toJson(),
      'narration': instance.narration,
    };

DepositNextActionDto _$DepositNextActionDtoFromJson(
  Map<String, dynamic> json,
) => DepositNextActionDto(
  type: depositNextActionDtoTypeFromJson(json['type']),
  redirectUrl: json['redirect_url'],
  paymentInstruction: json['payment_instruction'],
);

Map<String, dynamic> _$DepositNextActionDtoToJson(
  DepositNextActionDto instance,
) => <String, dynamic>{
  'type': depositNextActionDtoTypeToJson(instance.type),
  'redirect_url': instance.redirectUrl,
  'payment_instruction': instance.paymentInstruction,
};

PaymentDto _$PaymentDtoFromJson(Map<String, dynamic> json) => PaymentDto(
  amount: (json['amount'] as num).toDouble(),
  totalAmount: (json['totalAmount'] as num?)?.toDouble(),
  reference: json['reference'] as String,
  currency: json['currency'] as String,
  redirectUrl: json['redirectUrl'] as String?,
  customization: Customization.fromJson(
    json['customization'] as Map<String, dynamic>,
  ),
  customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
  narration: json['narration'] as String?,
  accountNumber: json['accountNumber'] as String,
  bankName: json['bankName'] as String,
  accountName: json['accountName'] as String,
  expiryDatetime: json['expiry_datetime'] as String,
  note: json['note'] as String,
  status: PaymentDto.paymentDtoStatusStatusFromJson(json['status']),
  nextAction: json['nextAction'] == null
      ? null
      : DepositNextActionDto.fromJson(
          json['nextAction'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PaymentDtoToJson(PaymentDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'totalAmount': instance.totalAmount,
      'reference': instance.reference,
      'currency': instance.currency,
      'redirectUrl': instance.redirectUrl,
      'customization': instance.customization.toJson(),
      'customer': instance.customer.toJson(),
      'narration': instance.narration,
      'accountNumber': instance.accountNumber,
      'bankName': instance.bankName,
      'accountName': instance.accountName,
      'expiry_datetime': instance.expiryDatetime,
      'note': instance.note,
      'status': paymentDtoStatusToJson(instance.status),
      'nextAction': instance.nextAction?.toJson(),
    };

PaymentResponseDto _$PaymentResponseDtoFromJson(Map<String, dynamic> json) =>
    PaymentResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: PaymentDto.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$PaymentResponseDtoToJson(PaymentResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data.toJson(),
      'errors': instance.errors,
    };

DepositWithPaymentMethodDto _$DepositWithPaymentMethodDtoFromJson(
  Map<String, dynamic> json,
) => DepositWithPaymentMethodDto(
  amount: (json['amount'] as num).toDouble(),
  paymentMethodId: json['paymentMethodId'] as String,
  reference: json['reference'] as String?,
  currency: json['currency'] as String?,
  redirectUrl: json['redirectUrl'] as String?,
  meta: json['meta'],
  narration: json['narration'] as String?,
);

Map<String, dynamic> _$DepositWithPaymentMethodDtoToJson(
  DepositWithPaymentMethodDto instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'paymentMethodId': instance.paymentMethodId,
  'reference': instance.reference,
  'currency': instance.currency,
  'redirectUrl': instance.redirectUrl,
  'meta': instance.meta,
  'narration': instance.narration,
};

FlwBillingAddressDto _$FlwBillingAddressDtoFromJson(
  Map<String, dynamic> json,
) => FlwBillingAddressDto(
  city: json['city'] as String,
  country: json['country'] as String,
  line1: json['line1'] as String,
  line2: json['line2'] as String,
  postalCode: json['postal_code'] as String,
  state: json['state'] as String,
);

Map<String, dynamic> _$FlwBillingAddressDtoToJson(
  FlwBillingAddressDto instance,
) => <String, dynamic>{
  'city': instance.city,
  'country': instance.country,
  'line1': instance.line1,
  'line2': instance.line2,
  'postal_code': instance.postalCode,
  'state': instance.state,
};

FlwAvsAuthdto _$FlwAvsAuthdtoFromJson(Map<String, dynamic> json) =>
    FlwAvsAuthdto(
      address: FlwBillingAddressDto.fromJson(
        json['address'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$FlwAvsAuthdtoToJson(FlwAvsAuthdto instance) =>
    <String, dynamic>{'address': instance.address.toJson()};

DepositAuthDto _$DepositAuthDtoFromJson(Map<String, dynamic> json) =>
    DepositAuthDto(
      type: depositAuthDtoTypeFromJson(json['type']),
      reference: json['reference'] as String,
      pin: json['pin'] as String?,
      otp: json['otp'] as String?,
      avs: json['avs'] == null
          ? null
          : FlwAvsAuthdto.fromJson(json['avs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DepositAuthDtoToJson(DepositAuthDto instance) =>
    <String, dynamic>{
      'type': depositAuthDtoTypeToJson(instance.type),
      'reference': instance.reference,
      'pin': instance.pin,
      'otp': instance.otp,
      'avs': instance.avs?.toJson(),
    };

GeneratePaymentLinkDto _$GeneratePaymentLinkDtoFromJson(
  Map<String, dynamic> json,
) => GeneratePaymentLinkDto(
  amount: (json['amount'] as num).toDouble(),
  reference: json['reference'] as String?,
  currency: json['currency'] as String?,
  redirectUrl: json['redirectUrl'] as String?,
  customization: Customization.fromJson(
    json['customization'] as Map<String, dynamic>,
  ),
  customer: Customer.fromJson(json['customer'] as Map<String, dynamic>),
  narration: json['narration'] as String?,
);

Map<String, dynamic> _$GeneratePaymentLinkDtoToJson(
  GeneratePaymentLinkDto instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'reference': instance.reference,
  'currency': instance.currency,
  'redirectUrl': instance.redirectUrl,
  'customization': instance.customization.toJson(),
  'customer': instance.customer.toJson(),
  'narration': instance.narration,
};

PaymentLinkDto _$PaymentLinkDtoFromJson(Map<String, dynamic> json) =>
    PaymentLinkDto(link: json['link'] as String);

Map<String, dynamic> _$PaymentLinkDtoToJson(PaymentLinkDto instance) =>
    <String, dynamic>{'link': instance.link};

PaymentLinkResponseDto _$PaymentLinkResponseDtoFromJson(
  Map<String, dynamic> json,
) => PaymentLinkResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: PaymentLinkDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$PaymentLinkResponseDtoToJson(
  PaymentLinkResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

InitiateBankTransferDto _$InitiateBankTransferDtoFromJson(
  Map<String, dynamic> json,
) => InitiateBankTransferDto(
  amount: (json['amount'] as num).toDouble(),
  bank: json['bank'] as String,
  accountNumber: json['accountNumber'] as String,
  transactionPin: json['transactionPin'] as String,
  reference: json['reference'] as String?,
  narration: json['narration'] as String?,
  meta: json['meta'],
);

Map<String, dynamic> _$InitiateBankTransferDtoToJson(
  InitiateBankTransferDto instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'bank': instance.bank,
  'accountNumber': instance.accountNumber,
  'transactionPin': instance.transactionPin,
  'reference': instance.reference,
  'narration': instance.narration,
  'meta': instance.meta,
};

InitiateBankTransferResponseDataDto
_$InitiateBankTransferResponseDataDtoFromJson(Map<String, dynamic> json) =>
    InitiateBankTransferResponseDataDto(
      reference: json['reference'] as String,
      status: initiateBankTransferResponseDataDtoStatusFromJson(json['status']),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$InitiateBankTransferResponseDataDtoToJson(
  InitiateBankTransferResponseDataDto instance,
) => <String, dynamic>{
  'reference': instance.reference,
  'status': initiateBankTransferResponseDataDtoStatusToJson(instance.status),
  'amount': instance.amount,
};

InitiateBankTransferResponseDto _$InitiateBankTransferResponseDtoFromJson(
  Map<String, dynamic> json,
) => InitiateBankTransferResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: InitiateBankTransferResponseDataDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$InitiateBankTransferResponseDtoToJson(
  InitiateBankTransferResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

ConversationListResponseDto _$ConversationListResponseDtoFromJson(
  Map<String, dynamic> json,
) => ConversationListResponseDto(
  id: json['id'] as String,
  title: json['title'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  isPinned: json['isPinned'] as bool,
  messageCount: (json['messageCount'] as num).toDouble(),
);

Map<String, dynamic> _$ConversationListResponseDtoToJson(
  ConversationListResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isPinned': instance.isPinned,
  'messageCount': instance.messageCount,
};

ConversationMessagesResponseDto _$ConversationMessagesResponseDtoFromJson(
  Map<String, dynamic> json,
) => ConversationMessagesResponseDto(
  id: json['id'] as String,
  role: conversationMessagesResponseDtoRoleFromJson(json['role']),
  content: json['content'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$ConversationMessagesResponseDtoToJson(
  ConversationMessagesResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'role': conversationMessagesResponseDtoRoleToJson(instance.role),
  'content': instance.content,
  'createdAt': instance.createdAt.toIso8601String(),
};

CreateConversationDto _$CreateConversationDtoFromJson(
  Map<String, dynamic> json,
) => CreateConversationDto(id: json['id'] as String);

Map<String, dynamic> _$CreateConversationDtoToJson(
  CreateConversationDto instance,
) => <String, dynamic>{'id': instance.id};

PinConversationDto _$PinConversationDtoFromJson(Map<String, dynamic> json) =>
    PinConversationDto(pin: json['pin'] as bool);

Map<String, dynamic> _$PinConversationDtoToJson(PinConversationDto instance) =>
    <String, dynamic>{'pin': instance.pin};

AgentChatRequestDto _$AgentChatRequestDtoFromJson(Map<String, dynamic> json) =>
    AgentChatRequestDto(
      message: json['message'] as String,
      conversationId: json['conversationId'] as String,
    );

Map<String, dynamic> _$AgentChatRequestDtoToJson(
  AgentChatRequestDto instance,
) => <String, dynamic>{
  'message': instance.message,
  'conversationId': instance.conversationId,
};

AgentChatResponseDto _$AgentChatResponseDtoFromJson(
  Map<String, dynamic> json,
) => AgentChatResponseDto(
  response: json['response'] as String,
  conversationId: json['conversationId'] as String,
  title: json['title'] as String,
);

Map<String, dynamic> _$AgentChatResponseDtoToJson(
  AgentChatResponseDto instance,
) => <String, dynamic>{
  'response': instance.response,
  'conversationId': instance.conversationId,
  'title': instance.title,
};

AgentStreamRequestDto _$AgentStreamRequestDtoFromJson(
  Map<String, dynamic> json,
) => AgentStreamRequestDto(
  message: json['message'] as String,
  conversationId: json['conversationId'] as String,
  chainId: (json['chainId'] as num?)?.toDouble(),
);

Map<String, dynamic> _$AgentStreamRequestDtoToJson(
  AgentStreamRequestDto instance,
) => <String, dynamic>{
  'message': instance.message,
  'conversationId': instance.conversationId,
  'chainId': instance.chainId,
};

VoiceChatRequestDto _$VoiceChatRequestDtoFromJson(Map<String, dynamic> json) =>
    VoiceChatRequestDto(
      conversationId: json['conversationId'] as String,
      audio: json['audio'] as String,
    );

Map<String, dynamic> _$VoiceChatRequestDtoToJson(
  VoiceChatRequestDto instance,
) => <String, dynamic>{
  'conversationId': instance.conversationId,
  'audio': instance.audio,
};

VoiceChatResponseDto _$VoiceChatResponseDtoFromJson(
  Map<String, dynamic> json,
) => VoiceChatResponseDto(
  transcribedText: json['transcribedText'] as String,
  response: json['response'] as String,
  audioBase64: json['audioBase64'] as String,
  conversationId: json['conversationId'] as String,
  title: json['title'] as String?,
);

Map<String, dynamic> _$VoiceChatResponseDtoToJson(
  VoiceChatResponseDto instance,
) => <String, dynamic>{
  'transcribedText': instance.transcribedText,
  'response': instance.response,
  'audioBase64': instance.audioBase64,
  'conversationId': instance.conversationId,
  'title': instance.title,
};

ChatMessageDto _$ChatMessageDtoFromJson(Map<String, dynamic> json) =>
    ChatMessageDto(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$ChatMessageDtoToJson(ChatMessageDto instance) =>
    <String, dynamic>{'role': instance.role, 'content': instance.content};

GuestAgentRequestDto _$GuestAgentRequestDtoFromJson(
  Map<String, dynamic> json,
) => GuestAgentRequestDto(
  message: json['message'] as String,
  chatHistory:
      (json['chatHistory'] as List<dynamic>?)
          ?.map((e) => ChatMessageDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
);

Map<String, dynamic> _$GuestAgentRequestDtoToJson(
  GuestAgentRequestDto instance,
) => <String, dynamic>{
  'message': instance.message,
  'chatHistory': instance.chatHistory?.map((e) => e.toJson()).toList(),
};

CreateApiClientDto _$CreateApiClientDtoFromJson(
  Map<String, dynamic> json,
) => CreateApiClientDto(
  name: json['name'] as String,
  description: json['description'] as String,
  allowedIPs:
      (json['allowedIPs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  scopes:
      (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  rateLimit: (json['rateLimit'] as num).toDouble(),
  webhookUrl: json['webhookUrl'] as String?,
  isActive: json['isActive'] as bool?,
  environment:
      CreateApiClientDto.createApiClientDtoEnvironmentEnvironmentNullableFromJson(
        json['environment'],
      ),
);

Map<String, dynamic> _$CreateApiClientDtoToJson(CreateApiClientDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'allowedIPs': instance.allowedIPs,
      'scopes': instance.scopes,
      'rateLimit': instance.rateLimit,
      'webhookUrl': instance.webhookUrl,
      'isActive': instance.isActive,
      'environment': createApiClientDtoEnvironmentNullableToJson(
        instance.environment,
      ),
    };

ApiClient _$ApiClientFromJson(Map<String, dynamic> json) => ApiClient();

Map<String, dynamic> _$ApiClientToJson(ApiClient instance) =>
    <String, dynamic>{};

UpdateApiClientDto _$UpdateApiClientDtoFromJson(
  Map<String, dynamic> json,
) => UpdateApiClientDto(
  name: json['name'] as String?,
  description: json['description'] as String?,
  allowedIPs:
      (json['allowedIPs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      [],
  scopes:
      (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  rateLimit: (json['rateLimit'] as num?)?.toDouble(),
  webhookUrl: json['webhookUrl'] as String?,
  isActive: json['isActive'] as bool?,
  environment:
      UpdateApiClientDto.updateApiClientDtoEnvironmentEnvironmentNullableFromJson(
        json['environment'],
      ),
);

Map<String, dynamic> _$UpdateApiClientDtoToJson(UpdateApiClientDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'allowedIPs': instance.allowedIPs,
      'scopes': instance.scopes,
      'rateLimit': instance.rateLimit,
      'webhookUrl': instance.webhookUrl,
      'isActive': instance.isActive,
      'environment': updateApiClientDtoEnvironmentNullableToJson(
        instance.environment,
      ),
    };

RegenerateKeysResponseDto _$RegenerateKeysResponseDtoFromJson(
  Map<String, dynamic> json,
) => RegenerateKeysResponseDto(
  apiKey: json['apiKey'] as String,
  apiSecret: json['apiSecret'] as String,
  regeneratedAt: json['regeneratedAt'] as String,
);

Map<String, dynamic> _$RegenerateKeysResponseDtoToJson(
  RegenerateKeysResponseDto instance,
) => <String, dynamic>{
  'apiKey': instance.apiKey,
  'apiSecret': instance.apiSecret,
  'regeneratedAt': instance.regeneratedAt,
};

TierLimitsData _$TierLimitsDataFromJson(Map<String, dynamic> json) =>
    TierLimitsData(
      maxSingleTransaction: (json['maxSingleTransaction'] as num).toDouble(),
      dailyTransactionLimit: (json['dailyTransactionLimit'] as num).toDouble(),
      monthlyTransactionLimit: (json['monthlyTransactionLimit'] as num)
          .toDouble(),
      maxWalletBalance: (json['maxWalletBalance'] as num).toDouble(),
      cryptoAllowed: json['cryptoAllowed'] as bool,
      crossBorderAllowed: json['crossBorderAllowed'] as bool,
      cryptoDailyLimit: (json['cryptoDailyLimit'] as num).toDouble(),
      p2pAllowed: json['p2pAllowed'] as bool,
      withdrawalAllowed: json['withdrawalAllowed'] as bool,
    );

Map<String, dynamic> _$TierLimitsDataToJson(TierLimitsData instance) =>
    <String, dynamic>{
      'maxSingleTransaction': instance.maxSingleTransaction,
      'dailyTransactionLimit': instance.dailyTransactionLimit,
      'monthlyTransactionLimit': instance.monthlyTransactionLimit,
      'maxWalletBalance': instance.maxWalletBalance,
      'cryptoAllowed': instance.cryptoAllowed,
      'crossBorderAllowed': instance.crossBorderAllowed,
      'cryptoDailyLimit': instance.cryptoDailyLimit,
      'p2pAllowed': instance.p2pAllowed,
      'withdrawalAllowed': instance.withdrawalAllowed,
    };

VerificationStatusData _$VerificationStatusDataFromJson(
  Map<String, dynamic> json,
) => VerificationStatusData(
  nin: json['nin'] as bool,
  bvn: json['bvn'] as bool,
  governmentId: json['governmentId'] as bool,
  selfie: json['selfie'] as bool,
  biometric: json['biometric'] as bool,
  address: json['address'] as bool,
);

Map<String, dynamic> _$VerificationStatusDataToJson(
  VerificationStatusData instance,
) => <String, dynamic>{
  'nin': instance.nin,
  'bvn': instance.bvn,
  'governmentId': instance.governmentId,
  'selfie': instance.selfie,
  'biometric': instance.biometric,
  'address': instance.address,
};

KycStatusData _$KycStatusDataFromJson(Map<String, dynamic> json) =>
    KycStatusData(
      currentTier: kycStatusDataCurrentTierFromJson(json['currentTier']),
      status: kycStatusDataStatusFromJson(json['status']),
      limits: TierLimitsData.fromJson(json['limits'] as Map<String, dynamic>),
      requirements: json['requirements'] as String,
      verified: VerificationStatusData.fromJson(
        json['verified'] as Map<String, dynamic>,
      ),
      canUpgrade: json['canUpgrade'] as bool,
      nextTier: kycStatusDataNextTierNullableFromJson(json['nextTier']),
    );

Map<String, dynamic> _$KycStatusDataToJson(KycStatusData instance) =>
    <String, dynamic>{
      'currentTier': kycStatusDataCurrentTierToJson(instance.currentTier),
      'status': kycStatusDataStatusToJson(instance.status),
      'limits': instance.limits.toJson(),
      'requirements': instance.requirements,
      'verified': instance.verified.toJson(),
      'canUpgrade': instance.canUpgrade,
      'nextTier': kycStatusDataNextTierNullableToJson(instance.nextTier),
    };

KycStatusResponseDto _$KycStatusResponseDtoFromJson(
  Map<String, dynamic> json,
) => KycStatusResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: KycStatusData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$KycStatusResponseDtoToJson(
  KycStatusResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

SubmitNinDto _$SubmitNinDtoFromJson(Map<String, dynamic> json) =>
    SubmitNinDto(nin: json['nin'] as String);

Map<String, dynamic> _$SubmitNinDtoToJson(SubmitNinDto instance) =>
    <String, dynamic>{'nin': instance.nin};

NinVerificationData _$NinVerificationDataFromJson(Map<String, dynamic> json) =>
    NinVerificationData(
      tier: ninVerificationDataTierFromJson(json['tier']),
      ninVerified: json['ninVerified'] as bool,
      verifiedAt: DateTime.parse(json['verifiedAt'] as String),
      newLimits: TierLimitsData.fromJson(
        json['newLimits'] as Map<String, dynamic>,
      ),
      virtualAccount: VirtualAccountDto.fromJson(
        json['virtualAccount'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$NinVerificationDataToJson(
  NinVerificationData instance,
) => <String, dynamic>{
  'tier': ninVerificationDataTierToJson(instance.tier),
  'ninVerified': instance.ninVerified,
  'verifiedAt': instance.verifiedAt.toIso8601String(),
  'newLimits': instance.newLimits.toJson(),
  'virtualAccount': instance.virtualAccount.toJson(),
};

NinVerificationResponseDto _$NinVerificationResponseDtoFromJson(
  Map<String, dynamic> json,
) => NinVerificationResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: NinVerificationData.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$NinVerificationResponseDtoToJson(
  NinVerificationResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

SubmitBvnDto _$SubmitBvnDtoFromJson(Map<String, dynamic> json) =>
    SubmitBvnDto(bvn: json['bvn'] as String);

Map<String, dynamic> _$SubmitBvnDtoToJson(SubmitBvnDto instance) =>
    <String, dynamic>{'bvn': instance.bvn};

BvnVerificationResponseDto _$BvnVerificationResponseDtoFromJson(
  Map<String, dynamic> json,
) => BvnVerificationResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: json['data'] as Object,
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$BvnVerificationResponseDtoToJson(
  BvnVerificationResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

UploadDocumentDto _$UploadDocumentDtoFromJson(Map<String, dynamic> json) =>
    UploadDocumentDto(
      documentType: uploadDocumentDtoDocumentTypeFromJson(json['documentType']),
      documentUrl: json['documentUrl'] as String,
      documentNumber: json['documentNumber'] as String?,
    );

Map<String, dynamic> _$UploadDocumentDtoToJson(
  UploadDocumentDto instance,
) => <String, dynamic>{
  'documentType': uploadDocumentDtoDocumentTypeToJson(instance.documentType),
  'documentUrl': instance.documentUrl,
  'documentNumber': instance.documentNumber,
};

DocumentUploadResponseDto _$DocumentUploadResponseDtoFromJson(
  Map<String, dynamic> json,
) => DocumentUploadResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: json['data'] as Object,
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$DocumentUploadResponseDtoToJson(
  DocumentUploadResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

CheckTierEligibilityDto _$CheckTierEligibilityDtoFromJson(
  Map<String, dynamic> json,
) => CheckTierEligibilityDto(
  targetTier: checkTierEligibilityDtoTargetTierFromJson(json['targetTier']),
);

Map<String, dynamic> _$CheckTierEligibilityDtoToJson(
  CheckTierEligibilityDto instance,
) => <String, dynamic>{
  'targetTier': checkTierEligibilityDtoTargetTierToJson(instance.targetTier),
};

EligibilityCheckResponseDto _$EligibilityCheckResponseDtoFromJson(
  Map<String, dynamic> json,
) => EligibilityCheckResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: json['data'] as Object,
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$EligibilityCheckResponseDtoToJson(
  EligibilityCheckResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data,
  'errors': instance.errors,
};

SyncPaymentMethodsDto _$SyncPaymentMethodsDtoFromJson(
  Map<String, dynamic> json,
) => SyncPaymentMethodsDto(subWalletId: json['subWalletId'] as String?);

Map<String, dynamic> _$SyncPaymentMethodsDtoToJson(
  SyncPaymentMethodsDto instance,
) => <String, dynamic>{'subWalletId': instance.subWalletId};

PaymentMethodDto _$PaymentMethodDtoFromJson(Map<String, dynamic> json) =>
    PaymentMethodDto(
      id: json['id'] as String,
      type: paymentMethodDtoTypeFromJson(json['type']),
      status: paymentMethodDtoStatusFromJson(json['status']),
      isDefault: json['isDefault'] as bool,
      nickname: json['nickname'] as String,
      isEnabled: json['isEnabled'] as bool,
      lastUsedAt: DateTime.parse(json['lastUsedAt'] as String),
      usageCount: (json['usageCount'] as num).toDouble(),
      capabilities: json['capabilities'] as Object,
      details: json['details'] as Object,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$PaymentMethodDtoToJson(PaymentMethodDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': paymentMethodDtoTypeToJson(instance.type),
      'status': paymentMethodDtoStatusToJson(instance.status),
      'isDefault': instance.isDefault,
      'nickname': instance.nickname,
      'isEnabled': instance.isEnabled,
      'lastUsedAt': instance.lastUsedAt.toIso8601String(),
      'usageCount': instance.usageCount,
      'capabilities': instance.capabilities,
      'details': instance.details,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

PaymentMethodsResponseDto _$PaymentMethodsResponseDtoFromJson(
  Map<String, dynamic> json,
) => PaymentMethodsResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: PaymentMethodDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$PaymentMethodsResponseDtoToJson(
  PaymentMethodsResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

PaymentMethodResponseDto _$PaymentMethodResponseDtoFromJson(
  Map<String, dynamic> json,
) => PaymentMethodResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: PaymentMethodDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$PaymentMethodResponseDtoToJson(
  PaymentMethodResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

AddCardDto _$AddCardDtoFromJson(Map<String, dynamic> json) => AddCardDto(
  cardNumber: json['cardNumber'] as String,
  cvv: json['cvv'] as String,
  expiryMonth: json['expiryMonth'] as String,
  expiryYear: json['expiryYear'] as String,
  cardHolderName: json['cardHolderName'] as String,
);

Map<String, dynamic> _$AddCardDtoToJson(AddCardDto instance) =>
    <String, dynamic>{
      'cardNumber': instance.cardNumber,
      'cvv': instance.cvv,
      'expiryMonth': instance.expiryMonth,
      'expiryYear': instance.expiryYear,
      'cardHolderName': instance.cardHolderName,
    };

AddUssdDto _$AddUssdDtoFromJson(Map<String, dynamic> json) =>
    AddUssdDto(bankCode: json['bankCode'] as String);

Map<String, dynamic> _$AddUssdDtoToJson(AddUssdDto instance) =>
    <String, dynamic>{'bankCode': instance.bankCode};

CreatePaymentMethodDto _$CreatePaymentMethodDtoFromJson(
  Map<String, dynamic> json,
) => CreatePaymentMethodDto(
  type: createPaymentMethodDtoTypeFromJson(json['type']),
  subWalletId: json['subWalletId'] as String,
  nickname: json['nickname'] as String?,
  card: AddCardDto.fromJson(json['card'] as Map<String, dynamic>),
  ussd: json['ussd'] == null
      ? null
      : AddUssdDto.fromJson(json['ussd'] as Map<String, dynamic>),
  virtualAccountId: json['virtualAccountId'] as String?,
);

Map<String, dynamic> _$CreatePaymentMethodDtoToJson(
  CreatePaymentMethodDto instance,
) => <String, dynamic>{
  'type': createPaymentMethodDtoTypeToJson(instance.type),
  'subWalletId': instance.subWalletId,
  'nickname': instance.nickname,
  'card': instance.card.toJson(),
  'ussd': instance.ussd?.toJson(),
  'virtualAccountId': instance.virtualAccountId,
};

CreateCustomerDto _$CreateCustomerDtoFromJson(Map<String, dynamic> json) =>
    CreateCustomerDto(
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      externalRef: json['externalRef'] as String,
    );

Map<String, dynamic> _$CreateCustomerDtoToJson(CreateCustomerDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'externalRef': instance.externalRef,
    };

UpdateCustomerDto _$UpdateCustomerDtoFromJson(Map<String, dynamic> json) =>
    UpdateCustomerDto(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      externalRef: json['externalRef'] as String?,
    );

Map<String, dynamic> _$UpdateCustomerDtoToJson(UpdateCustomerDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'externalRef': instance.externalRef,
    };

BillerDto _$BillerDtoFromJson(Map<String, dynamic> json) => BillerDto(
  id: (json['id'] as num).toDouble(),
  billerCode: json['biller_code'] as String,
  name: json['name'] as String,
  defaultCommission: (json['default_commission'] as num).toDouble(),
  dateAdded: json['date_added'] as String,
  country: json['country'] as String,
  isAirtime: json['is_airtime'] as bool,
  billerName: json['biller_name'] as String,
  itemCode: json['item_code'] as String,
  shortName: json['short_name'] as String,
  fee: (json['fee'] as num).toDouble(),
  commissionOnFee: json['commission_on_fee'] as bool,
  regExpression: json['reg_expression'] as String,
  labelName: json['label_name'] as String,
  amount: (json['amount'] as num).toDouble(),
  isResolvable: json['is_resolvable'] as bool,
  groupName: json['group_name'] as String,
  categoryName: json['category_name'] as String,
  isData: json['is_data'] as bool?,
  defaultCommissionOnAmount: (json['default_commission_on_amount'] as num)
      .toDouble(),
  commissionOnFeeOrAmount: (json['commission_on_fee_or_amount'] as num)
      .toDouble(),
  validityPeriod: json['validity_period'] as String?,
);

Map<String, dynamic> _$BillerDtoToJson(BillerDto instance) => <String, dynamic>{
  'id': instance.id,
  'biller_code': instance.billerCode,
  'name': instance.name,
  'default_commission': instance.defaultCommission,
  'date_added': instance.dateAdded,
  'country': instance.country,
  'is_airtime': instance.isAirtime,
  'biller_name': instance.billerName,
  'item_code': instance.itemCode,
  'short_name': instance.shortName,
  'fee': instance.fee,
  'commission_on_fee': instance.commissionOnFee,
  'reg_expression': instance.regExpression,
  'label_name': instance.labelName,
  'amount': instance.amount,
  'is_resolvable': instance.isResolvable,
  'group_name': instance.groupName,
  'category_name': instance.categoryName,
  'is_data': instance.isData,
  'default_commission_on_amount': instance.defaultCommissionOnAmount,
  'commission_on_fee_or_amount': instance.commissionOnFeeOrAmount,
  'validity_period': instance.validityPeriod,
};

BillerItemsResponseDto _$BillerItemsResponseDtoFromJson(
  Map<String, dynamic> json,
) => BillerItemsResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => BillerDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$BillerItemsResponseDtoToJson(
  BillerItemsResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'errors': instance.errors,
};

ValidateBillDto _$ValidateBillDtoFromJson(Map<String, dynamic> json) =>
    ValidateBillDto(
      customer: json['customer'] as String,
      billerCode: json['billerCode'] as String,
      itemCode: json['itemCode'] as String,
    );

Map<String, dynamic> _$ValidateBillDtoToJson(ValidateBillDto instance) =>
    <String, dynamic>{
      'customer': instance.customer,
      'billerCode': instance.billerCode,
      'itemCode': instance.itemCode,
    };

CreateBillScheduleDto _$CreateBillScheduleDtoFromJson(
  Map<String, dynamic> json,
) => CreateBillScheduleDto(
  executionDate: DateTime.parse(json['executionDate'] as String),
  isRecurring: json['isRecurring'] as bool? ?? false,
  recurrencePattern: json['recurrencePattern'] as String?,
);

Map<String, dynamic> _$CreateBillScheduleDtoToJson(
  CreateBillScheduleDto instance,
) => <String, dynamic>{
  'executionDate': instance.executionDate.toIso8601String(),
  'isRecurring': instance.isRecurring,
  'recurrencePattern': instance.recurrencePattern,
};

AirtimePurchaseDto _$AirtimePurchaseDtoFromJson(Map<String, dynamic> json) =>
    AirtimePurchaseDto(
      isSchedule: json['isSchedule'] as bool?,
      scheduleData: json['scheduleData'] == null
          ? null
          : CreateBillScheduleDto.fromJson(
              json['scheduleData'] as Map<String, dynamic>,
            ),
      saveBeneficiary: json['saveBeneficiary'] as bool? ?? false,
      beneficiaryName: json['beneficiaryName'] as String?,
      phoneNumber: json['phoneNumber'] as String,
      biller: json['biller'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$AirtimePurchaseDtoToJson(AirtimePurchaseDto instance) =>
    <String, dynamic>{
      'isSchedule': instance.isSchedule,
      'scheduleData': instance.scheduleData?.toJson(),
      'saveBeneficiary': instance.saveBeneficiary,
      'beneficiaryName': instance.beneficiaryName,
      'phoneNumber': instance.phoneNumber,
      'biller': instance.biller,
      'amount': instance.amount,
    };

BillPaymentDto _$BillPaymentDtoFromJson(Map<String, dynamic> json) =>
    BillPaymentDto(
      id: json['id'] as String,
      createdAt: json['createdAt'] as String,
      userId: json['userId'] as String,
      reference: json['reference'] as String,
      billerCode: json['billerCode'] as String,
      itemCode: json['itemCode'] as String,
      customer: json['customer'] as String,
      amount: (json['amount'] as num).toDouble(),
      type: json['type'] as String,
      status: json['status'] as String,
      txRef: json['txRef'] as String,
      billerName: json['billerName'] as String,
      metadata: json['metadata'] as String?,
      token: json['token'] as String?,
      units: json['units'] as String?,
      validityPeriod: json['validityPeriod'] as String?,
    );

Map<String, dynamic> _$BillPaymentDtoToJson(BillPaymentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'userId': instance.userId,
      'reference': instance.reference,
      'billerCode': instance.billerCode,
      'itemCode': instance.itemCode,
      'customer': instance.customer,
      'amount': instance.amount,
      'type': instance.type,
      'status': instance.status,
      'txRef': instance.txRef,
      'billerName': instance.billerName,
      'metadata': instance.metadata,
      'token': instance.token,
      'units': instance.units,
      'validityPeriod': instance.validityPeriod,
    };

BillPaymentResponseDto _$BillPaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => BillPaymentResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: BillPaymentDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$BillPaymentResponseDtoToJson(
  BillPaymentResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

DataPurchaseDto _$DataPurchaseDtoFromJson(Map<String, dynamic> json) =>
    DataPurchaseDto(
      isSchedule: json['isSchedule'] as bool?,
      scheduleData: json['scheduleData'] == null
          ? null
          : CreateBillScheduleDto.fromJson(
              json['scheduleData'] as Map<String, dynamic>,
            ),
      saveBeneficiary: json['saveBeneficiary'] as bool? ?? false,
      beneficiaryName: json['beneficiaryName'] as String?,
      phoneNumber: json['phoneNumber'] as String,
      biller: json['biller'] as String,
      itemCode: json['itemCode'] as String,
    );

Map<String, dynamic> _$DataPurchaseDtoToJson(DataPurchaseDto instance) =>
    <String, dynamic>{
      'isSchedule': instance.isSchedule,
      'scheduleData': instance.scheduleData?.toJson(),
      'saveBeneficiary': instance.saveBeneficiary,
      'beneficiaryName': instance.beneficiaryName,
      'phoneNumber': instance.phoneNumber,
      'biller': instance.biller,
      'itemCode': instance.itemCode,
    };

ElectricityPaymentDto _$ElectricityPaymentDtoFromJson(
  Map<String, dynamic> json,
) => ElectricityPaymentDto(
  isSchedule: json['isSchedule'] as bool?,
  scheduleData: json['scheduleData'] == null
      ? null
      : CreateBillScheduleDto.fromJson(
          json['scheduleData'] as Map<String, dynamic>,
        ),
  saveBeneficiary: json['saveBeneficiary'] as bool? ?? false,
  beneficiaryName: json['beneficiaryName'] as String?,
  meterNumber: json['meterNumber'] as String,
  amount: (json['amount'] as num).toDouble(),
  disco: json['disco'] as String,
);

Map<String, dynamic> _$ElectricityPaymentDtoToJson(
  ElectricityPaymentDto instance,
) => <String, dynamic>{
  'isSchedule': instance.isSchedule,
  'scheduleData': instance.scheduleData?.toJson(),
  'saveBeneficiary': instance.saveBeneficiary,
  'beneficiaryName': instance.beneficiaryName,
  'meterNumber': instance.meterNumber,
  'amount': instance.amount,
  'disco': instance.disco,
};

CableTvPaymentDto _$CableTvPaymentDtoFromJson(Map<String, dynamic> json) =>
    CableTvPaymentDto(
      isSchedule: json['isSchedule'] as bool?,
      scheduleData: json['scheduleData'] == null
          ? null
          : CreateBillScheduleDto.fromJson(
              json['scheduleData'] as Map<String, dynamic>,
            ),
      saveBeneficiary: json['saveBeneficiary'] as bool? ?? false,
      beneficiaryName: json['beneficiaryName'] as String?,
      smartcardNumber: json['smartcardNumber'] as String,
      biller: json['biller'] as String,
      itemCode: json['itemCode'] as String,
    );

Map<String, dynamic> _$CableTvPaymentDtoToJson(CableTvPaymentDto instance) =>
    <String, dynamic>{
      'isSchedule': instance.isSchedule,
      'scheduleData': instance.scheduleData?.toJson(),
      'saveBeneficiary': instance.saveBeneficiary,
      'beneficiaryName': instance.beneficiaryName,
      'smartcardNumber': instance.smartcardNumber,
      'biller': instance.biller,
      'itemCode': instance.itemCode,
    };

BillDto _$BillDtoFromJson(Map<String, dynamic> json) => BillDto(
  id: json['id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  deletedDate: DateTime.parse(json['deletedDate'] as String),
  userId: json['userId'] as String,
  reference: json['reference'] as String,
  billerCode: json['billerCode'] as String,
  itemCode: json['itemCode'] as String,
  customer: json['customer'] as String,
  amount: (json['amount'] as num).toDouble(),
  type: billDtoTypeFromJson(json['type']),
  status: billDtoStatusFromJson(json['status']),
  txRef: json['txRef'] as String?,
  billerName: json['billerName'] as String?,
  validityPeriod: json['validityPeriod'] as String?,
  metadata: json['metadata'] as String?,
  token: json['token'] as String?,
  units: json['units'] as String?,
  providerData: json['providerData'] as String,
);

Map<String, dynamic> _$BillDtoToJson(BillDto instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'deletedDate': instance.deletedDate.toIso8601String(),
  'userId': instance.userId,
  'reference': instance.reference,
  'billerCode': instance.billerCode,
  'itemCode': instance.itemCode,
  'customer': instance.customer,
  'amount': instance.amount,
  'type': billDtoTypeToJson(instance.type),
  'status': billDtoStatusToJson(instance.status),
  'txRef': instance.txRef,
  'billerName': instance.billerName,
  'validityPeriod': instance.validityPeriod,
  'metadata': instance.metadata,
  'token': instance.token,
  'units': instance.units,
  'providerData': instance.providerData,
};

BillHistoryDto _$BillHistoryDtoFromJson(Map<String, dynamic> json) =>
    BillHistoryDto(
      bills:
          (json['bills'] as List<dynamic>?)
              ?.map((e) => BillDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      page: (json['page'] as num).toDouble(),
      limit: (json['limit'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
      totalPages: (json['totalPages'] as num).toDouble(),
      hasNext: json['hasNext'] as bool,
      hasPrev: json['hasPrev'] as bool,
    );

Map<String, dynamic> _$BillHistoryDtoToJson(BillHistoryDto instance) =>
    <String, dynamic>{
      'bills': instance.bills.map((e) => e.toJson()).toList(),
      'page': instance.page,
      'limit': instance.limit,
      'total': instance.total,
      'totalPages': instance.totalPages,
      'hasNext': instance.hasNext,
      'hasPrev': instance.hasPrev,
    };

BillHistoryResponseDto _$BillHistoryResponseDtoFromJson(
  Map<String, dynamic> json,
) => BillHistoryResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: BillHistoryDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$BillHistoryResponseDtoToJson(
  BillHistoryResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

BillResponseDto _$BillResponseDtoFromJson(Map<String, dynamic> json) =>
    BillResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: BillDto.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$BillResponseDtoToJson(BillResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data.toJson(),
      'errors': instance.errors,
    };

BillNotFoundResponseDto _$BillNotFoundResponseDtoFromJson(
  Map<String, dynamic> json,
) => BillNotFoundResponseDto(
  success: json['success'] as bool,
  message: json['message'] as String,
  errorCode: json['errorCode'] as String,
  reference: json['reference'] as String,
);

Map<String, dynamic> _$BillNotFoundResponseDtoToJson(
  BillNotFoundResponseDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'errorCode': instance.errorCode,
  'reference': instance.reference,
};

CreateMobileBeneficiaryDto _$CreateMobileBeneficiaryDtoFromJson(
  Map<String, dynamic> json,
) => CreateMobileBeneficiaryDto(
  type: createMobileBeneficiaryDtoTypeFromJson(json['type']),
  name: json['name'] as String,
  isFavorite: json['isFavorite'] as bool? ?? false,
  mobileNumber: json['mobileNumber'] as String,
  mobileOperator: createMobileBeneficiaryDtoMobileOperatorFromJson(
    json['mobileOperator'],
  ),
);

Map<String, dynamic> _$CreateMobileBeneficiaryDtoToJson(
  CreateMobileBeneficiaryDto instance,
) => <String, dynamic>{
  'type': createMobileBeneficiaryDtoTypeToJson(instance.type),
  'name': instance.name,
  'isFavorite': instance.isFavorite,
  'mobileNumber': instance.mobileNumber,
  'mobileOperator': createMobileBeneficiaryDtoMobileOperatorToJson(
    instance.mobileOperator,
  ),
};

CreateElectricityBeneficiaryDto _$CreateElectricityBeneficiaryDtoFromJson(
  Map<String, dynamic> json,
) => CreateElectricityBeneficiaryDto(
  type: createElectricityBeneficiaryDtoTypeFromJson(json['type']),
  name: json['name'] as String,
  isFavorite: json['isFavorite'] as bool? ?? false,
  meterNumber: json['meterNumber'] as String,
  electricityProvider:
      createElectricityBeneficiaryDtoElectricityProviderFromJson(
        json['electricityProvider'],
      ),
);

Map<String, dynamic> _$CreateElectricityBeneficiaryDtoToJson(
  CreateElectricityBeneficiaryDto instance,
) => <String, dynamic>{
  'type': createElectricityBeneficiaryDtoTypeToJson(instance.type),
  'name': instance.name,
  'isFavorite': instance.isFavorite,
  'meterNumber': instance.meterNumber,
  'electricityProvider':
      createElectricityBeneficiaryDtoElectricityProviderToJson(
        instance.electricityProvider,
      ),
};

CreateCableTvBeneficiaryDto _$CreateCableTvBeneficiaryDtoFromJson(
  Map<String, dynamic> json,
) => CreateCableTvBeneficiaryDto(
  type: createCableTvBeneficiaryDtoTypeFromJson(json['type']),
  name: json['name'] as String,
  isFavorite: json['isFavorite'] as bool? ?? false,
  smartCardNumber: json['smartCardNumber'] as String,
  cableProvider: createCableTvBeneficiaryDtoCableProviderFromJson(
    json['cableProvider'],
  ),
);

Map<String, dynamic> _$CreateCableTvBeneficiaryDtoToJson(
  CreateCableTvBeneficiaryDto instance,
) => <String, dynamic>{
  'type': createCableTvBeneficiaryDtoTypeToJson(instance.type),
  'name': instance.name,
  'isFavorite': instance.isFavorite,
  'smartCardNumber': instance.smartCardNumber,
  'cableProvider': createCableTvBeneficiaryDtoCableProviderToJson(
    instance.cableProvider,
  ),
};

UpdateBillBeneficiaryDto _$UpdateBillBeneficiaryDtoFromJson(
  Map<String, dynamic> json,
) => UpdateBillBeneficiaryDto(
  name: json['name'] as String?,
  mobileNumber: json['mobileNumber'] as String?,
  mobileOperator: updateBillBeneficiaryDtoMobileOperatorNullableFromJson(
    json['mobileOperator'],
  ),
  meterNumber: json['meterNumber'] as String?,
  electricityProvider:
      updateBillBeneficiaryDtoElectricityProviderNullableFromJson(
        json['electricityProvider'],
      ),
  smartCardNumber: json['smartCardNumber'] as String?,
  cableProvider: updateBillBeneficiaryDtoCableProviderNullableFromJson(
    json['cableProvider'],
  ),
  isFavorite: json['isFavorite'] as bool?,
);

Map<String, dynamic> _$UpdateBillBeneficiaryDtoToJson(
  UpdateBillBeneficiaryDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'mobileNumber': instance.mobileNumber,
  'mobileOperator': updateBillBeneficiaryDtoMobileOperatorNullableToJson(
    instance.mobileOperator,
  ),
  'meterNumber': instance.meterNumber,
  'electricityProvider':
      updateBillBeneficiaryDtoElectricityProviderNullableToJson(
        instance.electricityProvider,
      ),
  'smartCardNumber': instance.smartCardNumber,
  'cableProvider': updateBillBeneficiaryDtoCableProviderNullableToJson(
    instance.cableProvider,
  ),
  'isFavorite': instance.isFavorite,
};

CreateScheduleDto _$CreateScheduleDtoFromJson(Map<String, dynamic> json) =>
    CreateScheduleDto(
      type: createScheduleDtoTypeFromJson(json['type']),
      payload: json['payload'] as Object,
      executionDate: DateTime.parse(json['executionDate'] as String),
      isRecurring: json['isRecurring'] as bool? ?? false,
      recurrencePattern: json['recurrencePattern'] as String?,
    );

Map<String, dynamic> _$CreateScheduleDtoToJson(CreateScheduleDto instance) =>
    <String, dynamic>{
      'type': createScheduleDtoTypeToJson(instance.type),
      'payload': instance.payload,
      'executionDate': instance.executionDate.toIso8601String(),
      'isRecurring': instance.isRecurring,
      'recurrencePattern': instance.recurrencePattern,
    };

ScheduleResponseDto _$ScheduleResponseDtoFromJson(Map<String, dynamic> json) =>
    ScheduleResponseDto(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedDate: DateTime.parse(json['deletedDate'] as String),
      type: json['type'] as String,
      payload: json['payload'] as Object,
      executionDate: DateTime.parse(json['executionDate'] as String),
      status: json['status'] as String,
      isRecurring: json['isRecurring'] as bool?,
      recurrencePattern: json['recurrencePattern'] as String?,
      nextExecutionDate: json['nextExecutionDate'] == null
          ? null
          : DateTime.parse(json['nextExecutionDate'] as String),
    );

Map<String, dynamic> _$ScheduleResponseDtoToJson(
  ScheduleResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'deletedDate': instance.deletedDate.toIso8601String(),
  'type': instance.type,
  'payload': instance.payload,
  'executionDate': instance.executionDate.toIso8601String(),
  'status': instance.status,
  'isRecurring': instance.isRecurring,
  'recurrencePattern': instance.recurrencePattern,
  'nextExecutionDate': instance.nextExecutionDate?.toIso8601String(),
};

UpdateScheduleDto _$UpdateScheduleDtoFromJson(Map<String, dynamic> json) =>
    UpdateScheduleDto(
      executionDate: json['executionDate'] == null
          ? null
          : DateTime.parse(json['executionDate'] as String),
      status: updateScheduleDtoStatusNullableFromJson(json['status']),
      isRecurring: json['isRecurring'] as bool?,
      recurrencePattern: json['recurrencePattern'] as String?,
    );

Map<String, dynamic> _$UpdateScheduleDtoToJson(UpdateScheduleDto instance) =>
    <String, dynamic>{
      'executionDate': instance.executionDate?.toIso8601String(),
      'status': updateScheduleDtoStatusNullableToJson(instance.status),
      'isRecurring': instance.isRecurring,
      'recurrencePattern': instance.recurrencePattern,
    };

SyncStocksData _$SyncStocksDataFromJson(Map<String, dynamic> json) =>
    SyncStocksData(
      created: (json['created'] as num).toDouble(),
      updated: (json['updated'] as num).toDouble(),
    );

Map<String, dynamic> _$SyncStocksDataToJson(SyncStocksData instance) =>
    <String, dynamic>{'created': instance.created, 'updated': instance.updated};

SyncStocksResponseDto _$SyncStocksResponseDtoFromJson(
  Map<String, dynamic> json,
) => SyncStocksResponseDto(
  success: json['success'] as bool,
  message: json['message'] as String,
  data: SyncStocksData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SyncStocksResponseDtoToJson(
  SyncStocksResponseDto instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data.toJson(),
};

StockMetadataDto _$StockMetadataDtoFromJson(Map<String, dynamic> json) =>
    StockMetadataDto(
      issuer: json['issuer'] as String?,
      website: json['website'] as String?,
      decimals: (json['decimals'] as num?)?.toDouble(),
      lookupKey: json['lookupKey'] as String?,
      blockchain: json['blockchain'] as String?,
    );

Map<String, dynamic> _$StockMetadataDtoToJson(StockMetadataDto instance) =>
    <String, dynamic>{
      'issuer': instance.issuer,
      'website': instance.website,
      'decimals': instance.decimals,
      'lookupKey': instance.lookupKey,
      'blockchain': instance.blockchain,
    };

StockDetailDto _$StockDetailDtoFromJson(
  Map<String, dynamic> json,
) => StockDetailDto(
  id: json['id'] as String,
  name: json['name'] as String,
  type: stockDetailDtoTypeFromJson(json['type']),
  symbol: json['symbol'] as String,
  ticker: json['ticker'] as String,
  price: json['price'] as String,
  ngnPrice: json['ngnPrice'] as String,
  usdcPrice: json['usdcPrice'] as String,
  isTokenized: json['isTokenized'] as bool,
  tokenAddress: json['tokenAddress'] as String,
  metadata: StockMetadataDto.fromJson(json['metadata'] as Map<String, dynamic>),
  lastPriceUpdate: DateTime.parse(json['lastPriceUpdate'] as String),
  hasRealTimePrice: json['hasRealTimePrice'] as bool,
  isAvailableForPurchase: json['isAvailableForPurchase'] as bool,
  priceSource: stockDetailDtoPriceSourceNullableFromJson(json['priceSource']),
);

Map<String, dynamic> _$StockDetailDtoToJson(
  StockDetailDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': stockDetailDtoTypeToJson(instance.type),
  'symbol': instance.symbol,
  'ticker': instance.ticker,
  'price': instance.price,
  'ngnPrice': instance.ngnPrice,
  'usdcPrice': instance.usdcPrice,
  'isTokenized': instance.isTokenized,
  'tokenAddress': instance.tokenAddress,
  'metadata': instance.metadata.toJson(),
  'lastPriceUpdate': instance.lastPriceUpdate.toIso8601String(),
  'hasRealTimePrice': instance.hasRealTimePrice,
  'isAvailableForPurchase': instance.isAvailableForPurchase,
  'priceSource': stockDetailDtoPriceSourceNullableToJson(instance.priceSource),
};

AvailableStocksPaginationDataDto _$AvailableStocksPaginationDataDtoFromJson(
  Map<String, dynamic> json,
) => AvailableStocksPaginationDataDto(
  page: (json['page'] as num).toDouble(),
  limit: (json['limit'] as num).toDouble(),
  total: (json['total'] as num).toDouble(),
  totalPages: (json['totalPages'] as num).toDouble(),
  withRealTimePrices: (json['withRealTimePrices'] as num).toDouble(),
);

Map<String, dynamic> _$AvailableStocksPaginationDataDtoToJson(
  AvailableStocksPaginationDataDto instance,
) => <String, dynamic>{
  'page': instance.page,
  'limit': instance.limit,
  'total': instance.total,
  'totalPages': instance.totalPages,
  'withRealTimePrices': instance.withRealTimePrices,
};

AvailableStocksResponseDataDto _$AvailableStocksResponseDataDtoFromJson(
  Map<String, dynamic> json,
) => AvailableStocksResponseDataDto(
  stocks:
      (json['stocks'] as List<dynamic>?)
          ?.map((e) => StockDetailDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  pagination: AvailableStocksPaginationDataDto.fromJson(
    json['pagination'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AvailableStocksResponseDataDtoToJson(
  AvailableStocksResponseDataDto instance,
) => <String, dynamic>{
  'stocks': instance.stocks.map((e) => e.toJson()).toList(),
  'pagination': instance.pagination.toJson(),
};

AvailableStocksResponseDto _$AvailableStocksResponseDtoFromJson(
  Map<String, dynamic> json,
) => AvailableStocksResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: AvailableStocksResponseDataDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$AvailableStocksResponseDtoToJson(
  AvailableStocksResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

StockResponseDto _$StockResponseDtoFromJson(Map<String, dynamic> json) =>
    StockResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: StockDetailDto.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$StockResponseDtoToJson(StockResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data.toJson(),
      'errors': instance.errors,
    };

BuyStockDto _$BuyStockDtoFromJson(Map<String, dynamic> json) => BuyStockDto(
  ticker: json['ticker'] as String,
  amount: (json['amount'] as num).toDouble(),
  expectedPrice: (json['expectedPrice'] as num?)?.toDouble(),
);

Map<String, dynamic> _$BuyStockDtoToJson(BuyStockDto instance) =>
    <String, dynamic>{
      'ticker': instance.ticker,
      'amount': instance.amount,
      'expectedPrice': instance.expectedPrice,
    };

PurchaseTransactionDto _$PurchaseTransactionDtoFromJson(
  Map<String, dynamic> json,
) => PurchaseTransactionDto(
  usdcAmount: (json['usdcAmount'] as num).toDouble(),
  tokensReceived: (json['tokensReceived'] as num).toDouble(),
  pricePerToken: (json['pricePerToken'] as num).toDouble(),
  txHash: json['txHash'] as String,
);

Map<String, dynamic> _$PurchaseTransactionDtoToJson(
  PurchaseTransactionDto instance,
) => <String, dynamic>{
  'usdcAmount': instance.usdcAmount,
  'tokensReceived': instance.tokensReceived,
  'pricePerToken': instance.pricePerToken,
  'txHash': instance.txHash,
};

HoldingPerformanceDto _$HoldingPerformanceDtoFromJson(
  Map<String, dynamic> json,
) => HoldingPerformanceDto(
  impliedAveragePrice: (json['impliedAveragePrice'] as num).toDouble(),
  currentPrice: json['currentPrice'] as String,
  unrealizedProfit: (json['unrealizedProfit'] as num).toDouble(),
  profitPercentage: (json['profitPercentage'] as num).toDouble(),
  purchaseCount: (json['purchaseCount'] as num).toDouble(),
);

Map<String, dynamic> _$HoldingPerformanceDtoToJson(
  HoldingPerformanceDto instance,
) => <String, dynamic>{
  'impliedAveragePrice': instance.impliedAveragePrice,
  'currentPrice': instance.currentPrice,
  'unrealizedProfit': instance.unrealizedProfit,
  'profitPercentage': instance.profitPercentage,
  'purchaseCount': instance.purchaseCount,
};

HoldingDto _$HoldingDtoFromJson(Map<String, dynamic> json) => HoldingDto(
  id: json['id'] as String,
  ticker: json['ticker'] as String,
  totalQuantity: (json['totalQuantity'] as num).toDouble(),
  totalInvested: (json['totalInvested'] as num).toDouble(),
  currentValue: (json['currentValue'] as num).toDouble(),
  performance: HoldingPerformanceDto.fromJson(
    json['performance'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$HoldingDtoToJson(HoldingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticker': instance.ticker,
      'totalQuantity': instance.totalQuantity,
      'totalInvested': instance.totalInvested,
      'currentValue': instance.currentValue,
      'performance': instance.performance.toJson(),
    };

OrderDetailsDto _$OrderDetailsDtoFromJson(Map<String, dynamic> json) =>
    OrderDetailsDto(
      tokenAddress: json['tokenAddress'] as String,
      userWalletAddress: json['userWalletAddress'] as String,
      usdcAmount: json['usdcAmount'] as String,
      txHash: json['txHash'] as String,
    );

Map<String, dynamic> _$OrderDetailsDtoToJson(OrderDetailsDto instance) =>
    <String, dynamic>{
      'tokenAddress': instance.tokenAddress,
      'userWalletAddress': instance.userWalletAddress,
      'usdcAmount': instance.usdcAmount,
      'txHash': instance.txHash,
    };

BuyStockResponseDataDto _$BuyStockResponseDataDtoFromJson(
  Map<String, dynamic> json,
) => BuyStockResponseDataDto(
  orderId: json['orderId'] as String,
  security: StockDetailDto.fromJson(json['security'] as Map<String, dynamic>),
  transaction: PurchaseTransactionDto.fromJson(
    json['transaction'] as Map<String, dynamic>,
  ),
  holding: HoldingDto.fromJson(json['holding'] as Map<String, dynamic>),
  orderDetails: OrderDetailsDto.fromJson(
    json['orderDetails'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$BuyStockResponseDataDtoToJson(
  BuyStockResponseDataDto instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'security': instance.security.toJson(),
  'transaction': instance.transaction.toJson(),
  'holding': instance.holding.toJson(),
  'orderDetails': instance.orderDetails.toJson(),
};

BuyStockResponseDto _$BuyStockResponseDtoFromJson(Map<String, dynamic> json) =>
    BuyStockResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: BuyStockResponseDataDto.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$BuyStockResponseDtoToJson(
  BuyStockResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

PurchaseHistoryItemDto _$PurchaseHistoryItemDtoFromJson(
  Map<String, dynamic> json,
) => PurchaseHistoryItemDto(
  date: DateTime.parse(json['date'] as String),
  quantity: (json['quantity'] as num).toDouble(),
  price: (json['price'] as num).toDouble(),
  totalCost: (json['totalCost'] as num).toDouble(),
  transactionId: json['transactionId'] as String,
);

Map<String, dynamic> _$PurchaseHistoryItemDtoToJson(
  PurchaseHistoryItemDto instance,
) => <String, dynamic>{
  'date': instance.date.toIso8601String(),
  'quantity': instance.quantity,
  'price': instance.price,
  'totalCost': instance.totalCost,
  'transactionId': instance.transactionId,
};

SecurityHoldingMetadataDto _$SecurityHoldingMetadataDtoFromJson(
  Map<String, dynamic> json,
) => SecurityHoldingMetadataDto(
  firstPurchaseAt: json['firstPurchaseAt'] as String?,
  lastPurchaseAt: json['lastPurchaseAt'] as String?,
  walletAddress: json['walletAddress'] as String?,
  blockchain: json['blockchain'] as String?,
  lastPurchaseTxHash: json['lastPurchaseTxHash'] as String?,
  purchaseCount: (json['purchaseCount'] as num?)?.toDouble(),
  fullySoldAt: json['fullySoldAt'] as String?,
);

Map<String, dynamic> _$SecurityHoldingMetadataDtoToJson(
  SecurityHoldingMetadataDto instance,
) => <String, dynamic>{
  'firstPurchaseAt': instance.firstPurchaseAt,
  'lastPurchaseAt': instance.lastPurchaseAt,
  'walletAddress': instance.walletAddress,
  'blockchain': instance.blockchain,
  'lastPurchaseTxHash': instance.lastPurchaseTxHash,
  'purchaseCount': instance.purchaseCount,
  'fullySoldAt': instance.fullySoldAt,
};

SecurityHoldingDto _$SecurityHoldingDtoFromJson(Map<String, dynamic> json) =>
    SecurityHoldingDto(
      id: json['id'] as String,
      userId: json['userId'] as String,
      securityId: json['securityId'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      totalInvested: (json['totalInvested'] as num).toDouble(),
      purchaseHistory:
          (json['purchaseHistory'] as List<dynamic>?)
              ?.map(
                (e) =>
                    PurchaseHistoryItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
      isActive: json['isActive'] as bool,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      metadata: json['metadata'] == null
          ? null
          : SecurityHoldingMetadataDto.fromJson(
              json['metadata'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$SecurityHoldingDtoToJson(
  SecurityHoldingDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'securityId': instance.securityId,
  'quantity': instance.quantity,
  'totalInvested': instance.totalInvested,
  'purchaseHistory': instance.purchaseHistory.map((e) => e.toJson()).toList(),
  'isActive': instance.isActive,
  'lastUpdated': instance.lastUpdated.toIso8601String(),
  'metadata': instance.metadata?.toJson(),
};

UserStockHoldingsSummaryDto _$UserStockHoldingsSummaryDtoFromJson(
  Map<String, dynamic> json,
) => UserStockHoldingsSummaryDto(
  totalHoldings: (json['totalHoldings'] as num).toDouble(),
  portfolioValue: (json['portfolioValue'] as num).toDouble(),
  totalInvested: (json['totalInvested'] as num).toDouble(),
  unrealizedProfit: (json['unrealizedProfit'] as num).toDouble(),
  profitPercentage: (json['profitPercentage'] as num).toDouble(),
);

Map<String, dynamic> _$UserStockHoldingsSummaryDtoToJson(
  UserStockHoldingsSummaryDto instance,
) => <String, dynamic>{
  'totalHoldings': instance.totalHoldings,
  'portfolioValue': instance.portfolioValue,
  'totalInvested': instance.totalInvested,
  'unrealizedProfit': instance.unrealizedProfit,
  'profitPercentage': instance.profitPercentage,
};

UserStockHoldingsDto _$UserStockHoldingsDtoFromJson(
  Map<String, dynamic> json,
) => UserStockHoldingsDto(
  holdings:
      (json['holdings'] as List<dynamic>?)
          ?.map((e) => SecurityHoldingDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  summary: UserStockHoldingsSummaryDto.fromJson(
    json['summary'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$UserStockHoldingsDtoToJson(
  UserStockHoldingsDto instance,
) => <String, dynamic>{
  'holdings': instance.holdings.map((e) => e.toJson()).toList(),
  'summary': instance.summary.toJson(),
};

UserStockHoldingsResponseDto _$UserStockHoldingsResponseDtoFromJson(
  Map<String, dynamic> json,
) => UserStockHoldingsResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: UserStockHoldingsDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$UserStockHoldingsResponseDtoToJson(
  UserStockHoldingsResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

ChatSettings _$ChatSettingsFromJson(Map<String, dynamic> json) =>
    ChatSettings();

Map<String, dynamic> _$ChatSettingsToJson(ChatSettings instance) =>
    <String, dynamic>{};

ChainConfigDto _$ChainConfigDtoFromJson(Map<String, dynamic> json) =>
    ChainConfigDto(
      name: json['name'] as String,
      chainId: (json['chainId'] as num).toDouble(),
      rpcUrl: json['rpcUrl'] as String,
      explorerUrl: json['explorerUrl'] as String,
      nativeCurrency: json['nativeCurrency'] as String,
    );

Map<String, dynamic> _$ChainConfigDtoToJson(ChainConfigDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'chainId': instance.chainId,
      'rpcUrl': instance.rpcUrl,
      'explorerUrl': instance.explorerUrl,
      'nativeCurrency': instance.nativeCurrency,
    };

CurrencyPreferencesDto _$CurrencyPreferencesDtoFromJson(
  Map<String, dynamic> json,
) => CurrencyPreferencesDto(
  fiat: currencyPreferencesDtoFiatFromJson(json['fiat']),
  crypto: currencyPreferencesDtoCryptoListFromJson(json['crypto'] as List?),
);

Map<String, dynamic> _$CurrencyPreferencesDtoToJson(
  CurrencyPreferencesDto instance,
) => <String, dynamic>{
  'fiat': currencyPreferencesDtoFiatToJson(instance.fiat),
  'crypto': currencyPreferencesDtoCryptoListToJson(instance.crypto),
};

SecurityPreferencesDto _$SecurityPreferencesDtoFromJson(
  Map<String, dynamic> json,
) => SecurityPreferencesDto(
  confirmLargeTransactions: json['confirmLargeTransactions'] as bool,
  largeTransactionThreshold: (json['largeTransactionThreshold'] as num)
      .toDouble(),
  twoFactorAuth: json['twoFactorAuth'] as bool,
);

Map<String, dynamic> _$SecurityPreferencesDtoToJson(
  SecurityPreferencesDto instance,
) => <String, dynamic>{
  'confirmLargeTransactions': instance.confirmLargeTransactions,
  'largeTransactionThreshold': instance.largeTransactionThreshold,
  'twoFactorAuth': instance.twoFactorAuth,
};

NotificationPreferencesDto _$NotificationPreferencesDtoFromJson(
  Map<String, dynamic> json,
) => NotificationPreferencesDto(
  transactionAlerts: json['transactionAlerts'] as bool,
  priceAlerts: json['priceAlerts'] as bool,
  marketUpdates: json['marketUpdates'] as bool,
);

Map<String, dynamic> _$NotificationPreferencesDtoToJson(
  NotificationPreferencesDto instance,
) => <String, dynamic>{
  'transactionAlerts': instance.transactionAlerts,
  'priceAlerts': instance.priceAlerts,
  'marketUpdates': instance.marketUpdates,
};

ChatSettingsDto _$ChatSettingsDtoFromJson(Map<String, dynamic> json) =>
    ChatSettingsDto(
      walletType: chatSettingsDtoWalletTypeNullableFromJson(json['walletType']),
      preferredBlockchain: chatSettingsDtoPreferredBlockchainNullableFromJson(
        json['preferredBlockchain'],
      ),
      defaultNetwork: chatSettingsDtoDefaultNetworkNullableFromJson(
        json['defaultNetwork'],
      ),
      defaultChain: json['defaultChain'] == null
          ? null
          : ChainConfigDto.fromJson(
              json['defaultChain'] as Map<String, dynamic>,
            ),
      networks: json['networks'],
      currencyPreferences: json['currencyPreferences'] == null
          ? null
          : CurrencyPreferencesDto.fromJson(
              json['currencyPreferences'] as Map<String, dynamic>,
            ),
      riskTolerance: chatSettingsDtoRiskToleranceNullableFromJson(
        json['riskTolerance'],
      ),
      transactionSpeed: chatSettingsDtoTransactionSpeedNullableFromJson(
        json['transactionSpeed'],
      ),
      securityPreferences: json['securityPreferences'] == null
          ? null
          : SecurityPreferencesDto.fromJson(
              json['securityPreferences'] as Map<String, dynamic>,
            ),
      notificationPreferences: json['notificationPreferences'] == null
          ? null
          : NotificationPreferencesDto.fromJson(
              json['notificationPreferences'] as Map<String, dynamic>,
            ),
      language: json['language'] as String?,
      darkMode: json['darkMode'] as bool?,
      notifications: json['notifications'] as bool?,
    );

Map<String, dynamic> _$ChatSettingsDtoToJson(
  ChatSettingsDto instance,
) => <String, dynamic>{
  'walletType': chatSettingsDtoWalletTypeNullableToJson(instance.walletType),
  'preferredBlockchain': chatSettingsDtoPreferredBlockchainNullableToJson(
    instance.preferredBlockchain,
  ),
  'defaultNetwork': chatSettingsDtoDefaultNetworkNullableToJson(
    instance.defaultNetwork,
  ),
  'defaultChain': instance.defaultChain?.toJson(),
  'networks': instance.networks,
  'currencyPreferences': instance.currencyPreferences?.toJson(),
  'riskTolerance': chatSettingsDtoRiskToleranceNullableToJson(
    instance.riskTolerance,
  ),
  'transactionSpeed': chatSettingsDtoTransactionSpeedNullableToJson(
    instance.transactionSpeed,
  ),
  'securityPreferences': instance.securityPreferences?.toJson(),
  'notificationPreferences': instance.notificationPreferences?.toJson(),
  'language': instance.language,
  'darkMode': instance.darkMode,
  'notifications': instance.notifications,
};

SwapNativeToTokenDto _$SwapNativeToTokenDtoFromJson(
  Map<String, dynamic> json,
) => SwapNativeToTokenDto(
  amount: json['amount'] as String,
  amountOut: json['amountOut'] as String,
  tokenOut: json['tokenOut'] as String,
  chainId: (json['chainId'] as num).toDouble(),
);

Map<String, dynamic> _$SwapNativeToTokenDtoToJson(
  SwapNativeToTokenDto instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'amountOut': instance.amountOut,
  'tokenOut': instance.tokenOut,
  'chainId': instance.chainId,
};

SimpleTokenDto _$SimpleTokenDtoFromJson(Map<String, dynamic> json) =>
    SimpleTokenDto(
      address: json['address'] as String,
      symbol: json['symbol'] as String,
      decimals: (json['decimals'] as num).toDouble(),
    );

Map<String, dynamic> _$SimpleTokenDtoToJson(SimpleTokenDto instance) =>
    <String, dynamic>{
      'address': instance.address,
      'symbol': instance.symbol,
      'decimals': instance.decimals,
    };

SwapPriceDto _$SwapPriceDtoFromJson(Map<String, dynamic> json) => SwapPriceDto(
  quoteId: json['quoteId'] as String,
  fromToken: SimpleTokenDto.fromJson(json['fromToken'] as Map<String, dynamic>),
  toToken: SimpleTokenDto.fromJson(json['toToken'] as Map<String, dynamic>),
  fromAmount: json['fromAmount'] as String,
  toAmount: json['toAmount'] as String,
  rate: json['rate'] as String,
  reverseRate: json['reverseRate'] as String,
  minToAmount: json['minToAmount'] as String,
  protocolFee: json['protocolFee'] as String,
  protocolFeeToken: SimpleTokenDto.fromJson(
    json['protocolFeeToken'] as Map<String, dynamic>,
  ),
  estimatedGas: json['estimatedGas'] as String,
  estimatedGasUsd: json['estimatedGasUsd'] as String,
  priceImpact: json['priceImpact'] as String,
  liquidityAvailable: json['liquidityAvailable'] as bool,
  totalValueUsd: json['totalValueUsd'] as String,
  expiryTimestamp: (json['expiryTimestamp'] as num).toDouble(),
  blockNumber: json['blockNumber'] as String,
  chainId: (json['chainId'] as num).toDouble(),
);

Map<String, dynamic> _$SwapPriceDtoToJson(SwapPriceDto instance) =>
    <String, dynamic>{
      'quoteId': instance.quoteId,
      'fromToken': instance.fromToken.toJson(),
      'toToken': instance.toToken.toJson(),
      'fromAmount': instance.fromAmount,
      'toAmount': instance.toAmount,
      'rate': instance.rate,
      'reverseRate': instance.reverseRate,
      'minToAmount': instance.minToAmount,
      'protocolFee': instance.protocolFee,
      'protocolFeeToken': instance.protocolFeeToken.toJson(),
      'estimatedGas': instance.estimatedGas,
      'estimatedGasUsd': instance.estimatedGasUsd,
      'priceImpact': instance.priceImpact,
      'liquidityAvailable': instance.liquidityAvailable,
      'totalValueUsd': instance.totalValueUsd,
      'expiryTimestamp': instance.expiryTimestamp,
      'blockNumber': instance.blockNumber,
      'chainId': instance.chainId,
    };

SwapPriceResponseDto _$SwapPriceResponseDtoFromJson(
  Map<String, dynamic> json,
) => SwapPriceResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: SwapPriceDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$SwapPriceResponseDtoToJson(
  SwapPriceResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

TxHashDto _$TxHashDtoFromJson(Map<String, dynamic> json) =>
    TxHashDto(txHash: json['txHash'] as String);

Map<String, dynamic> _$TxHashDtoToJson(TxHashDto instance) => <String, dynamic>{
  'txHash': instance.txHash,
};

TxHashResponseDto _$TxHashResponseDtoFromJson(Map<String, dynamic> json) =>
    TxHashResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: TxHashDto.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$TxHashResponseDtoToJson(TxHashResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data.toJson(),
      'errors': instance.errors,
    };

EvmSwapTokenToTokenDto _$EvmSwapTokenToTokenDtoFromJson(
  Map<String, dynamic> json,
) => EvmSwapTokenToTokenDto(
  tokenIn: json['tokenIn'] as String,
  tokenOut: json['tokenOut'] as String,
  amount: json['amount'] as String,
  chainId: (json['chainId'] as num).toDouble(),
);

Map<String, dynamic> _$EvmSwapTokenToTokenDtoToJson(
  EvmSwapTokenToTokenDto instance,
) => <String, dynamic>{
  'tokenIn': instance.tokenIn,
  'tokenOut': instance.tokenOut,
  'amount': instance.amount,
  'chainId': instance.chainId,
};

SwapTokenToNativeDto _$SwapTokenToNativeDtoFromJson(
  Map<String, dynamic> json,
) => SwapTokenToNativeDto(
  amount: json['amount'] as String,
  tokenIn: json['tokenIn'] as String,
  chainId: (json['chainId'] as num).toDouble(),
);

Map<String, dynamic> _$SwapTokenToNativeDtoToJson(
  SwapTokenToNativeDto instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'tokenIn': instance.tokenIn,
  'chainId': instance.chainId,
};

SwapTokenInfoDto _$SwapTokenInfoDtoFromJson(Map<String, dynamic> json) =>
    SwapTokenInfoDto(
      address: json['address'] as String,
      symbol: json['symbol'] as String,
      decimals: (json['decimals'] as num).toDouble(),
      name: json['name'] as String,
      logoUri: json['logoUri'] as String?,
    );

Map<String, dynamic> _$SwapTokenInfoDtoToJson(SwapTokenInfoDto instance) =>
    <String, dynamic>{
      'address': instance.address,
      'symbol': instance.symbol,
      'decimals': instance.decimals,
      'name': instance.name,
      'logoUri': instance.logoUri,
    };

SwapAmountsDto _$SwapAmountsDtoFromJson(Map<String, dynamic> json) =>
    SwapAmountsDto(
      inputAmount: json['inputAmount'] as String,
      outputAmount: json['outputAmount'] as String,
      minOutputAmount: json['minOutputAmount'] as String,
      inputAmountRaw: json['inputAmountRaw'] as String,
      outputAmountRaw: json['outputAmountRaw'] as String,
    );

Map<String, dynamic> _$SwapAmountsDtoToJson(SwapAmountsDto instance) =>
    <String, dynamic>{
      'inputAmount': instance.inputAmount,
      'outputAmount': instance.outputAmount,
      'minOutputAmount': instance.minOutputAmount,
      'inputAmountRaw': instance.inputAmountRaw,
      'outputAmountRaw': instance.outputAmountRaw,
    };

SwapRateDto _$SwapRateDtoFromJson(Map<String, dynamic> json) => SwapRateDto(
  rate: json['rate'] as String,
  reverseRate: json['reverseRate'] as String,
  usdRate: json['usdRate'] as String,
);

Map<String, dynamic> _$SwapRateDtoToJson(SwapRateDto instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'reverseRate': instance.reverseRate,
      'usdRate': instance.usdRate,
    };

SwapFeesDto _$SwapFeesDtoFromJson(Map<String, dynamic> json) => SwapFeesDto(
  protocolFeePercent: json['protocolFeePercent'] as String,
  protocolFeeAmount: json['protocolFeeAmount'] as String,
  platformFeePercent: json['platformFeePercent'] as String,
  totalFeePercent: json['totalFeePercent'] as String,
  totalFeeAmount: json['totalFeeAmount'] as String,
  gasFee: json['gasFee'] as String,
  totalCost: json['totalCost'] as String,
);

Map<String, dynamic> _$SwapFeesDtoToJson(SwapFeesDto instance) =>
    <String, dynamic>{
      'protocolFeePercent': instance.protocolFeePercent,
      'protocolFeeAmount': instance.protocolFeeAmount,
      'platformFeePercent': instance.platformFeePercent,
      'totalFeePercent': instance.totalFeePercent,
      'totalFeeAmount': instance.totalFeeAmount,
      'gasFee': instance.gasFee,
      'totalCost': instance.totalCost,
    };

SwapRouteDto _$SwapRouteDtoFromJson(Map<String, dynamic> json) => SwapRouteDto(
  hops: (json['hops'] as num).toDouble(),
  dexes:
      (json['dexes'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
  tokens:
      (json['tokens'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  efficiencyScore: (json['efficiencyScore'] as num).toDouble(),
);

Map<String, dynamic> _$SwapRouteDtoToJson(SwapRouteDto instance) =>
    <String, dynamic>{
      'hops': instance.hops,
      'dexes': instance.dexes,
      'tokens': instance.tokens,
      'efficiencyScore': instance.efficiencyScore,
    };

SwapQuoteDto _$SwapQuoteDtoFromJson(Map<String, dynamic> json) => SwapQuoteDto(
  quoteId: json['quoteId'] as String,
  swapMode: swapQuoteDtoSwapModeFromJson(json['swapMode']),
  fromToken: SwapTokenInfoDto.fromJson(
    json['fromToken'] as Map<String, dynamic>,
  ),
  toToken: SwapTokenInfoDto.fromJson(json['toToken'] as Map<String, dynamic>),
  amounts: SwapAmountsDto.fromJson(json['amounts'] as Map<String, dynamic>),
  rates: SwapRateDto.fromJson(json['rates'] as Map<String, dynamic>),
  fees: SwapFeesDto.fromJson(json['fees'] as Map<String, dynamic>),
  route: SwapRouteDto.fromJson(json['route'] as Map<String, dynamic>),
  priceImpact: json['priceImpact'] as String,
  usdValues: json['usdValues'] as Object,
  slippageTolerance: json['slippageTolerance'] as String,
  expiryTimestamp: (json['expiryTimestamp'] as num).toDouble(),
  expiresIn: (json['expiresIn'] as num).toDouble(),
  estimatedSwapTime: (json['estimatedSwapTime'] as num).toDouble(),
  network: json['network'] as String,
  executable: json['executable'] as bool,
  warnings:
      (json['warnings'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  rawQuote: json['rawQuote'],
);

Map<String, dynamic> _$SwapQuoteDtoToJson(SwapQuoteDto instance) =>
    <String, dynamic>{
      'quoteId': instance.quoteId,
      'swapMode': swapQuoteDtoSwapModeToJson(instance.swapMode),
      'fromToken': instance.fromToken.toJson(),
      'toToken': instance.toToken.toJson(),
      'amounts': instance.amounts.toJson(),
      'rates': instance.rates.toJson(),
      'fees': instance.fees.toJson(),
      'route': instance.route.toJson(),
      'priceImpact': instance.priceImpact,
      'usdValues': instance.usdValues,
      'slippageTolerance': instance.slippageTolerance,
      'expiryTimestamp': instance.expiryTimestamp,
      'expiresIn': instance.expiresIn,
      'estimatedSwapTime': instance.estimatedSwapTime,
      'network': instance.network,
      'executable': instance.executable,
      'warnings': instance.warnings,
      'rawQuote': instance.rawQuote,
    };

SwapQuoteResponseDto _$SwapQuoteResponseDtoFromJson(
  Map<String, dynamic> json,
) => SwapQuoteResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: SwapQuoteDto.fromJson(json['data'] as Map<String, dynamic>),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$SwapQuoteResponseDtoToJson(
  SwapQuoteResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

SwapSolToTokenDto _$SwapSolToTokenDtoFromJson(Map<String, dynamic> json) =>
    SwapSolToTokenDto(
      outputMint: json['outputMint'] as String,
      amount: (json['amount'] as num).toDouble(),
      slippageBps: (json['slippageBps'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SwapSolToTokenDtoToJson(SwapSolToTokenDto instance) =>
    <String, dynamic>{
      'outputMint': instance.outputMint,
      'amount': instance.amount,
      'slippageBps': instance.slippageBps,
    };

SwapDto _$SwapDtoFromJson(Map<String, dynamic> json) => SwapDto(
  signature: json['signature'] as String,
  txUrl: json['txUrl'] as String,
);

Map<String, dynamic> _$SwapDtoToJson(SwapDto instance) => <String, dynamic>{
  'signature': instance.signature,
  'txUrl': instance.txUrl,
};

SwapResponseDto _$SwapResponseDtoFromJson(Map<String, dynamic> json) =>
    SwapResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: SwapDto.fromJson(json['data'] as Map<String, dynamic>),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$SwapResponseDtoToJson(SwapResponseDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data.toJson(),
      'errors': instance.errors,
    };

SwapTokenToTokenDto _$SwapTokenToTokenDtoFromJson(Map<String, dynamic> json) =>
    SwapTokenToTokenDto(
      inputMint: json['inputMint'] as String,
      outputMint: json['outputMint'] as String,
      amount: (json['amount'] as num).toDouble(),
      slippageBps: (json['slippageBps'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SwapTokenToTokenDtoToJson(
  SwapTokenToTokenDto instance,
) => <String, dynamic>{
  'inputMint': instance.inputMint,
  'outputMint': instance.outputMint,
  'amount': instance.amount,
  'slippageBps': instance.slippageBps,
};

SwapTokenToSolDto _$SwapTokenToSolDtoFromJson(Map<String, dynamic> json) =>
    SwapTokenToSolDto(
      inputMint: json['inputMint'] as String,
      amount: (json['amount'] as num).toDouble(),
      slippageBps: (json['slippageBps'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$SwapTokenToSolDtoToJson(SwapTokenToSolDto instance) =>
    <String, dynamic>{
      'inputMint': instance.inputMint,
      'amount': instance.amount,
      'slippageBps': instance.slippageBps,
    };

PayoutBankDto _$PayoutBankDtoFromJson(Map<String, dynamic> json) =>
    PayoutBankDto(name: json['name'] as String, code: json['code'] as String);

Map<String, dynamic> _$PayoutBankDtoToJson(PayoutBankDto instance) =>
    <String, dynamic>{'name': instance.name, 'code': instance.code};

PayoutBanksResponseDto _$PayoutBanksResponseDtoFromJson(
  Map<String, dynamic> json,
) => PayoutBanksResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => PayoutBankDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      [],
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$PayoutBanksResponseDtoToJson(
  PayoutBanksResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'errors': instance.errors,
};

VerifyOfframpBankAccountRequestDto _$VerifyOfframpBankAccountRequestDtoFromJson(
  Map<String, dynamic> json,
) => VerifyOfframpBankAccountRequestDto(
  bankCode: json['bankCode'] as String,
  accountNumber: json['accountNumber'] as String,
);

Map<String, dynamic> _$VerifyOfframpBankAccountRequestDtoToJson(
  VerifyOfframpBankAccountRequestDto instance,
) => <String, dynamic>{
  'bankCode': instance.bankCode,
  'accountNumber': instance.accountNumber,
};

VerifyOfframpBankAccountResponseDataDto
_$VerifyOfframpBankAccountResponseDataDtoFromJson(Map<String, dynamic> json) =>
    VerifyOfframpBankAccountResponseDataDto(
      bankCode: json['bankCode'] as String,
      bankName: json['bankName'] as String,
      accountNumber: json['accountNumber'] as String,
      accountName: json['accountName'] as String,
    );

Map<String, dynamic> _$VerifyOfframpBankAccountResponseDataDtoToJson(
  VerifyOfframpBankAccountResponseDataDto instance,
) => <String, dynamic>{
  'bankCode': instance.bankCode,
  'bankName': instance.bankName,
  'accountNumber': instance.accountNumber,
  'accountName': instance.accountName,
};

VerifyOfframpBankAccountResponseDto
_$VerifyOfframpBankAccountResponseDtoFromJson(Map<String, dynamic> json) =>
    VerifyOfframpBankAccountResponseDto(
      statusCode: (json['statusCode'] as num).toDouble(),
      message: json['message'] as String,
      data: VerifyOfframpBankAccountResponseDataDto.fromJson(
        json['data'] as Map<String, dynamic>,
      ),
      errors: json['errors'] as Object,
    );

Map<String, dynamic> _$VerifyOfframpBankAccountResponseDtoToJson(
  VerifyOfframpBankAccountResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

CryptoAmountDto _$CryptoAmountDtoFromJson(Map<String, dynamic> json) =>
    CryptoAmountDto(
      value: (json['value'] as num).toDouble(),
      asset: cryptoAmountDtoAssetFromJson(json['asset']),
      network: cryptoAmountDtoNetworkFromJson(json['network']),
    );

Map<String, dynamic> _$CryptoAmountDtoToJson(CryptoAmountDto instance) =>
    <String, dynamic>{
      'value': instance.value,
      'asset': cryptoAmountDtoAssetToJson(instance.asset),
      'network': cryptoAmountDtoNetworkToJson(instance.network),
    };

FiatAmountDto _$FiatAmountDtoFromJson(Map<String, dynamic> json) =>
    FiatAmountDto(
      value: (json['value'] as num).toDouble(),
      currency: fiatAmountDtoCurrencyFromJson(json['currency']),
    );

Map<String, dynamic> _$FiatAmountDtoToJson(FiatAmountDto instance) =>
    <String, dynamic>{
      'value': instance.value,
      'currency': fiatAmountDtoCurrencyToJson(instance.currency),
    };

AmountsDto _$AmountsDtoFromJson(Map<String, dynamic> json) => AmountsDto(
  crypto: CryptoAmountDto.fromJson(json['crypto'] as Map<String, dynamic>),
  fiat: FiatAmountDto.fromJson(json['fiat'] as Map<String, dynamic>),
  exchangeRate: (json['exchangeRate'] as num).toDouble(),
  totalFee: (json['totalFee'] as num).toDouble(),
);

Map<String, dynamic> _$AmountsDtoToJson(AmountsDto instance) =>
    <String, dynamic>{
      'crypto': instance.crypto.toJson(),
      'fiat': instance.fiat.toJson(),
      'exchangeRate': instance.exchangeRate,
      'totalFee': instance.totalFee,
    };

BeneficiaryDto _$BeneficiaryDtoFromJson(Map<String, dynamic> json) =>
    BeneficiaryDto(
      bankCode: json['bankCode'] as String,
      bankName: json['bankName'] as String,
      accountNumber: json['accountNumber'] as String,
      accountName: json['accountName'] as String,
    );

Map<String, dynamic> _$BeneficiaryDtoToJson(BeneficiaryDto instance) =>
    <String, dynamic>{
      'bankCode': instance.bankCode,
      'bankName': instance.bankName,
      'accountNumber': instance.accountNumber,
      'accountName': instance.accountName,
    };

OnChainDto _$OnChainDtoFromJson(Map<String, dynamic> json) => OnChainDto(
  depositAddress: json['depositAddress'] as String,
  txHash: json['txHash'] as String?,
  sourceWallet: onChainDtoSourceWalletFromJson(json['sourceWallet']),
);

Map<String, dynamic> _$OnChainDtoToJson(OnChainDto instance) =>
    <String, dynamic>{
      'depositAddress': instance.depositAddress,
      'txHash': instance.txHash,
      'sourceWallet': onChainDtoSourceWalletToJson(instance.sourceWallet),
    };

TimestampsDto _$TimestampsDtoFromJson(Map<String, dynamic> json) =>
    TimestampsDto(
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      completed: json['completed'] == null
          ? null
          : DateTime.parse(json['completed'] as String),
      failed: json['failed'] == null
          ? null
          : DateTime.parse(json['failed'] as String),
      depositDetected: json['depositDetected'] == null
          ? null
          : DateTime.parse(json['depositDetected'] as String),
      depositConfirmed: json['depositConfirmed'] == null
          ? null
          : DateTime.parse(json['depositConfirmed'] as String),
      depositExpires: json['depositExpires'] == null
          ? null
          : DateTime.parse(json['depositExpires'] as String),
    );

Map<String, dynamic> _$TimestampsDtoToJson(TimestampsDto instance) =>
    <String, dynamic>{
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'completed': instance.completed?.toIso8601String(),
      'failed': instance.failed?.toIso8601String(),
      'depositDetected': instance.depositDetected?.toIso8601String(),
      'depositConfirmed': instance.depositConfirmed?.toIso8601String(),
      'depositExpires': instance.depositExpires?.toIso8601String(),
    };

OfframpOrderResponseDataDto _$OfframpOrderResponseDataDtoFromJson(
  Map<String, dynamic> json,
) => OfframpOrderResponseDataDto(
  id: json['id'] as String,
  reference: json['reference'] as String,
  status: offrampOrderResponseDataDtoStatusFromJson(json['status']),
  amounts: AmountsDto.fromJson(json['amounts'] as Map<String, dynamic>),
  beneficiary: BeneficiaryDto.fromJson(
    json['beneficiary'] as Map<String, dynamic>,
  ),
  onChain: OnChainDto.fromJson(json['onChain'] as Map<String, dynamic>),
  meta: json['meta'] as Map<String, dynamic>,
  failureReason: json['failureReason'] as String?,
  timestamps: TimestampsDto.fromJson(
    json['timestamps'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$OfframpOrderResponseDataDtoToJson(
  OfframpOrderResponseDataDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'reference': instance.reference,
  'status': offrampOrderResponseDataDtoStatusToJson(instance.status),
  'amounts': instance.amounts.toJson(),
  'beneficiary': instance.beneficiary.toJson(),
  'onChain': instance.onChain.toJson(),
  'meta': instance.meta,
  'failureReason': instance.failureReason,
  'timestamps': instance.timestamps.toJson(),
};

OfframpOrderResponseDto _$OfframpOrderResponseDtoFromJson(
  Map<String, dynamic> json,
) => OfframpOrderResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: OfframpOrderResponseDataDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$OfframpOrderResponseDtoToJson(
  OfframpOrderResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

DepositInstructionsDto _$DepositInstructionsDtoFromJson(
  Map<String, dynamic> json,
) => DepositInstructionsDto(
  address: json['address'] as String,
  amount: (json['amount'] as num).toDouble(),
  token: depositInstructionsDtoTokenFromJson(json['token']),
  network: depositInstructionsDtoNetworkFromJson(json['network']),
  chainId: (json['chainId'] as num).toDouble(),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  displayNetwork: json['displayNetwork'] as String,
  qrCodeData: json['qrCodeData'] as String,
);

Map<String, dynamic> _$DepositInstructionsDtoToJson(
  DepositInstructionsDto instance,
) => <String, dynamic>{
  'address': instance.address,
  'amount': instance.amount,
  'token': depositInstructionsDtoTokenToJson(instance.token),
  'network': depositInstructionsDtoNetworkToJson(instance.network),
  'chainId': instance.chainId,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'displayNetwork': instance.displayNetwork,
  'qrCodeData': instance.qrCodeData,
};

CurrentBalanceDto _$CurrentBalanceDtoFromJson(Map<String, dynamic> json) =>
    CurrentBalanceDto(
      amount: (json['amount'] as num).toDouble(),
      token: currentBalanceDtoTokenFromJson(json['token']),
      network: currentBalanceDtoNetworkFromJson(json['network']),
      shortfall: (json['shortfall'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentBalanceDtoToJson(CurrentBalanceDto instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'token': currentBalanceDtoTokenToJson(instance.token),
      'network': currentBalanceDtoNetworkToJson(instance.network),
      'shortfall': instance.shortfall,
    };

OfframpAwaitingDepositDataDto _$OfframpAwaitingDepositDataDtoFromJson(
  Map<String, dynamic> json,
) => OfframpAwaitingDepositDataDto(
  transaction: OfframpOrderResponseDataDto.fromJson(
    json['transaction'] as Map<String, dynamic>,
  ),
  depositInstructions: DepositInstructionsDto.fromJson(
    json['depositInstructions'] as Map<String, dynamic>,
  ),
  currentBalance: CurrentBalanceDto.fromJson(
    json['currentBalance'] as Map<String, dynamic>,
  ),
  warnings:
      (json['warnings'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
  nextSteps:
      (json['nextSteps'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      [],
);

Map<String, dynamic> _$OfframpAwaitingDepositDataDtoToJson(
  OfframpAwaitingDepositDataDto instance,
) => <String, dynamic>{
  'transaction': instance.transaction.toJson(),
  'depositInstructions': instance.depositInstructions.toJson(),
  'currentBalance': instance.currentBalance.toJson(),
  'warnings': instance.warnings,
  'nextSteps': instance.nextSteps,
};

OfframpAwaitingDepositResponseDto _$OfframpAwaitingDepositResponseDtoFromJson(
  Map<String, dynamic> json,
) => OfframpAwaitingDepositResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data: OfframpAwaitingDepositDataDto.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  errors: json['errors'] as Object,
);

Map<String, dynamic> _$OfframpAwaitingDepositResponseDtoToJson(
  OfframpAwaitingDepositResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.toJson(),
  'errors': instance.errors,
};

OfframpExchangeRateDto _$OfframpExchangeRateDtoFromJson(
  Map<String, dynamic> json,
) => OfframpExchangeRateDto(
  token: offrampExchangeRateDtoTokenFromJson(json['token']),
  amount: (json['amount'] as num).toDouble(),
  network: offrampExchangeRateDtoNetworkFromJson(json['network']),
  fiat: OfframpExchangeRateDto.offrampExchangeRateDtoFiatFiatFromJson(
    json['fiat'],
  ),
  rate: (json['rate'] as num).toDouble(),
);

Map<String, dynamic> _$OfframpExchangeRateDtoToJson(
  OfframpExchangeRateDto instance,
) => <String, dynamic>{
  'token': offrampExchangeRateDtoTokenToJson(instance.token),
  'amount': instance.amount,
  'network': offrampExchangeRateDtoNetworkToJson(instance.network),
  'fiat': offrampExchangeRateDtoFiatToJson(instance.fiat),
  'rate': instance.rate,
};

SwapCryptoToFiatRequestDto _$SwapCryptoToFiatRequestDtoFromJson(
  Map<String, dynamic> json,
) => SwapCryptoToFiatRequestDto(
  amount: (json['amount'] as num).toDouble(),
  token: swapCryptoToFiatRequestDtoTokenFromJson(json['token']),
  network: swapCryptoToFiatRequestDtoNetworkFromJson(json['network']),
  fiatCurrency:
      SwapCryptoToFiatRequestDto.swapCryptoToFiatRequestDtoFiatCurrencyFiatCurrencyFromJson(
        json['fiatCurrency'],
      ),
  bankCode: json['bankCode'] as String,
  accountNumber: json['accountNumber'] as String,
  accountName: json['accountName'] as String,
);

Map<String, dynamic> _$SwapCryptoToFiatRequestDtoToJson(
  SwapCryptoToFiatRequestDto instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'token': swapCryptoToFiatRequestDtoTokenToJson(instance.token),
  'network': swapCryptoToFiatRequestDtoNetworkToJson(instance.network),
  'fiatCurrency': swapCryptoToFiatRequestDtoFiatCurrencyToJson(
    instance.fiatCurrency,
  ),
  'bankCode': instance.bankCode,
  'accountNumber': instance.accountNumber,
  'accountName': instance.accountName,
};

OfframpTransactionResponseDto _$OfframpTransactionResponseDtoFromJson(
  Map<String, dynamic> json,
) => OfframpTransactionResponseDto(
  id: json['id'] as String,
  internalReference: json['internalReference'] as String,
  provider: offrampTransactionResponseDtoProviderFromJson(json['provider']),
  providerTransactionId: json['providerTransactionId'] as String,
  status: offrampTransactionResponseDtoStatusFromJson(json['status']),
  cryptoAmount: (json['cryptoAmount'] as num).toDouble(),
  fiatAmount: (json['fiatAmount'] as num).toDouble(),
  exchangeRate: (json['exchangeRate'] as num).toDouble(),
  fromCurrency: json['fromCurrency'] as String,
  toCurrency: json['toCurrency'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$OfframpTransactionResponseDtoToJson(
  OfframpTransactionResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'internalReference': instance.internalReference,
  'provider': offrampTransactionResponseDtoProviderToJson(instance.provider),
  'providerTransactionId': instance.providerTransactionId,
  'status': offrampTransactionResponseDtoStatusToJson(instance.status),
  'cryptoAmount': instance.cryptoAmount,
  'fiatAmount': instance.fiatAmount,
  'exchangeRate': instance.exchangeRate,
  'fromCurrency': instance.fromCurrency,
  'toCurrency': instance.toCurrency,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'expiresAt': instance.expiresAt.toIso8601String(),
};

OfframpTransactionListResponseDto _$OfframpTransactionListResponseDtoFromJson(
  Map<String, dynamic> json,
) => OfframpTransactionListResponseDto(
  statusCode: (json['statusCode'] as num).toDouble(),
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>?)
          ?.map(
            (e) => OfframpTransactionResponseDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList() ??
      [],
  meta: json['meta'] as Object,
);

Map<String, dynamic> _$OfframpTransactionListResponseDtoToJson(
  OfframpTransactionListResponseDto instance,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'meta': instance.meta,
};

OfframpTransactionDetailResponseDto
_$OfframpTransactionDetailResponseDtoFromJson(Map<String, dynamic> json) =>
    OfframpTransactionDetailResponseDto(
      id: json['id'] as String,
      internalReference: json['internalReference'] as String,
      provider: offrampTransactionDetailResponseDtoProviderFromJson(
        json['provider'],
      ),
      providerTransactionId: json['providerTransactionId'] as String,
      status: offrampTransactionDetailResponseDtoStatusFromJson(json['status']),
      cryptoAmount: (json['cryptoAmount'] as num).toDouble(),
      fiatAmount: (json['fiatAmount'] as num).toDouble(),
      exchangeRate: (json['exchangeRate'] as num).toDouble(),
      fromCurrency: json['fromCurrency'] as String,
      toCurrency: json['toCurrency'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      expiresAt: DateTime.parse(json['expiresAt'] as String),
      providerStatus: json['providerStatus'] as String,
      fees: json['fees'] as Object,
      debitPaymentDetails: json['debitPaymentDetails'] as Object,
      creditPaymentDetails: json['creditPaymentDetails'] as Object,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$OfframpTransactionDetailResponseDtoToJson(
  OfframpTransactionDetailResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'internalReference': instance.internalReference,
  'provider': offrampTransactionDetailResponseDtoProviderToJson(
    instance.provider,
  ),
  'providerTransactionId': instance.providerTransactionId,
  'status': offrampTransactionDetailResponseDtoStatusToJson(instance.status),
  'cryptoAmount': instance.cryptoAmount,
  'fiatAmount': instance.fiatAmount,
  'exchangeRate': instance.exchangeRate,
  'fromCurrency': instance.fromCurrency,
  'toCurrency': instance.toCurrency,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'expiresAt': instance.expiresAt.toIso8601String(),
  'providerStatus': instance.providerStatus,
  'fees': instance.fees,
  'debitPaymentDetails': instance.debitPaymentDetails,
  'creditPaymentDetails': instance.creditPaymentDetails,
  'completedAt': instance.completedAt?.toIso8601String(),
};

CreateBeneficiaryDto _$CreateBeneficiaryDtoFromJson(
  Map<String, dynamic> json,
) => CreateBeneficiaryDto(
  name: json['name'] as String,
  accountNumber: json['accountNumber'] as String?,
  bankCode: json['bankCode'] as String?,
  bankName: json['bankName'] as String?,
  email: json['email'] as String?,
  evmAddress: json['evmAddress'] as String?,
  solAddress: json['solAddress'] as String?,
  currency: json['currency'] as String?,
  type: createBeneficiaryDtoTypeFromJson(json['type']),
);

Map<String, dynamic> _$CreateBeneficiaryDtoToJson(
  CreateBeneficiaryDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'accountNumber': instance.accountNumber,
  'bankCode': instance.bankCode,
  'bankName': instance.bankName,
  'email': instance.email,
  'evmAddress': instance.evmAddress,
  'solAddress': instance.solAddress,
  'currency': instance.currency,
  'type': createBeneficiaryDtoTypeToJson(instance.type),
};

UpdateBeneficiaryDto _$UpdateBeneficiaryDtoFromJson(
  Map<String, dynamic> json,
) => UpdateBeneficiaryDto(
  name: json['name'] as String?,
  accountNumber: json['accountNumber'] as String?,
  bankCode: json['bankCode'] as String?,
  bankName: json['bankName'] as String?,
  email: json['email'] as String?,
  evmAddress: json['evmAddress'] as String?,
  solAddress: json['solAddress'] as String?,
  currency: json['currency'] as String?,
  type: updateBeneficiaryDtoTypeNullableFromJson(json['type']),
);

Map<String, dynamic> _$UpdateBeneficiaryDtoToJson(
  UpdateBeneficiaryDto instance,
) => <String, dynamic>{
  'name': instance.name,
  'accountNumber': instance.accountNumber,
  'bankCode': instance.bankCode,
  'bankName': instance.bankName,
  'email': instance.email,
  'evmAddress': instance.evmAddress,
  'solAddress': instance.solAddress,
  'currency': instance.currency,
  'type': updateBeneficiaryDtoTypeNullableToJson(instance.type),
};

TransferToBeneficiaryDto _$TransferToBeneficiaryDtoFromJson(
  Map<String, dynamic> json,
) => TransferToBeneficiaryDto(
  beneficiaryId: json['beneficiaryId'] as String,
  amount: (json['amount'] as num).toDouble(),
  transactionPin: json['transactionPin'] as String,
  currency: json['currency'] as String?,
  narration: json['narration'] as String?,
);

Map<String, dynamic> _$TransferToBeneficiaryDtoToJson(
  TransferToBeneficiaryDto instance,
) => <String, dynamic>{
  'beneficiaryId': instance.beneficiaryId,
  'amount': instance.amount,
  'transactionPin': instance.transactionPin,
  'currency': instance.currency,
  'narration': instance.narration,
};

CreateAdminDto _$CreateAdminDtoFromJson(Map<String, dynamic> json) =>
    CreateAdminDto(
      email: json['email'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      pin: json['pin'] as String,
    );

Map<String, dynamic> _$CreateAdminDtoToJson(CreateAdminDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'pin': instance.pin,
    };

AssignRoleDto _$AssignRoleDtoFromJson(Map<String, dynamic> json) =>
    AssignRoleDto(
      userId: json['userId'] as String,
      roleIds:
          (json['roleIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$AssignRoleDtoToJson(AssignRoleDto instance) =>
    <String, dynamic>{'userId': instance.userId, 'roleIds': instance.roleIds};

AssignPermissionDto _$AssignPermissionDtoFromJson(Map<String, dynamic> json) =>
    AssignPermissionDto(
      userId: json['userId'] as String,
      permissionIds:
          (json['permissionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$AssignPermissionDtoToJson(
  AssignPermissionDto instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'permissionIds': instance.permissionIds,
};

CreateRoleDto _$CreateRoleDtoFromJson(Map<String, dynamic> json) =>
    CreateRoleDto(
      name: json['name'] as String,
      description: json['description'] as String,
      permissionIds:
          (json['permissionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateRoleDtoToJson(CreateRoleDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'permissionIds': instance.permissionIds,
    };

Role _$RoleFromJson(Map<String, dynamic> json) => Role();

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{};

CreatePermissionDto _$CreatePermissionDtoFromJson(Map<String, dynamic> json) =>
    CreatePermissionDto(
      code: json['code'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$CreatePermissionDtoToJson(
  CreatePermissionDto instance,
) => <String, dynamic>{
  'code': instance.code,
  'description': instance.description,
};

StatusAmountBreakdownDto _$StatusAmountBreakdownDtoFromJson(
  Map<String, dynamic> json,
) => StatusAmountBreakdownDto(
  totalAmount: (json['totalAmount'] as num).toDouble(),
  successfulAmount: (json['successfulAmount'] as num).toDouble(),
  failedAmount: (json['failedAmount'] as num).toDouble(),
  pendingAmount: (json['pendingAmount'] as num).toDouble(),
  otherAmount: (json['otherAmount'] as num).toDouble(),
);

Map<String, dynamic> _$StatusAmountBreakdownDtoToJson(
  StatusAmountBreakdownDto instance,
) => <String, dynamic>{
  'totalAmount': instance.totalAmount,
  'successfulAmount': instance.successfulAmount,
  'failedAmount': instance.failedAmount,
  'pendingAmount': instance.pendingAmount,
  'otherAmount': instance.otherAmount,
};

TransactionStatsDto _$TransactionStatsDtoFromJson(Map<String, dynamic> json) =>
    TransactionStatsDto(
      totalCount: (json['totalCount'] as num).toDouble(),
      amountBreakdown: StatusAmountBreakdownDto.fromJson(
        json['amountBreakdown'] as Map<String, dynamic>,
      ),
      successCount: (json['successCount'] as num).toDouble(),
      failedCount: (json['failedCount'] as num).toDouble(),
      pendingCount: (json['pendingCount'] as num).toDouble(),
      otherCount: (json['otherCount'] as num).toDouble(),
      currencyBreakdown: json['currencyBreakdown'] as Map<String, dynamic>,
      typeBreakdown: json['typeBreakdown'] as Map<String, dynamic>,
      averageAmount: (json['averageAmount'] as num).toDouble(),
      successRate: (json['successRate'] as num).toDouble(),
    );

Map<String, dynamic> _$TransactionStatsDtoToJson(
  TransactionStatsDto instance,
) => <String, dynamic>{
  'totalCount': instance.totalCount,
  'amountBreakdown': instance.amountBreakdown.toJson(),
  'successCount': instance.successCount,
  'failedCount': instance.failedCount,
  'pendingCount': instance.pendingCount,
  'otherCount': instance.otherCount,
  'currencyBreakdown': instance.currencyBreakdown,
  'typeBreakdown': instance.typeBreakdown,
  'averageAmount': instance.averageAmount,
  'successRate': instance.successRate,
};

UpdateStatusDto _$UpdateStatusDtoFromJson(Map<String, dynamic> json) =>
    UpdateStatusDto();

Map<String, dynamic> _$UpdateStatusDtoToJson(UpdateStatusDto instance) =>
    <String, dynamic>{};

BulkUpdateStatusDto _$BulkUpdateStatusDtoFromJson(Map<String, dynamic> json) =>
    BulkUpdateStatusDto();

Map<String, dynamic> _$BulkUpdateStatusDtoToJson(
  BulkUpdateStatusDto instance,
) => <String, dynamic>{};
