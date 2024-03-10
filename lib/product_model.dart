import 'package:flutter/material.dart';

class Product {
  final int id;
  final double price;
  final String name;
  final Color color;

  Product({
    required this.id,
    required this.price,
    required this.name,
    required this.color,
  });
}

List<Product> products = [
  Product(id: 1, name: "bag", price: 999.99, color: Colors.brown),
  Product(id: 2, name: "watch", price: 500.0, color: Colors.amber),
  Product(id: 3, name: "bike", price: 780, color: Colors.green),
  Product(id: 4, name: "car", price: 798.25, color: Colors.cyan),
  Product(id: 5, name: "Bmw", price: 200, color: Colors.orange)
];
