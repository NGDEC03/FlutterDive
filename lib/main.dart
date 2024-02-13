import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(dice_game());
}
class dice_game extends StatefulWidget {
  
   dice_game({super.key});

  @override
  State<dice_game> createState() => _dice_gameState();
}

class _dice_gameState extends State<dice_game> {
  int a=1;

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/dice-$a.png',width: 225,color:Color.fromARGB(0, 158, 141, 140))),
            SizedBox(height: 25,),
            TextButton(onPressed: (){
              setState(() {
                a=Random().nextInt(5)+1;
              });
            }, child: Text("Roll Dice"),
            style:TextButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              fixedSize: Size(100, 45),
            )),
          ],
        ),
      ),
    );
  }
}