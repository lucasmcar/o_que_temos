import 'package:flutter/material.dart';
import 'package:o_que_temos/values/strings.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  String _msgError = "";

  _validarCampos() {
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if (nome.isNotEmpty && nome.length >= 3) {
      if (email.isNotEmpty && email.contains("@")) {
        if (senha.isNotEmpty && senha.length > 5) {
        } else {
          setState(() {
            _msgError = "A senha deve possuir mais de 5 caracteres";
          });
        }
      } else {
        setState(() {
          _msgError = "Preencha o email corretamente";
        });
      }
    } else {
      setState(() {
        _msgError = "Preencha o nome corretamente";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF24F00),
        title: const Text(
          APPBAR_REGISTER,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("images/cozinheiro.png",
                            width: 150, height: 150),
                        const Text(REGISTER_LABEL,
                            style: TextStyle(fontSize: 20, color: Colors.red))
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerNome,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.red, fontSize: 20),
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16),
                        hintText: YOUR_NAME,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: TextField(
                    controller: _controllerEmail,
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
                  controller: _controllerSenha,
                  autofocus: true,
                  obscureText: true,
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
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: RaisedButton(
                    child: const Text(REGISTER_BTN,
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    onPressed: null,
                    color: const Color(0xffD42F00),
                    padding: const EdgeInsets.all(16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                Center(
                  child: Text(
                    _msgError,
                    style: const TextStyle(color: Colors.red, fontSize: 20),
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
