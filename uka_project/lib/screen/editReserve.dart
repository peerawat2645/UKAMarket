import 'package:flutter/material.dart';
import 'package:uka_project/screen/regisReservation.dart';

class EditReservation extends StatefulWidget {
  const EditReservation({super.key});

  @override
  State<EditReservation> createState() => _EditReservationState();
}

class _EditReservationState extends State<EditReservation> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Form fields
  String _storeName = '';
  String _phoneNumber = '';
  String _storeDetails = '';
  String _storeType = '';

   String selectedValue = 'ของกิน'; // Initial selected value

  // Define a list of items for the dropdown
  List<String> items = [
    'ของกิน',
    'ของใช้',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store Registration Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Store Name',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter store name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _storeName = value!;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Phone number',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter phone number';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _phoneNumber = value!;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Store Details',
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter store details';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _storeDetails = value!;
                    },
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterReservation()),
                      );
                      // Submit the form data to your backend or process it as needed
                      // You can access the form values like _storeName, _phoneNumber, etc.
                      print('Store Name: $_storeName');
                      print('Phone Number: $_phoneNumber');
                      print('Store Details: $_storeDetails');
                    }
                  },
                  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF435334)),
     // Set the background color
  ),
                  child: Text('บันทึก', style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}