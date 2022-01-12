import 'package:flutter/material.dart';
import 'package:reviewten/models/product.dart';

class ItemProduct extends StatelessWidget {
  late Product _product;

  ItemProduct(Product product, {Key? key}) : super(key: key) {
    _product = product;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(_product.name),
        subtitle: Text(_product.price.toString()),
      ),
    );
  }
}
