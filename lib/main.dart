import 'package:contact/home/home_screen.dart';
import 'package:contact/support/support_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Contact());
}

class Contact extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );

}
}