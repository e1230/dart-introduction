// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final Map<String, dynamic> rawJson = {
    'name': 'Thor',
    'power': 'Thunder',
    'isAlive': true
  };

  final ironman = Hero(name: "Tony Stark", power: "El dinero", isAlive: false);
  final thor = Hero.fromJson(rawJson);

  print(ironman);
  print(thor);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAliveFound';

  @override
  String toString() {
    return '$name - $power - Alive: ${isAlive ? 'YES!!!' : 'Ño'}';
  }
}
