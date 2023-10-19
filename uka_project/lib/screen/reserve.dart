import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:uka_project/screen/notReserved.dart';
import 'package:uka_project/screen/reserved.dart';
import '../api/baseclient.dart';

class ReservationCheck extends StatefulWidget {
  final int userId;

  const ReservationCheck({Key? key, required this.userId}) : super(key: key);

  @override
  State<ReservationCheck> createState() => _ReservationCheckState();
}

class _ReservationCheckState extends State<ReservationCheck> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<dynamic>(
      future: BaseClient().getUserStore('/stores/userId/${widget.userId}'),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While waiting for the future to complete, you can show a loading indicator.
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // Handle error state
          return Text('Error: ${snapshot.error}');
        } else {
          Map<String, dynamic> jsonMap = json.decode(snapshot.data.toString());
          List<dynamic> body = jsonMap['body'];
          bool p = body.isNotEmpty;
          print("p");
          print(p);
          if (p) {
            return ReservationPage(
              userId: widget.userId,
            );
          } else {
            return NotReserve(
              userId: widget.userId,
            );
          }
        }
      },
    );
  }
}
