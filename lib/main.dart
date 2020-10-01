import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  void changeDice(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    },);
  }

  int leftDiceNumber = 1 ;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Text('DICE',style: TextStyle(color: Colors.white,fontSize: 60,fontWeight: FontWeight.bold),),
            Container(color: Colors.white.withOpacity(.2),
              child: Column(
                children: [SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          onPressed: (){
                            changeDice();
                          },
                          child: Image.asset('images/dice$leftDiceNumber.png'),
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          onPressed: (){
                            changeDice();
                          },
                          child: Image.asset('images/dice$rightDiceNumber.png'),
                        ),
                      ),
                    ],
                  ),SizedBox(height: 20,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

