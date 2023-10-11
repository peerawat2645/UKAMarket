import 'package:flutter/material.dart';
import 'package:uka_project/screen/FoodArea.dart';
import 'package:uka_project/screen/ThingArea.dart';

class SelectAreaPage extends StatefulWidget {
  const SelectAreaPage({super.key});

  @override
  State<SelectAreaPage> createState() => _SelectAreaPageState();
}

class _SelectAreaPageState extends State<SelectAreaPage> {
  @override
  Widget build(BuildContext context) {
    bool p =true;
    if(p){
      return const FoodAreaPage();
    }
    else{
      return const ThingAreaPage();
    }
  }
}