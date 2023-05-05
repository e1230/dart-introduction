void main(List<String> args) {
  final numeros = [1, 1, 2, 2, 3, 4, 5, 5, 5, 5, 6, 7, 8, 8, 9, 9];

  print("numeros: $numeros");
  final reversedNumbers = numeros.reversed;
  print("Reversed iterable: $reversedNumbers");
  print("Reversed list: ${numeros.reversed.toList()}");
  print("Reversed set: ${numeros.reversed.toSet()}");
  final numbersGreaterthan5 = numeros.where((num) => num >= 5);
  print('>5 iterable: $numbersGreaterthan5');
  print('>5 to Set sin repetidos : ${numbersGreaterthan5.toSet()}');
}
