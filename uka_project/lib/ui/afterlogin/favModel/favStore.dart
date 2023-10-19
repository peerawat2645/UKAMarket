import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavStore extends StatefulWidget {
  final int userId; // Declare userId as an instance variable
  final List likeStore;
  const FavStore({Key? key, required this.userId, required this.likeStore}) : super(key: key);
  @override
  State<FavStore> createState() => _FavStore();
}

class _FavStore extends State<FavStore> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ร้านเลิฟ',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
      ),
      body: (widget.likeStore.isEmpty)
          ? SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'คุณยังไม่มีร้านค้าที่ถูกใจ',
                    style: TextStyle(
                        fontSize: 23.sp,
                        color: Colors.grey,
                        fontFamily: 'Baijamjuree'),
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: widget.likeStore.length,
              itemBuilder: (context, index) {
                final item = widget.likeStore[index];
                return Padding(
                    padding: (index == 0)
                        ? const EdgeInsets.symmetric(vertical: 20.0)
                        : const EdgeInsets.only(bottom: 20.0),
                    child: GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          widget.likeStore.removeAt(index);
                        });
                      },
                      child: Container(
                        key: Key('$item'),
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
                                  item['name']!,
                                  style: TextStyle(
                                      fontFamily: 'Baijamjuree',
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(item['description']!,
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey)),
                              ],
                            ),
                            SizedBox(
                              width: 130.w,
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                              
                            )
                          ],
                        ),
                      ),
                    ));
              }),
    );
  }
}
