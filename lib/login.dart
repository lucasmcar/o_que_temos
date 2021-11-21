import 'package:flutter/material.dart';
import 'package:o_que_temos/values/strings.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          APPBAR_TITLE,
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffF24F00)),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Image.asset("images/logo.png",
                        width: 200, height: 150)),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextField(
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.red, fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16),
                        hintText: HINT_EMAIL,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ),
                TextField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.red, fontSize: 20),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(16),
                      hintText: HINT_SENHA,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: RaisedButton(
                    child: const Text(ACCESS_BUTTON,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed: null,
                    color: const Color(0xffD42F00),
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
