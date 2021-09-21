import 'package:flutter/material.dart';

class PessoasLoja extends StatefulWidget {
  const PessoasLoja({Key? key}) : super(key: key);

  @override
  _PessoasLojaState createState() => _PessoasLojaState();
}

class _PessoasLojaState extends State<PessoasLoja> {
  String numeroPessoas = "0";
  int totalPessoas = 0;

  void _addPessoas() {
    setState(() {
      int pessoasTotal = int.parse(numeroPessoas);

      int resultado = pessoasTotal + 1;

      numeroPessoas = '$resultado';
    });
  }

  void _removePessoas() {
    setState(() {
      int pessoasTotal = int.parse(numeroPessoas);

      int resultado = pessoasTotal - 1;

      if (resultado <= 0) {
        resultado = 0;
      }

      numeroPessoas = '$resultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _title(),
      backgroundColor: Colors.white,
      body: _body(),
    );
  }

  _title() {
    return AppBar(
      title: const Text("Pessoas presentes na loja"),
      centerTitle: true,
      backgroundColor: Colors.purple,
    );
  }

  _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _boasVindas(),
          _campoNumero(),
          _containerButtons(),
        ],
      ),
    );
  }

  _campoNumero() {
    return Text(
      numeroPessoas,
      style: const TextStyle(fontSize: 20),
    );
  }

  _boasVindas() {
    return const Text("Contador de pessoas");
  }

  _containerButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buttonAction("Incluir"),
        _buttonAction("Remover"),
      ],
    );
  }

  _buttonAction(action) {
    if (action == "Incluir") {
      return TextButton(
        onPressed: _addPessoas,
        child: Text(
          "Incluir pessoa",
          style: TextStyle(
            color: Colors.green[800],
            fontSize: 16,
          ),
        ),
      );
    }

    if (action == "Remover") {
      return TextButton(
        onPressed: _removePessoas,
        child: Text(
          "Remover pessoa",
          style: TextStyle(
            color: Colors.red[800],
            fontSize: 16,
          ),
        ),
      );
    }
  }
}
