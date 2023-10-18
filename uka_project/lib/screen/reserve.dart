import 'package:flutter/material.dart';
import 'package:uka_project/screen/notReserved.dart';
import 'package:uka_project/screen/reserved.dart';

class ReservationCheck extends StatefulWidget {

  final int userId; // Declare userId as an instance variable

  const ReservationCheck({Key? key, required this.userId}) : super(key: key);

  @override
  State<ReservationCheck> createState() => _ReservationCheckState();
}

class _ReservationCheckState extends State<ReservationCheck> {
  @override
  Widget build(BuildContext context) {
    bool p =true;
    if(p){
      return ReservationPage(userId: widget.userId,);
    }
    else{
      return NotReserve(userId: widget.userId,);
    }
  }
}