import 'package:flutter/material.dart';
import 'package:uka_project/screen/reserve.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../api/baseclient.dart';
import '../ui/afterlogin/main_page.dart';

class RegisterReservation extends StatefulWidget {
  final int userId; // Declare userId as an instance variable

  const RegisterReservation({Key? key, required this.userId}) : super(key: key);

  @override
  State<RegisterReservation> createState() => _RegisterReservationState();
}

class _RegisterReservationState extends State<RegisterReservation> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imgPathController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController typeController = TextEditingController();

  // Form fields

  // Define a list of items for the dropdown
  final Map<String, String> typeOptions = {
    'food': 'ของกิน',
    'clothe': 'ของใช้',
  };
  String selectedType = 'food'; // Initial selection

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
                    controller: nameController,
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
                      labelText: 'Store Description',
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
                        return 'Please enter store description';
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
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 500,
                      child: DropdownButton<String>(
                        value: selectedType,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedType = newValue!;
                            typeController.text =newValue!; // Save the selected key to typeController
                          });
                        },
                        items: typeOptions.entries
                            .map<DropdownMenuItem<String>>(
                                (MapEntry<String, String> entry) {
                          return DropdownMenuItem<String>(
                            value: entry.key,
                            child: Text(entry.value),
                          );
                        }).toList(),
                      ),
                    ),
                    TextFormField(
                      controller: typeController,
                      readOnly: true, // Make it read-only
                      decoration: InputDecoration(
                        labelText: 'ประเภทร้านค้าที่เลือก',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      String description = descriptionController.text;
                      String imgPath = "";
                      String name = nameController.text;
                      String phone = phoneController.text;
                      String type = typeController.text;

                      // Do something with the form values (e.g., validation, submission).
                      Map<String, dynamic> jsonData = {
                        "description": description,
                        "imgPath": imgPath,
                        "name": name,
                        "phone": phone,
                        "type": type
                      };
                      int id = widget.userId;
                      BaseClient()
                          .CreateStore('/stores/create/$id', jsonData)
                          .then((result) {
                        if (result != null) {
                          print('POST Successful: $result');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage(
                                      userId: widget.userId,
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
                    'ลงทะเบียนร้านค้า',
                    style: TextStyle(
                        fontFamily: 'Baijamjuree',
                        fontSize: 20.sp,
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
