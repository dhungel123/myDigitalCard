import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feature/digital_card/presentation/my_home_page.dart';

/*
* Starting pint of our flutter o\project
* Here MyApp is the parent widget in this project
*
* */
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
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.recursive().fontFamily,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}







/*ctrl + shift + /
* Every widget parent and child relationship
*
* */
