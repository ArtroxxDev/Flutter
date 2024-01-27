void main() {
  final Hero superman = Hero('Superman', 'Infinity live');

  print(superman.name);

  final SuperHero wolverine = SuperHero(name: 'wolverine', power: 'invincible');

  print(wolverine);
}

class Hero {
  String name;
  String power;

  //Definimos el contructor
  //Hero( hName, hPower) :
  //name = hName,
  //power = hPower;

  //La manera con menos codigo de hacer lo mismo es:
  Hero(this.name, this.power);
}

//Clase de prueba para hacer por argumentos y no por posicion

class SuperHero {
  String name;
  String power;

  SuperHero({required this.name, required this.power});

  //Definimos un valor default para el metodo toString sobreescribiendo al nativo
  @override
  String toString() {
    return 'the name is $name and his power is $power';
  }
}
