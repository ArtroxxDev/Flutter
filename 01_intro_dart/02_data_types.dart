void main() {
  final String name = 'Pikachu';
  final int hp = 200;
  final bool alive = true;
  final List<String> abilities = ['impactrueno', 'pika pika'];
  final sprites = ['pikachu/img.png', 'pikachu/impact.png'];

  //dynamic puede ser cualquier tipo de dato
  dynamic dataValue = 'Hola mundo';
  dataValue = 124;
  dataValue = true;
  dataValue = [1, 2, 3];
  dataValue = {
    'name': 'Pikachu',
    'hp': 200,
    'alive': true,
    'abilities': ['impactrueno', 'pika pika'],
    'sprites': ['pikachu/img.png', 'pikachu/impact.png']
  };

  print("""
  $name
  $hp
  $alive
  $abilities
  $sprites
  $dataValue
 """);
}
