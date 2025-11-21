import 'package:flutter/material.dart';

class Exercise5People extends StatefulWidget {
  const Exercise5People({super.key});

  @override
  State<Exercise5People> createState() => _Exercise5PeopleState();
}

class _Exercise5PeopleState extends State<Exercise5People> {
  final Map<String, Map<String, dynamic>> people = {
    "Juan": {"Pet": "Gato", "Age": 17, "State": "Zacatecas"},
    "Selena": {"Pet": "Perro", "Age": 23, "State": "Cancun"},
  };
  String? selectedPeople;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("People Selected", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          children: [
            Wrap(
              children: people.keys.map((p) {
                return Column(
                  children: [
                    TextButton(onPressed: () {
                      setState(() {
                        selectedPeople = p;
                      });
                      },
                    child: Text(p.toUpperCase(),))
                  ],
                );
              }).toList(),
            ),
            if(selectedPeople == null) const Text("Selecciona una persona"),
            if(selectedPeople != null)
            SizedBox(
              width: double.infinity,
              child: Card(
              
                
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:20,top: 20),
                    child: Column(
                      children: [
                        Text("El nombre es ${selectedPeople!.toUpperCase()}"),
                        Text("Tiene ${people[selectedPeople]!["Age"]} años de edad"),
                        Text("Y tiene de Mascota ${people[selectedPeople]!["Pet"]}"),
                        Text("Y vive en el estado de ${people[selectedPeople]!["State"]}")
                            
                      ],
                    ),
                  ),
               
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
