import 'package:flutter/material.dart';
import 'package:uts_2020130056/product_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _HomePageState();
}

class _HomePageState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/baju1.png',
            height: MediaQuery.of(context).size.shortestSide,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.sports_basketball,
                color: Color.fromARGB(255, 0, 0, 0),
                size: 40,
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                "Jersey SwingMan Lakers leBron james 6",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Rp.600.000",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.end,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Bahan polyester full print, kualitas lokal 100% sesuai foto produk",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                    fontStyle: FontStyle.normal),
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
