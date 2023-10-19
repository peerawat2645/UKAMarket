import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:uka_project/screen/navbar.dart';
import '../../api/baseclient.dart';
import '../../screen/home.dart';
import '../../screen/home2.dart';
import '../../screen/reserve.dart';
import 'favModel/favStore.dart';
import 'profile/profile.dart';

class MainPage2 extends StatefulWidget {
  final int userId; // Declare userId as an instance variable

  const MainPage2({Key? key, required this.userId}) : super(key: key);
  @override
  State<MainPage2> createState() => _MyViewPage();
}

class _MyViewPage extends State<MainPage2> {
  var _currentIndex = 0;
  // ignore: non_constant_identifier_names
  String userProfile = '';
  String emailProfile = '';
  String nameProfile = '';
  String surnameP = '';
  String passwordP = '';
  List likeMain = [];

  @override
  Widget build(BuildContext context) {
    final List<Widget> Screen = <Widget>[
      HomePage(
        userId: widget.userId,
      ),
      FavStore(
        userId: widget.userId,
        likeStore: likeMain,
      ),
      ReservationCheck(
        userId: widget.userId,
      ),
      Profile(
        userId: widget.userId,
        userxname: userProfile,
        email: emailProfile,
        name: nameProfile,
        lastName: surnameP,
        password: passwordP,
      )
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Screen[_currentIndex],
        bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (i) async {
              setState(() {
                _currentIndex = i;
                Map<String, dynamic> jsonData = {};
                BaseClient().getProfile('/user/', widget.userId).then((result) {
                  if (result != null) {
                    String userName = result['body']['username'];
                    String email = result['body']['email'];
                    String name = result['body']['name'];
                    String lastName = result['body']['surname'];
                    String password = result['body']['password'];
                    userProfile = userName;
                    emailProfile = email;
                    nameProfile = name;
                    surnameP = lastName;
                    passwordP = password;
                  }
                  ;
                }).catchError((error) {
                  print('POST Failed: $error');
                });

                BaseClient()
                    .getMyStore('/like/user/', widget.userId)
                    .then((result) {
                  if (result != null) {
                    final List store = result;
                    likeMain = store;
                    print(store);
                  }
                  ;
                }).catchError((error) {
                  print('POST Failed: $error');
                });
              });
            },
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title: Text(
                  "กินไรดี?",
                  style: TextStyle(fontFamily: 'BaiJamjuree', fontSize: 15.sp),
                ),
                selectedColor: const Color(0xFF93AF71),
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: const Icon(Icons.favorite),
                title: Text("เลิฟเลย",
                    style:
                        TextStyle(fontFamily: 'BaiJamjuree', fontSize: 15.sp)),
                selectedColor: const Color(0xFF93AF71),
              ),

              /// Search
              SalomonBottomBarItem(
                icon: const Icon(Icons.add_business),
                title: Text("จองแผง",
                    style:
                        TextStyle(fontFamily: 'BaiJamjuree', fontSize: 15.sp)),
                selectedColor: const Color(0xFF93AF71),
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: const Icon(Icons.person),
                title: Text("โปรไฟล์",
                    style:
                        TextStyle(fontFamily: 'BaiJamjuree', fontSize: 15.sp)),
                selectedColor: const Color(0xFF93AF71),
              ),
            ]),
      ),
    );
  }
}
