import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uka_project/screen/selectDayorMonth.dart';

import '../api/baseclient.dart';
import '../ui/afterlogin/main_page.dart';
import 'reserveInfo.dart';
import 'selectDate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ThingAreaPage extends StatefulWidget {
  final int userId; // Declare userId as an instance variable
  final String type;
  final DateTime startDate;
  final String storetype;
  final DateTime endDate;
  final String month;
  final int storeId;

  const ThingAreaPage(
      {Key? key,
      required this.userId,
      required this.type,
      required this.startDate,
      required this.storetype,
      required this.endDate,
      required this.month,
      required this.storeId})
      : super(key: key);

  @override
  State<ThingAreaPage> createState() => _ThingAreaPageState();
}

class _ThingAreaPageState extends State<ThingAreaPage> {
  @override
  Widget build(BuildContext context) {
    bool isLiked = false;
    bool p = true;
    bool q = false;
    if (widget.storetype == "Day") {
      return Scaffold(
        backgroundColor: Color(0xFFFAF1E4),
        appBar: AppBar(
          title: Text(
            'กินอะไรดี?',
            style: TextStyle(
                fontFamily: 'Baijamjuree',
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFAF1E4)),
          ),
          backgroundColor: Color(0xFF435334),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFAF1E4), // Background color
            // Border radius
          ),
          child: Container(
            height: 700,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(
                                0xFF435334), // Set the button's background color to green
                            onPrimary:
                                Colors.white, // Set the text color to white
                          ),
                          child: Text(
                            "ของใช้",
                            style: TextStyle(
                                fontFamily: 'Baijamjuree',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 370, // 60% width
                      height: 380, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFF9EB384), // Background color
                        borderRadius:
                            BorderRadius.circular(10), // Border radius
                      ),
                      child: Center(
                        child: InteractiveViewer(
                            maxScale: 5.0,
                            minScale: 0.01,
                            boundaryMargin: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ButtonGridCol(userId: widget.userId, type:  widget.type, startDate:  widget.startDate, storetype:  widget.storetype, endDate:  widget.endDate, month:  widget.month, storeId:  widget.storeId),
                                ButtonGrid(userId: widget.userId, type:  widget.type, startDate:  widget.startDate, storetype:  widget.storetype, endDate:  widget.endDate, month:  widget.month, storeId:  widget.storeId),
                              ],
                            )),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Color(0xFFFAF1E4),
        appBar: AppBar(
          title: Text(
            'กินอะไรดี?',
            style: TextStyle(
                fontFamily: 'Baijamjuree',
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xFFFAF1E4)),
          ),
          backgroundColor: Color(0xFF435334),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFAF1E4), // Background color
            // Border radius
          ),
          child: Container(
            height: 700,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(
                                0xFF435334), // Set the button's background color to green
                            onPrimary:
                                Colors.white, // Set the text color to white
                          ),
                          child: Text(
                            "ของใช้",
                            style: TextStyle(
                                fontFamily: 'Baijamjuree',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 370, // 60% width
                      height: 380, // Adjust the height as needed
                      decoration: BoxDecoration(
                        color: const Color(0xFF9EB384), // Background color
                        borderRadius:
                            BorderRadius.circular(10), // Border radius
                      ),
                      child: Center(
                        child: InteractiveViewer(
                            maxScale: 5.0,
                            minScale: 0.01,
                            boundaryMargin: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ButtonGridColMonth(userId: widget.userId, type:  widget.type, startDate:  widget.startDate, storetype:  widget.storetype, endDate:  widget.endDate, month:  widget.month, storeId:  widget.storeId),
                                ButtonGridMonth(userId: widget.userId, type:  widget.type, startDate:  widget.startDate, storetype:  widget.storetype, endDate:  widget.endDate, month:  widget.month, storeId:  widget.storeId),
                              ],
                            )),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      );
    }
  }
}

class ButtonGrid extends StatelessWidget {
  final int userId; // Declare userId as an instance variable
  final String type;
  final DateTime startDate;
  final String storetype;
  final DateTime endDate;
  final String month;
  final int storeId;

