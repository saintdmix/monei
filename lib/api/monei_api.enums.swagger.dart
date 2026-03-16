// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum SignUpDtoPlatform {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('android')
  android('android'),
  @JsonValue('ios')
  ios('ios'),
  @JsonValue('web')
  web('web'),
  @JsonValue('telegram')
  telegram('telegram'),
  @JsonValue('whatsapp')
  whatsapp('whatsapp');

  final String? value;

  const SignUpDtoPlatform(this.value);
}

enum OnboardingStatusDtoState {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('EMAIL_UNVERIFIED')
  emailUnverified('EMAIL_UNVERIFIED'),
  @JsonValue('EMAIL_VERIFIED')
  emailVerified('EMAIL_VERIFIED'),
  @JsonValue('PIN_SET')
  pinSet('PIN_SET'),
  @JsonValue('PROFILE_COMPLETE')
  profileComplete('PROFILE_COMPLETE'),
  @JsonValue('PHONE_PENDING')
  phonePending('PHONE_PENDING'),
  @JsonValue('PHONE_VERIFIED')
  phoneVerified('PHONE_VERIFIED'),
  @JsonValue('TRANSACTION_PIN_SET')
  transactionPinSet('TRANSACTION_PIN_SET'),
  @JsonValue('FULLY_ONBOARDED')
  fullyOnboarded('FULLY_ONBOARDED'),
  @JsonValue('SUSPENDED')
  suspended('SUSPENDED'),
  @JsonValue('BANNED')
  banned('BANNED');

  final String? value;

  const OnboardingStatusDtoState(this.value);
}

enum OnboardingStatusDtoNextStep {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('EMAIL_UNVERIFIED')
  emailUnverified('EMAIL_UNVERIFIED'),
  @JsonValue('EMAIL_VERIFIED')
  emailVerified('EMAIL_VERIFIED'),
  @JsonValue('PIN_SET')
  pinSet('PIN_SET'),
  @JsonValue('PROFILE_COMPLETE')
  profileComplete('PROFILE_COMPLETE'),
  @JsonValue('PHONE_PENDING')
  phonePending('PHONE_PENDING'),
  @JsonValue('PHONE_VERIFIED')
  phoneVerified('PHONE_VERIFIED'),
  @JsonValue('TRANSACTION_PIN_SET')
  transactionPinSet('TRANSACTION_PIN_SET'),
  @JsonValue('FULLY_ONBOARDED')
  fullyOnboarded('FULLY_ONBOARDED'),
  @JsonValue('SUSPENDED')
  suspended('SUSPENDED'),
  @JsonValue('BANNED')
  banned('BANNED');

  final String? value;

  const OnboardingStatusDtoNextStep(this.value);
}

enum UserKycInfoDtoCurrentTier {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('tier_1')
  tier1('tier_1'),
  @JsonValue('tier_2')
  tier2('tier_2'),
  @JsonValue('tier_3')
  tier3('tier_3'),
  @JsonValue('tier_4')
  tier4('tier_4');

  final String? value;

  const UserKycInfoDtoCurrentTier(this.value);
}

enum UserKycInfoDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('none')
  none('none'),
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('verified')
  verified('verified'),
  @JsonValue('rejected')
  rejected('rejected'),
  @JsonValue('expired')
  expired('expired');

  final String? value;

  const UserKycInfoDtoStatus(this.value);
}

enum UserKycInfoDtoNextTier {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('tier_1')
  tier1('tier_1'),
  @JsonValue('tier_2')
  tier2('tier_2'),
  @JsonValue('tier_3')
  tier3('tier_3'),
  @JsonValue('tier_4')
  tier4('tier_4');

  final String? value;

  const UserKycInfoDtoNextTier(this.value);
}

enum UserDtoPlatform {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('android')
  android('android'),
  @JsonValue('ios')
  ios('ios'),
  @JsonValue('web')
  web('web'),
  @JsonValue('telegram')
  telegram('telegram'),
  @JsonValue('whatsapp')
  whatsapp('whatsapp');

  final String? value;

  const UserDtoPlatform(this.value);
}

enum UserDtoOnboardingState {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('EMAIL_UNVERIFIED')
  emailUnverified('EMAIL_UNVERIFIED'),
  @JsonValue('EMAIL_VERIFIED')
  emailVerified('EMAIL_VERIFIED'),
  @JsonValue('PIN_SET')
  pinSet('PIN_SET'),
  @JsonValue('PROFILE_COMPLETE')
  profileComplete('PROFILE_COMPLETE'),
  @JsonValue('PHONE_PENDING')
  phonePending('PHONE_PENDING'),
  @JsonValue('PHONE_VERIFIED')
  phoneVerified('PHONE_VERIFIED'),
  @JsonValue('TRANSACTION_PIN_SET')
  transactionPinSet('TRANSACTION_PIN_SET'),
  @JsonValue('FULLY_ONBOARDED')
  fullyOnboarded('FULLY_ONBOARDED'),
  @JsonValue('SUSPENDED')
  suspended('SUSPENDED'),
  @JsonValue('BANNED')
  banned('BANNED');

  final String? value;

  const UserDtoOnboardingState(this.value);
}

