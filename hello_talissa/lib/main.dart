import "package:flutter/material.dart";
import 'package:hello_talissa/tela_inicial.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App 1 - Hello Talissa',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const TelaInicial(),
    );
  }
}
