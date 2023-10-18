import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uka_project/api/baseclient.dart';

class EditProfile extends StatefulWidget {
  EditProfile(
      {super.key,
      required this.userId,
      required this.userName,
      required this.email,
      required this.name,
      required this.lastName, required this.password});

  final int userId;
  final String userName;
  final String email;
  final String name;
  final String lastName;
  final String password;

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late final TextEditingController _usernameController =
      TextEditingController(text: '${widget.userName}');
  late final TextEditingController _emailController =
      TextEditingController(text: '${widget.email}');
  late final TextEditingController _nameController =
      TextEditingController(text: '${widget.name}');
  late final TextEditingController _surnameController =
      TextEditingController(text: '${widget.lastName}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'แก้ไขโปรไฟล์',
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
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                          image: AssetImage('assets/images/profile.jpg')),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _usernameController,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: '@Username',
                          labelStyle: TextStyle(
                            color: const Color(0xFF040D12),
                            fontSize: 15.sp,
                            fontFamily: 'BaiJamjuree',
                            fontWeight: FontWeight.w100,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.r)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
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
                        controller: _emailController,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: 'อีเมล',
                          labelStyle: TextStyle(
                            color: const Color(0xFF040D12),
                            fontSize: 15.sp,
                            fontFamily: 'BaiJamjuree',
                            fontWeight: FontWeight.w100,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.r)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
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
                        controller: _nameController,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.info),
                          labelText: 'ชื่อ',
                          labelStyle: TextStyle(
                            color: const Color(0xFF040D12),
                            fontSize: 15.sp,
                            fontFamily: 'BaiJamjuree',
                            fontWeight: FontWeight.w100,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.r)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
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
                        controller: _surnameController,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.info),
                          labelText: 'นามสกุล',
                          labelStyle: TextStyle(
                            color: const Color(0xFF040D12),
                            fontSize: 15.sp,
                            fontFamily: 'BaiJamjuree',
                            fontWeight: FontWeight.w100,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100.r)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF837E93),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.r)),
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
                        borderRadius: BorderRadius.all(Radius.circular(100.r)),
                        child: SizedBox(
                          width: 129.w,
                          height: 36.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Map<String, dynamic> jsonData = {
                                "email": _emailController.text,
                                "name": _nameController.text,
                                "password": widget.password,
                                "surname": _surnameController.text,
                                "userId": widget.userId,
                                "username": _usernameController.text
                              };
                              BaseClient()
                                  .updateProfile('/v1/user/update', jsonData)
                                  .then((result) {
                                if (result != null) {
                                  Navigator.pop(context);
                                }
                              }).catchError((error) {
                                print('POST Failed: $error');
                              });
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
