import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_application/models/person.dart';

class AddFrom extends StatefulWidget {
  const AddFrom({super.key});

  @override
  State<AddFrom> createState() => _AddFromState();
}

class _AddFromState extends State<AddFrom> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.dev1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Form",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 101, 13, 6),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                      label: Text(
                    "Name",
                    style: TextStyle(fontSize: 18),
                  )),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Enter Your Name";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _name = newValue!;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text(
                    "Age",
                    style: TextStyle(fontSize: 18),
                  )),
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return "Enter Your Age";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    _age = int.parse(newValue.toString());
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                DropdownButtonFormField(
                  value: _job,
                  decoration: const InputDecoration(
                      label: Text(
                    "Job",
                    style: TextStyle(fontSize: 18),
                  )),
                  items: Job.values.map((key) {
                    return DropdownMenuItem(
                      value: key,
                      child: Text(key.title),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                FilledButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                    _formKey.currentState!.save();
                    data.add(Person(name: _name, age: _age, job: _job));
                    _formKey.currentState!.reset();

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) => const MyApp()));
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.red[900],
                  ),
                  child: const Text("Save"),
                )
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
