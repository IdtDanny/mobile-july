import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:urban_eats/data/mock_restaurants.dart';
import 'package:urban_eats/widgets/restaurant_card.dart';

class DiscoveryPage extends StatelessWidget {
  const DiscoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        title: Center(child: Text('Welcome to Urban Eats', style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColorLight),)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Find Your Next Meal',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(height: 15.0,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Theme.of(context).primaryColor,),
                    hint: Text('Search restaurants...', style: TextStyle(color: Theme.of(context).primaryColorDark),),                    
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mockResto.length,
              itemBuilder: (context, index) {
                return RestaurantCard(resto: mockResto[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/add-restaurant');
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}