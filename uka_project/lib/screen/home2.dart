import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uka_project/screen/home.dart';
import 'package:uka_project/ui/afterlogin/main_page2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../api/baseclient.dart';

class Home2Page extends StatefulWidget {
  final int userId; // Declare userId as an instance variable

  const Home2Page({Key? key, required this.userId}) : super(key: key);

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
        decoration: BoxDecoration(
          color: const Color(0xFFFAF1E4), // Background color
          // Border radius
        ),
        child: Container(
          height: 700,
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
                        child: Text(
                          "ของใช้",
                          style: TextStyle(
                              fontFamily: 'Baijamjuree',
                              fontSize: 18.sp,
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
                                builder: (context) => MainPage2(
                                      userId: widget.userId,
                                    )),
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
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 370, // 60% width
                    height: 380, // Adjust the height as needed
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [ButtonGridCol(userId: widget.userId,), ButtonGrid(userId: widget.userId,)],
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

class ButtonGrid extends StatelessWidget {
  final int userId; // Declare userId as an instance variable

  const ButtonGrid({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> gridItems = [];
    bool isLiked = false;
    String name = "";
    String description = "";
    String phoneNumber = "";

    for (int i = 0; i < 8; i++) {
      gridItems.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(8, (j) {
          return FutureBuilder(
            future: BaseClient().getStoreDescription('/reserv/row/$j/col/$i'),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> jsonMap = json.decode(snapshot.data);
                if (jsonMap['body'] == null) {
                  // If 'body' is null, disable the button
                  return GestureDetector(
                    onTap: () {
                      // Do nothing or show an error message
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFFFAF1E4),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      margin: EdgeInsets.all(2.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'ว่าง',
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color.fromARGB(141, 62, 62, 62),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  // 'body' is not null, enable the button
                  return GestureDetector(
                    onTap: () {
                      // Handle button tap here
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                            builder: (context, setState) {
                              return AlertDialog(
                                actions: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      isLiked
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: isLiked ? Colors.red : Colors.grey,
                                    ),
                                    onPressed: () {
                                      String name = jsonMap['body']['name'];
                                      print(name);
                                      Future<dynamic> userFuture =
                                          BaseClient().getStoreTd('/stores/storeName/${jsonMap['body']['name']}');
                                      // Convert the result of the future to an int
                                      userFuture.then((dynamic userData) {
                                        Map<String, dynamic> jsonMap =
                                            json.decode(userData);
                                        int storeId = jsonMap['body'];
                                        BaseClient()
                                          .likeAndUnlike('/like/$storeId/userId/$userId');
                                      });
                                      
                                      setState(() {
                                        // Toggle the like status
                                        isLiked = !isLiked;
                                      });
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.close),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                                content: SizedBox(
                                  height: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        isLiked ? 'คุณถูกใจร้านนี้!' : '',
                                        style: TextStyle(
                                          fontFamily: 'Baijamjuree',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "ชื่อร้าน : ${jsonMap['body']['name']}",
                                        style: TextStyle(
                                          fontFamily: 'Baijamjuree',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "รายละเอียดร้านค้า : ",
                                            style: TextStyle(
                                              fontFamily: 'Baijamjuree',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            child: Text(
                                              "${jsonMap['body']['description']}",
                                              style: TextStyle(
                                                fontFamily: 'Baijamjuree',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "เบอร์โทร : ${jsonMap['body']['phoneNumber']}",
                                        style: TextStyle(
                                          fontFamily: 'Baijamjuree',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 15, 92, 25),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      margin: EdgeInsets.all(2.0),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              '${jsonMap['body']['name']}',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }
              } else {
                // Loading or waiting for the future to complete
                return CircularProgressIndicator();
              }
            },
          );
        }),
      ));

      // Insert a SizedBox with a height of 10 between even rows
      if (i % 2 == 0 && i < 7) {
        gridItems.add(SizedBox(height: 10));
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
      crossAxisAlignment: CrossAxisAlignment.center,
      children: gridItems,
    );
  }
}

class ButtonGridCol extends StatelessWidget {
  final int userId; // Declare userId as an instance variable

  const ButtonGridCol({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> gridItems = [];
    bool isLiked = false;
    String name = "";
    String description = "";
    String phoneNumber = "";
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(4, (j) {
        return FutureBuilder(
          future: BaseClient().getStoreDescription('/reserv/row/$j/col/16'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> jsonMap = json.decode(snapshot.data);
              if (jsonMap['body'] == null) {
                // If 'body' is null, disable the button
                return GestureDetector(
                    onTap: () {
                      // Do nothing or show an error message
                    },
                    child: Container(
                      width: 35,
                      height: 75,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFFAF1E4),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'ว่าง',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(159, 46, 43, 43),
                            ),
                          ),
                        ),
                      ),
                    ));
              } else {
                // 'body' is not null, enable the button
                return GestureDetector(
                    onTap: () {
                      // Handle button tap here
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                            builder: (context, setState) {
                              return AlertDialog(
                                actions: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      isLiked
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: isLiked ? Colors.red : Colors.grey,
                                    ),
                                    onPressed: () {
                                      String name = jsonMap['body']['name'];
                                      print(name);
                                      Future<dynamic> userFuture =
                                          BaseClient().getStoreTd('/stores/storeName/${jsonMap['body']['name']}');
                                      // Convert the result of the future to an int
                                      userFuture.then((dynamic userData) {
                                        Map<String, dynamic> jsonMap =
                                            json.decode(userData);
                                        int storeId = jsonMap['body'];
                                        BaseClient()
                                          .likeAndUnlike('/like/$storeId/userId/$userId');
                                      });
                                      setState(() {
                                        // Toggle the like status
                                        isLiked = !isLiked;
                                      });
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.close),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                                content: SizedBox(
                                  height: 150,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        isLiked ? 'คุณถูกใจร้านนี้!' : '',
                                        style: TextStyle(
                                          fontFamily: 'Baijamjuree',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "ชื่อร้าน : ${jsonMap['body']['name']}",
                                        style: TextStyle(
                                          fontFamily: 'Baijamjuree',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "รายละเอียดร้านค้า : ",
                                            style: TextStyle(
                                              fontFamily: 'Baijamjuree',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Container(
                                            width: 100,
                                            child: Text(
                                              "${jsonMap['body']['description']}",
                                              style: TextStyle(
                                                fontFamily: 'Baijamjuree',
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "เบอร์โทร : ${jsonMap['body']['phoneNumber']}",
                                        style: TextStyle(
                                          fontFamily: 'Baijamjuree',
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 35,
                      height: 75,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 15, 92, 25),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            '${jsonMap['body']['name']}',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ));
              }
            } else {
              // Loading or waiting for the future to complete
              return CircularProgressIndicator();
            }
          },
        );
      }),
    );
  }
}
