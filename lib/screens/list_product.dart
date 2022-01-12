import 'package:flutter/material.dart';
import 'package:reviewten/components/item_product.dart';
import 'package:reviewten/database/app_database.dart';
import 'package:reviewten/models/product.dart';
import 'package:reviewten/screens/form_product.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({Key? key}) : super(key: key);

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Product'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        primary: false,
        itemBuilder: (context, index) {
          Product product = AppDataBase.products[index];
          return ItemProduct(product);
        },
        itemCount: AppDataBase.products.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () => navigatorToProductForm(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void navigatorToProductForm(BuildContext context) async {
    Product? product = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return FormProduct();
      }),
    );

    if (product == null) return;

    setState(() {
      AppDataBase.products.add(product);
    });
  }
}
