import 'package:flutter/material.dart';


class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.textname1, required this.onPressedCallback});

   final String textname1;
  final Function onPressedCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: Colors.blue,
      alignment: Alignment.bottomRight,
       child: ElevatedButton(onPressed: () {
        onPressedCallback(textname1);
    }, child: Text (textname1)),
      
      
    );
  }
}