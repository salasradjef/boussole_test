import 'package:boussole_test/login_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Boussole",
    theme:ThemeData.dark(),
    home: LoginScreen(),
  );
  }
}

