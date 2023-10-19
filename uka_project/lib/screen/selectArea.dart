import 'package:flutter/material.dart';
import 'package:uka_project/screen/FoodArea.dart';
import 'package:uka_project/screen/ThingArea.dart';

class SelectAreaPage extends StatefulWidget {
        final int userId; // Declare userId as an instance variable
        final String type;
        final DateTime startDate;
        final String storetype;
        final DateTime endDate;
        final String month;
        final int storeId;

  const SelectAreaPage({Key? key, required this.userId,required this.type,required this.startDate,required this.storetype,required this.endDate,required this.month,required this.storeId}) : super(key: key);

  @override
  State<SelectAreaPage> createState() => _SelectAreaPageState();
}

class _SelectAreaPageState extends State<SelectAreaPage> {
  @override
  Widget build(BuildContext context) {
    if(widget.type=="food"){
      return FoodAreaPage(userId: widget.userId, type:widget.type,startDate:widget.startDate,storetype:widget.storetype,endDate:widget.endDate,month: widget.month,storeId: widget.storeId,);
    }
    else if(widget.type=="clothe"){
      return ThingAreaPage(userId: widget.userId, type:widget.type,startDate:widget.startDate,storetype:widget.storetype,endDate:widget.endDate,month: widget.month,storeId: widget.storeId,);
    }
    else{
      return ThingAreaPage(userId: widget.userId, type:widget.type,startDate:widget.startDate,storetype:widget.storetype,endDate:widget.endDate,month: widget.month,storeId: widget.storeId,);
    }
  }
}