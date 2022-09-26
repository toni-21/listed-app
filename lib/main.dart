import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listed_app/view/pages/home.dart';
import 'package:listed_app/view/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          ),
      home: Home(),
    );
  }
}
