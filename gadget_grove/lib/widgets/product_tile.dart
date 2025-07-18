import 'package:flutter/material.dart';
import 'package:gadget_grove/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product prod;

  const ProductTile({super.key, required this.prod});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
            ),
            child: Image.network(
              prod.imageUrl,
              height: 150.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(prod.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(prod.brand, style: TextStyle(fontSize: 12,),),
                    Text('RWF ${prod.price}', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),),
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