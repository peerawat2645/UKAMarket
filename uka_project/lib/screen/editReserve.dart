import 'package:flutter/material.dart';
import 'package:uka_project/screen/regisReservation.dart';

class EditReservation extends StatefulWidget {
  final int userId; // Declare userId as an instance variable

  const EditReservation({Key? key, required this.userId}) : super(key: key);

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
        title: Text(
          'แก้ไขรายละเอียดร้านค้า',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15,
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
                    obscureText: false,
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Store Name',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF435334)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF435334)),
                      ),
                      labelStyle: TextStyle(color: Color(0xFF435334)),
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
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Phone number',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF435334)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF435334)),
                      ),
                      labelStyle: TextStyle(color: Color(0xFF435334)),
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
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Store Details',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF435334)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF435334)),
                      ),
                      labelStyle: TextStyle(color: Color(0xFF435334)),
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
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterReservation(userId: widget.userId,)),
                      );
                      // Submit the form data to your backend or process it as needed
                      // You can access the form values like _storeName, _phoneNumber, etc.
                      print('Store Name: $_storeName');
                      print('Phone Number: $_phoneNumber');
                      print('Store Details: $_storeDetails');
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF435334)),
                    // Set the background color
                  ),
                  child: Text(
                    'บันทึก',
                    style: TextStyle(
                        fontFamily: 'Baijamjuree',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
