import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://www.marinabaysands.com/content/dam/revamp/ASMrevamp/studio-ghibli/The-World-of-Studio-Ghibli-v2-1600x650.jpg',
            width: 300,
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/sweet-potato.png",
            width: 100,
            height: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 135, 18, 11)),
              onPressed: () {
                print("Click Button");
              },
              child: const Text(
                "Text",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 20,
          ),
          FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.red[900],
                foregroundColor: Colors.grey[200]),
            onPressed: () {},
            child: const Text(
              'Fill',
              style: TextStyle(fontSize: 25),
            ),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.purple, width: 2)),
              onPressed: () {},
              child: const Text(
                "Outline",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Elevated",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
