import 'package:flutter/material.dart';
import 'package:uka_project/screen/home2.dart';
import 'package:uka_project/ui/afterlogin/main_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePage extends StatefulWidget {
    final int userId; // Declare userId as an instance variable

  const HomePage({Key? key, required this.userId}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool p = true;
    return Scaffold(
      backgroundColor: Color(0xFFFAF1E4),
      appBar: AppBar(
        title: Text(
          'กินอะไรดี?',
          style: TextStyle(
              fontFamily: 'Baijamjuree',
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFAF1E4)),
        ),
        backgroundColor: Color(0xFF435334),
      ),
      body: Container(
          height:700,
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFAF1E4), // Background color
            borderRadius: BorderRadius.circular(40), // Border radius
          ),
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
                          onPressed: () {
                            Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage(userId: widget.userId,)),
      );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(
                                0xFF9EB384), // Set the button's background color to green
                            onPrimary:
                                Colors.white, // Set the text color to white
                          ),
                          child: Text("ของใช้",style: TextStyle(
                              fontFamily: 'Baijamjuree',
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: ElevatedButton(
                          onPressed: () {
                            
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(
                                0xFF435334),  // Set the button's background color to green
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
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width:
                          MediaQuery.of(context).size.width, // 50% width
                      height: 500, // Adjust the height as needed
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Column(
                                    children: [
                                      //lock0
                                      Row(
                                        children: [
                                          //lock00
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
                                          //lock01
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
                                          //lock02
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
                                          //lock03
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
                                          //lock04
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
                                          //lock05
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
                                          //lock06
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
                                          //lock07
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
                                          //lock10
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
                                          //lock11
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
                                          //lock12
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
                                          //lock13
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
                                          //lock14
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
                                          //lock15
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
                                          //lock16
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
                                          //lock17
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
                                          //lock20
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
                                          //lock21
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
                                          //lock22
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
                                          //lock23
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
                                          //lock24
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
                                          //lock25
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
                                          //lock26
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
                                          //lock27
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
                                          //lock30
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
                                          //lock31
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
                                          //lock32
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
                                          //lock33
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
                                          //lock34
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
                                          //lock35
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
                                          //lock36
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
                                          //lock37
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
                                          //lock40
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
                                          //lock41
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
                                          //lock42
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
                                          //lock43
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
                                          //lock44
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
                                          //lock45
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
                                          //lock46
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
                                          //lock47
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
                                          //lock50
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
                                          //lock51
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
                                          //lock52
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
                                          //lock53
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
                                          //lock54
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
                                          //lock55
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
                                          //lock56
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
                                          //lock57
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
                                          //lock60
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
                                          //lock61
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
                                          //lock62
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
                                          //lock63
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
                                          //lock64
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
                                          //lock65
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
                                          //lock66
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
                                          //lock67
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
                                      SizedBox(
                                        width: 50,
                                        height:15,
                                      ),
                                      //lock7
                                      Row(
                                        children: [
                                          //lock70
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
                                          //lock71
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
                                          //lock72
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
                                          //lock73
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
                                          //lock74
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
                                          //lock75
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
                                          //lock76
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
                                          //lock77
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
                                ),
                                //carlock
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Center the contents vertically
            crossAxisAlignment: CrossAxisAlignment.center, // Center the contents horizontally
                                  children: [
                                    //lockcar00
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
                                        //lockcar01
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
                                        //lockcar02
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
                                        //lockcar03
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
                            )),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
