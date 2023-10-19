import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uts_2020130056/currency_format.dart';
import 'package:uts_2020130056/jersey.dart';
import 'package:uts_2020130056/product_screen.dart';

class ProductScreen extends StatefulWidget {
  final Jersey jersey;

  const ProductScreen({super.key, required this.jersey});

  @override
  State<ProductScreen> createState() => _HomePageState();
}

class _HomePageState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color.fromARGB(255, 137, 137, 137),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 5,
                ),
                const SizedBox(
                  width: 75,
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {},
              height: 65,
              color: Colors.blue,
              minWidth: 150,
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                widget.jersey.image!,
                height: 250,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.jersey.title!,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30,
                  fontStyle: FontStyle.normal),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              CurrencyFormat.convertToIdr(widget.jersey.price!, 2),
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontStyle: FontStyle.normal),
              textAlign: TextAlign.end,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              widget.jersey.description!,
              style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontStyle: FontStyle.normal),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
