import 'package:flutter/material.dart';
import 'package:uka_project/screen/home.dart';
import 'package:uka_project/screen/home2.dart';
import 'package:uka_project/screen/reserve.dart';
import 'package:uka_project/screen/reserved.dart';

class NavBar extends StatelessWidget {
  final int userId; // Declare userId as an instance variable

  const NavBar({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Nav(),
      routes: {
        '/pageOne': (context) => Home2Page(userId: 1,),
        '/pageTwo': (context) => ReservationCheck(userId: 1,),
      },
    );
  }
}
class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageOne'); // Navigate to Page One
              },
              child: Text('Go to Home page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pageTwo'); // Navigate to Page Two
              },
              child: Text('Go to Reservation page'),
            ),
          ],
        ),
      ),
    );
  }
}