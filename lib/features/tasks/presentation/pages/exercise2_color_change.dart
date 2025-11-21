import 'package:flutter/material.dart';

class Exercise2ColorChange extends StatefulWidget {
  const Exercise2ColorChange({super.key});

  @override
  State<Exercise2ColorChange> createState() => Exercise2ColorChangeState();
}

class Exercise2ColorChangeState extends State<Exercise2ColorChange> {
  Color backgorundColor = Colors.red;
  void changeColor(){
    setState(() {
    backgorundColor = backgorundColor == Colors.red ? Colors.lightBlueAccent : Colors.red;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(child: ElevatedButton(onPressed: changeColor, child: Text("Cambia el color",style:TextStyle(color: backgorundColor),)));
  }
}