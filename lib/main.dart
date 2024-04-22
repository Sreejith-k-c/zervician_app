import 'package:flutter/material.dart';
import 'package:zervician_app/presentation/login/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: LoginPage(),
    );
  }
}