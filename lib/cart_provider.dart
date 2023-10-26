import 'package:flutter/material.dart';
import 'package:uts_2020130056/cart_item_model.dart';

class CartProvider extends ChangeNotifier {
  final _items = <CartItemModel>[];

  List<CartItemModel> get items => _items;

  int get totalItem => _items.length;

  int get totalHargaBeli {
    int total = 0;
    for (var item in _items) {
      total += item.qty * item.jersey.price!;
    }
    return total;
  }

  void add(CartItemModel item) {
    _items.add(item);

    notifyListeners();
  }

  void remove(int index) {
    _items.removeAt(index);

    notifyListeners();
  }
}
