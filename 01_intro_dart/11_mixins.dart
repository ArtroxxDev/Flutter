abstract class Mamifero {}

abstract class Ave {}

abstract class Pez {}

abstract mixin class Vuela {
  void volar() => print('estoy volando');
}

abstract mixin class Camina {
  void caminar() => print('estoy caminando');
}

abstract mixin class Nada {
  void nadar() => print('estoy nadando');
}

//ejercicios con mixins

class Delfin extends Mamifero with Nada {}

class Murcielago extends Mamifero with Camina, Vuela {}

class Gato extends Mamifero with Camina {}

class Paloma extends Ave with Vuela, Camina {}

class Pato extends Ave with Vuela, Camina, Nada {}

class Tiburon extends Pez with Nada {}

class GatoVolador extends Mamifero with Camina, Vuela {}

void main() {
  final flipper = Delfin();
  flipper.nadar();
}
