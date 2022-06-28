import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minangkabau_food/base_navigation.dart';
import 'package:minangkabau_food/style/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Resep Minangkabau",
      theme: ThemeData(
        primaryColor: mainColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: BaseNavigation(),
    );
  }
}
