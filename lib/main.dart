import 'package:flutter/material.dart';

import 'package:the_grand_warden/home.dart';
import 'package:the_grand_warden/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
