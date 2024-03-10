import 'package:demo_provider/cart.dart';
import 'package:demo_provider/product_model.dart';
import 'package:demo_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const CartScreen()));
              },
              icon: const Icon(Icons.card_travel))
        ],
        title: const Text("products"),
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          Product pro = products[index];
          return ListTile(
            leading: Container(
              width: 60,
              height: 60,
              color: pro.color,
            ),
            title: Text(pro.name),
            subtitle: Text(pro.price.toString()),
            trailing: Checkbox(
                value: cartProvider.items.contains(pro),
                onChanged: (value) {
                  if (value == true) {
                    cartProvider.add(pro);
                  } else {
                    cartProvider.remove(pro);
                  }
                }),
          );
        },
      )),
    );
  }
}