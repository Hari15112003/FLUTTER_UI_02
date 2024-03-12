import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final String text;
  const CustomBackButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 23,
        ),
        const SizedBox(
          width: 140,
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
