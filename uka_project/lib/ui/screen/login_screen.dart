import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../afterlogin/main_page.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.controller});
  final PageController controller;
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: StreamBuilder(
              stream: Connectivity().onConnectivityChanged,
              builder: (context, AsyncSnapshot<ConnectivityResult> snapshot) {
                if (snapshot.hasData) {
                  ConnectivityResult? result = snapshot.data;
                  if (result == ConnectivityResult.none) {
                    return noInternet();
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 0, top: 0),
                          child: Image.asset(
                            "assets/images/Uka_Market.png",
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Column(
                              children: [
                                Text("UKA MARKET",
                                    style: TextStyle(
                                      color: const Color(0xFF435334),
                                      fontSize: 55.sp,
                                      fontFamily: 'Popins',
                                      fontWeight: FontWeight.bold,
                                    ))
                              ],
                            )),
                        SizedBox(
                          height: 25.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            textDirection: TextDirection.ltr,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'เข้าสู่ระบบ',
                                style: TextStyle(
                                  color: const Color(0xFF040D12),
                                  fontSize: 20.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              TextField(
                                controller: _emailController,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF393939),
                                  fontSize: 13.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  labelText: 'ชื่อผู้ใช้',
                                  labelStyle: TextStyle(
                                    color: const Color(0xFF040D12),
                                    fontSize: 15.sp,
                                    fontFamily: 'BaiJamjuree',
                                    fontWeight: FontWeight.w100,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    borderSide: BorderSide(
                                      width: 1.w,
                                      color: const Color(0xFF837E93),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    borderSide: BorderSide(
                                      width: 1.w,
                                      color: const Color(0xFF040D12),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30.h,
                              ),
                              TextField(
                                controller: _passController,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF393939),
                                  fontSize: 13.sp,
                                  fontFamily: 'BaiJamjuree',
                                  fontWeight: FontWeight.w400,
                                ),
                                decoration: InputDecoration(
                                  labelText: 'รหัสผ่าน',
                                  labelStyle: TextStyle(
                                    color: const Color(0xFF040D12),
                                    fontSize: 15.sp,
                                    fontFamily: 'BaiJamjuree',
                                    fontWeight: FontWeight.w300,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    borderSide: BorderSide(
                                      width: 1.w,
                                      color: const Color(0xFF837E93),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    borderSide: BorderSide(
                                      width: 1.w,
                                      color: const Color(0xFF040D12),
                                    ),
                                  ),
                                ),
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
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  const MainPage()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF435334),
                                    ),
                                    child: Text(
                                      'เข้าสู่ระบบ',
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
                                    'ยังไม่มีบัญชี?',
                                    style: TextStyle(
                                      color: const Color(0xFF837E93),
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
                                      widget.controller.animateToPage(1,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.ease);
                                    },
                                    child: Text(
                                      'ลงทะเบียน',
                                      style: TextStyle(
                                        color: const Color(0xFF9EB384),
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
                    );
                  }
                } else {
                  return loading();
                }
              },
            ),
          )
        ]));
  }
}

Widget loading() {
  return const Center(
    child: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
    ),
  );
}

Widget noInternet(){
  return Center(
    child: Text('คุณไม่ได้เชื่อมต่ออินเทอร์เน็ต' , style: TextStyle(fontFamily: 'Baijamjuree' , fontSize: 15.sp),),
  );
}
