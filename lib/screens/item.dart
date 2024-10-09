import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int quantity = 5;

  void addQuantity() {
    setState(() {
      quantity += 1;
    });
  }

  void delQuantity() {
    setState(() {
      quantity = quantity <= 0 ? 0 : quantity -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red[900]),
              onPressed: delQuantity,
              child: const Text(
                "-",
                style: TextStyle(fontSize: 30),
              )),
          Text(
            "$quantity",
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red[900]),
              onPressed: addQuantity,
              child: const Text(
                "+",
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