enum UserTokenBalanceDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('native')
  native('native'),
  @JsonValue('token')
  token('token');

  final String? value;

  const UserTokenBalanceDtoType(this.value);
}

enum SolanaNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('mainnet-beta')
  mainnetBeta('mainnet-beta'),
  @JsonValue('devnet')
  devnet('devnet'),
  @JsonValue('testnet')
  testnet('testnet');

  final String? value;

  const SolanaNetwork(this.value);
}

enum TransferSolDtoNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('mainnet-beta')
  mainnetBeta('mainnet-beta'),
  @JsonValue('devnet')
  devnet('devnet'),
  @JsonValue('testnet')
  testnet('testnet');

  final String? value;

  const TransferSolDtoNetwork(this.value);
}

enum TransferTokenDtoNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('mainnet-beta')
  mainnetBeta('mainnet-beta'),
  @JsonValue('devnet')
  devnet('devnet'),
  @JsonValue('testnet')
  testnet('testnet');

  final String? value;

  const TransferTokenDtoNetwork(this.value);
}

enum SubWalletDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('FIAT')
  fiat('FIAT'),
  @JsonValue('CRYPTO')
  crypto('CRYPTO');

  final String? value;

  const SubWalletDtoType(this.value);
}

enum DepositNextActionDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('requires_pin')
  requiresPin('requires_pin'),
  @JsonValue('requires_otp')
  requiresOtp('requires_otp'),
  @JsonValue('redirect_url')
  redirectUrl('redirect_url'),
  @JsonValue('requires_additional_fields')
  requiresAdditionalFields('requires_additional_fields'),
  @JsonValue('payment_Instructions')
  paymentInstructions('payment_Instructions');

  final String? value;

  const DepositNextActionDtoType(this.value);
}

enum PaymentDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED'),
  @JsonValue('COMPLETED')
  completed('COMPLETED');

  final String? value;

  const PaymentDtoStatus(this.value);
}

enum DepositAuthDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('pin')
  pin('pin'),
  @JsonValue('otp')
  otp('otp'),
  @JsonValue('avs')
  avs('avs'),
  @JsonValue('redirect_url')
  redirectUrl('redirect_url'),
  @JsonValue('payment_instruction')
  paymentInstruction('payment_instruction');

  final String? value;

  const DepositAuthDtoType(this.value);
}

enum InitiateBankTransferResponseDataDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED'),
  @JsonValue('COMPLETED')
  completed('COMPLETED');

  final String? value;

  const InitiateBankTransferResponseDataDtoStatus(this.value);
}

enum ConversationMessagesResponseDtoRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('user')
  user('user'),
  @JsonValue('assistant')
  assistant('assistant'),
  @JsonValue('system')
  system('system');

  final String? value;

  const ConversationMessagesResponseDtoRole(this.value);
}

enum CreateApiClientDtoEnvironment {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('live')
  live('live'),
  @JsonValue('sandbox')
  sandbox('sandbox');

  final String? value;

  const CreateApiClientDtoEnvironment(this.value);
}

enum UpdateApiClientDtoEnvironment {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('live')
  live('live'),
  @JsonValue('sandbox')
  sandbox('sandbox');

  final String? value;

  const UpdateApiClientDtoEnvironment(this.value);
}

enum KycStatusDataCurrentTier {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('tier_1')
  tier1('tier_1'),
  @JsonValue('tier_2')
  tier2('tier_2'),
  @JsonValue('tier_3')
  tier3('tier_3'),
  @JsonValue('tier_4')
  tier4('tier_4');

  final String? value;

  const KycStatusDataCurrentTier(this.value);
}

enum KycStatusDataStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('none')
  none('none'),
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('verified')
  verified('verified'),
  @JsonValue('rejected')
  rejected('rejected'),
  @JsonValue('expired')
  expired('expired');

  final String? value;

  const KycStatusDataStatus(this.value);
}

enum KycStatusDataNextTier {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('tier_1')
  tier1('tier_1'),
  @JsonValue('tier_2')
  tier2('tier_2'),
  @JsonValue('tier_3')
  tier3('tier_3'),
  @JsonValue('tier_4')
  tier4('tier_4');

  final String? value;

  const KycStatusDataNextTier(this.value);
}

enum NinVerificationDataTier {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('tier_1')
  tier1('tier_1'),
  @JsonValue('tier_2')
  tier2('tier_2'),
  @JsonValue('tier_3')
  tier3('tier_3'),
  @JsonValue('tier_4')
  tier4('tier_4');

  final String? value;

  const NinVerificationDataTier(this.value);
}

enum UploadDocumentDtoDocumentType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('nin')
  nin('nin'),
  @JsonValue('bvn')
  bvn('bvn'),
  @JsonValue('voters_card')
  votersCard('voters_card'),
  @JsonValue('drivers_license')
  driversLicense('drivers_license'),
  @JsonValue('international_passport')
  internationalPassport('international_passport'),
  @JsonValue('selfie')
  selfie('selfie'),
  @JsonValue('utility_bill')
  utilityBill('utility_bill'),
  @JsonValue('bank_statement')
  bankStatement('bank_statement');

  final String? value;

  const UploadDocumentDtoDocumentType(this.value);
}

