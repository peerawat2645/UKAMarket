import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../api/baseclient.dart';

class Repass extends StatelessWidget {
  final TextEditingController _repassController = TextEditingController();
  final TextEditingController _originalPassController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();
  final GlobalKey<FormState> _formRepass = GlobalKey<FormState>();

  final int userId; // Declare userId as an instance variable

  Repass({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เปลี่ยนรหัสผ่าน',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
      ),
      body:SingleChildScrollView(
        child: Form(
          key: _formRepass,
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
                      TextFormField(
                        controller: _originalPassController,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'รหัสผ่านเดิม',
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
                                const BorderRadius.all(Radius.circular(80)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF040D12),
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
                          if (value!.isEmpty) return 'กรุณากรอกรหัสผ่าน';
                          if (value.length < 8) {
                            return "รหัสผ่านต้องมีอย่างน้อย 8 อักขระ";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextFormField(
                        controller: _repassController,
                        validator: (value) {
                          if (value!.isEmpty)
                            return 'กรุณากรอกรหัสผ่าน';
                          else if (value == _originalPassController.text)
                            return 'รหัสผ่านซ้ำกับรหัสผ่านเดิม';

                          if (value.length < 8) {
                            return "รหัสผ่านต้องมีอย่างน้อย 8 อักขระ";
                          }

                          return null;
                        },
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: 'รหัสผ่านใหม่',
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
                                const BorderRadius.all(Radius.circular(80)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF040D12),
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
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextFormField(
                        controller: _confirmPassController,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: const Color(0xFF393939),
                          fontSize: 13.sp,
                          fontFamily: 'BaiJamjuree',
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: 'ยืนยันรหัสผ่านใหม่',
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
                                const BorderRadius.all(Radius.circular(80)),
                            borderSide: BorderSide(
                              width: 1.w,
                              color: const Color(0xFF040D12),
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
                          if (value!.isEmpty)
                            return 'กรุณากรอกรหัสผ่าน';
                          else if (value != _repassController.text)
                            return 'รหัสผ่านไม่ตรงกัน';

                          return null;
                        },
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
                            onPressed: () async {
                              final String original = _originalPassController.text;
                              final String newPassword = _repassController.text;
                              final String confirm = _confirmPassController.text;

                              Map<String, dynamic> jsonData = {
                                "confirmPassword": confirm,
                                "currPassword": original,
                                "newPassword": newPassword,
                                "userId": userId
                              };
                              BaseClient()
                                  .updateProfile('/auth/resetPassword', jsonData)
                                  .then((result) {
                                if (result != null) {
                                  Navigator.pop(context);
                                }
                              }).catchError((error) {
                                print('POST Failed: $error');
                              });
                              if (_formRepass.currentState!.validate()) {
                                print('Succ');
                              }
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
        )),
      ),
    );
  }
}
