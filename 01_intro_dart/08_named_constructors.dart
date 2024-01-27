void main() {
  final Hero ironman = Hero(name: 'ironman', power: 'money', isAlive: false);

  print(ironman);

  final jsonFile = {
    'name': 'superman',
    'power': 'infinitepower',
    'isAlive': true
  };

  final Hero superman = Hero.Fromjson(jsonFile);

  print(superman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.Fromjson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No info for alive found';

  @override
  String toString() {
    return 'The hero is $name, and his power is $power, the hero are ${isAlive ? 'Alive' : 'Dead'}';
  }
}
