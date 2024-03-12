import 'package:flutter/material.dart';
import 'package:ui_2/custom/back_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const CustomBackButton(text: "Cart"),
      const Text(
        "Items",
      ),
      helper(
        head: "Ramen Salad",
      ),
      helper(head: "Popular Food"),
      helper(head: "Popular Pizza"),
      const SizedBox(
        height: 10,
      ),
      rowhelper(icon: Icons.location_city_outlined, text: "140 Road Ave"),
      rowhelper(icon: Icons.lock_clock, text: "25-30 min (ASAP)"),
      rowhelper(icon: Icons.money, text: "Cash"),
      helperrow(text: "Sub Total", text2: "\$"),
      helperrow(text: "Delivery Fee", text2: "\$"),
      helperrow(text: "Total", text2: "\$", k: true),
    ]);
  }

  Widget rowhelper({required IconData icon, required String text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color.fromARGB(255, 97, 97, 97),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          const Icon(
            Icons.edit_note_outlined,
            color: Color.fromARGB(255, 97, 97, 97),
          ),
        ],
      ),
    );
  }

  Widget helperrow({required String text, required String text2, bool? k}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: k == true
                ? const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                : const TextStyle(),
          ),
          Text(
            text2,
            style: k == true
                ? const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                : const TextStyle(),
          ),
        ],
      ),
    );
  }

  Widget helper({
    required String head,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 209, 208, 208)
              .withOpacity(.2)
              .withAlpha(59),
          borderRadius: BorderRadius.circular(15),
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/image-2.png",
              height: 70,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      head,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    const Text(
                      "4.5",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                const Text("135 Reviews"),
                const Text(
                  "\$12.59",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                )
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              const Icon(
                Icons.delete_forever,
                color: Colors.red,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 164, 164, 164)
                            .withOpacity(.3)),
                    child: const Icon(
                      Icons.add,
                      size: 15,
                    ),
                  ),
                  const Text(
                    "    1    ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 164, 164, 164)
                            .withOpacity(.3)),
                    child: const Icon(
                      Icons.add,
                      size: 15,
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
