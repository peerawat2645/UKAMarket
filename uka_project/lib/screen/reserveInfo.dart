import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uka_project/screen/payment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ReservationInfo extends StatefulWidget {
  const ReservationInfo({super.key});

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

  DateTime startDate = DateTime(2023, 10, 2);
  DateTime endDate = DateTime(2023, 10, 16);

  bool _isSelectable(DateTime day) {
    return day.weekday == DateTime.monday || day.weekday == DateTime.wednesday;
  }

  bool _isSMon(DateTime day) {
    return day.isAfter(startDate) &&
        day.isBefore(endDate) &&
        (day.weekday == DateTime.monday || day.weekday == DateTime.wednesday);
  }

  Widget build(BuildContext context) {
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
                    padding: const EdgeInsets.all(8.0),
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
                        Text(
                          'Selected Date: ${_selectedDate.toLocal()}',
                          style: TextStyle(fontSize: 18),
                        ),
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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ตำแหน่งร้าน : ',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF435334),)
                          ),
                          Text(
                            'รายละเอียดเจ้าของร้าน : ',
                            style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF435334),)
                          ),
                          Text(
                            'ประเภทการจอง : ',
                            style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF435334),)
                          ),
                          Text(
                            'หมวดหมู่ร้านค้า : ',
                            style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF435334),)
                          ),
                          Text(
                            'วันที่จอง : ',
                            style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF435334),)
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
                          borderRadius: BorderRadius.circular(
                              20.0), // Set the border radius
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return PaymentPage(); // Replace with the name of the screen you want to navigate to
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
                          child: Text(
                            "จอง",
                            style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(255, 255, 255, 255),)
                          ),
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
