import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

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

  File? _selectedImage; // State variable to hold the selected image

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
    }
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      print('Submitted: \nRestaurant name: ${_name.text}\nCuisine: ${_cuisine.text}\nAddress: ${_address.text}');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Submitted: \nRestaurant name: ${_name.text}\nCuisine: ${_cuisine.text}\nAddress: ${_address.text}'),
          duration: Duration(seconds: 5),
        ),
      );
      context.push('/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Restaurant', style: TextStyle(color: Theme.of(context).primaryColorLight),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Fill the Form', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 20.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(height: 12.0,),
              GestureDetector(
                onTap: _pickImage,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).hoverColor,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(100.0),
                    child: _selectedImage != null
                      ? Image.file(
                        _selectedImage!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 150,
                      )
                      : const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt, size: 40, color: Colors.grey),
                            SizedBox(height: 8),
                            Text(
                              'Tap to select an image',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              TextFormField(
                controller: _name,
                decoration: InputDecoration(
                  label: Text('Restaurant Name'),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the resto name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                controller: _cuisine,
                decoration: InputDecoration(
                  label: Text('Cuisine Name'),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the cuisine';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                controller: _address,
                decoration: InputDecoration(
                  label: Text('Address'),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the resto name';
                  }
                  if (value.length < 10) {
                    return 'Address should be at least 10 characters long';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Add Restaurant'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}