enum CheckTierEligibilityDtoTargetTier {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('tier_1')
  tier1('tier_1'),
  @JsonValue('tier_2')
  tier2('tier_2'),
  @JsonValue('tier_3')
  tier3('tier_3'),
  @JsonValue('tier_4')
  tier4('tier_4');

  final String? value;

  const CheckTierEligibilityDtoTargetTier(this.value);
}

enum PaymentMethodDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('VIRTUAL_ACCOUNT')
  virtualAccount('VIRTUAL_ACCOUNT'),
  @JsonValue('CARD')
  card('CARD'),
  @JsonValue('BANK_TRANSFER')
  bankTransfer('BANK_TRANSFER'),
  @JsonValue('USSD')
  ussd('USSD'),
  @JsonValue('CRYPTO_WALLET')
  cryptoWallet('CRYPTO_WALLET');

  final String? value;

  const PaymentMethodDtoType(this.value);
}

enum PaymentMethodDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('INACTIVE')
  inactive('INACTIVE'),
  @JsonValue('PENDING_VERIFICATION')
  pendingVerification('PENDING_VERIFICATION'),
  @JsonValue('SUSPENDED')
  suspended('SUSPENDED');

  final String? value;

  const PaymentMethodDtoStatus(this.value);
}

enum CreatePaymentMethodDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('VIRTUAL_ACCOUNT')
  virtualAccount('VIRTUAL_ACCOUNT'),
  @JsonValue('CARD')
  card('CARD'),
  @JsonValue('BANK_TRANSFER')
  bankTransfer('BANK_TRANSFER'),
  @JsonValue('USSD')
  ussd('USSD'),
  @JsonValue('CRYPTO_WALLET')
  cryptoWallet('CRYPTO_WALLET');

  final String? value;

  const CreatePaymentMethodDtoType(this.value);
}

enum BillDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const BillDtoType(this.value);
}

enum BillDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED');

  final String? value;

  const BillDtoStatus(this.value);
}

enum CreateMobileBeneficiaryDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const CreateMobileBeneficiaryDtoType(this.value);
}

enum CreateMobileBeneficiaryDtoMobileOperator {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MTN')
  mtn('MTN'),
  @JsonValue('AIRTEL')
  airtel('AIRTEL'),
  @JsonValue('GLO')
  glo('GLO'),
  @JsonValue('9MOBILE')
  value_9mobile('9MOBILE');

  final String? value;

  const CreateMobileBeneficiaryDtoMobileOperator(this.value);
}

enum CreateElectricityBeneficiaryDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const CreateElectricityBeneficiaryDtoType(this.value);
}

enum CreateElectricityBeneficiaryDtoElectricityProvider {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('IKEJA DISCO ELECTRICITY')
  ikejaDiscoElectricity('IKEJA DISCO ELECTRICITY'),
  @JsonValue('EKO DISCO ELECTRICITY')
  ekoDiscoElectricity('EKO DISCO ELECTRICITY'),
  @JsonValue('KADUNA DISCO ELECTRICITY')
  kadunaDiscoElectricity('KADUNA DISCO ELECTRICITY'),
  @JsonValue('YOLA DISCO ELECTRICITY')
  yolaDiscoElectricity('YOLA DISCO ELECTRICITY'),
  @JsonValue('PORT HARCOURT DISCO ELECTRICITY')
  portHarcourtDiscoElectricity('PORT HARCOURT DISCO ELECTRICITY'),
  @JsonValue('KANO DISCO ELECTRICITY')
  kanoDiscoElectricity('KANO DISCO ELECTRICITY'),
  @JsonValue('IBADAN DISCO ELECTRICITY')
  ibadanDiscoElectricity('IBADAN DISCO ELECTRICITY'),
  @JsonValue('ENUGU DISCO ELECTRICITY')
  enuguDiscoElectricity('ENUGU DISCO ELECTRICITY'),
  @JsonValue('BENIN DISCO ELECTRICITY')
  beninDiscoElectricity('BENIN DISCO ELECTRICITY');

  final String? value;

  const CreateElectricityBeneficiaryDtoElectricityProvider(this.value);
}

enum CreateCableTvBeneficiaryDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const CreateCableTvBeneficiaryDtoType(this.value);
}

enum CreateCableTvBeneficiaryDtoCableProvider {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DSTV')
  dstv('DSTV'),
  @JsonValue('GOTV')
  gotv('GOTV'),
  @JsonValue('DSTV BOX OFFICE')
  dstvBoxOffice('DSTV BOX OFFICE'),
  @JsonValue('MYTV')
  mytv('MYTV'),
  @JsonValue('HiTV')
  hitv('HiTV'),
  @JsonValue('STARTIMES')
  startimes('STARTIMES');

  final String? value;

  const CreateCableTvBeneficiaryDtoCableProvider(this.value);
}

enum UpdateBillBeneficiaryDtoMobileOperator {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MTN')
  mtn('MTN'),
  @JsonValue('AIRTEL')
  airtel('AIRTEL'),
  @JsonValue('GLO')
  glo('GLO'),
  @JsonValue('9MOBILE')
  value_9mobile('9MOBILE');

