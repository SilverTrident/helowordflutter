import 'package:flutter/material.dart';
import 'package:hello_world/home.dart';

void main(){
  runApp(HelloWorld());  
}

class HelloWorld extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello World",
      home: Home("Olá mundo"),
    );
  
  }
}

