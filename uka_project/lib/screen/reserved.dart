import 'package:flutter/material.dart';
import 'package:uka_project/screen/editReserve.dart';
import 'package:uka_project/screen/selectArea.dart';
import 'package:uka_project/screen/selectDate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'regisReservation.dart';
import 'selectDayorMonth.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}
class Store {
  final String name;
  final String phonenumber;
  final String type;
  final String description;

  Store(this.name, this.phonenumber,this.type,this.description);
}
class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    final List<Store> stores = [
    Store('Store 1', '0982636676','ของกิน','หมูทอด'),
    Store('Store 2', '0855599696','ของใช้','ยางมัดผม'),
    // Add more stores here
  ];
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
                MaterialPageRoute(builder: (context) => RegisterReservation()),
              );
              print('Add button pressed');
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                children: <Widget>[
                  Icon(Icons.add), // Icon for the "Add" button
                  Text('Add'), // Text for the "Add" button
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
                    builder: (context) => SelectDayOrMonthPage(),
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
                                      builder: (context) => EditReservation()),
                                );
                          // Handle edit action
                          print('Edit ${store.name}');
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Handle delete action
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