  final String? value;

  const UpdateBillBeneficiaryDtoMobileOperator(this.value);
}

enum UpdateBillBeneficiaryDtoElectricityProvider {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('IKEJA DISCO ELECTRICITY')
  ikejaDiscoElectricity('IKEJA DISCO ELECTRICITY'),
  @JsonValue('EKO DISCO ELECTRICITY')
  ekoDiscoElectricity('EKO DISCO ELECTRICITY'),
  @JsonValue('KADUNA DISCO ELECTRICITY')
  kadunaDiscoElectricity('KADUNA DISCO ELECTRICITY'),
  @JsonValue('YOLA DISCO ELECTRICITY')
  yolaDiscoElectricity('YOLA DISCO ELECTRICITY'),
  @JsonValue('PORT HARCOURT DISCO ELECTRICITY')
  portHarcourtDiscoElectricity('PORT HARCOURT DISCO ELECTRICITY'),
  @JsonValue('KANO DISCO ELECTRICITY')
  kanoDiscoElectricity('KANO DISCO ELECTRICITY'),
  @JsonValue('IBADAN DISCO ELECTRICITY')
  ibadanDiscoElectricity('IBADAN DISCO ELECTRICITY'),
  @JsonValue('ENUGU DISCO ELECTRICITY')
  enuguDiscoElectricity('ENUGU DISCO ELECTRICITY'),
  @JsonValue('BENIN DISCO ELECTRICITY')
  beninDiscoElectricity('BENIN DISCO ELECTRICITY');

  final String? value;

  const UpdateBillBeneficiaryDtoElectricityProvider(this.value);
}

enum UpdateBillBeneficiaryDtoCableProvider {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DSTV')
  dstv('DSTV'),
  @JsonValue('GOTV')
  gotv('GOTV'),
  @JsonValue('DSTV BOX OFFICE')
  dstvBoxOffice('DSTV BOX OFFICE'),
  @JsonValue('MYTV')
  mytv('MYTV'),
  @JsonValue('HiTV')
  hitv('HiTV'),
  @JsonValue('STARTIMES')
  startimes('STARTIMES');

  final String? value;

  const UpdateBillBeneficiaryDtoCableProvider(this.value);
}

enum CreateScheduleDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('WALLET_PEER_TRANSFER')
  walletPeerTransfer('WALLET_PEER_TRANSFER'),
  @JsonValue('WALLET_BANK_TRANSFER')
  walletBankTransfer('WALLET_BANK_TRANSFER'),
  @JsonValue('AIRTIME_PURCHASE')
  airtimePurchase('AIRTIME_PURCHASE'),
  @JsonValue('DATA_PURCHASE')
  dataPurchase('DATA_PURCHASE'),
  @JsonValue('CABLE_TV')
  cableTv('CABLE_TV'),
  @JsonValue('ELECTRICITY')
  electricity('ELECTRICITY');

  final String? value;

  const CreateScheduleDtoType(this.value);
}

enum UpdateScheduleDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('PROCESSING')
  processing('PROCESSING'),
  @JsonValue('COMPLETED')
  completed('COMPLETED'),
  @JsonValue('FAILED')
  failed('FAILED'),
  @JsonValue('CANCELLED')
  cancelled('CANCELLED');

  final String? value;

  const UpdateScheduleDtoStatus(this.value);
}

enum StockDetailDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('STOCK')
  stock('STOCK'),
  @JsonValue('BOND')
  bond('BOND'),
  @JsonValue('TREASURY_BILL')
  treasuryBill('TREASURY_BILL'),
  @JsonValue('TREASURY_BOND')
  treasuryBond('TREASURY_BOND'),
  @JsonValue('COMMERCIAL_PAPER')
  commercialPaper('COMMERCIAL_PAPER'),
  @JsonValue('ETF')
  etf('ETF'),
  @JsonValue('MUTUAL_FUND')
  mutualFund('MUTUAL_FUND'),
  @JsonValue('REAL_ESTATE_TRUST')
  realEstateTrust('REAL_ESTATE_TRUST');

  final String? value;

  const StockDetailDtoType(this.value);
}

enum StockDetailDtoPriceSource {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('coingecko')
  coingecko('coingecko'),
  @JsonValue('database')
  database('database'),
  @JsonValue('none')
  none('none');

  final String? value;

  const StockDetailDtoPriceSource(this.value);
}

enum CurrencyPreferencesDtoFiat {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NGN')
  ngn('NGN'),
  @JsonValue('USD')
  usd('USD'),
  @JsonValue('EUR')
  eur('EUR'),
  @JsonValue('GBP')
  gbp('GBP');

  final String? value;

  const CurrencyPreferencesDtoFiat(this.value);
}

enum CurrencyPreferencesDtoCrypto {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ETH')
  eth('ETH'),
  @JsonValue('BNB')
  bnb('BNB'),
  @JsonValue('MATIC')
  matic('MATIC'),
  @JsonValue('SOL')
  sol('SOL'),
  @JsonValue('ARB')
  arb('ARB'),
  @JsonValue('OP')
  op('OP');

  final String? value;

  const CurrencyPreferencesDtoCrypto(this.value);
}

