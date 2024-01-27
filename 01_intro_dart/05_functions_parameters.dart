void main() {
  print(greetingEveryOne());

  print(sumTwoNumbers(2, 20));

  print(sumTwoNumbersOptional(2));
}

String greetingEveryOne() {
  return "Hello everyone";
}

int sumTwoNumbers(int a, int b) => a + b;

//Recreacion de la funcion pero haciendo que uno de los parametros sea opcional

int sumTwoNumbersOptional(int a, [int? b]) {
  b ??= 0;

  return a + b;
}
