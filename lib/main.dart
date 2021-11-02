import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "Dice App",
  home: HomePage(),

));
class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber=1;

  void changeDice(){
    setState(() {
      diceNumber=Random().nextInt(6)+1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Dice Roller",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          Center(child: Image.asset("assets/$diceNumber.png",height: 250,width: 250,)),
          SizedBox(height: 30,),
          MaterialButton(
            color: Colors.blue,
            onPressed: changeDice,
            child: Text("Roll",style: TextStyle(color: Colors.white),),
            
          ),
          SizedBox(height: 70,),
          Text("#FlutterWithZyan",style: TextStyle(fontWeight: FontWeight.bold),)
          


        ],
      ),

    );
  }
}
