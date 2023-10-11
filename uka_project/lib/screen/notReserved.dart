import 'package:flutter/material.dart';
import 'package:uka_project/screen/regisReservation.dart';

class NotReserve extends StatefulWidget {
  const NotReserve({super.key});

  @override
  State<NotReserve> createState() => _NotReserveState();
}

class _NotReserveState extends State<NotReserve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Please Register Reservation'),
      ),
      body: Container(
        color: const Color(0xFF9EB384),
        child: Center(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width ,
                height: 540,
                child: SizedBox(
                        width: 200.0,
                        height: 200.0,
                        child: Image.asset(
                'assets/notre.png', // Replace with your image URL
                fit: BoxFit.cover, // Adjust the fit as needed
                        ),
                      ),
              ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end, // Center the contents vertically
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                      height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterReservation(),
              ),
            );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Set the background color to white
                      onPrimary: Colors.black, // Set the text color to black
                    ),
                    child: Text(
                      'ลงทะเบียนร้านค้า',
                      style: TextStyle(fontSize: 35.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}