import 'dart:io';
import 'package:flutter/material.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Fill the Form', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
              SizedBox(height: 12.0,),
              GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                  ),
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
              SizedBox(height: 20.0,),
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
      ),
    );
  }
}