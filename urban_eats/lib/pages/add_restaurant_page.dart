import 'package:flutter/material.dart';

class AddRestaurantPage extends StatefulWidget {
  const AddRestaurantPage({super.key});

  @override
  State<AddRestaurantPage> createState() => _AddRestaurantPageState();
}

class _AddRestaurantPageState extends State<AddRestaurantPage> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _cuisine = TextEditingController();
  final _address = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _cuisine.dispose();
    _address.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      print('Submitted');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_name.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Restaurant'),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: _name,
              decoration: InputDecoration(
                label: Text('Restaurant Name'),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the resto name';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}