import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    Widget _buildAppBar(String text){
      return AppBar(
        title: Text('$text', style: TextStyle(
          fontSize: 21
        ),),
      );
    }
    return Scaffold(
      // appBar: _buildAppBar('text'),
    );
  }
}


