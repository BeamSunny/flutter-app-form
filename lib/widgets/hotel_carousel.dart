import 'package:flutter/material.dart';

class CarouselHotel extends StatelessWidget {
  const CarouselHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Excusive Hotels",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "See All",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 73, 117, 139)),
              )
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.red,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {}),
        )
      ],
    );
  }
}
