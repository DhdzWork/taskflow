import 'package:flutter/material.dart';
import 'package:task_flow_app/core/theme/app_colors.dart';
import 'package:task_flow_app/features/tasks/presentation/pages/exercise3_counter.dart';
import 'package:task_flow_app/features/tasks/presentation/pages/exercise4_movies.dart';
import 'package:task_flow_app/features/tasks/presentation/pages/exercise5_people.dart';
import 'package:task_flow_app/features/tasks/presentation/pages/exercise1_text_change.dart';
import 'package:task_flow_app/features/tasks/presentation/pages/exercise2_color_change.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyAppColors().backgroundApp,
        appBar: AppBar(
          backgroundColor: MyAppColors().primaryApp,

          title: Text("Inicio", style: TextStyle(color: Colors.black)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 085,
            width: MediaQuery.of(context).size.width * 95,

            decoration: BoxDecoration(
              color: MyAppColors().selectedWidget,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Exercise2ColorChange(),
                        SizedBox(width: 8),
                        Exercise1TextChange(),
                      ],
                    ),
                  ),
                  Exercise3Counter(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (context) => const Exercise4Movies(),
                                ),
                              );
                            },
                            child: const Text("Movies"),
                          ),
                        ),
                        SizedBox(width: 7),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Exercise5People(),
                                ),
                              );
                            },
                            child: const Text("People"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
