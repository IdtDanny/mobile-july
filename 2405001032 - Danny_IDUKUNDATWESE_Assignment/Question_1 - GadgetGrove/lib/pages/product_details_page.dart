import 'package:flutter/material.dart';
import 'package:gadget_grove/data/mock_data.dart';
import 'package:gadget_grove/models/product.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsPage extends StatefulWidget {
  final String productId;
  const ProductDetailsPage({super.key, required this.productId});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  final _formKey = GlobalKey<FormState>();
  final _quantity = TextEditingController();

  @override
  void dispose() {
    _quantity.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      print('Added Quantity: ${_quantity.text} to cart.');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Added Quantity ${_quantity.text} to cart.',
          ),
          duration: Duration(seconds: 2),
        ),
      );
      context.push('/checkout');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Product prod = mockData.firstWhere(
      (p) => p.id == widget.productId, 
      orElse: () {
        return Product(
          id: 'error', 
          name: 'Unknown Product', 
          brand: 'Unknown Brand', 
          price: 0.0, 
          imageUrl: 'Unknown', 
          inStock: false);
      },
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(prod.imageUrl),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prod.name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Brand: ${prod.brand}', 
                      style: TextStyle(
                        fontSize: 12.0, 
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Et dicta praesentium ab voluptate nam, veritatis est ipsa laboriosam, explicabo ut nulla sequi in. Lorem ipsum dolor sit amet consectetur adipisicing elit. Et dicta praesentium ab voluptate nam, veritatis est ipsa laboriosam, explicabo ut nulla sequi in. Lorem ipsum dolor sit amet consectetur adipisicing elit. Et dicta praesentium ab voluptate nam, veritatis est ipsa laboriosam, explicabo ut nulla sequi in.',
                      style: TextStyle(
                        fontSize: 11.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    TextFormField(
                      controller: _quantity,
                      decoration: InputDecoration(
                        labelText: 'Quantity: ',
                        prefixStyle: TextStyle(fontSize: 13.0, fontStyle: FontStyle.italic),
                      ),
                      validator: (value) {
                        if (value == null) {
                          return 'Please Enter Quantity';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 12.0,),
                    ElevatedButton(onPressed: _submitForm, child: Text('Add to Cart'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}