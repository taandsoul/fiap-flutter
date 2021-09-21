import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  String infoResultado = "";

  void _calcularAleatorio() {
    setState(() {
      int numero = Random().nextInt(10);
      infoResultado = "Você pensou no número $numero, acertei?";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.grey,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: const Text("Number game"),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }

  _corpo() {
    return Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _texto("Mentalmente, escolha um número de 0 a 10"),
              _botao(),
              _texto(infoResultado),
            ],
          ),
        ),
    );
  }

  _texto(labelText) {
    return Text(labelText,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.black, fontSize: 22.0));
  }

  _botao() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: SizedBox(
        height: 50.0,
        child: ElevatedButton(
          onPressed: _calcularAleatorio,
          style: ElevatedButton.styleFrom(
            primary: Colors.black54,
          ),
          child: const Text("Ver número que escolhi 🧐",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
      ),
    );
  }
}
