import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Center( child: Text ("My Calculator")),
        ),
        body: Container(
         width: 500,
         height: 400,
         decoration: BoxDecoration(color: const Color.fromARGB(255, 229, 217, 217)),
         alignment: Alignment.bottomRight,
         child: const Text("00",
         style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}

