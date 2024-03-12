import 'package:flutter/material.dart';
import 'package:ui_2/custom/next_button.dart';
import 'package:ui_2/pages/onboard_1.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            const Color.fromARGB(255, 255, 60, 0),
            const Color.fromARGB(255, 245, 70, 1).withOpacity(.9),
            const Color.fromARGB(255, 247, 94, 11).withOpacity(.9),
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/burger.png",
                height: 200,
              ),
            ),
            Container(
              height: 300,
              padding: const EdgeInsets.all(15),
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color.fromARGB(255, 181, 181, 181).withOpacity(.4),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "  DELICIOUS\nFOOD READY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    "Discover mouthwatering recipes, cook like a pro, and share your culinary creations with YumYum.Join our foodie community and start your delicious journey today!",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  NextButton(
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardFirst(),
                        ),
                      );
                    },
                    text: "Next",
                    color: Colors.black,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
