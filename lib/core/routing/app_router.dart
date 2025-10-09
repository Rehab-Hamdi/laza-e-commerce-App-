import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/di/injection.dart';
import 'package:laza/core/routing/routes.dart';
import 'package:laza/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:laza/features/auth/presentation/screens/otp_screen.dart';
import 'package:laza/features/home/presentation/screens/home_screen.dart';
import 'package:laza/features/layout/presentation/view/screens/home_layout.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: RegisterScreen(),
          ),
        );
      case Routes.otpScreen:
        return MaterialPageRoute(builder: (context) => OtpScreen(email: ''));
      case Routes.homeLayout:
        return MaterialPageRoute(builder: (context) => const HomeLayout());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      // default:
      //   return MaterialPageRoute(
      //     builder: (context) => const SplashScreen(),
      //   );
    }
    return null;
  }
}
