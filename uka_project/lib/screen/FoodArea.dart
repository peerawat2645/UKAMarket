import 'package:flutter/material.dart';
import 'package:uka_project/screen/selectDayorMonth.dart';

import 'reserveInfo.dart';
import 'selectDate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class FoodAreaPage extends StatefulWidget {
  final int userId; // Declare userId as an instance variable

  const FoodAreaPage({Key? key, required this.userId}) : super(key: key);

  @override
  State<FoodAreaPage> createState() => _FoodAreaPageState();
}

class _FoodAreaPageState extends State<FoodAreaPage> {
  @override
  Widget build(BuildContext context) {
    bool p = true;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'เลือกพื้นที่การจอง',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFAF1E4), // Background color
            borderRadius: BorderRadius.circular(40), // Border radius
          ),
          child: Container(
          height:700,
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Color(
                                  0xFF435334), // Set the button's background color to green
                              onPrimary:
                                  Colors.white, // Set the text color to white
                            ),
                            child: Text("ของกิน",style: TextStyle(
                              fontFamily: 'Baijamjuree',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        width:
                            MediaQuery.of(context).size.width * 0.95, // 50% width
                        height: 500, // Adjust the height as needed
                        decoration: BoxDecoration(
                          color: const Color(0xFF9EB384), // Background color
                          borderRadius:
                              BorderRadius.circular(10), // Border radius
                        ),
                        child: Center(
                          child: InteractiveViewer(
                              maxScale: 5.0,
                              minScale: 0.01,
                              boundaryMargin: const EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:6),
                                    child: Column(
                                      children: [
                                        //lock0
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title:
                                                                        const Text(
                                                                      'ร้านค้าเลขที่ : 00',
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Baijamjuree',
                                                                          fontSize:
                                                                              25,
                                                                          fontWeight:
                                                                              FontWeight
                                                                                  .w600),
                                                                    ),
                                                                    content:
                                                                        Container(
                                                                      height: 90,
                                                                      child: Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        children: [
                                                                          const Text(
                                                                            'ประเภทร้านค้า : ของกิน',
                                                                            style: TextStyle(
                                                                                fontFamily:
                                                                                    'Baijamjuree',
                                                                                fontSize:
                                                                                    20,
                                                                                fontWeight:
                                                                                    FontWeight.w400),
                                                                          ),
                                                                          Text(
                                                                            'ราคารายวัน : 100 บาท',
                                                                            style: TextStyle(
                                                                                fontFamily:
                                                                                    'Baijamjuree',
                                                                                fontSize:
                                                                                    20,
                                                                                fontWeight:
                                                                                    FontWeight.w400),
                                                                          ),
                                                                          Text(
                                                                            'ราคารายเดือน : 800 บาท',
                                                                            style: TextStyle(
                                                                                fontFamily:
                                                                                    'Baijamjuree',
                                                                                fontSize:
                                                                                    20,
                                                                                fontWeight:
                                                                                    FontWeight.w400),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Handle "Reserve" button press
                                                                          // You can add your reservation logic here
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                          Navigator
                                                                              .push(
                                                                            context,
                                                                            MaterialPageRoute(
                                                                                builder: (context) =>
                                                                                    ReservationInfo(userId: widget.userId,)),
                                                                          ); // Close the dialog
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .add, // Replace with your custom "Reserve" icon
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255), // Custom color
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'จอง',
                                                                          style:
                                                                              TextStyle(
                                                                            color: Color.fromARGB(
                                                                                255,
                                                                                255,
                                                                                255,
                                                                                255),
                                                                          ),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: Color.fromARGB(
                                                                              255,
                                                                              14,
                                                                              93,
                                                                              27), // Custom color
                                                                        ),
                                                                      ),
                                                                      IconButton(
                                                                        icon: Icon(Icons
                                                                            .close),
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        //lock1
                                        SizedBox(
                                          width: 50,
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        //lock2
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        //lock3
                                        SizedBox(
                                          width: 50,
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        //lock4
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        //lock5
                                        SizedBox(
                                          width: 50,
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        //lock6
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        //lock7
                                        SizedBox(
                                          width: 50,
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(2.0),
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    width: 35.0,
                                                    height: 35.0,
                                                    child: ElevatedButton(
                                                      onPressed: p
                                                          ? () {
                                                              // Show the popup when the button is pressed
                                                              showDialog(
                                                                context: context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    title: const Text(
                                                                        'Popup Title'),
                                                                    content: const Text(
                                                                        'This is the content of the popup.'),
                                                                    actions: <Widget>[
                                                                      ElevatedButton
                                                                          .icon(
                                                                        onPressed:
                                                                            () {
                                                                          // Add your button action here
                                                                        },
                                                                        icon:
                                                                            const Icon(
                                                                          Icons
                                                                              .favorite,
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              255,
                                                                              156,
                                                                              212),
                                                                        ),
                                                                        label:
                                                                            const Text(
                                                                          'Like',
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.black38),
                                                                        ),
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              255,
                                                                              255),
                                                                        ),
                                                                      ),
                                                                      ElevatedButton(
                                                                        onPressed:
                                                                            () {
                                                                          // Close the popup when this button is pressed
                                                                          Navigator.of(
                                                                                  context)
                                                                              .pop();
                                                                        },
                                                                        style: ElevatedButton
                                                                            .styleFrom(
                                                                          primary: const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              255,
                                                                              66,
                                                                              66),
                                                                        ),
                                                                        child: const Text(
                                                                            'Close'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            }
                                                          : null,
                                                      style:
                                                          ElevatedButton.styleFrom(
                                                        primary:
                                                            const Color.fromARGB(
                                                                255, 15, 92, 25),
                                                        // Button background color
                                                      ),
                                                      child: const Text(''),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 35,
                                                    child: FittedBox(
                                                      fit: BoxFit
                                                          .scaleDown, // Scale the text to fit within the container
                                                      alignment: Alignment.center,
                                                      child: Text(
                                                        'store 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize:
                                                              18.0, // Adjust the font size as needed
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  //carlock
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween, // Center the contents vertically
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center, // Center the contents horizontally
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 35.0,
                                              height: 100.0,
                                              child: ElevatedButton(
                                                onPressed: p
                                                    ? () {
                                                        // Show the popup when the button is pressed
                                                        showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton
                                                                    .icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons
                                                                        .favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label:
                                                                      const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                  ),
                                                                ),
                                                                ElevatedButton(
                                                                  onPressed: () {
                                                                    // Close the popup when this button is pressed
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            255,
                                                                            66,
                                                                            66),
                                                                  ),
                                                                  child:
                                                                      const Text(
                                                                          'Close'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    : null,
                                                style: ElevatedButton.styleFrom(
                                                  primary: const Color.fromARGB(
                                                      255, 15, 92, 25),
                                                  // Button background color
                                                ),
                                                child: const Text(''),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 35,
                                              child: FittedBox(
                                                fit: BoxFit
                                                    .scaleDown, // Scale the text to fit within the container
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'store 1',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:
                                                        18.0, // Adjust the font size as needed
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 35.0,
                                              height: 100.0,
                                              child: ElevatedButton(
                                                onPressed: p
                                                    ? () {
                                                        // Show the popup when the button is pressed
                                                        showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton
                                                                    .icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons
                                                                        .favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label:
                                                                      const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                  ),
                                                                ),
                                                                ElevatedButton(
                                                                  onPressed: () {
                                                                    // Close the popup when this button is pressed
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            255,
                                                                            66,
                                                                            66),
                                                                  ),
                                                                  child:
                                                                      const Text(
                                                                          'Close'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    : null,
                                                style: ElevatedButton.styleFrom(
                                                  primary: const Color.fromARGB(
                                                      255, 15, 92, 25),
                                                  // Button background color
                                                ),
                                                child: const Text(''),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 35,
                                              child: FittedBox(
                                                fit: BoxFit
                                                    .scaleDown, // Scale the text to fit within the container
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'store 1',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:
                                                        18.0, // Adjust the font size as needed
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 35.0,
                                              height: 100.0,
                                              child: ElevatedButton(
                                                onPressed: p
                                                    ? () {
                                                        // Show the popup when the button is pressed
                                                        showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton
                                                                    .icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons
                                                                        .favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label:
                                                                      const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                  ),
                                                                ),
                                                                ElevatedButton(
                                                                  onPressed: () {
                                                                    // Close the popup when this button is pressed
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            255,
                                                                            66,
                                                                            66),
                                                                  ),
                                                                  child:
                                                                      const Text(
                                                                          'Close'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    : null,
                                                style: ElevatedButton.styleFrom(
                                                  primary: const Color.fromARGB(
                                                      255, 15, 92, 25),
                                                  // Button background color
                                                ),
                                                child: const Text(''),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 35,
                                              child: FittedBox(
                                                fit: BoxFit
                                                    .scaleDown, // Scale the text to fit within the container
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'store 1',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:
                                                        18.0, // Adjust the font size as needed
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              width: 35.0,
                                              height: 100.0,
                                              child: ElevatedButton(
                                                onPressed: p
                                                    ? () {
                                                        // Show the popup when the button is pressed
                                                        showDialog(
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton
                                                                    .icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon:
                                                                      const Icon(
                                                                    Icons
                                                                        .favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label:
                                                                      const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            255,
                                                                            255,
                                                                            255),
                                                                  ),
                                                                ),
                                                                ElevatedButton(
                                                                  onPressed: () {
                                                                    // Close the popup when this button is pressed
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  style: ElevatedButton
                                                                      .styleFrom(
                                                                    primary:
                                                                        const Color
                                                                            .fromARGB(
                                                                            255,
                                                                            255,
                                                                            66,
                                                                            66),
                                                                  ),
                                                                  child:
                                                                      const Text(
                                                                          'Close'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      }
                                                    : null,
                                                style: ElevatedButton.styleFrom(
                                                  primary: const Color.fromARGB(
                                                      255, 15, 92, 25),
                                                  // Button background color
                                                ),
                                                child: const Text(''),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 35,
                                              child: FittedBox(
                                                fit: BoxFit
                                                    .scaleDown, // Scale the text to fit within the container
                                                alignment: Alignment.center,
                                                child: Text(
                                                  'store 1',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:
                                                        18.0, // Adjust the font size as needed
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
