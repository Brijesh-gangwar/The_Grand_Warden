import 'package:flutter/material.dart';
import 'package:the_grand_warden/auth/scaner/scanner.dart';

void main() async {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   "/": (context) => SplashScreen(),
      //   "/home": (context) => dashboard(),
      // },
      home: MyHome(),
    ),
  );
}
