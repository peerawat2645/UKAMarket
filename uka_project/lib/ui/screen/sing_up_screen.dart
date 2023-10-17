import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key, required this.controller});
  final PageController controller;
  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameUser = TextEditingController();
  final TextEditingController _lastNameUser = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _repassController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Image.asset(
                    "assets/images/Uka_Market.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    textDirection: TextDirection.ltr,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ลงทะเบียน',
                        style: TextStyle(
                          color: Color(0xFF040D12),
                          fontSize: 25.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.75,
                            height: 56.h,
                            child: TextField(
                              controller: _nameUser,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF393939),
                                fontSize: 13.sp,
                                fontFamily: 'BaiJamjuree',
                                fontWeight: FontWeight.w400,
                              ),
                              decoration:InputDecoration(
                                labelText: 'ชื่อ',
                                hintStyle: TextStyle(
                                  color: Color(0xFF837E93),
                                  fontSize: 10.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w400,
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF040D12),
                                  fontSize: 15.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w300,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10 )),
                                  borderSide: BorderSide(
                                    width: 1.w,
                                    color: Color(0xFF837E93),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10 )),
                                  borderSide: BorderSide(
                                    width: 1.w,
                                    color: Color(0xFF040D12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.75,
                            height: 56.h,
                            child: TextField(
                              controller: _lastNameUser,
                              textAlign: TextAlign.center,
                              style:  TextStyle(
                                color: Color(0xFF393939),
                                fontSize: 13.sp,
                                fontFamily: 'BaiJamjuree',
                                fontWeight: FontWeight.w400,
                              ),
                              decoration:InputDecoration(
                                labelText: 'นามสกุล',
                                hintStyle: TextStyle(
                                  color: Color(0xFF837E93),
                                  fontSize: 10.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w400,
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF040D12),
                                  fontSize: 15.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w300,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10 )),
                                  borderSide: BorderSide(
                                    width: 1.w,
                                    color: Color(0xFF837E93),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10 )),
                                  borderSide: BorderSide(
                                    width: 1.w,
                                    color: Color(0xFF040D12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      SizedBox(
                        height: 56.h,
                        child: TextField(
                          controller: _emailController,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF393939),
                            fontSize: 13.sp,
                            fontFamily: 'BaiJamjuree',
                            fontWeight: FontWeight.w400,
                          ),
                          decoration:InputDecoration(
                            labelText: 'อีเมล',
                            labelStyle: TextStyle(
                              color: Color(0xFF040D12),
                              fontSize: 15.sp,
                              fontFamily: 'BaiJamjuree',
                              fontWeight: FontWeight.w300,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10 )),
                              borderSide: BorderSide(
                                width: 1.w,
                                color: Color(0xFF837E93),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10 )),
                              borderSide: BorderSide(
                                width: 1.w,
                                color: Color(0xFF040D12),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      SizedBox(
                        height: 56.h,
                        child: TextField(
                          controller: _usernameController,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF393939),
                            fontSize: 13.sp,
                            fontFamily: 'BaiJamjuree',
                            fontWeight: FontWeight.w400,
                          ),
                          decoration:InputDecoration(
                            labelText: 'ชื่อผู้ใช้',
                            labelStyle: TextStyle(
                              color: Color(0xFF040D12),
                              fontSize: 15.sp,
                              fontFamily: 'BaiJamjuree',
                              fontWeight: FontWeight.w300,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10 )),
                              borderSide: BorderSide(
                                width: 1.w,
                                color: Color(0xFF837E93),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10 )),
                              borderSide: BorderSide(
                                width: 1.w,
                                color: Color(0xFF040D12),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2.75,
                            height: 56.h,
                            child: TextField(
                              controller: _passController,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF393939),
                                fontSize: 13.sp,
                                fontFamily: 'BaiJamjuree',
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: 'รหัสผ่าน',
                                hintStyle: TextStyle(
                                  color: Color(0xFF837E93),
                                  fontSize: 10.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w400,
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF040D12),
                                  fontSize: 15.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w300,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1.w,
                                    color: Color(0xFF837E93),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1.w,
                                    color: Color(0xFF040D12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width:MediaQuery.of(context).size.width / 2.75,
                            height: 56.h,
                            child: TextField(
                              controller: _repassController,
                              textAlign: TextAlign.center,
                              style:  TextStyle(
                                color: Color(0xFF393939),
                                fontSize: 13.sp,
                                fontFamily: 'BaiJamjuree',
                                fontWeight: FontWeight.w400,
                              ),
                              decoration: InputDecoration(
                                labelText: 'ยืนยันรหัสผ่าน',
                                hintStyle: TextStyle(
                                  color: Color(0xFF837E93),
                                  fontSize: 10.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w400,
                                ),
                                labelStyle: TextStyle(
                                  color: Color(0xFF040D12),
                                  fontSize: 15.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w300,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1.w,
                                    color: Color(0xFF837E93),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                    width: 1.w,
                                    color: Color(0xFF040D12),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: SizedBox(
                          width: 329.w,
                          height: 56.h,
                          child: ElevatedButton(
                            onPressed: () {
                              widget.controller.animateToPage(0,
                                  duration: const Duration(milliseconds: 500), //เข้าหน้า Home เลย
                                  curve: Curves.ease);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF435334),
                            ),
                            child:Text(
                              'ลงทะเบียน',
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
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          Text(
                            ' มีบัญชีผู้ใช้แล้ว?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF837E93),
                              fontSize: 14.sp,
                              fontFamily: 'BaiJamjuree',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 2.5.w,
                          ),
                          InkWell(
                            onTap: () {
                              widget.controller.animateToPage(0,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Text(
                              'เข้าสู่ระบบ ',
                              style: TextStyle(
                                color: Color(0xFF9EB384),
                                fontSize: 14.sp,
                                fontFamily: 'BaiJamjuree',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),
              ],
            ))
      ])
    );
  }
}
