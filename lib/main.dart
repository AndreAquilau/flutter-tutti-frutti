import 'package:flutter/material.dart';
import 'package:reviewten/screens/home.dart';
import 'package:reviewten/screens/list_product.dart';

void main() {
  runApp(const ReviewTen());
}

class ReviewTen extends StatelessWidget {
  const ReviewTen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const Home(),
    );
  }
}
