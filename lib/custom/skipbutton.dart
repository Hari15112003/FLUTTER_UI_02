import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: SizedBox(),
        ),
        const Text(
          "Skip",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.5),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Container(
            height: 32,
            width: 32,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                )),
          ),
        )
      ],
    );
  }
}
