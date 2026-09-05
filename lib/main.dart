import 'package:dmsn/components/global_values.dart';
import 'package:dmsn/screens/dashboard_screen.dart';
import 'package:dmsn/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: GlobalValues.banTheme,
      builder: (context,value,_) {
        return MaterialApp(
          routes: {
            "/dash" : (context) => DashboardScreen()
          },
          theme: value ? ThemeData.light() : ThemeData.dark(),
          home: LoginScreen(),
        );
      }
    );
  }
}