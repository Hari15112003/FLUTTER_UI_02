import 'package:flutter/material.dart';
import 'package:ui_2/custom/next_button.dart';
import 'package:ui_2/custom/skipbutton.dart';
import 'package:ui_2/screens/navigation.dart';

class OnboardSecond extends StatelessWidget {
  const OnboardSecond({super.key});

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
              children: [
                const SkipButton(),
                Image.asset(
                  "assets/image-4.png",
                  height: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        rowWidget(
                          icon: Icons.favorite_outline,
                          color: Colors.pink,
                          dark: "8K",
                          light: "Likes",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        rowWidget(
                          icon: Icons.delivery_dining,
                          color: Colors.purple,
                          dark: "6K",
                          light: "Delivers",
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        rowWidget(
                          icon: Icons.card_giftcard,
                          color: Colors.green,
                          dark: "5K",
                          light: "Send Gifts",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        rowWidget(
                          icon: Icons.home,
                          color: Colors.orange,
                          dark: "1K",
                          light: "Company",
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
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
                        "  Receive Gifts",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        textAlign: TextAlign.center,
                        "Explore the wide selction of Gifts that will please your loved once",
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
                              builder: (context) => const NavigationScreen(),
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

  Widget rowWidget(
      {required IconData icon,
      required Color color,
      required String dark,
      required String light}) {
    return Row(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: color.withOpacity(.3)),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        Text(
          "   $dark",
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        Text(
          " $light",
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
