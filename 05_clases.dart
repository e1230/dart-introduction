void main(List<String> args) {
  final spiderman = Hero(name: "batman", power: "El dinero");

  print(spiderman);
  print(spiderman.name);
  print(spiderman.power);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, required this.power});

  @override
  String toString() {
    return '$name - $power';
  }
}
