import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uka_project/screen/reserveInfo.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'selectArea.dart';

class ReservationSelectMonth extends StatefulWidget {
  final int userId; // Declare userId as an instance variable

  const ReservationSelectMonth({Key? key, required this.userId})
      : super(key: key);

  @override
  State<ReservationSelectMonth> createState() => _ReservationSelectMonthState();
}

class _ReservationSelectMonthState extends State<ReservationSelectMonth> {
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

  // Define a list of items for the dropdown
  List<String> items = [
    'ตุลาคม 2566',
    'พฤศจิกายน 2566',
    'ธันวาคม 2566',
    'มกราคม 2567',
  ];
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
                        padding: const EdgeInsets.all(8),
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
                            color: Color.fromARGB(255, 255, 255, 255)),
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
                    'เดือนที่เลือก : ${selectedValue}',
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
                  width: 150,
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
                              userId: widget.userId,
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