enum ChatSettingsDtoWalletType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('evm')
  evm('evm'),
  @JsonValue('solana')
  solana('solana');

  final String? value;

  const ChatSettingsDtoWalletType(this.value);
}

enum ChatSettingsDtoPreferredBlockchain {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ETHEREUM')
  ethereum('ETHEREUM'),
  @JsonValue('BSC')
  bsc('BSC'),
  @JsonValue('POLYGON')
  polygon('POLYGON'),
  @JsonValue('ARBITRUM')
  arbitrum('ARBITRUM'),
  @JsonValue('OPTIMISM')
  optimism('OPTIMISM'),
  @JsonValue('BASE')
  base('BASE'),
  @JsonValue('SOLANA')
  solana('SOLANA');

  final String? value;

  const ChatSettingsDtoPreferredBlockchain(this.value);
}

enum ChatSettingsDtoDefaultNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MAINNET')
  mainnet('MAINNET'),
  @JsonValue('TESTNET')
  testnet('TESTNET'),
  @JsonValue('DEVNET')
  devnet('DEVNET'),
  @JsonValue('ETHEREUM')
  ethereum('ETHEREUM'),
  @JsonValue('BSC')
  bsc('BSC'),
  @JsonValue('POLYGON')
  polygon('POLYGON'),
  @JsonValue('ARBITRUM')
  arbitrum('ARBITRUM'),
  @JsonValue('OPTIMISM')
  optimism('OPTIMISM'),
  @JsonValue('BASE')
  base('BASE'),
  @JsonValue('MAINNET-BETA')
  mainnetBeta('MAINNET-BETA'),
  @JsonValue('DEVNET')
  $devnet('DEVNET');

  final String? value;

  const ChatSettingsDtoDefaultNetwork(this.value);
}

enum ChatSettingsDtoRiskTolerance {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('low')
  low('low'),
  @JsonValue('medium')
  medium('medium'),
  @JsonValue('high')
  high('high');

  final String? value;

  const ChatSettingsDtoRiskTolerance(this.value);
}

enum ChatSettingsDtoTransactionSpeed {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('low')
  low('low'),
  @JsonValue('medium')
  medium('medium'),
  @JsonValue('high')
  high('high');

  final String? value;

  const ChatSettingsDtoTransactionSpeed(this.value);
}

enum SwapQuoteDtoSwapMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ExactIn')
  exactin('ExactIn'),
  @JsonValue('ExactOut')
  exactout('ExactOut');

  final String? value;

  const SwapQuoteDtoSwapMode(this.value);
}

enum CryptoAmountDtoAsset {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('USDT')
  usdt('USDT'),
  @JsonValue('USDC')
  usdc('USDC'),
  @JsonValue('CNGN')
  cngn('CNGN');

  final String? value;

  const CryptoAmountDtoAsset(this.value);
}

enum CryptoAmountDtoNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('base')
  base('base'),
  @JsonValue('polygon')
  polygon('polygon'),
  @JsonValue('arbitrum-one')
  arbitrumOne('arbitrum-one'),
  @JsonValue('bnb-smart-chain')
  bnbSmartChain('bnb-smart-chain'),
  @JsonValue('ethereum')
  ethereum('ethereum'),
  @JsonValue('starknet')
  starknet('starknet'),
  @JsonValue('optimism')
  optimism('optimism'),
  @JsonValue('lisk')
  lisk('lisk'),
  @JsonValue('scroll')
  scroll('scroll');

  final String? value;

  const CryptoAmountDtoNetwork(this.value);
}

enum FiatAmountDtoCurrency {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NGN')
  ngn('NGN'),
  @JsonValue('GHS')
  ghs('GHS'),
  @JsonValue('KES')
  kes('KES'),
  @JsonValue('USD')
  usd('USD');

  final String? value;

  const FiatAmountDtoCurrency(this.value);
}

enum OnChainDtoSourceWallet {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MONEI_WALLET')
  moneiWallet('MONEI_WALLET'),
  @JsonValue('EXTERNAL_WALLET')
  externalWallet('EXTERNAL_WALLET');

  final String? value;

  const OnChainDtoSourceWallet(this.value);
}

enum OfframpOrderResponseDataDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('initiated')
  initiated('initiated'),
  @JsonValue('quote_created')
  quoteCreated('quote_created'),
  @JsonValue('awaiting_deposit')
  awaitingDeposit('awaiting_deposit'),
  @JsonValue('deposit_received')
  depositReceived('deposit_received'),
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('processing')
  processing('processing'),
  @JsonValue('fiat_sent')
  fiatSent('fiat_sent'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('cancelled')
  cancelled('cancelled'),
  @JsonValue('refunded')
  refunded('refunded'),
  @JsonValue('expired')
  expired('expired');

  final String? value;

  const OfframpOrderResponseDataDtoStatus(this.value);
}

enum DepositInstructionsDtoToken {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('USDT')
  usdt('USDT'),
  @JsonValue('USDC')
  usdc('USDC'),
  @JsonValue('CNGN')
  cngn('CNGN');

  final String? value;

  const DepositInstructionsDtoToken(this.value);
}

