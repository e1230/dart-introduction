void main(List<String> args) {
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["strong", "impostor"];
  final List<String> sprites = ["ditto/front.jpg", "ditto/back.jpg"];

  dynamic errorMessage = "Error";

  errorMessage = [123, 123];

  errorMessage = "String otra vez";

  //Mapas

  final Map<String, dynamic> pokemons = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': ["strong", "impostor"],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'}
  };

  // print("""
  // $pokemon
  // $hp
  // $isAlive
  // $abilities
  // $sprites
  // $errorMessage
  // """);
  print('Name: ${pokemons['name']}');
  print('Sprites: ${pokemons['sprites']}');

  print('Back: ${pokemons['sprites'][2]}');
  print('Front: ${pokemons['sprites'][1]}');
}
