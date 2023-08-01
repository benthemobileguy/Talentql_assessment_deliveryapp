import 'package:delivery_app_talentql/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Delivery App',
          theme: ThemeData(
            fontFamily: 'Inter',
            primarySwatch: Colors.orange,
          ),
          home: const LoginScreen());
  }
}
