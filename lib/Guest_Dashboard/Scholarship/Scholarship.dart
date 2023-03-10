import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '/Class_Model/Class_Scholarship.dart';

class Scholarship extends StatefulWidget {
  const Scholarship({Key? key}) : super(key: key);

  @override
  State<Scholarship> createState() => _ScholarshipState();
}

class _ScholarshipState extends State<Scholarship> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F5F7FE),
      appBar: AppBar(
        title: Text('អាហារូបករណ៍',
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
        child: ListView.builder(
          itemCount: scholarship.length,
          itemBuilder: (context, index){return Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Card(
              elevation: 3,
              shadowColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                child: (Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(width: double.infinity,
                      child: Text(
                          scholarship[index].school_name, style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'KhmerOSbattambang',
                        fontWeight: FontWeight.w600,),
                      ),),
                    Container(width: double.infinity,
                      child: Text(
                        scholarship[index].educational_level, style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'KhmerOSbattambang',
                        fontWeight: FontWeight.w600,),
                      ),),
                    Container(width: double.infinity,
                      child: Text(
                      scholarship[index].major, style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'KhmerOSbattambang',
                      fontWeight: FontWeight.w600,),
                    ),),
                    Container(width: double.infinity,
                      child: Text(
                      scholarship[index].exprire, style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'KhmerOSbattambang',
                      fontWeight: FontWeight.w600,),
                    ),),
                    Container(width: double.infinity, child: Text(
                      scholarship[index].expire_date, style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'KhmerOSbattambang',
                      fontWeight: FontWeight.w500,),
                    ),),
                    Container(
                      alignment: Alignment.center,
                      width: 55,
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0x142D74F5),
                      ),
                      child: InkWell(
                        onTap: () => launchUrlString(scholarship[index].link),
                        child: Text(
                          'អានបន្ថែម', style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'KhmerOSbattambang',
                          fontWeight: FontWeight.w600,
                        color: Colors.indigo[900]
                        ),
                        ),
                      ),),
                  ],
                )
                ),
              ),
            ),
          );}),
      ),
    );
  }
}
