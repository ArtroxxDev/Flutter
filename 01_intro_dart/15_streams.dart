void main() {
  emitNumbers().listen((value) {
    print('The actual value is: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 2), (value) {
    return value;
  }).take(5);
}
