import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/di/injection.dart';
import 'package:laza/core/theme/app_palette.dart';
import 'package:laza/features/auth/presentation/cubit/auth_cubit.dart';

import '../../../../core/routing/app_router.dart';
import '../../../../core/routing/routes.dart';
import '../../../auth/presentation/screens/otp_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = Tween<Offset>(
      begin: Offset(3.4, 0),
      end: Offset(3.4, 12),
    ).animate(_animationController);
    _animationController.forward();
    super.initState();
    goToLoginScreen();
  }

  goToLoginScreen() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Routes.homeLayout);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPalette.appColor,
      body: SlideTransition(
        position: _animation,
        child: Text(
          'Laza',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
