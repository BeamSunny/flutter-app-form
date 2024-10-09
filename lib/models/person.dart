import 'package:flutter/material.dart';

enum Job {
  dev1(
      title: 'Dev1', image: 'assets/images/artichoke.png', color: Colors.green),
  dev2(title: 'Dev2', image: 'assets/images/carrot.png', color: Colors.orange),
  dev3(title: 'Dev3', image: 'assets/images/corn.png', color: Colors.amber),
  dev4(
      title: 'Dev4',
      image: 'assets/images/sweet-potato.png',
      color: Colors.purpleAccent);

  const Job({required this.title, required this.image, required this.color});
  final String title;
  final String image;
  final Color color;
}

class Person {
  Person({required this.name, required this.age, required this.job});
  String name;
  int age;
  Job job;
}

List<Person> data = [
  Person(name: "Artichoke", age: 18, job: Job.dev1),
  Person(name: "Carrot", age: 20, job: Job.dev2),
  Person(name: "Corn", age: 25, job: Job.dev3),
  Person(name: "Sweet Potato", age: 60, job: Job.dev4)
];
