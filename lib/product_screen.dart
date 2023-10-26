import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:uts_2020130056/cart_item_model.dart';
import 'package:uts_2020130056/cart_provider.dart';
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
  final TextEditingController qtyController = TextEditingController(text: "1");

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
                  onPressed: () {
                    setState(() {
                      qtyController.text =
                          (int.parse(qtyController.text) + 1).toString();
                    });
                  },
                  child: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: 75,
                  child: Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      readOnly: true,
                      controller: qtyController,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                        labelText: '',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                FloatingActionButton(
                  onPressed: () {
                    if (int.parse(qtyController.text) > 1) {
                      qtyController.text =
                          (int.parse(qtyController.text) - 1).toString();
                    }
                  },
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                CartItemModel item =
                    CartItemModel(widget.jersey, int.parse(qtyController.text));

                Provider.of<CartProvider>(context, listen: false).add(item);
                Navigator.pop(context);
              },
              height: 65,
              color: Colors.blue,
              minWidth: 150,
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
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
                  CurrencyFormat.convertToIdr(widget.jersey.price!, 0),
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
        ],
      ),
    );
  }
}
