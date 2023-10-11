import 'package:flutter/material.dart';


class FavStore extends StatefulWidget {
  @override
  State<FavStore> createState() => _FavStroe();
}

class _FavStroe extends State<FavStore>{
  final _stroe = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Text('data'),
    );
  }
}