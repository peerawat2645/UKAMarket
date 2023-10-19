import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uka_project/api/baseclient.dart';
import 'package:uka_project/ui/screen/login_screen.dart';

import '../afterlogin/main_page.dart';
import '../../api/baseclient.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key, required this.controller});
  final PageController controller;
  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameUser = TextEditingController();
  final TextEditingController _lastNameUser = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _confirmpassController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  bool passTogale = true;
  bool confirmPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
              hasScrollBody: false,
              child: Form(
                  key: _form,
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
                                  width:
                                      MediaQuery.of(context).size.width / 2.75,
                                  height: 56.h,
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    controller: _nameUser,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF393939),
                                      fontSize: 13.sp,
                                      fontFamily: 'BaiJamjuree',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
                                      labelText: 'ชื่อ',
                                      hintStyle: TextStyle(
                                        color: Color(0xFF837E93),
                                        fontSize: 9.sp,
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          width: 1.w,
                                          color: Color(0xFF837E93),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          width: 1.w,
                                          color: Color(0xFF040D12),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                            width: 1.w,
                                            color: Color(0xFF040D12),
                                          )),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'กรอกชื่อของท่าน';
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 2.75,
                                  height: 56.h,
                                  child: TextFormField(
                                    controller: _lastNameUser,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF393939),
                                      fontSize: 13.sp,
                                      fontFamily: 'BaiJamjuree',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    decoration: InputDecoration(
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          width: 1.w,
                                          color: Color(0xFF837E93),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          width: 1.w,
                                          color: Color(0xFF040D12),
                                        ),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                            width: 1.w,
                                            color: Color(0xFF040D12),
                                          )),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'กรอกนามสกุลของท่าน';
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            SizedBox(
                              height: 56.h,
                              child: TextFormField(
                                controller: _emailController,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF393939),
                                  fontSize: 13.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  labelText: 'อีเมล',
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
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        width: 1.w,
                                        color: Color(0xFF040D12),
                                      )),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'กรอกอีเมลของท่าน';
                                  }
                                  bool emailValidate = RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value);
                                  if (!emailValidate) {
                                    return "อีเมลของท่านไม่ถูกต้อง";
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                            SizedBox(
                              height: 56.h,
                              child: TextFormField(
                                controller: _usernameController,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF393939),
                                  fontSize: 13.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  labelText: 'ชื่อผู้ใช้',
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
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        width: 1.w,
                                        color: Color(0xFF040D12),
                                      )),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'กรอกอีเมลของท่าน';
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 17.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 2.75,
                                  height: 56.h,
                                  child: TextFormField(
                                    controller: _passController,
                                    obscureText: passTogale,
                                    validator: (value) {
                                      if (value!.isEmpty)
                                        return 'กรุณากรอกรหัสผ่าน';
                                      if (value.length <= 8) {
                                        return "รหัสผ่านต้องมีอย่างน้อย 8 อักขระ";
                                      }
                                      return null;
                                    },
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          width: 1.w,
                                          color: Color(0xFF837E93),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          width: 1.w,
                                          color: Color(0xFF040D12),
                                        ),
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () {
                                          setState(() {
                                            passTogale = !passTogale;
                                          });
                                        },
                                        child: Icon(passTogale
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                            width: 1.w,
                                            color: Color(0xFF040D12),
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width / 2.75,
                                  height: 56.h,
                                  child: TextFormField(
                                    controller: _confirmpassController,
                                    obscureText: confirmPass,
                                    validator: (value) {
                                      if (value!.isEmpty)
                                        return 'กรุณากรอกรหัสผ่าน';
                                      else if (value != _passController.text)
                                        return 'รหัสผ่านไม่ตรงกัน';

                                      return null;
                                    },
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          width: 1.w,
                                          color: Color(0xFF837E93),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        borderSide: BorderSide(
                                          width: 1.w,
                                          color: Color(0xFF040D12),
                                        ),
                                      ),
                                      suffixIcon: InkWell(
                                        onTap: () {
                                          setState(() {
                                            confirmPass = !confirmPass;
                                          });
                                        },
                                        child: Icon(confirmPass
                                            ? Icons.visibility
                                            : Icons.visibility_off),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          borderSide: BorderSide(
                                            width: 1.w,
                                            color: Color(0xFF040D12),
                                          )),
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
                                  onPressed: () async {
                                    Map<String, dynamic> jsonData = {
                                      "email": _emailController.text,
                                      "name": _nameUser.text,
                                      "password": _passController.text,
                                      "surname": _lastNameUser.text,
                                      "userId": '0',
                                      "username": _usernameController.text
                                    };
                                    BaseClient()
                                        .regis('/auth/register', jsonData)
                                        .then((result) {
                                      if (result != null) {
                                        widget.controller.animateToPage(0,
                                            duration: const Duration(
                                                milliseconds: 500),
                                            curve: Curves.ease);
                                      }
                                    }).catchError((error) {
                                      print('POST Failed: $error');
                                    });
                                    if (_form.currentState!.validate()) {
                                      print('Succ');
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF435334),
                                  ),
                                  child: Text(
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
                                        duration:
                                            const Duration(milliseconds: 500),
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
                  )))
        ]));
  }
}
