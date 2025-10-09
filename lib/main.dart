import 'package:flutter/material.dart';
import 'package:laza/core/di/injection.dart';
import 'package:laza/core/routing/app_router.dart';
import 'package:laza/core/theme/app_palette.dart';

void main() {
  initGetIt();
  runApp(Laza());
}

class Laza extends StatelessWidget {
  const Laza({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppPalette.appColor),
      ),
      onGenerateRoute: AppRouter().onGenerateRoute,
    );
  }
}
