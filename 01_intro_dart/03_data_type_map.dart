void main() {
  Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'}
  };

  //Tarea, imprimir el back y el front en el mismo orden
  print({pokemon['sprites'][2], pokemon['sprites'][1]});
}
