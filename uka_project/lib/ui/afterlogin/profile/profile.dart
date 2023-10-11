import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../main_view.dart';
import 'editStore/my_store.dart';
import './resetpassword/repass.dart';
import './edit_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _Profile();
}

class _Profile extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  width: 70.w,
                  height: 70.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.r),
                    child:
                        const Image(image: AssetImage('assets/images/profile.jpg')),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Janexjira',
                  style: TextStyle(
                      fontFamily: 'Baijamjuree',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'janexjira@gmail.com',
                  style: TextStyle(
                      fontFamily: 'Baijamjuree',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 15.h,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(55.r)),
                  child: SizedBox(
                    width: 90.w,
                    height: 35.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                     EditProfile()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF435334),
                      ),
                      child: Text(
                        'แก้ไข',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13.sp,
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
                const Divider(),
                SizedBox(
                  height: 10.h,
                ),

                ////////////////////
                /// MENU ///
                ProfileMenuWidget(
                  title: 'ร้านค้า',
                  icon: Icons.store,
                  onPressed: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyStore() ));
                  },
                ),
                ProfileMenuWidget(
                  title: 'เปลี่ยนรหัสผ่าน',
                  icon: Icons.settings,
                  onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Repass() ));
                      },
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Divider(),

                ProfileMenuWidget(
                  title: 'ออกจากระบบ',
                  icon: Icons.logout,
                  onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const MainView()));
                            },
                  endIcon: false,
                  textColor: const Color.fromARGB(255, 196, 67, 86),
                ),
              ],
            ),
          ),
        ));
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPressed,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPressed;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onPressed,
        leading: Container(
          width: 30.h,
          height: 30.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: const Color(0xFFCEDEBD).withOpacity(0.3)),
          child: Icon(icon),
        ),
        title: Text(
          title,
          style: TextStyle(fontFamily: 'Baijamjuree', fontSize: 15.sp , color: textColor),
        ),
        trailing: endIcon
            ? Container(
                width: 30.w,
                height: 30.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    color: const Color(0xFFCEDEBD).withOpacity(0.1)),
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18.0,
                  color: Colors.grey,
                ),
              )
            : null);
  }
}
