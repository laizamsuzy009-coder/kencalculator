import 'package:flutter/material.dart';
import 'package:ken/buttons.dart';
import 'package:ken/buttons_all.dart';

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
        body: Column(
          children: [
            Container(
             width: 500,
             height: 400,
             decoration: BoxDecoration(color: const Color.fromARGB(255, 229, 217, 217)),
             alignment: Alignment.bottomRight,
             child: Text ("00.00"),
            ),
            Row(
              children: [
                Buttons(textname1: "0"),
                Buttons(textname1: "1"),
                Buttons(textname1: "2"),
                Buttons(textname1: "3"),
                Buttons(textname1: "4"),
          
              ],
            ),
            Row(
              children: [
                Buttons(textname1: "5"),
                Buttons(textname1: "6"),
                Buttons(textname1: "7"),
                Buttons(textname1: "8"),
                Buttons(textname1: "9"),
          
              ],
            ),
            // ButtonsAll(textname1: "1", textname2: "5", textname3: "9", textname4: "/"),
            // ButtonsAll(textname1: "2", textname2: "6", textname3: "+", textname4: "Clear"),
            // ButtonsAll(textname1: "3", textname2: "7", textname3: "-", textname4: "backspace"),
            
          ],
        ),
      ),
    );
  }
}

