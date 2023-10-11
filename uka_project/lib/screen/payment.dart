import 'package:flutter/material.dart';
import 'package:uka_project/screen/navbar.dart';
import 'package:uka_project/screen/reserve.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 231, 181),
      appBar: AppBar(
        title: const Text('Payment Page'),
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
                          fontSize: 28, fontWeight: FontWeight.w600))),
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
                  color: Color(0xFF435334), // Set the background color
                  borderRadius:
                      BorderRadius.circular(20.0), // Set the border radius
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(
                        0xFF435334), // Set the button's background color to green
                    onPrimary: Colors.white, // Set the text color to white
                  ),
                  child: Text(
                    "Save QR code",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                          fontSize: 28, fontWeight: FontWeight.w600))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF435334), // Set the background color
                  borderRadius:
                      BorderRadius.circular(20.0), // Set the border radius
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(
                        0xFF435334), // Set the button's background color to green
                    onPrimary: Colors.white, // Set the text color to white
                  ),
                  child: Text(
                    "upload",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
                          title: const Text('Popup Title'),
                          content:
                              const Text('This is the content of the popup.'),
                          actions: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                // Close the popup when this button is pressed
                                Navigator.of(context).pop();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NavBar()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 24, 107, 51),
                              ),
                              child: const Text(
                                'กลับหน้าหลัก',
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
