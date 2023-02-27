import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:gridview_builder/Home.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (ctx) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
          width: double.infinity,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage('assets/image/usea_bg.jpg'),
          //     fit: BoxFit.cover,
          //   )
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ',
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'KhmerOSmuol',
                    color: Colors.indigo[900]),
                  ),),
              SizedBox(height: 0,),
              Text('University of South-East Asia', style: TextStyle(fontSize: 15, color: Colors.indigo[900], fontWeight: FontWeight.w500),),
              SizedBox(height: 5,),
              SpinKitThreeBounce(
                color: Colors.indigo[900],
                size: 15,
              )
            ],
          ),


      ),
    );
  }
}
