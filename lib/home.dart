import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  final titulo;

  Home(this.titulo);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int quantidadeApertos = 0;

  void incrementaClique() {
    setState(() {
      quantidadeApertos = quantidadeApertos + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Você precionou esse botão"),
            Text('$quantidadeApertos vezes' ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementaClique,
        child: const Icon(Icons.add),
      ),
    );
  }
}
