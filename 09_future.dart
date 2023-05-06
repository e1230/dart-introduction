void main(List<String> args) async {
  print('Inicio');
  try {
    final value = await httpGet('www.google.com');
    print(value);
  } on Exception catch (err) {
    print('Tenemos una excepción: $err');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Fin del try catch');
  }

  print('Fin');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('No hay parametros en url');
  // throw "F";
  return 'Hay valor de la petición';
}
