import 'package:demo_provider/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  void add(Product item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Product item) {
    _items.remove(item);
    notifyListeners();
  }

  void removeall(Product item) {
    _items.clear();
    notifyListeners();
  }

  double getCarttotal() {
    return _items.fold(
        0, (previousValue, items) => previousValue + items.price);
  }
}
