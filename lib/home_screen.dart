import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_transition_effects/screens/transition1.dart';
import 'package:getx_transition_effects/screens/transition2.dart';
import 'package:getx_transition_effects/screens/transition3.dart';
import 'package:getx_transition_effects/screens/transition4.dart';
import 'package:getx_transition_effects/screens/transition5.dart';
import 'package:getx_transition_effects/screens/transition7.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Transitions"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(Transition1(), //next page class
                    duration: Duration(
                        seconds: 1), //duration of transitions, default 1 sec
                    transition: Transition.leftToRight //transition effect
                    );
              },
              child: Card(
                elevation: 8,
                child: Center(child: Text("Transistion 1")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(Transition2(), //next page class
                    duration: Duration(
                        seconds: 1), //duration of transitions, default 1 sec
                    transition: Transition.downToUp //transition effect
                    );
              },
              child: Card(
                elevation: 8,
                child: Center(child: Text("Transistion 2")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(Transition3(), //next page class
                    duration: Duration(
                        seconds: 1), //duration of transitions, default 1 sec
                    transition: Transition.size //transition effect
                    );
              },
              child: Card(
                elevation: 8,
                child: Center(child: Text("Transistion 3")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(Transition3(), //next page class
                    duration: Duration(
                        seconds: 1), //duration of transitions, default 1 sec
                    transition: Transition.fade //transition effect
                    );
              },
              child: Card(
                elevation: 8,
                child: Center(child: Text("Transistion 4")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(Transition4(), //next page class
                    duration: Duration(
                        seconds: 1), //duration of transitions, default 1 sec
                    transition:
                        Transition.leftToRightWithFade //transition effect
                    );
              },
              child: Card(
                elevation: 8,
                child: Center(child: Text("Transistion 5")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(Transition5(), //next page class
                    duration: Duration(
                        seconds: 1), //duration of transitions, default 1 sec
                    transition: Transition.topLevel //transition effect
                    );
              },
              child: Card(
                elevation: 8,
                child: Center(child: Text("Transistion 6")),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(Transition7(), //next page class
                    duration: Duration(
                        seconds: 1), //duration of transitions, default 1 sec
                    transition: Transition.zoom //transition effect
                    );
              },
              child: Card(
                elevation: 8,
                child: Center(child: Text("Transistion 7")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
