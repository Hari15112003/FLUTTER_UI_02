import 'package:flutter/material.dart';
import 'package:ui_2/screens/cart.dart';
import 'package:ui_2/screens/details.dart';
import 'package:ui_2/screens/order.dart';
import 'package:ui_2/screens/search.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 181, 181, 181)
                        .withOpacity(.1)),
                child: selectedIndex == 0
                    ? const SearchScreen()
                    : selectedIndex == 1
                        ? const CartScreen()
                        : selectedIndex == 2
                            ? const DetailScreen()
                            : const OrderScreen(),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(20),
              child: NavigationBar(
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) => setState(() {
                  selectedIndex = value;
                }),
                height: 50,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                backgroundColor: Colors.white,
                destinations: const [
                  NavigationDestination(
                      icon: Icon(Icons.home_outlined), label: ""),
                  NavigationDestination(
                      icon: Icon(Icons.shop_2_outlined), label: ""),
                  NavigationDestination(
                      icon: Icon(Icons.notification_add_outlined), label: ''),
                  NavigationDestination(
                      icon: Icon(Icons.person_2_outlined), label: ''),
                ],
              ),
            )));
  }
}
