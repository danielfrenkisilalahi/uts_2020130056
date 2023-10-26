import 'package:flutter/material.dart';
import 'package:uts_2020130056/home_screen.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _HomePageState();
}

class _HomePageState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 40, 38, 38),
                size: 30,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Cart",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
