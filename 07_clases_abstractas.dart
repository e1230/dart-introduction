// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final WindPlant windPlant = WindPlant(initialEnergy: 100);
  final NuclearPlant nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('no hay suficiente energía');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;
  EnergyPlant({
    required this.energyLeft,
    required this.type,
  });

  void consumeEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  NuclearPlant({
    required this.energyLeft,
  });

  @override
  final PlantType type = PlantType.nuclear;

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
