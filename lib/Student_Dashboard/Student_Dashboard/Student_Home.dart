import 'package:flutter/material.dart';
import '../../Guest_Acc/Guest_Class_Model/Class_Program.dart';
import '../../Guest_Acc/Guest_Dashboard/Program/Program_Major_Detail_Main.dart';

class Student_Home extends StatefulWidget {
  @override
  _Student_HomeState createState() => _Student_HomeState();
}

class _Student_HomeState extends State<Student_Home> {
  String _searchQuery = '';
  String nametoFilter = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F5F7FE),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.indigo[900],
            size: 15,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: TextField(
          onChanged: (value) {
            setState(() {
              _searchQuery = value;
            });
          },
          style: TextStyle(fontSize: 12, fontFamily: 'KhmerOSbattambang'),
          textAlign: TextAlign.left,
          decoration: InputDecoration.collapsed(hintText: "\tSearch"),
          cursorColor: Colors.black,
          cursorWidth: 1.5,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: program_List
                  .where((program_List) => program_List.title
                      .toString()
                      .toLowerCase()
                      .contains(_searchQuery.toLowerCase()))
                  .length,
              itemBuilder: (context, index) {
                final filteredMajor = program_List
                    .where((program_List) => program_List.title
                        .toString()
                        .toLowerCase()
                        .contains(_searchQuery.toLowerCase()))
                    .toList();
                return Container(
                  height: 35,
                  child: ListTile(
                    title: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Program_Major_Detail_Main()));
                        },
                        child: Text(
                          filteredMajor[index].title,
                          style: TextStyle(
                              fontSize: 12, fontFamily: 'KhmerOSbattambang'),
                        )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
