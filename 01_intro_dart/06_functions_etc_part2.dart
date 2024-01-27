void main() {
  print(greetingEveryOne());

  print(sumTwoNumbers(2, 20));

  print(sumTwoNumbersOptional(2));

  print(greetAPerson(name: 'Arthur', message: 'Holi'));
}

String greetingEveryOne() {
  return "Hello everyone";
}

int sumTwoNumbers(int a, int b) => a + b;

//Recreacion de la funcion pero haciendo que uno de los parametros sea opcional
//para la opcionalidad se puede resumir en la recepcion de parametros como [ int b = 0]

int sumTwoNumbersOptional(int a, [int? b]) {
  b ??= 0;

  return a + b;
}

//Estamos definiendo aqui el name como obligatorio y message como opcional pasando un mensaje default
String greetAPerson({required String name, String message = "Hello"}) {
  return '$message $name';
}
