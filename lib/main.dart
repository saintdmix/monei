import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/auth/auth_bloc.dart';
import 'bloc/chat/chat_bloc.dart';
import 'bloc/wallet/wallet_bloc.dart';
import 'bloc/transaction/transaction_bloc.dart';
import 'bloc/crypto/crypto_bloc.dart';
import 'bloc/bills/bills_bloc.dart';
import 'bloc/onboarding/onboarding_bloc.dart';
import 'bloc/profile/profile_bloc.dart';
import 'core/theme/app_theme.dart';
import 'screens/splash/splash_screen.dart';

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    debugPrint('${rec.loggerName} ${rec.level.name}: ${rec.message}');
  });

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );

  runApp(const MonieApp());
}

class MonieApp extends StatefulWidget {
  const MonieApp({super.key});

  @override
  State<MonieApp> createState() => _MonieAppState();
}

class _MonieAppState extends State<MonieApp> {
  final ThemeCubit _themeCubit = ThemeCubit();

  @override
  void initState() {
    super.initState();
    _themeCubit.addListener(_onThemeChanged);
  }

  void _onThemeChanged() {
    setState(() {});
    // Update system UI overlay based on theme
    final isDark = _themeCubit.isDark;
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        systemNavigationBarColor: isDark
            ? const Color(0xFF0A0A1A)
            : const Color(0xFFF5F5FA),
        systemNavigationBarIconBrightness: isDark
            ? Brightness.light
            : Brightness.dark,
      ),
    );
  }

  @override
  void dispose() {
    _themeCubit.removeListener(_onThemeChanged);
    _themeCubit.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (_) => AuthBloc()),
        BlocProvider<ChatBloc>(create: (_) => ChatBloc()),
        BlocProvider<WalletBloc>(create: (_) => WalletBloc()),
        BlocProvider<TransactionBloc>(create: (_) => TransactionBloc()),
        BlocProvider<CryptoBloc>(create: (_) => CryptoBloc()),
        BlocProvider<BillsBloc>(create: (_) => BillsBloc()),
        BlocProvider<OnboardingBloc>(create: (_) => OnboardingBloc()),
        BlocProvider<ProfileBloc>(create: (_) => ProfileBloc()),
      ],
      // Provide the ThemeCubit via a ValueListenableBuilder-style approach
      child: _ThemeCubitProvider(
        cubit: _themeCubit,
        child: MaterialApp(
          title: 'Mr Monei',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: _themeCubit.themeMode,
          home: const SplashScreen(),
        ),
      ),
    );
  }
}

/// InheritedWidget to provide ThemeCubit down the tree.
class _ThemeCubitProvider extends InheritedWidget {
  final ThemeCubit cubit;

  const _ThemeCubitProvider({required this.cubit, required super.child});

  @override
  bool updateShouldNotify(covariant _ThemeCubitProvider oldWidget) {
    return cubit.themeMode != oldWidget.cubit.themeMode;
  }
}

/// Extension to access ThemeCubit from any BuildContext.
extension ThemeCubitAccess on BuildContext {
  ThemeCubit get themeCubit {
    final provider = dependOnInheritedWidgetOfExactType<_ThemeCubitProvider>();
    return provider!.cubit;
  }
}
