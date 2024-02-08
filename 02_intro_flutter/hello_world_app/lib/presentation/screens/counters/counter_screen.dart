import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String texto = "clicks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$clickCounter',
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
          Text(texto,
              style: const TextStyle(
                fontSize: 25,
              ))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //El setState es una funcion que renderiza en tiempo real la pantalla
          setState(() {
            clickCounter++;
            if (clickCounter != 1) {
              texto = 'clicks';
            } else if (clickCounter == 0) {
              texto = 'clicks';
            } else {
              texto = 'click';
            }
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
