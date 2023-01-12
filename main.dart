import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/Sceen/HelloWorld.dart';
import 'package:flutter_application_1/Sceen/home_page.dart';
import 'package:flutter_application_1/Sceen/login_page.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        // ignore: prefer_const_constructors
        "/" :(context) => LoginPage(),
        "/home":(context) => HomePage(),
        // ignore: prefer_const_constructors
        "/login":(context) => LoginPage(),
        // ignore: prefer_const_constructors
        "/hello":(context) => MyHomePage(),
      },
    );
  }
}