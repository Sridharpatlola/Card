import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text('Dice by Sridhar'),
          backgroundColor: Colors.blueGrey,
        ),
        body: DicePage(
        ),
      ),    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {
  int leftDiceNUmber=3;
  int rightDiceNumber=1;
  void dice(){
      setState(() {
        leftDiceNUmber=Random().nextInt(6)+1;
        rightDiceNumber=Random().nextInt(6)+1;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(

            child: TextButton(
                onPressed: () {
                  dice();
                },
                child: Image.asset('images/dice$leftDiceNUmber.png')),
          ),
          Expanded(child:
          TextButton(onPressed:(){
            dice();
          },
              child: Image.asset('images/dice$rightDiceNumber.png')),
          )
        ],
      ),
    );
  }
}
