import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Aqui a tristeza dá pulos de alegria.",
    "Alegria é a melhor coisa que existe.",
    "Sou grato e feliz por tudo que a vida me proporcionou.",
    "Seja feliz! Não aceite menos que isso.",
    "Alegria, por favor, permaneça!",
    "Sorria mesmo sem estar sendo filmado.",
    "A alegria é contagiante. Passe adiante.",
    "O que importa é nossa alegria.",
    "A alegria do Senhor é a minha força!",
    "Hoje eu escolho a alegria!",
    "Sorria mais, transmita paz!",
    "Se jogue no que faz sorrir!"
    "A cada alegria que propiciamos aos outros, muito mais alegrias brotam em nossas vidas!",
    "O sorriso custa menos que a eletricidade e dá muito mais luz."
  ];

  var _fraseGerada = "Clique Abaixo Para Gerar uma Nova Frase";

  void _gerarFrase(/*Poderia receber um parametro aqui*/) {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          /*width: double.infinity,
          decoration:
              BoxDecoration(border: Border.all(width: 3, color: Colors.amber)
              ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
