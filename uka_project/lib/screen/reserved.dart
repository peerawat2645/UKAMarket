import 'package:flutter/material.dart';
import 'package:uka_project/screen/editReserve.dart';
import 'package:uka_project/screen/selectArea.dart';
import 'package:uka_project/screen/selectDate.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select store page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                
        color: const Color(0xFF9EB384), // Blue background color
        margin: EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text('ชื่อร้าน : ', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
            trailing: 
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditReservation()),
                      );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        // Handle delete button pressed
                      },
                    ),
                  ],
                ),
            subtitle: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width , 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('เบอร์โทร : ', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                        Text('ประเภทร้านค้า : ', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                        Text('รายละเอียดร้านค้า : ', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400)),
                      ],
                  
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10,
                        width: MediaQuery.of(context).size.width*0.3 , 
                      )
                      ,
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
                        child: Text("จอง",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                    ],
                  )
                ],
              ),
            ),
            
          ),
        )),
        
            ],
          ),
        ),
      ),
    );
  }
}