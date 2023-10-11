import 'package:flutter/material.dart';
import 'package:uka_project/screen/selectDate.dart';

class SelectDayOrMonthPage extends StatefulWidget {
  const SelectDayOrMonthPage({super.key});

  @override
  State<SelectDayOrMonthPage> createState() => _SelectDayOrMonthPageState();
}

class _SelectDayOrMonthPageState extends State<SelectDayOrMonthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF1E4),
      appBar: AppBar(
        title: const Text('Select Type of Reservation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 150,
                      height: 60,
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
                                return ReservationSelectDate(); // Replace with the name of the screen you want to navigate to
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF435334),// Set the button's background color to green
                          onPrimary:
                              Colors.white, // Set the text color to white
                        ),
                        child: Text("รายวัน",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 150,
                      height: 60,
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
                                return ReservationSelectDate(); // Replace with the name of the screen you want to navigate to
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF435334),// Set the button's background color to green
                          onPrimary:
                              Colors.white, // Set the text color to white
                        ),
                        child: Text("รายเดือน",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}