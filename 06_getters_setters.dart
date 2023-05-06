// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final cuadrado = Square(side: 10);

  // cuadrado.side = 5;

  print('Área: ${cuadrado.area}');
}

class Square {
  double _side;
  Square({
    required double side,
  })  : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('Reasignando valor del lado');
    if (value < 0) throw 'Valor debe ser >0';
    _side = value;
  }
}
