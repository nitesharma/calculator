import 'package:calculator/calc_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        home: CalcScreen(),
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
        ));
  }
}
