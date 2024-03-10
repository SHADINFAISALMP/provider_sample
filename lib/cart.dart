import 'package:demo_provider/product_model.dart';
import 'package:demo_provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            title: const Text("cart")),
        body: Consumer<CartProvider>(
          builder: (context, provider, _) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: provider.items.length,
                    itemBuilder: (context, index) {
                      Product pro = provider.items[index];
                      return ListTile(
                        leading: Container(
                          width: 60,
                          height: 60,
                          color: pro.color,
                        ),
                        title: Text(pro.name),
                        onLongPress: () {
                          provider.remove(pro);
                        },
                        subtitle: Text(pro.price.toString()),
                      );
                    },
                  ),
                ),
                Text("total is ${provider.getCarttotal()}")
              ],
            );
          },
        ));
  }
}