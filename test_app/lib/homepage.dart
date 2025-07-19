import 'package:flutter/material.dart';
import 'package:test_app/data/mock_data.dart';
import 'package:test_app/widget/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test App')),
      body: ListView.builder(
        itemCount: mockData.length,
        itemBuilder: (context, index) {
          return ProductCard(product: mockData[index]);
        },
      ),
    );
  }
}