enum DepositInstructionsDtoNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('base')
  base('base'),
  @JsonValue('polygon')
  polygon('polygon'),
  @JsonValue('arbitrum-one')
  arbitrumOne('arbitrum-one'),
  @JsonValue('bnb-smart-chain')
  bnbSmartChain('bnb-smart-chain'),
  @JsonValue('ethereum')
  ethereum('ethereum'),
  @JsonValue('starknet')
  starknet('starknet'),
  @JsonValue('optimism')
  optimism('optimism'),
  @JsonValue('lisk')
  lisk('lisk'),
  @JsonValue('scroll')
  scroll('scroll');

  final String? value;

  const DepositInstructionsDtoNetwork(this.value);
}

enum CurrentBalanceDtoToken {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('USDT')
  usdt('USDT'),
  @JsonValue('USDC')
  usdc('USDC'),
  @JsonValue('CNGN')
  cngn('CNGN');

  final String? value;

  const CurrentBalanceDtoToken(this.value);
}

enum CurrentBalanceDtoNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('base')
  base('base'),
  @JsonValue('polygon')
  polygon('polygon'),
  @JsonValue('arbitrum-one')
  arbitrumOne('arbitrum-one'),
  @JsonValue('bnb-smart-chain')
  bnbSmartChain('bnb-smart-chain'),
  @JsonValue('ethereum')
  ethereum('ethereum'),
  @JsonValue('starknet')
  starknet('starknet'),
  @JsonValue('optimism')
  optimism('optimism'),
  @JsonValue('lisk')
  lisk('lisk'),
  @JsonValue('scroll')
  scroll('scroll');

  final String? value;

  const CurrentBalanceDtoNetwork(this.value);
}

enum OfframpExchangeRateDtoToken {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('USDT')
  usdt('USDT'),
  @JsonValue('USDC')
  usdc('USDC'),
  @JsonValue('CNGN')
  cngn('CNGN');

  final String? value;

  const OfframpExchangeRateDtoToken(this.value);
}

enum OfframpExchangeRateDtoNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('base')
  base('base'),
  @JsonValue('polygon')
  polygon('polygon'),
  @JsonValue('arbitrum-one')
  arbitrumOne('arbitrum-one'),
  @JsonValue('bnb-smart-chain')
  bnbSmartChain('bnb-smart-chain'),
  @JsonValue('ethereum')
  ethereum('ethereum'),
  @JsonValue('starknet')
  starknet('starknet'),
  @JsonValue('optimism')
  optimism('optimism'),
  @JsonValue('lisk')
  lisk('lisk'),
  @JsonValue('scroll')
  scroll('scroll');

  final String? value;

  const OfframpExchangeRateDtoNetwork(this.value);
}

enum OfframpExchangeRateDtoFiat {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NGN')
  ngn('NGN'),
  @JsonValue('GHS')
  ghs('GHS'),
  @JsonValue('KES')
  kes('KES'),
  @JsonValue('USD')
  usd('USD');

  final String? value;

  const OfframpExchangeRateDtoFiat(this.value);
}

enum SwapCryptoToFiatRequestDtoToken {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('USDT')
  usdt('USDT'),
  @JsonValue('USDC')
  usdc('USDC'),
  @JsonValue('CNGN')
  cngn('CNGN');

  final String? value;

  const SwapCryptoToFiatRequestDtoToken(this.value);
}

enum SwapCryptoToFiatRequestDtoNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('base')
  base('base'),
  @JsonValue('polygon')
  polygon('polygon'),
  @JsonValue('arbitrum-one')
  arbitrumOne('arbitrum-one'),
  @JsonValue('bnb-smart-chain')
  bnbSmartChain('bnb-smart-chain'),
  @JsonValue('ethereum')
  ethereum('ethereum'),
  @JsonValue('starknet')
  starknet('starknet'),
  @JsonValue('optimism')
  optimism('optimism'),
  @JsonValue('lisk')
  lisk('lisk'),
  @JsonValue('scroll')
  scroll('scroll');

  final String? value;

  const SwapCryptoToFiatRequestDtoNetwork(this.value);
}

enum SwapCryptoToFiatRequestDtoFiatCurrency {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NGN')
  ngn('NGN'),
  @JsonValue('GHS')
  ghs('GHS'),
  @JsonValue('KES')
  kes('KES'),
  @JsonValue('USD')
  usd('USD');

  final String? value;

  const SwapCryptoToFiatRequestDtoFiatCurrency(this.value);
}

enum OfframpTransactionResponseDtoProvider {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('monirates')
  monirates('monirates'),
  @JsonValue('bitnob')
  bitnob('bitnob'),
  @JsonValue('paycrest')
  paycrest('paycrest');

  final String? value;

  const OfframpTransactionResponseDtoProvider(this.value);
}

enum OfframpTransactionResponseDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('initiated')
  initiated('initiated'),
  @JsonValue('quote_created')
  quoteCreated('quote_created'),
  @JsonValue('awaiting_deposit')
  awaitingDeposit('awaiting_deposit'),
  @JsonValue('deposit_received')
  depositReceived('deposit_received'),
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('processing')
  processing('processing'),
  @JsonValue('fiat_sent')
  fiatSent('fiat_sent'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('cancelled')
  cancelled('cancelled'),
  @JsonValue('refunded')
  refunded('refunded'),
  @JsonValue('expired')
  expired('expired');

  final String? value;

  const OfframpTransactionResponseDtoStatus(this.value);
}

