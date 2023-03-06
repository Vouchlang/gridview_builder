import 'package:flutter/material.dart';

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

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Event',
            style: TextStyle(
                color: Colors.indigo[900],
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // width: double.negativeInfinity,
              width: 300,
              height: 65,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tab_txt.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(10),
                            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                            height: 40,
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
            Container(

            )
          ],
        ),
      ),
    );
  }
}
