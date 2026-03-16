import 'dart:async';
import 'package:flutter/foundation.dart';

import 'package:chopper/chopper.dart';
import 'package:shared_preferences/shared_preferences.dart';

// API Services
import '../../data/api/auth_api.dart';
import '../../data/api/ai_agent_conversations_api.dart';
import '../../data/api/onboarding_api.dart';
import '../../data/api/account_information_api.dart';
import '../../data/api/evm_wallet_api.dart';
import '../../data/api/solana_wallet_api.dart';
import '../../data/api/transactions_api.dart';
import '../../data/api/wallet_api.dart';
import '../../data/api/payment_methods_api.dart';
import '../../data/api/bills_payment_api.dart';
import '../../data/api/evm_exchange_api.dart';
import '../../data/api/solana_exchange_api.dart';
import '../../data/api/offramp_api.dart';
import '../../data/api/kyc_verification_api.dart';
import '../../data/api/beneficiaries_api.dart';
import '../../data/api/bill_payment_beneficiaries_api.dart';
import '../../data/api/chat_settings_api.dart';
import '../../data/api/schedules_api.dart';
import '../../data/api/securities_api.dart';
import '../../data/api/guest_agent_api.dart';
import '../../data/api/customers_api.dart';
import '../../data/api/api_gateway_api.dart';

/// Injects Bearer token into every request.
class AuthInterceptor implements Interceptor {
  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
    Chain<BodyType> chain,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('auth_token');
    Request request = chain.request;

    if (token != null && token.isNotEmpty) {
      debugPrint(
        'AuthInterceptor: Applying stored Bearer token to ${request.url}',
      );
      request = applyHeader(request, 'Authorization', 'Bearer $token');
    } else {
      debugPrint('AuthInterceptor: NO TOKEN FOUND for request ${request.url}');
    }

    return chain.proceed(request);
  }
}

/// Custom JsonConverter that ignores multipart requests so that
/// they can be properly sent as multipart/form-data.
class CustomJsonConverter extends JsonConverter {
  const CustomJsonConverter();

  @override
  Request convertRequest(Request request) {
    if (request.multipart) {
      return request;
    }
    return super.convertRequest(request);
  }
}

/// Singleton API client that provides typed access to all backend services.
class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  late final ChopperClient client;

  /// Dev: https://api.dev.monei.cc
  /// Live: https://api.monei.cc
  static const String _baseUrl = 'https://api.monei.cc';

  factory ApiClient() => _instance;

  ApiClient._internal() {
    client = ChopperClient(
      baseUrl: Uri.parse(_baseUrl),
      services: [
        // Auth & Onboarding
        AuthApiService.create(),
        OnboardingApiService.create(),

        // User & Account
        AccountInformationApiService.create(),

        // Wallet & Payments
        WalletApiService.create(),
        PaymentMethodsApiService.create(),

        // Transactions
        TransactionsApiService.create(),

        // Bills
        BillsPaymentApiService.create(),
        BillPaymentBeneficiariesApiService.create(),

        // EVM
        EvmWalletApiService.create(),
        EvmExchangeApiService.create(),

        // Solana
        SolanaWalletApiService.create(),
        SolanaExchangeApiService.create(),

        // Offramp
        OfframpApiService.create(),

        // KYC
        KycVerificationApiService.create(),

        // Beneficiaries
        BeneficiariesApiService.create(),

        // AI Agent
        AiAgentConversationsApiService.create(),
        GuestAgentApiService.create(),
        ChatSettingsApiService.create(),

        // Securities
        SecuritiesApiService.create(),

        // Schedules
        SchedulesApiService.create(),

        // Customers
        CustomersApiService.create(),

        // API Gateway
        ApiGatewayApiService.create(),
      ],
      converter: const CustomJsonConverter(),
      interceptors: [HttpLoggingInterceptor(), AuthInterceptor()],
    );
  }

  // ── Auth & Onboarding ──
  AuthApiService get auth => client.getService<AuthApiService>();
  OnboardingApiService get onboarding =>
      client.getService<OnboardingApiService>();

  // ── User & Account ──
  AccountInformationApiService get account =>
      client.getService<AccountInformationApiService>();

  // ── Wallet & Payments ──
  WalletApiService get wallet => client.getService<WalletApiService>();
  PaymentMethodsApiService get paymentMethods =>
      client.getService<PaymentMethodsApiService>();

  // ── Transactions ──
  TransactionsApiService get transactions =>
      client.getService<TransactionsApiService>();

  // ── Bills ──
  BillsPaymentApiService get bills =>
      client.getService<BillsPaymentApiService>();
  BillPaymentBeneficiariesApiService get billBeneficiaries =>
      client.getService<BillPaymentBeneficiariesApiService>();

  // ── EVM ──
  EvmWalletApiService get evmWallet => client.getService<EvmWalletApiService>();
  EvmExchangeApiService get evmExchange =>
      client.getService<EvmExchangeApiService>();

  // ── Solana ──
  SolanaWalletApiService get solanaWallet =>
      client.getService<SolanaWalletApiService>();
  SolanaExchangeApiService get solanaExchange =>
      client.getService<SolanaExchangeApiService>();

  // ── Offramp ──
  OfframpApiService get offramp => client.getService<OfframpApiService>();

  // ── KYC ──
  KycVerificationApiService get kyc =>
      client.getService<KycVerificationApiService>();

  // ── Beneficiaries ──
  BeneficiariesApiService get beneficiaries =>
      client.getService<BeneficiariesApiService>();

  // ── AI Agent ──
  AiAgentConversationsApiService get aiAgent =>
      client.getService<AiAgentConversationsApiService>();
  GuestAgentApiService get guestAgent =>
      client.getService<GuestAgentApiService>();
  ChatSettingsApiService get chatSettings =>
      client.getService<ChatSettingsApiService>();

  // ── Securities ──
  SecuritiesApiService get securities =>
      client.getService<SecuritiesApiService>();

  // ── Schedules ──
  SchedulesApiService get schedules => client.getService<SchedulesApiService>();

  // ── Customers ──
  CustomersApiService get customers => client.getService<CustomersApiService>();

  // ── API Gateway ──
  ApiGatewayApiService get apiGateway =>
      client.getService<ApiGatewayApiService>();
}
