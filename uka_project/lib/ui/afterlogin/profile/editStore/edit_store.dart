import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class EditStore extends StatelessWidget {
  final int userId; // Declare userId as an instance variable
  
  EditStore(String s, String n, {Key? key, required this.userId,this.nameStore, this.storeDetail,}) : super(key: key);
  final nameStore;
  final storeDetail;
  final TextEditingController _nameStoreController = TextEditingController();
  final TextEditingController _detailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'รายละเอียดร้านค้า',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _nameStoreController,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person ,size: 22.dm),
                          labelText: 'ชื่อร้าน',
                          labelStyle: TextStyle(
                            color: const Color(0xFF040D12),
                            fontSize: 15.sp,
                            fontFamily: 'BaiJamjuree',
                            fontWeight: FontWeight.w100,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF040D12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextField(
                        controller: _detailController,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.edit_note , size: 22.dm,),
                          labelText: 'รายละเอียด',
                          labelStyle: TextStyle(
                            color: const Color(0xFF040D12),
                            fontSize: 15.sp,
                            fontFamily: 'BaiJamjuree',
                            fontWeight: FontWeight.w100,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF040D12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextField(
                        controller: _phoneController,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.call,size: 22.dm),
                          labelText: 'เบอร์โทร',
                          labelStyle: TextStyle(
                            color: const Color(0xFF040D12),
                            fontSize: 15.sp,
                            fontFamily: 'BaiJamjuree',
                            fontWeight: FontWeight.w100,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF040D12),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100)),
                        child: SizedBox(
                          width: 129.w,
                          height: 36.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF435334),
                            ),
                            child: Text(
                              'บันทึก',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontFamily: 'BaiJamjuree',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
