import 'package:flutter/material.dart';
import 'package:task_flow_app/core/theme/app_colors.dart';

class Exercise4Movies extends StatefulWidget {
  const Exercise4Movies({super.key});

  @override
  State<Exercise4Movies> createState() => _Exercise4MoviesState();
}

class _Exercise4MoviesState extends State<Exercise4Movies> {
  final Map<String, Map<String, dynamic>> movies = {
    "Batman": {"Genere": "Action", "Year": 1994},
    "It 2": {"Genere": "Terror", "Year": 2005},
  };
  String? selectedMovie;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        titleTextStyle: TextStyle(color: MyAppColors().accentApp, fontSize: 20),
        backgroundColor:MyAppColors().primaryApp,
      ),
      body: Center(
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              children: movies.keys.map((key) {
                return ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedMovie = key;
                    });
                  },
                  child: Text(key.toUpperCase()),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            if (selectedMovie == null) const Text("Selecciona una pelicula"),
            if (selectedMovie != null)
              SizedBox(
                width: double.infinity,
                child: Card(
                  color: MyAppColors().selectedWidget,
                  margin: EdgeInsets.all(5),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      
                      children: [
                        Text(
                            "Película : ${selectedMovie!.toUpperCase()}\n"
                            "Genere : ${movies[selectedMovie]!["Genere"]}\n"
                            "Año : ${movies[selectedMovie]!["Year"]}\n"
                    , style: TextStyle(fontSize:15 )),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
