import 'package:flutter/material.dart';
import 'package:urban_eats/data/mock_restaurants.dart';
import 'package:urban_eats/models/restaurant.dart';

class RestaurantDetailsPage extends StatelessWidget {
  final String restoId;
  const RestaurantDetailsPage({super.key, required this.restoId});

  @override
  Widget build(BuildContext context) {

    final Restaurant resto = mockResto.firstWhere(
      (r) => r.id == restoId, orElse: () {
        return Restaurant(
          id: 'error', 
          name: 'Restaurant not found', 
          cuisine: 'error', 
          address: 'error', 
          rating: 0.0, 
          imageUrl: 'error', 
          menu: []);
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(resto.imageUrl, width: double.infinity, height: 250, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsetsGeometry.directional(start: 16.0, end: 16.0, bottom: 0.0, top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(resto.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.blueAccent),),
                    Text(resto.cuisine, style: TextStyle(fontSize: 12.0, color: Colors.blueGrey, fontStyle: FontStyle.italic),),
                  ],
                ),
                SizedBox(height: 4.0,),
                Text('Venue: ${resto.address}', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.blueGrey),),
                SizedBox(height: 20.0,),
                Text('Menu', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.green,),),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: resto.menu.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      dense: true,
                      title: Text(resto.menu[index].name, style: TextStyle(fontSize: 12.0, fontFamily: 'Century Gothic', color: Colors.blueGrey),),
                      trailing: Text('\$${resto.menu[index].price.toString()}'),
                    ),
                    Divider(height: 2.0,),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}