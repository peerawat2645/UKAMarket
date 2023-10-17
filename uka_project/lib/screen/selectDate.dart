import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uka_project/screen/reserveInfo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'selectArea.dart';

class ReservationSelectDate extends StatefulWidget {
  const ReservationSelectDate({super.key});

  @override
  State<ReservationSelectDate> createState() => _ReservationSelectDateState();
}

class _ReservationSelectDateState extends State<ReservationSelectDate> {
  DateTime _selectedDate= DateTime.now();

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

  // Define a list of items for the dropdown
  List<String> items = [
    'ตุลาคม 2566',
    'พฤศจิกายน 2566',
    'ธันวาคม 2566',
    'มกราคม 2567',
  ];
  @override
  Widget build(BuildContext context) {
    bool p =false;
    bool _isSelectable(DateTime day) {
    return true;
  }
    if(p){
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
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              
              
              decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0), // Set the border radius
    color: Color.fromARGB(255, 255, 255, 255),  // Set the background color
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
                startingDayOfWeek: StartingDayOfWeek.sunday, focusedDay: DateTime.now(), firstDay: DateTime(DateTime.now().year - 1), lastDay: DateTime(DateTime.now().year + 1),
                selectedDayPredicate: (date) {
                          return isSameDay(date, _selectedDate);
                        },
                          ),
                          Text(
                'Selected Date: ${_selectedDate.toLocal()}',
                style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 100,
                      height: 50,
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
                                return SelectAreaPage(); // Replace with the name of the screen you want to navigate to
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF435334),// Set the button's background color to green
                          onPrimary:
                              Colors.white, // Set the text color to white
                        ),
                        child: Text("จอง",
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),),
                      ),
                    ),
                  ),
        ],
      ),),
      );
    }
    else{
      return Scaffold(
        appBar: AppBar(
        title: Text(
          'เลือกเดือนที่ต้องการจอง',
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
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: DropdownButton<String>(
                          value: selectedValue,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0,
                                  0)), // Set text style for the selected item
                          underline: Container(
                            // Customize the underline (divider) of the dropdown
                            height: 2,
                            color: Color(0xFF435334),
                          ),
                          items: items.map((String item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 150,
                      height: 50,
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
                                return SelectAreaPage(); // Replace with the name of the screen you want to navigate to
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF435334),// Set the button's background color to green
                          onPrimary:
                              Colors.white, // Set the text color to white
                        ),
                        child: Text("จอง",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
        ],
      ),
    )
      );
    }
  }
}