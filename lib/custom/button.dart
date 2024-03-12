import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback function;
  final String text;
  const CustomButton({super.key, required this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: const Size(350, 50)),
      onPressed: function,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
      ),
    );
  }
}
