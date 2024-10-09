import 'package:flutter/material.dart';
import 'package:flutter_application/models/person.dart';
import 'package:flutter_application/screens/form.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: data[index].job.color),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].name,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Age : ${data[index].age} | ${data[index].job.title}",
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Image.asset(
                        data[index].job.image,
                        width: 70,
                        height: 70,
                      )
                    ],
                  ));
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const AddFrom()));
              },
              icon: const Icon(
                Icons.add,
                size: 40,
                color: Colors.grey,
              )),
        )
      ],
    );
  }
}
