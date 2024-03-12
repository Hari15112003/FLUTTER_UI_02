import 'package:flutter/material.dart';
import 'package:ui_2/custom/back_button.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBackButton(text: 'Search'),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 199, 197, 197).withOpacity(.3),
                borderRadius: BorderRadius.circular(20)),
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Icon(
                    Icons.search_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                const Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search here ..",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding: EdgeInsets.zero,
                      border: InputBorder.none),
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 50,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.sort,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 9,
            mainAxisSpacing: 2,
            childAspectRatio: (3 / 4) * (6 / 5),
            children: [
              container(),
              container(),
              container(),
              container(),
              container(),
              container(),
              container(),
              container(),
            ],
          ),
        ),
      ],
    );
  }

  Widget container() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/image-3.png"),
              height: 90,
            ),
            const Text(
              "Biriyani",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(
                  " 4.5",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "  315 Reviews",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "\$2.89",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 32,
                  width: 32,
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                      color: Colors.orange, shape: BoxShape.circle),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