enum OfframpTransactionDetailResponseDtoProvider {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('monirates')
  monirates('monirates'),
  @JsonValue('bitnob')
  bitnob('bitnob'),
  @JsonValue('paycrest')
  paycrest('paycrest');

  final String? value;

  const OfframpTransactionDetailResponseDtoProvider(this.value);
}

enum OfframpTransactionDetailResponseDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('initiated')
  initiated('initiated'),
  @JsonValue('quote_created')
  quoteCreated('quote_created'),
  @JsonValue('awaiting_deposit')
  awaitingDeposit('awaiting_deposit'),
  @JsonValue('deposit_received')
  depositReceived('deposit_received'),
  @JsonValue('pending')
  pending('pending'),
  @JsonValue('processing')
  processing('processing'),
  @JsonValue('fiat_sent')
  fiatSent('fiat_sent'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('cancelled')
  cancelled('cancelled'),
  @JsonValue('refunded')
  refunded('refunded'),
  @JsonValue('expired')
  expired('expired');

  final String? value;

  const OfframpTransactionDetailResponseDtoStatus(this.value);
}

enum CreateBeneficiaryDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('bank')
  bank('bank'),
  @JsonValue('crypto')
  crypto('crypto'),
  @JsonValue('peer')
  peer('peer');

  final String? value;

  const CreateBeneficiaryDtoType(this.value);
}

enum UpdateBeneficiaryDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('bank')
  bank('bank'),
  @JsonValue('crypto')
  crypto('crypto'),
  @JsonValue('peer')
  peer('peer');

  final String? value;

  const UpdateBeneficiaryDtoType(this.value);
}

enum ApiV1TransactionsUserGetStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED'),
  @JsonValue('COMPLETED')
  completed('COMPLETED');

  final String? value;

  const ApiV1TransactionsUserGetStatus(this.value);
}

enum ApiV1TransactionsUserGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DEBIT')
  debit('DEBIT'),
  @JsonValue('CREDIT')
  credit('CREDIT'),
  @JsonValue('PEER-TRANSFER')
  peerTransfer('PEER-TRANSFER');

  final String? value;

  const ApiV1TransactionsUserGetType(this.value);
}

enum ApiV1TransactionsUserGetSortBy {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('createdAt')
  createdat('createdAt'),
  @JsonValue('amount')
  amount('amount'),
  @JsonValue('updatedAt')
  updatedat('updatedAt');

  final String? value;

  const ApiV1TransactionsUserGetSortBy(this.value);
}

enum ApiV1TransactionsUserGetSortOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('asc')
  asc('asc'),
  @JsonValue('desc')
  desc('desc');

  final String? value;

  const ApiV1TransactionsUserGetSortOrder(this.value);
}

enum ApiV1WalletDepositPostMethod {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('BANK_TRANSFER')
  bankTransfer('BANK_TRANSFER'),
  @JsonValue('USSD')
  ussd('USSD'),
  @JsonValue('CARD')
  card('CARD');

  final String? value;

  const ApiV1WalletDepositPostMethod(this.value);
}

enum ApiV1CustomersBusinessIdGetSortOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const ApiV1CustomersBusinessIdGetSortOrder(this.value);
}

enum ApiV1BillsGetBillerItemsCategoryBillerNameGetCategory {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const ApiV1BillsGetBillerItemsCategoryBillerNameGetCategory(this.value);
}

enum ApiV1BillsGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const ApiV1BillsGetType(this.value);
}

enum ApiV1BillsGetStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED');

  final String? value;

  const ApiV1BillsGetStatus(this.value);
}

enum ApiV1BillsGetSortOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const ApiV1BillsGetSortOrder(this.value);
}

enum ApiV1BillBeneficiariesGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const ApiV1BillBeneficiariesGetType(this.value);
}

enum ApiV1BillsDiscoveryBillerItemsCategoryBillerNameGetCategory {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const ApiV1BillsDiscoveryBillerItemsCategoryBillerNameGetCategory(this.value);
}

enum ApiV1BillsRecordsGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const ApiV1BillsRecordsGetType(this.value);
}

enum ApiV1BillsRecordsGetStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED');

  final String? value;

  const ApiV1BillsRecordsGetStatus(this.value);
}

enum ApiV1BillsRecordsGetSortOrder {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ASC')
  asc('ASC'),
  @JsonValue('DESC')
  desc('DESC');

  final String? value;

  const ApiV1BillsRecordsGetSortOrder(this.value);
}

enum ApiV1OfframpExchangeQuoteGetToken {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('USDT')
  usdt('USDT'),
  @JsonValue('USDC')
  usdc('USDC'),
  @JsonValue('CNGN')
  cngn('CNGN');

  final String? value;

  const ApiV1OfframpExchangeQuoteGetToken(this.value);
}

