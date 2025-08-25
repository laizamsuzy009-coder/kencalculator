import 'package:flutter/material.dart';


class ButtonsAll extends StatelessWidget {
  const ButtonsAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.blue,
      alignment: Alignment.bottomRight,
      child: Column(
        children: [
          ElevatedButton(onPressed: (){}, child: Text("Clear")),
        ],
      ),
      
    );
  }
}