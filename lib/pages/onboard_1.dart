import 'package:flutter/material.dart';
import 'package:ui_2/custom/skipbutton.dart';
import 'package:ui_2/pages/onboard_2.dart';

import '../custom/next_button.dart';

class OnboardFirst extends StatelessWidget {
  const OnboardFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                color:
                    const Color.fromARGB(255, 181, 181, 181).withOpacity(.1)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SkipButton(),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/image-2.png",
                  height: 350,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/avatar.png",
                      height: 32,
                    ),
                    Image.asset(
                      "assets/avatar.png",
                      height: 32,
                    ),
                    Image.asset(
                      "assets/avatar.png",
                      height: 32,
                    ),
                    const Text(
                      " +300",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 290,
                  padding: const EdgeInsets.all(15),
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "  Delivery Fast",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        "Browse through a vast collection of recipes from around the world",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      NextButton(
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OnboardSecond(),
                            ),
                          );
                        },
                        text: "Next",
                        color: const Color.fromARGB(255, 255, 60, 0)
                            .withOpacity(.9),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
