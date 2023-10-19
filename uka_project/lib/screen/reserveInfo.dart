import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uka_project/screen/payment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

import '../api/baseclient.dart';

class ReservationInfo extends StatefulWidget {
  final int userId; // Declare userId as an instance variable
  final int storeId;
  final String type;
  final DateTime startDate;
  final String storetype;
  final DateTime endDate;
  final String month;
  final int price;
  final int row;
  final int column;

  ReservationInfo(
      {Key? key,
      required this.userId,
      required this.storeId,
      required this.type,
      required this.startDate,
      required this.storetype,
      required this.endDate,
      required this.month,
      required this.price,
      required this.row,
      required this.column})
      : super(key: key);

  @override
  State<ReservationInfo> createState() => _ReservationInfoState();
}

class _ReservationInfoState extends State<ReservationInfo> {
  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  String storename = "";

  Widget build(BuildContext context) {
    DateTime startDate = widget.startDate;
    DateTime endDate = widget.endDate;

    bool _isSelectable(DateTime day) {
      return day.weekday == DateTime.monday ||
          day.weekday == DateTime.wednesday;
    }

    bool _isSMon(DateTime day) {
      if (widget.storetype == "Day") {
        DateTime startDates = startDate.subtract(Duration(days: 1));
        DateTime endDates = startDate.add(Duration(days: 1));
        return day.isAfter(startDates) &&
            day.isBefore(endDates) &&
            (day.weekday == DateTime.monday ||
                day.weekday == DateTime.wednesday);
      }

      return day.isAfter(startDate) &&
          day.isBefore(endDate) &&
          (day.weekday == DateTime.monday || day.weekday == DateTime.wednesday);
    }

    List<DateTime> dateTimeList = [];

    if (widget.startDate == widget.endDate) {
      dateTimeList.add(widget.startDate);
    } else {
      DateTime currentDate = widget.startDate;
      while (currentDate.isBefore(widget.endDate) ||
          currentDate.isAtSameMomentAs(widget.endDate)) {
        if (currentDate.weekday == DateTime.monday ||
            currentDate.weekday == DateTime.wednesday) {
          dateTimeList.add(currentDate);
        }
        currentDate = currentDate.add(Duration(days: 1));
      }
    }
    Future<dynamic> userFuture =
        BaseClient().getStoreById('/stores/${widget.storeId}');
    // Convert the result of the future to an int
    userFuture.then((dynamic userData) {
      Map<String, dynamic> jsonMap = json.decode(userData);
      String name = jsonMap['body']['name'];
      print(name);
      if (storename != name) {
        setState(() {
          storename = name;
        });
      }
    });
    print(storename);
    List<Widget> dateTextWidgets = dateTimeList.map((date) {
      final formattedDate =
          DateFormat('yyyy-MM-dd').format(date); // Format date as yyyy-MM-dd
      return Text(formattedDate,
          style: TextStyle(
            fontFamily: 'Baijamjuree',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFF435334),
          ));
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ตรวจสอบข้อมูลการจอง',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        TableCalendar(
                          selectedDayPredicate: _isSMon,
                          enabledDayPredicate: _isSMon,
                          onDaySelected: (date, events) {
                            setState(() {
                              _selectedDate = date;
                            });
                          },
                          calendarFormat: CalendarFormat.month,
                          startingDayOfWeek: StartingDayOfWeek.sunday,
                          focusedDay: DateTime.now(),
                          firstDay: DateTime(DateTime.now().year - 1),
                          lastDay: DateTime(DateTime.now().year + 1),
                        ),
                        // Text(
                        //   'Selected Date: ${_selectedDate.toLocal()}',
                        //   style: TextStyle(fontSize: 18),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(30.0), // Set the border radius
                color: Color(0xFFCEDEBD), // Set the background color
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('รายละเอียดการจอง',
                              style: TextStyle(
                                fontFamily: 'Baijamjuree',
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 0, 0, 0),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                                'ตำแหน่งร้าน : ${widget.row}${widget.column}',
                                style: TextStyle(
                                  fontFamily: 'Baijamjuree',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF435334),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text('ชื่อร้าน : $storename',
                                style: TextStyle(
                                  fontFamily: 'Baijamjuree',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF435334),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text('ประเภทการจอง : ${widget.storetype}',
                                style: TextStyle(
                                  fontFamily: 'Baijamjuree',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF435334),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text('หมวดหมู่ร้านค้า : ${widget.type}',
                                style: TextStyle(
                                  fontFamily: 'Baijamjuree',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF435334),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text('ราคา : ${widget.price}',
                                style: TextStyle(
                                  fontFamily: 'Baijamjuree',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF435334),
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .start, // Centered horizontally
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'วันที่จอง : ',
                                  style: TextStyle(
                                    fontFamily: 'Baijamjuree',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF435334),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Centered horizontally
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: dateTextWidgets,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF435334), // Set the background color
                          borderRadius: BorderRadius.circular(
                              20.0), // Set the border radius
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return PaymentPage(
                                      userId: widget.userId,
                                      storeId: widget.storeId,
                                      type: widget.type,
                                      startDate: widget.startDate,
                                      storetype: widget.storetype,
                                      endDate: endDate,
                                      month: widget.month,
                                      price: widget.price,
                                      row: widget.row,
                                      column: widget
                                          .column); // Replace with the name of the screen you want to navigate to
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(
                                0xFF435334), // Set the button's background color to green
                            onPrimary:
                                Colors.white, // Set the text color to white
                          ),
                          child: Text("จอง",
                              style: TextStyle(
                                fontFamily: 'Baijamjuree',
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
