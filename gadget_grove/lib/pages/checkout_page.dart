import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _shipping = TextEditingController();
  final _phone = TextEditingController();

  @override
  void dispose() {
    _name.dispose();
    _shipping.dispose();
    _phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        title: Text('Checkout'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Fill the Form', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
              SizedBox(height: 20.0,),
              TextFormField(
                controller: _name,
                decoration: InputDecoration(
                  label: Text('Full Name'),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                controller: _shipping,
                decoration: InputDecoration(
                  label: Text('Shipping Address'),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the Shipping Address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                controller: _phone,
                decoration: InputDecoration(
                  label: Text('Phone number'),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter the phone number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0,),
              ElevatedButton(onPressed: () {}, child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Submit'),
              )),
            ],
          ),
        ),
      ),
    );
  }
}