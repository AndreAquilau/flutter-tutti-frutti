import 'package:flutter/material.dart';
import 'package:reviewten/models/product.dart';

class FormProduct extends StatelessWidget {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerPrice = TextEditingController();

  FormProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Creation Form'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black45, width: 1),
                    ),
                  ),
                  child: TextField(
                    controller: _controllerName,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      labelText: 'Name',
                      hintText: 'Maçã',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black45, width: 1),
                    ),
                  ),
                  child: TextField(
                    controller: _controllerPrice,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      floatingLabelStyle: TextStyle(color: Colors.black),
                      labelText: 'Price',
                      hintText: '12.99',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextButton(
                  onPressed: () {
                    String name = _controllerName.text;
                    double? price = double.tryParse(_controllerPrice.text);

                    if (name == null || price == null) return;

                    Product product = Product(name, price);

                    Navigator.pop(context, product);
                  },
                  child: const Text(
                    'Create',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: const Size(double.maxFinite, 45),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
