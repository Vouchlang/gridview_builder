import 'package:flutter/material.dart';
import 'package:gridview_builder/Guest_Dashboard/New_Event/Past_Event.dart';
import 'package:gridview_builder/Guest_Dashboard/New_Event/Upcoming_Event.dart';
import '/Class_Model/Class_Up_News_Events.dart';

class New_Event extends StatefulWidget {
  const New_Event({Key? key}) : super(key: key);

  @override
  State<New_Event> createState() => _New_EventState();
}

class _New_EventState extends State<New_Event> {

  List<String> tab_txt = [
    "ព្រឹត្តិការណ៍នាពេលខាងមុខ",
    "ព្រឹត្តិការណ៍មុនៗ",
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.explore,
  ];

  List pages=[
    Upcoming_Event(),
    Past_Event()
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F5F7FE),
      appBar: AppBar(
        title: Text('ព្រឹត្តិការណ៍',
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: 330,
              height: 75,
              child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: tab_txt.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                            child: Center(
                              child: Text(
                                tab_txt[index],
                                style: TextStyle(
                                    color: current == index ? Colors.white : Colors.black,
                                    fontFamily: 'KhmerOSbattambang',
                                    fontSize: 12
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ),
          Flexible(child: pages[current])
        ]

      ),
    );
  }
}
