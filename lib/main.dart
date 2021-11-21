import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: const Login(),
    theme: ThemeData(
        primaryColor: const Color(0xffF54F00),
        accentColor: const Color(0xffD42F00)),
    debugShowCheckedModeBanner: false,
  ));
}
