import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:uka_project/screen/navbar.dart';
import '../../screen/home2.dart';
import '../../screen/reserve.dart';
import 'favModel/favStore.dart';
import 'profile/profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MyViewPage();
}

class _MyViewPage extends State<MainPage> {
  var _currentIndex = 0;
  // ignore: non_constant_identifier_names
  final Screen = [
    const Home2Page(),
    FavStore(),
    const ReservationCheck() ,
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Scaffold(
        body: Screen[_currentIndex],
        bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
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
