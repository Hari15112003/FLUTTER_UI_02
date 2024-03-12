import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_2/custom/back_button.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomBackButton(text: "Details"),
          Center(
            child: Image(
              image: AssetImage(
                "assets/image-4.png",
              ),
              height: 250,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sake Sushi",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$15.3",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Text("Sush men"),
          SizedBox(
            height: 20,
          ),
          Text(
            "Description",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            textAlign: TextAlign.left,
            "Recall that a continuous RV is one which has an uncountably infinite number of possible values. Typically the set of possible values for a continousRV will consist of one or more intervals on the real line.",
            style: TextStyle(
              color: Color.fromARGB(255, 93, 93, 93),
              letterSpacing: 1,
              wordSpacing: 1,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reviews",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "View All",
                style: TextStyle(
                  color: Color.fromARGB(255, 84, 84, 84),
                  fontSize: 17,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              images(
                color: Colors.orange,
              ),
              images(color: Colors.pink),
              images(color: Colors.green),
              images(color: Colors.purple),
              images(color: Colors.deepOrange),
              images(color: Colors.cyanAccent)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
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
                    height: 30,
                    width: 30,
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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: const Size(200, 50)),
                child: Text(
                  "Add to Cart",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget images({required Color color}) {
    return Container(
      child: Image.asset(
        "assets/avatar.png",
        height: 50,
        colorBlendMode: BlendMode.colorBurn,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