enum ApiV1OfframpExchangeQuoteGetNetwork {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('base')
  base('base'),
  @JsonValue('polygon')
  polygon('polygon'),
  @JsonValue('arbitrum-one')
  arbitrumOne('arbitrum-one'),
  @JsonValue('bnb-smart-chain')
  bnbSmartChain('bnb-smart-chain'),
  @JsonValue('ethereum')
  ethereum('ethereum'),
  @JsonValue('starknet')
  starknet('starknet'),
  @JsonValue('optimism')
  optimism('optimism'),
  @JsonValue('lisk')
  lisk('lisk'),
  @JsonValue('scroll')
  scroll('scroll');

  final String? value;

  const ApiV1OfframpExchangeQuoteGetNetwork(this.value);
}

enum ApiV1OfframpExchangeQuoteGetFiat {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NGN')
  ngn('NGN'),
  @JsonValue('GHS')
  ghs('GHS'),
  @JsonValue('KES')
  kes('KES'),
  @JsonValue('USD')
  usd('USD');

  final String? value;

  const ApiV1OfframpExchangeQuoteGetFiat(this.value);
}

enum ApiV1BeneficiariesGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('bank')
  bank('bank'),
  @JsonValue('crypto')
  crypto('crypto'),
  @JsonValue('peer')
  peer('peer');

  final String? value;

  const ApiV1BeneficiariesGetType(this.value);
}

enum ApiV1BeneficiariesTypeNameDeleteType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('bank')
  bank('bank'),
  @JsonValue('crypto')
  crypto('crypto'),
  @JsonValue('peer')
  peer('peer');

  final String? value;

  const ApiV1BeneficiariesTypeNameDeleteType(this.value);
}

enum ApiV1AdminTransactionsGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DEBIT')
  debit('DEBIT'),
  @JsonValue('CREDIT')
  credit('CREDIT'),
  @JsonValue('PEER-TRANSFER')
  peerTransfer('PEER-TRANSFER');

  final String? value;

  const ApiV1AdminTransactionsGetType(this.value);
}

enum ApiV1AdminTransactionsGetStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED'),
  @JsonValue('COMPLETED')
  completed('COMPLETED');

  final String? value;

  const ApiV1AdminTransactionsGetStatus(this.value);
}

enum ApiV1AdminTransactionsStatsGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DEBIT')
  debit('DEBIT'),
  @JsonValue('CREDIT')
  credit('CREDIT'),
  @JsonValue('PEER-TRANSFER')
  peerTransfer('PEER-TRANSFER');

  final String? value;

  const ApiV1AdminTransactionsStatsGetType(this.value);
}

enum ApiV1AdminTransactionsStatsGetStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED'),
  @JsonValue('COMPLETED')
  completed('COMPLETED');

  final String? value;

  const ApiV1AdminTransactionsStatsGetStatus(this.value);
}

enum ApiV1AdminTransactionsUserUserIdGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DEBIT')
  debit('DEBIT'),
  @JsonValue('CREDIT')
  credit('CREDIT'),
  @JsonValue('PEER-TRANSFER')
  peerTransfer('PEER-TRANSFER');

  final String? value;

  const ApiV1AdminTransactionsUserUserIdGetType(this.value);
}

enum ApiV1AdminTransactionsUserUserIdGetStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED'),
  @JsonValue('COMPLETED')
  completed('COMPLETED');

  final String? value;

  const ApiV1AdminTransactionsUserUserIdGetStatus(this.value);
}

enum ApiV1AdminTransactionsExportGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('DEBIT')
  debit('DEBIT'),
  @JsonValue('CREDIT')
  credit('CREDIT'),
  @JsonValue('PEER-TRANSFER')
  peerTransfer('PEER-TRANSFER');

  final String? value;

  const ApiV1AdminTransactionsExportGetType(this.value);
}

enum ApiV1AdminTransactionsExportGetStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED'),
  @JsonValue('COMPLETED')
  completed('COMPLETED');

  final String? value;

  const ApiV1AdminTransactionsExportGetStatus(this.value);
}

enum ApiV1AdminBillTransactionsGetStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PENDING')
  pending('PENDING'),
  @JsonValue('SUCCESS')
  success('SUCCESS'),
  @JsonValue('FAILED')
  failed('FAILED');

  final String? value;

  const ApiV1AdminBillTransactionsGetStatus(this.value);
}

enum ApiV1AdminBillTransactionsGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const ApiV1AdminBillTransactionsGetType(this.value);
}

enum ApiV1AdminBillBeneficiariesGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AIRTIME')
  airtime('AIRTIME'),
  @JsonValue('MOBILEDATA')
  mobiledata('MOBILEDATA'),
  @JsonValue('CABLEBILLS')
  cablebills('CABLEBILLS'),
  @JsonValue('UTILITYBILLS')
  utilitybills('UTILITYBILLS');

  final String? value;

  const ApiV1AdminBillBeneficiariesGetType(this.value);
}

enum ApiV1AdminBeneficiariesGetType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('bank')
  bank('bank'),
  @JsonValue('crypto')
  crypto('crypto'),
  @JsonValue('peer')
  peer('peer');

  final String? value;

  const ApiV1AdminBeneficiariesGetType(this.value);
}
