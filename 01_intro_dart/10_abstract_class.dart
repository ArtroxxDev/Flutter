void main() {
  final myPlant = WindPlant(initialEnergy: 100);

  print(myPlant);

  print('wind: ${chargePhone(myPlant)}');

  //Pruebas con la planta nuclear

  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print(nuclearPlant);

  print('nuclear ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enought energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

//extends o implements

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      :
        //Accedemos al constructor padre con super
        super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
