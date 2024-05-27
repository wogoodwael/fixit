import 'package:fixit/components/constants.dart';
import 'package:fixit/components/technicians_card.dart';
import 'package:flutter/material.dart';

import '../components/custom_dropdown.dart';
import '../src/data/app_size.dart';

class EverySreviceScreen extends StatelessWidget {
  const EverySreviceScreen(
      {super.key, required this.serviceName, required this.techniciansCard});
  final String serviceName;
  final TechniciansCard techniciansCard;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Image(
                height: PhoneSize.phoneHeight(context) * 0.2,
                image: const AssetImage(
                  'assets/images/man.png',
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffEDEDED),
                  border: const Border(
                    top: BorderSide(color: kPrimaryColor, width: 4),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListView(
                  children: [
                    const Center(
                      child: Text(
                        'Service technicians',
                        style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontFamily: 'ReadexPro',
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        serviceName,
                        style: const TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontFamily: 'ReadexPro',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        bottom: 5,
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: PhoneSize.phonewidth(context) * 0.02,
                          vertical: PhoneSize.phoneHeight(context) * 0.01),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: kPrimaryColor,
                              width: 2.5,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'Book with a technician',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: kPrimaryColor,
                                    fontFamily: 'ReadexPro',
                                  ),
                                ),
                              ),
                            ),
                            const CustomDropDown(
                              hint: "CHOOSE THE PROBLEM",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomDropDown(
                              hint: "IN THIS CITY",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const CustomDropDown(
                              hint: "IN THIS AREA",
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 10),
                              decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                "S E A R C H",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    techniciansCard,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Electrics extends StatelessWidget {
  const Electrics({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Electrics',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Electric',
      ),
    );
  }
}

class Water extends StatelessWidget {
  const Water({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'water',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed El-Shaer',
        city: 'tanta',
        service: 'water',
      ),
    );
  }
}

class Carpentry extends StatelessWidget {
  const Carpentry({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'carpentry',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Ramadan',
        city: 'tanta',
        service: 'carpentry',
      ),
    );
  }
}

class HomeService extends StatelessWidget {
  const HomeService({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'HomeService',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Zakria',
        city: 'tanta',
        service: 'HomeService',
      ),
    );
  }
}

class Coiffeur extends StatelessWidget {
  const Coiffeur({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Coiffeur',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Samir',
        city: 'tanta',
        service: 'Coiffeur',
      ),
    );
  }
}

class Driver extends StatelessWidget {
  const Driver({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Driver',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Driver',
      ),
    );
  }
}

class BuildingWork extends StatelessWidget {
  const BuildingWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Building Work',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Building Work',
      ),
    );
  }
}

class InsulationWork extends StatelessWidget {
  const InsulationWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Insulation Work',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Insulation Work',
      ),
    );
  }
}

class RoadWork extends StatelessWidget {
  const RoadWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Road Work',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Road Work',
      ),
    );
  }
}

class SmithWork extends StatelessWidget {
  const SmithWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Smith Work',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Smith Work',
      ),
    );
  }
}

class MobileMaintenance extends StatelessWidget {
  const MobileMaintenance({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Mobile Maintenance',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Mobile Maintenance',
      ),
    );
  }
}

class ShippingAndDelivery extends StatelessWidget {
  const ShippingAndDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Shipping And Delivery',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Shipping And Delivery',
      ),
    );
  }
}

class Mechanical extends StatelessWidget {
  const Mechanical({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Mechanical',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Mechanical',
      ),
    );
  }
}

class BabySitter extends StatelessWidget {
  const BabySitter({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Baby Sitter',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Baby Sitter',
      ),
    );
  }
}

class ElderlySitter extends StatelessWidget {
  const ElderlySitter({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Elderly Sitter',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Elderly Sitter',
      ),
    );
  }
}

class MedicalEquipmentMaintenance extends StatelessWidget {
  const MedicalEquipmentMaintenance({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Medical Equipment Maintenance',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Medical Equipment Maintenance',
      ),
    );
  }
}

class ComputerMaintenance extends StatelessWidget {
  const ComputerMaintenance({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Computer Maintenance',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Computer Maintenance',
      ),
    );
  }
}

class ElevatorTechnician extends StatelessWidget {
  const ElevatorTechnician({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Elevator Technician',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Elevator Technician',
      ),
    );
  }
}

class Farmer extends StatelessWidget {
  const Farmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Farmer',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Farmer',
      ),
    );
  }
}

class Painting extends StatelessWidget {
  const Painting({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Painting',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Painting',
      ),
    );
  }
}

class GraphicDesign extends StatelessWidget {
  const GraphicDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Graphic Design',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Graphic Design',
      ),
    );
  }
}

class GasInstallation extends StatelessWidget {
  const GasInstallation({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Gas Installation',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Gas Installation',
      ),
    );
  }
}

class CalligrapherAndPainter extends StatelessWidget {
  const CalligrapherAndPainter({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: 'Calligrapher And Painter',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: 'Calligrapher And Painter',
      ),
    );
  }
}

class DDesign extends StatelessWidget {
  const DDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return const EverySreviceScreen(
      serviceName: '3D Design',
      techniciansCard: TechniciansCard(
        image: 'assets/images/Don.jpg',
        name: 'Ahmed Okal',
        city: 'tanta',
        service: '3D Design',
      ),
    );
  }
}
