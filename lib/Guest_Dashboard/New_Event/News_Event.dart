import 'package:flutter/material.dart';
import '/Class/Class_News_Events.dart';

class New_Event extends StatefulWidget {
  const New_Event({Key? key}) : super(key: key);

  @override
  State<New_Event> createState() => _New_EventState();
}

class _New_EventState extends State<New_Event> {

  List<News_Event> news_event = [
    News_Event(
        img: 'img',
        title: 'title',
        icon1: 'icon1',
        txt_date: 'txt_date',
        icon2: 'icon2',
        txt_time: 'txt_time',
        description: 'description'),
    News_Event(
        img: 'img1',
        title: 'title1',
        icon1: 'icon3',
        txt_date: 'txt_date1',
        icon2: 'icon4',
        txt_time: 'txt_time1',
        description: 'description1'),
    News_Event(
        img: 'img1',
        title: 'title1',
        icon1: 'icon3',
        txt_date: 'txt_date1',
        icon2: 'icon4',
        txt_time: 'txt_time1',
        description: 'description1'),
    News_Event(
        img: 'img1',
        title: 'title1',
        icon1: 'icon3',
        txt_date: 'txt_date1',
        icon2: 'icon4',
        txt_time: 'txt_time1',
        description: 'description1'),
  ];

  List<String> tab_txt = [
    "ព្រឹត្តិការណ៍នាពេលខាងមុខ",
    "ព្រឹត្តិការណ៍មុនៗ",
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.explore,
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
              width: 330,
              height: 75,
              child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
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
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icons[current],
                    size: 100,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    tab_txt[current],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
