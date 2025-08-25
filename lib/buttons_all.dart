import 'package:flutter/material.dart';


class ButtonsAll extends StatelessWidget {
  const ButtonsAll({super.key, required this.textname1, required this.textname2, required this.textname3, required this.textname4});

   final String textname1;
   final String textname2;
   final String textname3;
   final String textname4;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.blue,
      alignment: Alignment.bottomRight,
      child: Row(
        children: [
          ElevatedButton(onPressed: (){}, child: Text(textname1)),
          ElevatedButton(onPressed: (){}, child: Text(textname2)),
          ElevatedButton(onPressed: (){}, child: Text(textname3)),
          ElevatedButton(onPressed: (){}, child: Text(textname4)),

        ],
      ),
      
    );
  }
}