  const ButtonGrid(
      {Key? key,
      required this.userId,
      required this.type,
      required this.startDate,
      required this.storetype,
      required this.endDate,
      required this.month,
      required this.storeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> gridItems = [];
    bool isLiked = false;
    String name = "";
    String description = "";
    String phoneNumber = "";

    for (int i = 0; i < 8; i++) {
      gridItems.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(8, (j) {
          return FutureBuilder(
            future: BaseClient()
                .getStoreDescription('/reserv/choice/row/$j/col/$i'),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> jsonMap = json.decode(snapshot.data);
                if (jsonMap['body'] == "success") {
                  // If 'body' is null, disable the button
                  return GestureDetector(
                    onTap: () {
                      // Do nothing or show an error message
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAF1E4),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      margin: EdgeInsets.all(2.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'ไม่ว่าง',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color.fromARGB(141, 62, 62, 62),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  // 'body' is not null, enable the button
                  return GestureDetector(
                    onTap: () {
                      int price=0;
                      if(j==0){
                        price=200;
                      }
                      else if(j==7){
                        price=200;
                      }
                      else{
                        price=100;
                      }
                      // Handle button tap here
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'ร้านค้าเลขที่ : $j$i',
                              style: TextStyle(
                                  fontFamily: 'Baijamjuree',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            content: Container(
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ประเภทร้านค้า : $storetype',
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'ราคารายวัน : $price บาท',
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  int id = userId;
                                  // Handle "Reserve" button press
                                  // You can add your reservation logic here
                                  Navigator.of(context).pop();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ReservationInfo(row:j,column:i,userId: userId, storeId: storeId, type: type, startDate: startDate, storetype: storetype, endDate: endDate, month: month, price: price)),
                                  ); // Close the dialog
                                },
                                icon: const Icon(
                                  Icons
                                      .add, // Replace with your custom "Reserve" icon
                                  color: Color.fromARGB(
                                      255, 255, 255, 255), // Custom color
                                ),
                                label: const Text(
                                  'จอง',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(
                                      255, 14, 93, 27), // Custom color
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 15, 92, 25),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      margin: EdgeInsets.all(2.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'ร้านค้าเลขที่ : $j$i',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }
              } else {
                // Loading or waiting for the future to complete
                return CircularProgressIndicator();
              }
            },
          );
        }),
      ));

      // Insert a SizedBox with a height of 10 between even rows
      if (i % 2 == 0 && i < 7) {
        gridItems.add(SizedBox(height: 10));
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
      crossAxisAlignment: CrossAxisAlignment.center,
      children: gridItems,
    );
  }
}

class ButtonGridMonth extends StatelessWidget {
  final int userId; // Declare userId as an instance variable
  final String type;
  final DateTime startDate;
  final String storetype;
  final DateTime endDate;
  final String month;
  final int storeId;

  const ButtonGridMonth(
      {Key? key,
      required this.userId,
      required this.type,
      required this.startDate,
      required this.storetype,
      required this.endDate,
      required this.month,
      required this.storeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> gridItems = [];
    bool isLiked = false;
    String name = "";
    String description = "";
    String phoneNumber = "";

    for (int i = 0; i < 8; i++) {
      gridItems.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(8, (j) {
          return FutureBuilder(
            future: BaseClient().getStoreDescription(
                '/reserv/choice/month/$month/row/$j/col/$i'),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> jsonMap = json.decode(snapshot.data);
                if (jsonMap['body'] == "fail") {
                  // If 'body' is null, disable the button
                  return GestureDetector(
                    onTap: () {
                      // Do nothing or show an error message
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAF1E4),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      margin: EdgeInsets.all(2.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'ไม่ว่าง',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color.fromARGB(141, 62, 62, 62),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  // 'body' is not null, enable the button
                  return GestureDetector(
                    onTap: () {
                      int price=0;
                      if(j==0){
                        price=1400;
                      }
                      else if(j==7){
                        price=1400;
                      }
                      else{
                        price=600;
                      }
                      // Handle button tap here
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'ร้านค้าเลขที่ : $j$i',
                              style: TextStyle(
                                  fontFamily: 'Baijamjuree',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            content: Container(
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ประเภทร้านค้า : $storetype',
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'ราคารายเดือน : $price บาท',
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  int id = userId;
                                  // Handle "Reserve" button press
                                  // You can add your reservation logic here
                                  Navigator.of(context).pop();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ReservationInfo(row:j,column:i,userId: userId, storeId: storeId, type: type, startDate: startDate, storetype: storetype, endDate: endDate, month: month, price: price)),
                                  ); // Close the dialog
                                },
                                icon: const Icon(
                                  Icons
                                      .add, // Replace with your custom "Reserve" icon
                                  color: Color.fromARGB(
                                      255, 255, 255, 255), // Custom color
                                ),
                                label: const Text(
                                  'จอง',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(
                                      255, 14, 93, 27), // Custom color
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 15, 92, 25),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      margin: EdgeInsets.all(2.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'ร้านค้าเลขที่ : $j$i',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }
              } else {
                // Loading or waiting for the future to complete
                return CircularProgressIndicator();
              }
            },
          );
        }),
      ));

      // Insert a SizedBox with a height of 10 between even rows
      if (i % 2 == 0 && i < 7) {
        gridItems.add(SizedBox(height: 10));
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
      crossAxisAlignment: CrossAxisAlignment.center,
      children: gridItems,
    );
  }
}

class ButtonGridCol extends StatelessWidget {
  final int userId; // Declare userId as an instance variable
  final String type;
  final DateTime startDate;
  final String storetype;
  final DateTime endDate;
  final String month;
  final int storeId;

  const ButtonGridCol(
      {Key? key,
      required this.userId,
      required this.type,
      required this.startDate,
      required this.storetype,
      required this.endDate,
      required this.month,
      required this.storeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> gridItems = [];
    bool isLiked = false;
    String name = "";
    String description = "";
    String phoneNumber = "";
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(4, (j) {
        return FutureBuilder(
          future:
              BaseClient().getStoreDescription('/reserv/choice/row/$j/col/16'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> jsonMap = json.decode(snapshot.data);
              if (jsonMap['body'] == "success") {
                // If 'body' is null, disable the button
                return GestureDetector(
                    onTap: () {
                      // Do nothing or show an error message
                    },
                    child: Container(
                      width: 35,
                      height: 75,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFFAF1E4),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'ไม่ว่าง',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(159, 46, 43, 43),
                            ),
                          ),
                        ),
                      ),
                    ));
              } else {
                // 'body' is not null, enable the button
                return GestureDetector(
                    onTap: () {
                      int price = 80;
                      // Handle button tap here
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'ร้านค้าเลขที่ : $j 16',
                              style: TextStyle(
                                  fontFamily: 'Baijamjuree',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            content: Container(
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ประเภทร้านค้า : $storetype',
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'ราคารายวัน : $price บาท',
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  int id = userId;
                                  // Handle "Reserve" button press
                                  // You can add your reservation logic here
                                  Navigator.of(context).pop();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                           ReservationInfo(row:j,column:16,userId: userId, storeId: storeId, type: type, startDate: startDate, storetype: storetype, endDate: endDate, month: month, price: price)),
                                  ); // Close the dialog
                                },
                                icon: const Icon(
                                  Icons
                                      .add, // Replace with your custom "Reserve" icon
                                  color: Color.fromARGB(
                                      255, 255, 255, 255), // Custom color
                                ),
                                label: const Text(
                                  'จอง',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(
                                      255, 14, 93, 27), // Custom color
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 35,
                      height: 75,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 15, 92, 25),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'ร้านค้าเลขที่ : 0$j',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ));
              }
            } else {
              // Loading or waiting for the future to complete
              return CircularProgressIndicator();
            }
          },
        );
      }),
    );
  }
}

