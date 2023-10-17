import 'package:flutter/material.dart';
import 'package:uka_project/screen/navbar.dart';
import 'package:uka_project/screen/reserve.dart';
import 'package:uka_project/ui/afterlogin/main_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF1E4),
      appBar: AppBar(
        title: Text(
          'จ่ายเงิน',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  width: 350,
                  child: Text('QR code สำหรับโอนเงิน',
                      style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0)),
        ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 350.0, // Set the width of the container
                height: 300.0, // Set the height of the container
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10.0), // Set the border radius
                  color: const Color.fromARGB(
                      255, 255, 255, 255), // Set the background color
                ),
                child: Image.network(
                  'https://qrcg-free-editor.qr-code-generator.com/main/assets/images/websiteQRCode_noFrame.png',
                  fit: BoxFit
                      .cover, // You can specify how the image fits within the container
                ),
                // Add child widgets or content here
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 186, 215, 159), // Set the background color
                  borderRadius:
                      BorderRadius.circular(20.0), // Set the border radius
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 186, 215, 159), // Set the button's background color to green
                    onPrimary: Colors.white, // Set the text color to white
                  ),
                  child: Text(
                    "Save QR code",
                    style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                  width: 350,
                  child: Text('แนบสลิปโอนเงิน',
                      style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0)))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 186, 215, 159), // Set the background color
                  borderRadius:
                      BorderRadius.circular(20.0), // Set the border radius
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 186, 215, 159), // Set the button's background color to green
                    onPrimary: Colors.white, // Set the text color to white
                  ),
                  child: Text(
                    "upload",
                    style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF435334), // Set the background color
                  borderRadius:
                      BorderRadius.circular(20.0), // Set the border radius
                ),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('ยืนยันการจองพื้นที่'),
                          content:
                              const Text('หากคุณกดยืนยันการจองแล้วคุณจะไม่สามารถยกเลิกการจองได้ในภายหลัง'),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                // Close the popup when this button is pressed
                                Navigator.of(context).pop();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(
                        0xFF435334),
                              ),
                              child: const Text(
                                'ยืนยันการจอง',
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ],
                        );
                      },
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
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 255, 255, 255)),
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
