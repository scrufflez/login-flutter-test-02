import 'package:flutter/material.dart';
import 'core/theme/asgard_theme.dart';
import 'features/auth/login_screen.dart';

void main() {
  runApp(const AsgardApp());
}

class AsgardApp extends StatelessWidget {
  const AsgardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PANAGO',
      debugShowCheckedModeBanner: false,
      theme: AsgardTheme.theme,
      home: const LoginScreen(),
    );
  }
}
