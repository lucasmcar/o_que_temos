import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  final moviesRef = FirebaseFirestore.instance
      .collection('usuario')
      .doc('001')
      .set({'nome': 'Lucas'});

  runApp(MaterialApp(
    home: const Login(),
    theme: ThemeData(
        primaryColor: const Color(0xffF54F00),
        accentColor: const Color(0xffD42F00)),
    debugShowCheckedModeBanner: false,
  ));
}
