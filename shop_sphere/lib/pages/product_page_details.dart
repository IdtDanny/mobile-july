import 'package:flutter/material.dart';
import 'package:shop_sphere/models/product.dart';
import 'package:shop_sphere/data/mock_data.dart';

class ProductPageDetails extends StatelessWidget {
  final String productId;

  const ProductPageDetails({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final Product prod = mockData.firstWhere(
      (p) => p.id == productId,
      orElse: () {
        return const Product(
          id: 'error',
          name: 'Product Not Found',
          price: 0,
          imageUrl: '',
          description: '',
          returnPolicy: '',
          shippingCost: 0,
        );
      },
    );
    return Scaffold(
      appBar: AppBar(title: Text(prod.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              prod.imageUrl,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Product Details for ID: $productId',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
