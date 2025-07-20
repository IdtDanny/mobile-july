import 'package:flutter/material.dart';
import 'package:urban_eats/models/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant resto;
  const RestaurantCard({super.key, required this.resto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0)
            ),
            // child: Placeholder(),
            child: Image.network(
              resto.imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  resto.name, 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0
                  ),
                ),
                Text(
                  resto.cuisine,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 11.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Rating: ${resto.rating}', 
                      style: TextStyle(
                        fontSize: 11.0, 
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.star_rate_rounded, size: 18.0,),
                    Icon(Icons.star_rate_rounded, size: 18.0,),
                    Icon(Icons.star_rate_rounded, size: 18.0,),
                    Icon(Icons.star_rate_rounded, size: 18.0,),
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