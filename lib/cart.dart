import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uts_2020130056/cart_provider.dart';
import 'package:uts_2020130056/currency_format.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, CartProvider data, child) {
        return Scaffold(
          bottomNavigationBar: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Color.fromARGB(255, 172, 172, 172),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  CurrencyFormat.convertToIdr(data.totalHargaBeli, 0),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  height: 65,
                  color: Colors.blue,
                  minWidth: 150,
                  child: const Text('Check Out'),
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: const Text("Cart"),
          ),
          body: ListView.builder(
            itemCount: data.items.length,
            itemBuilder: (context, index) {
              final item = data.items[index];
              return Dismissible(
                key: UniqueKey(),
                onDismissed: (direction) {
                  Provider.of<CartProvider>(context, listen: false)
                      .remove(index);

                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${item.jersey.title} dihapus')));
                },
                child: ListTile(
                  title: Text(item.jersey.title!),
                  subtitle: Text(
                      "${CurrencyFormat.convertToIdr(item.jersey.price, 0)} x ${item.qty}"),
                  trailing: Text(
                    CurrencyFormat.convertToIdr(
                        item.jersey.price! * item.qty, 0),
                    style: const TextStyle(fontSize: 14),
                  ),
                  leading: SizedBox(
                    height: 50,
                    width: 75,
                    child: Expanded(
                      child: Image.asset(
                        item.jersey.image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
