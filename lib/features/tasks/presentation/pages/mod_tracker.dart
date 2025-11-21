import 'package:flutter/material.dart';

class ModTracker extends StatefulWidget {
  const ModTracker({super.key});

  @override
  State<ModTracker> createState() => _ModTrackerState();
}

class _ModTrackerState extends State<ModTracker> {
  String mood = "neutral";
  final Map<String, dynamic> moods = {
    "Contento": {
      "emoji": "😄",
      "color": const Color.fromARGB(255, 111, 71, 143),
    },
    "neutral": {"emoji": "😐", "color": Colors.blueGrey},
    "triste": {"emoji": "😢", "color": Colors.blue},
    "enojado": {"emoji": "😡", "color": Colors.red},
  };
  void updateMood(newMod) {
    setState(() {
      mood = newMod;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3,right: 3,top: 10,bottom: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: moods[mood]["color"].withOpacity(0.8 ),
              borderRadius: BorderRadius.circular(10)),
          
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Estado de animo actual $mood",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.visible,                    
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(moods[mood]["emoji"], style: TextStyle(fontSize: 35)),
                ],
              ),
            ),
          ),
          Padding(                                                                                                            
            padding: const EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
            child: Wrap(   
              spacing: 6,  
              runSpacing: 6,

              children: moods.keys.map((m) {
                return SizedBox(
                  width: (MediaQuery.of(context).size.width -92)/2 ,
                  child: ElevatedButton(                       
                    onPressed: () => updateMood(m),
                    child: Text(m.toUpperCase()),
                  ),        
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
