import 'package:flutter/material.dart';
import 'package:ken/buttons.dart';
import 'package:ken/value_field.dart';


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
             alignment: Alignment.center,
             child: Column(
               children: [
                ValueField (textfield1: "Enter"),
                Spacer(flex: 1),
                 Text ("00.00", 
                 textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 50,
                                    fontWeight: FontWeight.bold),
                                    
                 ),
               ],
               
             ),
            
            ),
            

            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(textname1: "CLEAR"),
                  Buttons(textname1: "BACKSPACE"),
                  
                  
                      
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(textname1: "7"),
                  Buttons(textname1: "8"),
                  Buttons(textname1: "9"),
                  Buttons(textname1: "/"),
                  
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(textname1: "4"),
                  Buttons(textname1: "5"),
                  Buttons(textname1: "6"),
                  Buttons(textname1: "X"),
                  
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(textname1: "1"),
                  Buttons(textname1: "2"),
                  Buttons(textname1: "3"),
                  Buttons(textname1: "-"),
                         
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(textname1: "0"),
                  Buttons(textname1: "."),
                  Buttons(textname1: "="),
                  Buttons(textname1: "+"),
                
                
                ],
              ),
            ),
       
       
          ],
        ),
      ),
    );
  }
}


