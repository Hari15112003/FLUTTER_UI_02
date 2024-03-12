import 'package:flutter/material.dart';
import 'package:ui_2/custom/button.dart';
import 'package:ui_2/custom/next_button.dart';
import 'package:ui_2/pages/welcome.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomePage(),
  ));
}

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(function: () {}, text: "Pr"),
          NextButton(function: () {}, text: "Next", color: Colors.orange)
        ],
      ),
    );
  }
}
