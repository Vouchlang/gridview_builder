import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Registration', style: TextStyle(color: Colors.indigo[900], fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 1,
      iconTheme: IconThemeData.fallback(),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.indigo[900],
          size: 15,
        ),
        onPressed: ()=> Navigator.of(context).pop(),),

    ),);
  }
}
