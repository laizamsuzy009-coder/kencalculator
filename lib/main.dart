import 'package:flutter/material.dart';
import 'package:ken/buttons.dart';
import 'package:ken/value_field.dart';
import 'package:math_expressions/math_expressions.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final TextEditingController controller = TextEditingController();


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
                ValueField(numbercontrollers: controller),
                Spacer(flex: 1),
                 Text ("00.00", 
                 textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 50,
                                    fontWeight: FontWeight.bold),
                                    
                 ),
               ],
               
             ),
            
            ),
            

            // Container(
            //   decoration: BoxDecoration(color: Colors.blue),
            //   // child: Row(
            //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   //   children: [
            //   //     Buttons(textname1: "CLEAR"),
            //   //     Buttons(textname1: "BACKSPACE"),
                  
                  
                      
            //   //   ],
            //   // ),
            // ),

            // Container(
            //   decoration: BoxDecoration(color: Colors.blue),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Buttons(textname1: "7"),
            //       Buttons(textname1: "8"),
            //       Buttons(textname1: "9"),
            //       Buttons(textname1: "/"),
                  
            //     ],
            //   ),
            // ),

            // Container(
            //   decoration: BoxDecoration(color: Colors.blue),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Buttons(textname1: "4"),
            //       Buttons(textname1: "5"),
            //       Buttons(textname1: "6"),
            //       Buttons(textname1: "X"),
                  
            //     ],
            //   ),
            // ),

            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Buttons(textname1: "1", onPressedCallback: (textname1) 
                  {
                    print(textname1);
                    controller.text += textname1;
                    // controller2.text += textname1;
                  },
                  ),

                  Buttons(textname1: "2", onPressedCallback: (textname1) 
                  {
                    print(textname1);
                    controller.text += textname1;
                
                  },
                  ),

                  Buttons(textname1: "3", onPressedCallback: (textname1) 
                  {
                    print(textname1);
                    controller.text += textname1;
                
                  },
                  ),
                  Buttons(textname1: "-", onPressedCallback: (textname1) 
                  {
                    print(textname1);
                    controller.text = controller.text + textname1;
                  },
                  ),
                         
                ],
              ),
            ),

            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Buttons(textname1: "0"),
                  // Buttons(textname1: "."),
                  Buttons(textname1: "=", onPressedCallback: (textname1) 
                  {
                    print(textname1);
                    controller.text = calculateExpression(controller.text);

    
                  },
                  ),
                  // Buttons(textname1: "+"),
                
                
                ],
              ),
            ),
       
       
          ],
        ),
      ),
    );
  }
  
  String calculateExpression(String input) {
    input = input.replaceAll(" ", ""); // remove spaces

    // Split into tokens (numbers & operators)
    List<String> tokens = [];
    String number = "";

    for (int i = 0; i < input.length; i++) {
      String char = input[i];
      if ("+-*/".contains(char)) {
        tokens.add(number);
        tokens.add(char);
        number = "";
      } else {
        number += char;
      }
    }
    tokens.add(number);

    // First handle * and /
    List<String> stack = [];
    for (int i = 0; i < tokens.length; i++) {
      String token = tokens[i];
      if (token == "*" || token == "/") {
        int a = int.parse(stack.removeLast());
        int b = int.parse(tokens[++i]);
        int res = token == "*" ? a * b : a ~/ b; // integer division
        stack.add(res.toString());
      } else {
        stack.add(token);
      }
    }

    // Then handle + and -
    int result = int.parse(stack[0]);
    for (int i = 1; i < stack.length; i += 2) {
      String op = stack[i];
      int num = int.parse(stack[i + 1]);
      if (op == "+") {
        result += num;
      } else if (op == "-") {
        result -= num;
      }
    }

    return result.toString();
  }
}


