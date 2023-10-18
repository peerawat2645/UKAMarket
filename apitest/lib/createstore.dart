import 'package:flutter/material.dart';

import 'base_client.dart';

class CreateStorePage extends StatefulWidget {
  const CreateStorePage({super.key,required int userId});

  @override
  State<CreateStorePage> createState() => _CreateStorePageState();
}

class _CreateStorePageState extends State<CreateStorePage> {
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imgPathController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: descriptionController,
            decoration: InputDecoration(labelText: 'Description'),
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: phoneController,
            decoration: InputDecoration(labelText: 'Phone'),
          ),
          TextField(
            controller: typeController,
            decoration: InputDecoration(labelText: 'Type'),
          ),
          ElevatedButton(
            onPressed: () {
              // Access the values from the controllers.
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
              BaseClient().post('/stores/create/2', jsonData).then((result) {
                if (result != null) {
                  print('POST Successful: $result');
                }
              }).catchError((error) {
                print('POST Failed: $error');
              });
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
}
}