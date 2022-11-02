import 'package:coffee/screens/details.dart';
import 'package:coffee/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFEFEBE9),
        appBarTheme:
            const AppBarTheme(color: Color(0xFFEFEBE9), elevation: 0.0),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: 'varela',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF473D3A),
          ),
          headline2: TextStyle(
            fontFamily: 'nunito',
            fontSize: 17.0,
            fontWeight: FontWeight.w300,
            color: Color(0xFFB0AAA7),
          ),
          headline3: TextStyle(
            fontFamily: 'varela',
            fontSize: 17.0,
            color: Color(0xFF473D3A),
          ),
          headline4: TextStyle(
              fontFamily: 'nunito', fontSize: 16.0, color: Color(0xFFD4D3D2)),
          headline5: TextStyle(
              fontFamily: 'nunito',
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF716966)),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
