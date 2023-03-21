import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/Guest_Dashboard/Program/Program_Associate.dart';
import '/Guest_Dashboard/Program/Program_Bachelor.dart';

class Program_Major_Detail_Main extends StatefulWidget {
  const Program_Major_Detail_Main({Key? key}) : super(key: key);

  @override
  State<Program_Major_Detail_Main> createState() => _Program_Major_DetailState();
}


class _Program_Major_DetailState extends State<Program_Major_Detail_Main> {

  List<String> tab_txt = [
    "ថ្នាក់បរិញ្ញាបត្ររង",
    "ថ្នាក់បរិញ្ញាបត្រ",
  ];

  List pages=[
    Program_Associate(),
    Program_Bachelor()
  ];

  int current = 0;

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
      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                height:62,
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    itemCount: tab_txt.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      return Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              width: 150,
                              decoration: BoxDecoration(
                                  color: current == index
                                      ? Colors.indigo[900]
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 1,
                                        color: Colors.grey,
                                        offset: Offset(0, 1)
                                    )
                                  ]
                              ),
                              child: Text(
                                tab_txt[index].tr,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: current == index ? Colors.white : Colors.black,
                                    fontFamily: 'KhmerOSbattambang',
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              Flexible(child: pages[current])
            ]

        ),
      ),
    );
  }
}