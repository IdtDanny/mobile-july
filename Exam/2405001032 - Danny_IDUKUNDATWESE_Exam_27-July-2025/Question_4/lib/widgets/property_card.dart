import 'package:flutter/material.dart';
import 'package:property_finder/models/commercial_property.dart';

class PropertyCard extends StatelessWidget {
  final CommercialProperty commercial;
  const PropertyCard({super.key, required this.commercial});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
            child: Image.network(
              commercial.mainImageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(commercial.propertyName, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 15.0,),
                    Text('RWF ${commercial.price}', style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
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