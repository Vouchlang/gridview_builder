import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gridview_builder/Class_Model/Class_Video_Home.dart';


class Video_Playlist extends StatelessWidget {

  final Video data;
  const Video_Playlist({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F5F7FE),
      appBar: AppBar(
        title: Text('វីដេអូ'.tr,
            style: TextStyle(
              color: Colors.indigo[900],
              fontSize: 16,
              fontFamily: 'KhmerOSbattambang',
              fontWeight: FontWeight.w600,
            )),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData.fallback(),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.indigo[900],
            size: 15,
          ),
          onPressed: ()=> Navigator.of(context).pop(),),
      ),
      body: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 125,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: AssetImage(data.img,),
                            fit: BoxFit.cover
                        ),
                      ),

                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(width: 200,
                          child: Text(
                              data.title.trim(),
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'KhmerOSbattambang',
                                fontWeight: FontWeight.w500,)),),
                        SizedBox(height: 5,),
                        Container(
                          width: 200,
                          child: Text(
                              data.caption.trim() ,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 8,
                                fontFamily: 'KhmerOSbattambang',
                                fontWeight: FontWeight.w500,)),)
                      ],
                    ),
                  ],
                ),
              ]
          ),
        ),
    );
  }
}
