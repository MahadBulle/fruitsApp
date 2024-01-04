import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final Map<String, int> cartItems;

  CartScreen(this.cartItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Color(0xff30cbe5),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (BuildContext context, int index) {
          var itemName = cartItems.keys.elementAt(index);
          var quantity = cartItems.values.elementAt(index);
          return ListTile(
            title: Text(itemName),
            subtitle: Text('Quantity: $quantity'),
          );
        },
      ),
    );
  }
}
