import 'package:flutter/material.dart';
import 'package:uka_project/screen/notReserved.dart';
import 'package:uka_project/screen/reserved.dart';

class ReservationCheck extends StatefulWidget {
  const ReservationCheck({super.key});

  @override
  State<ReservationCheck> createState() => _ReservationCheckState();
}

class _ReservationCheckState extends State<ReservationCheck> {
  @override
  Widget build(BuildContext context) {
    bool p =true;
    if(p){
      return const ReservationPage();
    }
    else{
      return const NotReserve();
    }
  }
}