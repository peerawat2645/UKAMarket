import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditStore extends StatelessWidget {
  EditStore({super.key});
  final storeList = [
    {
      'icon': 'restaurant_menu',
      'title': 'Store 1',
      'desc': 'Description',
    },
    {
      'icon': 'restaurant_menu',
      'title': 'Store 1',
      'desc': 'Description',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'แก้ไขข้อมูลร้านค้า',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
      ),
      body: ListView.builder(
          itemCount: storeList.length,
          itemBuilder: (context, index) {
            final item = storeList[index];
            return Padding(
                padding: (index == 0)
                    ? const EdgeInsets.symmetric(vertical: 20.0)
                    : const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1.0,
                          spreadRadius: 1.0,
                          color: Colors.grey.shade300,
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Icon(
                          Icons.store,
                          size: 50,
                        ),
                      ),
                      SizedBox()
                    ],
                  ),
                ));
          }),
    );
  }
}
