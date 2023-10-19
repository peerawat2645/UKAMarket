import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uka_project/screen/regisReservation.dart';
import 'package:uka_project/ui/afterlogin/main_page.dart';

import '../api/baseclient.dart';

class EditReservation extends StatefulWidget {
  final int userId;
  final int storeId; // Declare userId as an instance variable

  const EditReservation({Key? key, required this.userId, required this.storeId})
      : super(key: key);

  @override
  State<EditReservation> createState() => _EditReservationState();
}

class Store {
  final String name;
  final String phonenumber;
  final String type;
  final String description;
  final int storeId;

  Store(this.name, this.phonenumber, this.type, this.description, this.storeId);
}

class _EditReservationState extends State<EditReservation> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  Store store = Store('', '', '', '', 0); // Change from List<Store> to Store

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data from the API when the page loads
  }

  Future<void> fetchData() async {
    int id = widget.storeId;
    try {
      dynamic userData = await BaseClient().getStoreById('/stores/$id');
      Map<String, dynamic> jsonMap = json.decode(userData);
      if (jsonMap.containsKey('body') && jsonMap['body'] is Map<String, dynamic>) {
        final storeData = jsonMap['body'];

        setState(() {
          store = Store(
            storeData['name'],
            storeData['phone'],
            storeData['type'],
            storeData['description'],
            storeData['storeId'],
          );
        });
      } else {
        
        // Handle the case where the 'body' is not in the expected format
        print('Invalid response format');
      }
    } catch (error) {
      // Handle any errors or exceptions here
      print('Error fetching data: $error');
    }
  }

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
                    controller: nameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: '${store.name}',
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
                        nameController.text =store.name;
                        return null;
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: phoneController,
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: '${store.phonenumber}',
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
                        phoneController.text=store.phonenumber;
                        return null;
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 250,
                  child: TextFormField(
                    controller: descriptionController,
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: '${store.description}',
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
                        descriptionController.text=store.description;
                        return null;
                      }
                      return null;
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
                      String description = descriptionController.text;
                      String name = nameController.text;
                      String phone = phoneController.text;
                      print(store.storeId);
                      print(description);
                      print(name);
                      print(phone);
                      print(widget.userId);
                      // Do something with the form values (e.g., validation, submission).
                      int id = widget.userId;
                      Map<String, dynamic> jsonData = {
                        "description": description,
                        "name": name,
                        "phone": phone,
                        "storeId":store.storeId,
                        "type":store.type,
                        "userId":widget.userId
                      };
                      BaseClient()
                          .UpdateStore('/stores/update', jsonData)
                          .then((result) {
                        if (result != null) {
                          print('POST Successful: $result');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage(
                                      userId: id,
                                    )),
                          );
                        }
                      }).catchError((error) {
                        print('POST Failed: $error');
                      });
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
