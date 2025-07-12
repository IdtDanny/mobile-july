import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String name;
  final double price;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.network(
              imageUrl,
              height: 150.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Icon(Icons.add_shopping_cart),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
