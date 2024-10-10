import 'package:flutter/material.dart';
import 'package:flutter_application/models/travel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CarouselTravel extends StatelessWidget {
  const CarouselTravel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Top Destinations",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () => print("See All"),
                child: const Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 73, 117, 139)),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: travel.length,
            itemBuilder: (context, int index) {
              Travel travels = travel[index];
              return Container(
                margin: const EdgeInsets.all(10),
                width: 210,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      bottom: 15,
                      child: Container(
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6,
                              offset: Offset(0, 1), // Shadow position
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${travels.activities.length} activities",
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text("${travels.description} ",
                                  style: TextStyle(color: Colors.grey[500]))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              travels.imageURL,
                              height: 180,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  travels.city,
                                  style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.locationArrow,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      travels.country,
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
