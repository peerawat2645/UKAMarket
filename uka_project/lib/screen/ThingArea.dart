import 'package:flutter/material.dart';
import 'package:uka_project/screen/selectDayorMonth.dart';

import 'selectDate.dart';

class ThingAreaPage extends StatefulWidget {
  const ThingAreaPage({super.key});

  @override
  State<ThingAreaPage> createState() => _ThingAreaPageState();
}

class _ThingAreaPageState extends State<ThingAreaPage> {
  @override
  Widget build(BuildContext context) {
    bool p = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Food Area Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFAF1E4), // Background color
          borderRadius: BorderRadius.circular(40), // Border radius
        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: ElevatedButton(
                        onPressed: () {
                          
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xFF435334), // Set the button's background color to green
                          onPrimary:
                              Colors.white, // Set the text color to white
                        ),
                        child: Text("ของใช้"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width:
                        MediaQuery.of(context).size.width * 0.95, // 50% width
                    height: 510, // Adjust the height as needed
                    decoration: BoxDecoration(
                      color: const Color(0xFF9EB384), // Background color
                      borderRadius: BorderRadius.circular(10), // Border radius
                    ),
                    child: Center(
                      child: InteractiveViewer(
                          maxScale: 5.0,
                          minScale: 0.01,
                          boundaryMargin: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Center the contents vertically
          crossAxisAlignment: CrossAxisAlignment.center, // Center the contents horizontally
                                children: [
                                  Padding(
                                        padding: const EdgeInsets.all(4.0),
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
                                                                        'ประเภทร้านค้า : ของใช้',
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
                                                                                ReservationSelectDate()),
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                              ),
                              Column(
                                children: [
                                  //lock0
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                  ),
                                  //lock1
                                  SizedBox(
                                    width: 50,
                                    height:15,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                  ),
                                  //lock2
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                  ),
                                  //lock3
                                  SizedBox(
                                    width: 50,
                                    height:15,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                  ),
                                  //lock4
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                  ),
                                  //lock5
                                  SizedBox(
                                    width: 50,
                                    height:15,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                  ),
                                  //lock6
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                  ),
                                  //lock7
                                  SizedBox(
                                    width: 50,
                                    height:15,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                                        padding: const EdgeInsets.all(4.0),
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
                                                          builder: (BuildContext
                                                              context) {
                                                            return AlertDialog(
                                                              title: const Text(
                                                                  'Popup Title'),
                                                              content: const Text(
                                                                  'This is the content of the popup.'),
                                                              actions: <Widget>[
                                                                ElevatedButton.icon(
                                                                  onPressed: () {
                                                                    // Add your button action here
                                                                  },
                                                                  icon: const Icon(
                                                                    Icons.favorite,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            255,
                                                                            156,
                                                                            212),
                                                                  ),
                                                                  label: const Text(
                                                                    'Like',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black38),
                                                                  ),
                                                                  style:
                                                                      ElevatedButton
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
                                                                  style:
                                                                      ElevatedButton
                                                                          .styleFrom(
                                                                    primary:
                                                                        const Color
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
                              ),
                              
                              
                            ],
                          )),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}