import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController peso = TextEditingController();
  TextEditingController altura = TextEditingController();
  String classificacao = "Classificação";

  void _imcCalculator() {
    setState(() {
      double valuePeso = double.parse(peso.text);
      double valueAltura = double.parse(altura.text);

      double imc = valuePeso / (valueAltura * valueAltura);

      if (imc < 18.5) {
        classificacao = "Abaixo do peso";
      } else if (imc >= 18.5 && imc <= 24.9) {
        classificacao = "Peso Normal";
      } else if (imc >= 25 && imc <= 29.9) {
        classificacao = "Sobrepeso";
      } else if (imc >= 30 && imc <= 34.9) {
        classificacao = "Obesidade Grau 1";
      } else if (imc >= 35 && imc <= 39.9) {
        classificacao = "Obesidade Grau 2";
      } else if (imc >= 40) {
        classificacao = "Obesidade Grau 3 ou Mórbida";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: const Text("Calculo de IMC"),
      centerTitle: true,
      backgroundColor: Colors.blueGrey[600],
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _campo("Peso", peso),
          _campo("Altura", altura),
          _botao(),
          _texto(classificacao),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold)),
      textAlign: TextAlign.left,
      style: const TextStyle(color: Colors.blueGrey, fontSize: 14.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: SizedBox(
            height: 50.0,
            child: ElevatedButton(
              onPressed: _imcCalculator,
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text("Calcular meu IMC!",
                  style: TextStyle(color: Colors.white, fontSize: 18.0)),
            )));
  }

  _texto(resultado) {
    return Text(resultado,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.blueGrey, fontSize: 25.0, fontStyle: FontStyle.italic));
  }

}