class ButtonGridColMonth extends StatelessWidget {
  final int userId; // Declare userId as an instance variable
  final String type;
  final DateTime startDate;
  final String storetype;
  final DateTime endDate;
  final String month;
  final int storeId;

  const ButtonGridColMonth(
      {Key? key,
      required this.userId,
      required this.type,
      required this.startDate,
      required this.storetype,
      required this.endDate,
      required this.month,
      required this.storeId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> gridItems = [];
    bool isLiked = false;
    String name = "";
    String description = "";
    String phoneNumber = "";
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(4, (j) {
        return FutureBuilder(
          future: BaseClient().getStoreDescription(
              '/reserv/choice/month/$month/row/$j/col/16'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> jsonMap = json.decode(snapshot.data);
              if (jsonMap['body'] == "fail") {
                // If 'body' is null, disable the button
                return GestureDetector(
                    onTap: () {
                      // Do nothing or show an error message
                    },
                    child: Container(
                      width: 35,
                      height: 75,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFFAF1E4),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'ไม่ว่าง',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(159, 46, 43, 43),
                            ),
                          ),
                        ),
                      ),
                    ));
              } else {
                // 'body' is not null, enable the button
                return GestureDetector(
                    onTap: () {
                      int price = 500;
                      // Handle button tap here
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'ร้านค้าเลขที่ : $j 16',
                              style: TextStyle(
                                  fontFamily: 'Baijamjuree',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            content: Container(
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ประเภทร้านค้า : $storetype',
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    'ราคารายเดือน : $price บาท',
                                    style: TextStyle(
                                        fontFamily: 'Baijamjuree',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  int id = userId;
                                  // Handle "Reserve" button press
                                  // You can add your reservation logic here
                                  Navigator.of(context).pop();
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ReservationInfo(row:j,column:16,userId: userId, storeId: storeId, type: type, startDate: startDate, storetype: storetype, endDate: endDate, month: month, price: price)),
                                  ); // Close the dialog
                                },
                                icon: const Icon(
                                  Icons
                                      .add, // Replace with your custom "Reserve" icon
                                  color: Color.fromARGB(
                                      255, 255, 255, 255), // Custom color
                                ),
                                label: const Text(
                                  'จอง',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(
                                      255, 14, 93, 27), // Custom color
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.close),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 35,
                      height: 75,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 15, 92, 25),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'ร้านค้าเลขที่ : 0$j',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ));
              }
            } else {
              // Loading or waiting for the future to complete
              return CircularProgressIndicator();
            }
          },
        );
      }),
    );
  }
}
