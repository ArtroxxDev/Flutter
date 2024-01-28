void main() {
  final Square mySquare = Square(side: -10);

  //mySquare.Side = -5;

  print('The side of my Square is: ${mySquare.Area}');
}

class Square {
  //al iniciar la variable con _ indicamos que la misma sera una private
  double _side;

  Square({required double side})
      :
        //Se agrega assrt que es para definir una regla
        assert(side >= 0, 'The side must be >= 0'),
        _side = side;

  double get Area {
    return _side * _side;
  }

  set Side(double value) {
    print('Setting a new value as $value');
    //el throw mata la ejecucion luego de entrar en el metodo
    if (value < 0) throw 'The value must be >=0';
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
