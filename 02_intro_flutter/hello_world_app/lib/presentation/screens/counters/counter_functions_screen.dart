import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  String texto = "clicks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter functions'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(
                  Icons.refresh_rounded), //widget con forma de recarga
            ), //El leading añade el widget a la izquierda, el actions a la derecha y puede esperar mas de un widget.
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
                clickCounter != 1
                    ? "clicks"
                    : "click", //Se refactoriza el if que existia antes que validaba la palabra cliks
                style: const TextStyle(
                  fontSize: 25,
                ))
          ],
        )),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              child: const Icon(Icons.restart_alt_outlined),
            ),

            const SizedBox(
              height: 10,
            ),

            FloatingActionButton(
              shape: const StadiumBorder(), //funcion para redondear los botones
              onPressed: () {
                //El setState es una funcion que renderiza en tiempo real la pantalla
                setState(() {
                  clickCounter++;
                });
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(
              height: 10,
            ), //Funcion para añadir un espacio entre los botones
            FloatingActionButton(
              shape: const StadiumBorder(), //funcion para redondear los botones
              onPressed: () {
                //El setState es una funcion que renderiza en tiempo real la pantalla
                setState(() {
                  clickCounter--;
                });
              },
              child: const Icon(Icons.exposure_minus_1),
            ),
          ],
        ));
  }
}
