import 'package:flutter/material.dart';

class ValueField extends StatefulWidget {
  const ValueField({super.key, required this.textfield1});

  final String textfield1;
  


  @override
  State<ValueField> createState() => _ValueFieldState();
}

class _ValueFieldState extends State<ValueField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(color: Colors.deepPurple),
    child: TextField(
     
      style: TextStyle(color: const Color.fromARGB(223, 255, 255, 255), fontSize: 25),
      cursorColor: Colors.red,
      decoration: InputDecoration(
        hintText: "Input a value here",
        hintStyle: TextStyle(color: Colors.amber),
      )
    )
    );
  }
}