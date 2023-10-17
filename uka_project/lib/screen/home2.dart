import 'package:flutter/material.dart';
import 'package:uka_project/screen/home.dart';
import 'package:uka_project/ui/afterlogin/main_page2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Home2Page extends StatefulWidget {
  const Home2Page({super.key});

  @override
  State<Home2Page> createState() => _Home2PageState();
}

class _Home2PageState extends State<Home2Page> {
  @override
  Widget build(BuildContext context) {
    bool isLiked = false;
    bool p = true;
    bool q = false;
    return Scaffold(
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
        decoration: BoxDecoration(
          color: const Color(0xFFFAF1E4), // Background color
          // Border radius
        ),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        child: Text(
                          "ของใช้",
                          style: TextStyle(
                              fontFamily: 'Baijamjuree',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage2()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(
                              0xFF9EB384), // Set the button's background color to green
                          onPrimary:
                              Colors.white, // Set the text color to white
                        ),
                        child: Text(
                          "ของกิน",
                          style: TextStyle(
                              fontFamily: 'Baijamjuree',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
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
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, // Center the contents vertically
                                crossAxisAlignment: CrossAxisAlignment
                                    .center, // Center the contents horizontally
                                children: [
                                  //lockcar00
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
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return StatefulBuilder(
                                                          builder: (context,
                                                              setState) {
                                                            return AlertDialog(
                                                              actions: <Widget>[
                                                                IconButton(
                                                                  icon: Icon(
                                                                    isLiked
                                                                        ? Icons
                                                                            .favorite
                                                                        : Icons
                                                                            .favorite_border,
                                                                    color: isLiked
                                                                        ? Colors
                                                                            .red
                                                                        : Colors
                                                                            .grey,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {
                                                                      // Toggle the like status
                                                                      isLiked =
                                                                          !isLiked;
                                                                    });
                                                                  },
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
                                                              content: SizedBox(
                                                                height: 100,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center, // Aligns children to the start (top) of the column
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start, // Centers children along the horizontal axis
                                                                  children: [
                                                                    Text(
                                                                      isLiked
                                                                          ? 'คุณถูกใจร้านนี้!'
                                                                          : '',
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Baijamjuree',
                                                                          fontSize: 18
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                      "ชื่อร้าน : ไก่ย่างเฉลิมชัย",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Baijamjuree',
                                                                          fontSize: 15
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    ),
                                                                    Text(
                                                                      "วันนี้ : เปิด",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Baijamjuree',
                                                                          fontSize: 15
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    ),
                                                                    Text(
                                                                      "ครั้งถัดไป : วันพุธที่ 12/02/2566",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Baijamjuree',
                                                                          fontSize: 15
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          },
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
                                                        return StatefulBuilder(
                                                          builder: (context,
                                                              setState) {
                                                            return AlertDialog(
                                                              actions: <Widget>[
                                                                IconButton(
                                                                  icon: Icon(
                                                                    isLiked
                                                                        ? Icons
                                                                            .favorite
                                                                        : Icons
                                                                            .favorite_border,
                                                                    color: isLiked
                                                                        ? Colors
                                                                            .red
                                                                        : Colors
                                                                            .grey,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {
                                                                      // Toggle the like status
                                                                      isLiked =
                                                                          !isLiked;
                                                                    });
                                                                  },
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
                                                              content: SizedBox(
                                                                height: 100,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center, // Aligns children to the start (top) of the column
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start, // Centers children along the horizontal axis
                                                                  children: [
                                                                    Text(
                                                                      isLiked
                                                                          ? 'You liked this store!'
                                                                          : 'You have not liked this store',
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Baijamjuree',
                                                                          fontSize: 18
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w600),
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            10),
                                                                    Text(
                                                                      "ชื่อร้าน : ไก่ย่างเฉลิมชัย",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Baijamjuree',
                                                                          fontSize: 15
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    ),
                                                                    Text(
                                                                      "วันนี้ : เปิด",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Baijamjuree',
                                                                          fontSize: 15
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    ),
                                                                    Text(
                                                                      "ครั้งถัดไป : วันพุธที่ 12/02/2566",
                                                                      style: TextStyle(
                                                                          fontFamily:
                                                                              'Baijamjuree',
                                                                          fontSize: 15
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w400),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          },
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
                                  //lockcar03
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
                                      //locka00
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
                                      //locka01
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
                                      //locka02
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
                                      //locka03
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
                                      //locka04
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
                                      //locka05
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
                                      //locka06
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
                                      //locka07
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
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      //locka10
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
                                      //locka11
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
                                      //locka12
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
                                      //locka13
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
                                      //locka14
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
                                      //locka15
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
                                      //locka16
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
                                      //locka17
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
                                      //locka20
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
                                      //locka21
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
                                      //locka22
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
                                      //locka23
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
                                      //locka24
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
                                      //locka25
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
                                      //locka26
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
                                      //locka27
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
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      //locka20
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
                                      //locka31
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
                                      //locka32
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
                                      //locka33
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
                                      //locka34
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
                                      //locka35
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
                                      //locka36
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
                                      //locka37
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
                                      //locka31
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
                                      //locka41
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
                                      //locka42
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
                                      //locka43
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
                                      //locka44
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
                                      //locka45
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
                                      //locka46
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
                                      //locka47
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
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      //locka50
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
                                      //locka51
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
                                      //locka52
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
                                      //locka53
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
                                      //locka54
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
                                      //locka55
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
                                      //locka56
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
                                      //locka57
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
                                      //locka60
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
                                      //locka61
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
                                      //locka62
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
                                      //locka63
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
                                      //locka64
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
                                      //locka65
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
                                      //locka66
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
                                      //locka67
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
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      //locka70
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
                                      //locka71
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
                                      //locka72
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
                                      //locka73
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
                                      //locka74
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
                                      //locka75
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
                                      //locka76
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
                                      //locka77
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
