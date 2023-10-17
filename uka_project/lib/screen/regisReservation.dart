import 'package:flutter/material.dart';
import 'package:uka_project/screen/reserve.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../ui/afterlogin/main_page.dart';

class RegisterReservation extends StatefulWidget {
  const RegisterReservation({super.key});

  @override
  State<RegisterReservation> createState() => _RegisterReservationState();
}

class _RegisterReservationState extends State<RegisterReservation> {
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
        title: Text(
          'ลงทะเบียนร้านค้า',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
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
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('ประเภทร้านค้า : ',  style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 0, 0)),),
                      SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: DropdownButton<String>(
                          value: selectedValue,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0,
                                  0)), // Set text style for the selected item
                          underline: Container(
                            // Customize the underline (divider) of the dropdown
                            height: 2,
                            color: Color(0xFF435334),
                          ),
                          items: items.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                  style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MainPage()),
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
                  child: Text('ลงทะเบียนร้านค้า',  style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 255, 255, 255)),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
