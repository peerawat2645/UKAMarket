import 'package:flutter/material.dart';
import 'package:uka_project/screen/FoodArea.dart';
import 'package:uka_project/screen/ThingArea.dart';

class SelectAreaPage extends StatefulWidget {
        final int userId; // Declare userId as an instance variable

  const SelectAreaPage({Key? key, required this.userId}) : super(key: key);

  @override
  State<SelectAreaPage> createState() => _SelectAreaPageState();
}

class _SelectAreaPageState extends State<SelectAreaPage> {
  @override
  Widget build(BuildContext context) {
    bool p =true;
    if(p){
      return FoodAreaPage(userId: widget.userId,);
    }
    else{
      return ThingAreaPage(userId: widget.userId,);
    }
  }
}