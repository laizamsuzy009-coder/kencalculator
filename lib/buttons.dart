import 'package:flutter/material.dart';


class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.textname1});

   final String textname1;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.blue,
      alignment: Alignment.bottomRight,
       child: ElevatedButton(onPressed: () {}, child: Text (textname1)),
      
      
    );
  }
}