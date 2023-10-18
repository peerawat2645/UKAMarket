import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import './edit_store.dart';

class MyStore extends StatefulWidget {
  final int userId; // Declare userId as an instance variable

  MyStore({Key? key, required this.userId}) : super(key: key);
  @override
  State<MyStore> createState() => _MyStore();
}

class _MyStore extends State<MyStore> {
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
      body: (storeList.isEmpty)
          ? SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'คุณยังไม่มีร้านค้า',
                    style: TextStyle(
                        fontSize: 23.sp,
                        color: Colors.grey,
                        fontFamily: 'Baijamjuree'),
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: storeList.length,
              itemBuilder: (context, index) {
                final item = storeList[index];
                return Padding(
                    padding: (index == 0)
                        ? const EdgeInsets.symmetric(vertical: 20.0)
                        : const EdgeInsets.only(bottom: 20.0),
                    child: Slidable(
                      key: Key('$item'),
                      endActionPane:
                          ActionPane(motion: ScrollMotion(), children: [
                        SlidableAction(
                          onPressed: (context) {
                            setState(() {
                              storeList.removeAt(index);
                            });
                          },
                          backgroundColor: Colors.red,
                          icon: Icons.delete,
                        )
                      ]),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      EditStore(item['title']!,item['desc']!, userId: widget.userId,)));
                        },
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
                                  size: 50.dg,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title']!,
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(item['desc']!,
                                      style: TextStyle(
                                          fontFamily: 'Baijamjuree',
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ));
              }),
    );
  }
}
