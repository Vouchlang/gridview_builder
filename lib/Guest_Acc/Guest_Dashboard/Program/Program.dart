import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Guest_Class_Model/Class_Program.dart';
import 'Program_Major_Detail_Main.dart';

class Program extends StatelessWidget {
  const Program({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xF5F5F7FE),
        appBar: AppBar(
          centerTitle: false,
          title: Text('កម្មវិធីសិក្សា'.tr,
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
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(bottom: 10),
          children:
              program_List.map((major) => ProgramWidget(major: major)).toList(),
        ));
  }
}

class ProgramWidget extends StatelessWidget {
  final Program_List major;

  const ProgramWidget({
    Key? key,
    required this.major,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = major.title;
    final majors = major.majors;
    final image = major.image;

    if (majors.isEmpty) {
      return Container(
        // margin: EdgeInsets.all(5),
        padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => Program_Major_Detail_Main()));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0xEEEEEEFF))),
            padding: EdgeInsets.all(5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'KhmerOSbattambang',
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.indigo[900],
                  )
                ]),
          ),
        ),
      );
    } else {
      return Card(
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        elevation: 3,
        shadowColor: Colors.grey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              collapsedIconColor: Colors.indigo[900],
              iconColor: Colors.indigo[900],
              textColor: Colors.black,
              key: PageStorageKey(title),
              title: Row(children: [
                Image.asset(
                  image,
                  scale: 7,
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 225,
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'KhmerOSbattambang',
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ]),
              children:
                  majors.map((major) => ProgramWidget(major: major)).toList(),
            ),
          ),
        ),
      );
    }
  }
}
