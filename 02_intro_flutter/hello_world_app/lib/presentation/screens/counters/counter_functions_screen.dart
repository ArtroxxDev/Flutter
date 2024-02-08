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
            CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () => setState(() {
                clickCounter = 0;
              }),
            ),

            const SizedBox(
              height: 10,
            ),

            CustomButton(
              icon: Icons.plus_one,
              onPressed: () => setState(() {
                clickCounter++;
              }),
            ),
            const SizedBox(
              height: 10,
            ), //Funcion para añadir un espacio entre los botones
            CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () => setState(() {
                if (clickCounter == 0) return;
                clickCounter--;
              }),
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(), //funcion para redondear los botones
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
