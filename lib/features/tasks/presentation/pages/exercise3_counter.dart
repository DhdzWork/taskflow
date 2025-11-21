import 'package:flutter/material.dart';
import 'package:task_flow_app/features/tasks/presentation/pages/mod_tracker.dart';

class Exercise3Counter extends StatefulWidget {
  const Exercise3Counter({super.key});

  @override
  State<Exercise3Counter> createState() => _Exercise3CounterState();
}

class _Exercise3CounterState extends State<Exercise3Counter> {
  int count=0;
  
  void incrementCounter(){
    setState(() {
      count +=1;
    });
  }
  void decrementCounter(){
    setState(() {
      count -=1;
    });
  }
  void resetCounter(){
    setState(() {
      count =0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        
        children: [
          Text(count.toString()),
          Row(
            children: [
              
              Expanded(child: ElevatedButton(onPressed: decrementCounter, child:Text("-"))),
              SizedBox(width: 8),
              Expanded(child: ElevatedButton(onPressed: resetCounter, child:Text("Reset"))),
              SizedBox(width: 8),
              Expanded(child: ElevatedButton(onPressed: incrementCounter, child:Icon(Icons.add)))
            ],
          ),
          ModTracker()
        ],
      ),
    );
  }
}