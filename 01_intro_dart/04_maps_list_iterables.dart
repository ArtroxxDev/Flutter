void main() {
  final numbers = [1, 2, 3, 4, 4, 5, 5, 5, 6, 7, 8, 8, 8, 8, 9];

  print('The original list is: $numbers');
  print('The list length is: ${numbers.length}');
  print('The zero index is: ${numbers[0]}');
  print('Similar function is: ${numbers.first}');
  print('The reversed function is: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;

  print(
      'The function reversed convert a list to a iterable like this: $reversedNumbers');
  print('Function list: ${reversedNumbers.toList()}');
  print('Toset function: ${reversedNumbers.toSet()}');

  //funcion where de las listas para tener algo en base a una condicion
  final numbersGreaterThan5 = numbers.where((i) {
    return i > 5;
  });

  print('return a iterable like this: $numbersGreaterThan5');
  print('using a toSet function: ${numbersGreaterThan5.toSet()}');
}
