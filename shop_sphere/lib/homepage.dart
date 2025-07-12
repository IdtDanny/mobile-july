import 'package:flutter/material.dart';
import 'package:shop_sphere/widget/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        actions: [Icon(Icons.person), Icon(Icons.more_vert)],
        leading: Icon(Icons.menu),
        title: Text("ShopSphere", style: TextStyle(color: Colors.black)),
        // backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Featured Products",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ProductCard(
                  name: "Bicycle",
                  price: 29.99,
                  imageUrl: "https://picsum.photos/seed/p1/600/400",
                ),
                ProductCard(
                  name: "House",
                  price: 46.99,
                  imageUrl: "https://picsum.photos/seed/p2/600/400",
                ),
                ProductCard(
                  name: "Old Car",
                  price: 12.99,
                  imageUrl: "https://picsum.photos/seed/p4/600/400",
                ),
              ],
            ),
          ),
        ],
      ),
      // body: Center(child: Text("Welcome to ShopSphere App!")),
    );
  }
}
