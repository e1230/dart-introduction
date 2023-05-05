void main(List<String> args) {
  print(saludo());
  print('Suma: ${suma(10, 20)}');
  print(saludarPersona(name: 'Edgar'));
}

String saludo() => "Hola uwu";

int suma(int a, [int b = 0]) => a + b;

String saludarPersona({required String name, String message = 'Hola,'}) {
  return "$message $name";
}
