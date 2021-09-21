import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String infoResultado = "Informe os números!";

  void _calcular() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);

      double resultado = n1 * n2;

      infoResultado = 'Resultado: $resultado';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Multiplicação"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.white,
        body: _body());
  }

  _body() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _textFieldComponent(n1Controller, "1° número"),
          _textFieldComponent(n2Controller, "2° número"),
          _padding(),
          _myText()
        ],
      ),
    );
  }

  _textFieldComponent(controller, label) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: label, labelStyle: const TextStyle(color: Colors.blue)),
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.blue, fontSize: 25.0),
      controller: controller,
    );
  }

  _padding() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: SizedBox(
        height: 50.0,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            side: const BorderSide(
                width: 2,
                color: Colors.blue
            ),
          ),
          onPressed: () { },
          child: const Text('Calcular'),
        )
      ),
    );
  }

  _myText() {
    return Text(
      infoResultado,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.black, fontSize: 25.0),
    );
  }
}
