import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uka_project/screen/reserveInfo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'selectArea.dart';

class ReservationSelectDate extends StatefulWidget {
  final int userId; // Declare userId as an instance variable
  final int storeId;

  const ReservationSelectDate({Key? key, required this.userId, required this.storeId})
      : super(key: key);

  @override
  State<ReservationSelectDate> createState() => _ReservationSelectDateState();
}

class _ReservationSelectDateState extends State<ReservationSelectDate> {
  DateTime _selectedDate = DateTime.now();

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  bool _isSelectable(DateTime day) {
    return day.weekday == DateTime.monday || day.weekday == DateTime.wednesday;
  }

  bool _isSMon(DateTime day) {
    return day.weekday == DateTime.monday || day.weekday == DateTime.wednesday;
  }

  String selectedValue = 'ตุลาคม 2566'; // Initial selected value

  Color button1Color = Color(0xFF435334); // Initial color for button 1
  Color button2Color = Color(0xFF9EB384); // Initial color for button 2
  void changeButtonColors(String t) {
    setState(() {
      if (t == "food") {
        Color button1Color = Color(0xFF435334); // Initial color for button 1
        Color button2Color = Color(0xFF9EB384);
      } else if (t == "clothe") {
        button1Color = Color(0xFF9EB384);
        button2Color = Color(0xFF435334);
      }
    });
  }

  String type = "food";

  @override
  Widget build(BuildContext context) {
    bool p = false;
    bool _isSelectable(DateTime day) {
      return true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เลือกวันที่ต้องการจอง',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10.0), // Set the border radius
                  color: Color.fromARGB(
                      255, 255, 255, 255), // Set the background color
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      TableCalendar(
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
                        selectedDayPredicate: (date) {
                          return isSameDay(date, _selectedDate);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          // Change the colors of both buttons when a third button is clicked
                          type = "food";
                          button2Color = Color(0xFF9EB384);
                          button1Color = Color(0xFF435334);
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: button1Color),
                      child: Text(
                        'ของกิน',
                        style: TextStyle(
                            fontFamily: 'Baijamjuree',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFAF1E4)),
                      ),
                    ),
                    SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          // Change the colors of both buttons when a third button is clicked
                          type = "clothe";
                          button1Color = Color(0xFF9EB384);
                          button2Color = Color(0xFF435334);
                        });
                      },
                      style: ElevatedButton.styleFrom(primary: button2Color),
                      child: Text(
                        'ของใช้',
                        style: TextStyle(
                            fontFamily: 'Baijamjuree',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFAF1E4)),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Align contents at the top
        crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ประเภท : $type',
                    style: TextStyle(
                      fontFamily: 'Baijamjuree',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'วันที่เลือก : ${_selectedDate.toLocal()}',
                    style: TextStyle(
                      fontFamily: 'Baijamjuree',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF435334), // Set the background color
                  borderRadius:
                      BorderRadius.circular(20.0), // Set the border radius
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SelectAreaPage(
                            userId: widget.userId, type:type,startDate:_selectedDate.toLocal(),endDate:_selectedDate.toLocal(),storetype:"Day",month:"",storeId: widget.storeId
                          ); // Replace with the name of the screen you want to navigate to
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(
                        0xFF435334), // Set the button's background color to green
                    onPrimary: Colors.white, // Set the text color to white
                  ),
                  child: Text(
                    "จอง",
                    style: TextStyle(
                        fontFamily: 'Baijamjuree',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFAF1E4)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
