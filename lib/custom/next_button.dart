import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final VoidCallback function;
  final String text;
  final Color color;
  const NextButton(
      {super.key,
      required this.function,
      required this.text,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shadowColor: Colors.red,
          minimumSize: const Size(20, 50),
          maximumSize: const Size(125, 50)),
      onPressed: function,
      child: Row(
        children: [
          Expanded(
            child: Text(
              text.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
          ),
          const SizedBox(
            width: 9,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
