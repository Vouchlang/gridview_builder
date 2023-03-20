import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gridview_builder/Class_Model/Class_Program.dart';

class Program extends StatefulWidget {
  const Program({Key? key}) : super(key: key);

  @override
  State<Program> createState() => _ProgramState();
}

class _ProgramState extends State<Program> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: ListView.builder(
          itemCount: program.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              margin: EdgeInsets.only(top: 10),
              elevation: 3,
              shadowColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  ExpansionTile(
                      collapsedIconColor: Colors.indigo[900],
                      iconColor: Colors.indigo[900],
                      title: Row(
                        children: [
                          Image.asset(
                            program[index].image,
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: double.infinity,
                            child: Text(
                              program[index].fac_name,
                              style: TextStyle(
                                  fontFamily: 'KhmerOSbattambang',
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
