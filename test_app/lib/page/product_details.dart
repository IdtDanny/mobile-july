import 'package:flutter/material.dart';
import 'package:test_app/data/mock_data.dart';
import 'package:test_app/models/product.dart';

class ProductDetails extends StatelessWidget {
  final String productId;
  const ProductDetails({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final Product product = mockData.firstWhere(
      (p) => p.id == productId,
      orElse: () {
        return Product(
          id: '0',
          name: 'Unknown Product',
          description: 'No description available.',
          price: 0.0,
          imageUrl: '',
        );
      }, // Example: Fetching product with id '1'
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        title: Text(
          product.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Text(
                    product.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '\$${product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
