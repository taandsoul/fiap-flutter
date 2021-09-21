import "package:flutter/material.dart";

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Talissa :)"),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),

      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text("Seja bem-vinda, Talissa",
            style: TextStyle(
                fontSize: 30,
                color: Colors.pink,
                fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      drawer: Container(
        color: Colors.pink,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: const Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
