import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/carousel.dart';
import 'package:flutter_application/widgets/hotel_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Travel extends StatefulWidget {
  const Travel({super.key});

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  int _selectIndex = 0;
  final List<IconData> _icons = [
    FontAwesomeIcons.planeArrival,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.car
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectIndex = index;
        });
        print(_selectIndex);
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: _selectIndex == index
                ? const Color.fromARGB(255, 73, 117, 139)
                : Colors.grey[400],
            borderRadius: BorderRadius.circular(30)),
        child: Icon(
          _icons[index],
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 120),
            child: Text(
              "What you wold like to find ?",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcon(map.key))
                  .toList()),
          const SizedBox(height: 20),
          const SizedBox(
            height: 20,
          ),
          const CarouselTravel(),
          const SizedBox(
            height: 20,
          ),
          const CarouselHotel()
        ],
      )),
    );
  }
}
