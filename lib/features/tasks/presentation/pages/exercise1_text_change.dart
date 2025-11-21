import 'package:flutter/material.dart';

class Exercise1TextChange extends StatefulWidget {
  const Exercise1TextChange({super.key});

  @override
  State<Exercise1TextChange> createState() => _Exercise1TextChangeState();
}

class _Exercise1TextChangeState extends State<Exercise1TextChange> {
  String message = "Hello, World!";
  void changeMessage(){
    setState(() {
      message =  message == "Hello, World!" ? message = "Hola" : message = "Hello, World!" ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  
            Expanded(
              child: ElevatedButton(onPressed: changeMessage, child:Text(message), 
              
                        
                  ),
            );
      }
}