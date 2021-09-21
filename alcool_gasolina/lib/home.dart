import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController alcool = TextEditingController();
  TextEditingController gasolina = TextEditingController();
  String resultado = "Resultado";

  void _alcoolGasolina() {
    setState(() {
      double valueAlcool = double.parse(alcool.text);
      double valueGasolina = double.parse(gasolina.text);

      double divisaoLitro = valueAlcool / valueGasolina;

      if (divisaoLitro <= 0.7) {
        resultado = "Dessa vez escolha alcool";
      } else {
        resultado = "Dessa vez escolha gasolina";
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
      title: const Text("Alcool ou Gasolina"),
      centerTitle: true,
      backgroundColor: Colors.red[300],
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _campo("Preço do Alcool", alcool),
          _campo("Preço da Gasolina", gasolina),
          _botao(),
          _texto(resultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: const TextStyle(color: Colors.black)),
      textAlign: TextAlign.left,
      style: const TextStyle(color: Colors.red, fontSize: 14.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: SizedBox(
            height: 50.0,
            child: ElevatedButton(
              onPressed: _alcoolGasolina,
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent, // background
                onPrimary: Colors.white, // foreground
              ),
              child: const Text("Verificar",
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
            )));
  }

  _texto(textoParaExibir) {
    return Text(textoParaExibir,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.red, fontSize: 22.0));
  }

  _foto() {
    return Center(
        child: Image.asset('images/alcool.png'),
    );
  }
}
