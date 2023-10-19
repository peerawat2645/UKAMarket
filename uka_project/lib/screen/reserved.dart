import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uka_project/screen/editReserve.dart';
import 'package:uka_project/screen/selectArea.dart';
import 'package:uka_project/screen/selectDate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../api/baseclient.dart';
import 'regisReservation.dart';
import 'selectDayorMonth.dart';

class ReservationPage extends StatefulWidget {
  final int userId; // Declare userId as an instance variable

  const ReservationPage({Key? key, required this.userId}) : super(key: key);

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class Store {
  final String name;
  final String phonenumber;
  final String type;
  final String description;
  final int storeId;

  Store(this.name, this.phonenumber, this.type, this.description, this.storeId);
}

class _ReservationPageState extends State<ReservationPage> {
  List<Store> stores = [];

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data from the API when the page loads
  }

  Future<void> fetchData() async {
    int id = widget.userId;
    try {
      dynamic userData = await BaseClient().getUserStore('/stores/userId/$id');
      Map<String, dynamic> jsonMap = json.decode(userData);
      final List<dynamic> body = jsonMap['body'];

      final List<Store> tempStores = body.map((storeData) {
        if (storeData is Map<String, dynamic>) {
          return Store(storeData['name'], storeData['phone'], storeData['type'],
              storeData['description'], storeData['storeId']);
        } else {
          // Handle the case where the data is not in the expected format
          return Store('', '', '', '', 0);
        }
      }).toList();

      setState(() {
        stores = tempStores;
      });
    } catch (error) {
      // Handle any errors or exceptions here
      print('Error fetching data: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF1E4),
      appBar: AppBar(
        title: Text(
          'เลือกร้านเพื่อจองพื้นที่ขายของ',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RegisterReservation(
                          userId: widget.userId,
                        )),
              );
              print('Add button pressed');
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: <Widget>[
                  Icon(Icons.add), // Icon for the "Add" button
                  Text('เพิ่มร้านค้า'), // Text for the "Add" button
                ],
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: stores.length,
        itemBuilder: (context, index) {
          final store = stores[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectDayOrMonthPage(
                    userId: widget.userId,storeId: store.storeId
                  ),
                ),
              );
              print('Tapped on ${store.name}');
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ListTile(
                title: Text(
                  store.name,
                  style: TextStyle(
                    fontFamily: 'Baijamjuree',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF000000),
                  ),
                ),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'เบอร์โทร : ${store.phonenumber}',
                      style: TextStyle(
                        fontFamily: 'Baijamjuree',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2A2A2A),
                      ),
                    ),
                    Text(
                      'ประเภทร้านค้า : ${store.type}',
                      style: TextStyle(
                        fontFamily: 'Baijamjuree',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2A2A2A),
                      ),
                    ),
                    Text(
                      'รายละเอียดร้านค้า : ${store.description}',
                      style: TextStyle(
                        fontFamily: 'Baijamjuree',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2A2A2A),
                      ),
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditReservation(
                                    userId: widget.userId,storeId: store.storeId,
                                  )),
                        );
                        // Handle edit action
                        print('Edit ${store.name}');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        int del = store.storeId;
                        BaseClient()
                            .deleteStore('/stores/delete/$del')
                            .then((result) {
                          print('Delete Successful: $result');
                        }).catchError((error) {
                          print('Delete Failed: $error');
                        });
                        print('Delete ${store.name}');
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
