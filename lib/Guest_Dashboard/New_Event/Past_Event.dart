import 'package:flutter/material.dart';
import '/Class_Model/Class_Past_News_Event.dart';
import '/Guest_Dashboard/New_Event/Up_Event_Detail.dart';
import '/Guest_Dashboard/Notifications.dart';
import 'Past_Event_Detail.dart';

class Past_Event extends StatefulWidget {
  const Past_Event({Key? key}) : super(key: key);

  @override
  State<Past_Event> createState() => _Past_EventState();
}

class _Past_EventState extends State<Past_Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F5F7FE),
      body: Center(
        child: ListView.builder(
          itemCount: past_news_event.length,
          itemBuilder: (context, index) {
            return Container(
              child: Card(
                margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                elevation: 3,
                shadowColor: Colors.grey[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Past_Event_Detail(data: past_news_event[index],)));
                  },
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 125,
                          width: double.maxFinite,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(past_news_event[index].img,
                              width: double.maxFinite,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: Column(
                            children: [
                              Container(width: double.infinity,
                                alignment: Alignment.center,
                                child: Text(past_news_event[index].title, style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500, fontFamily: 'KhmerOSBattambang'
                                ),),),
                              SizedBox(height: 5,),
                              Container(width: double.infinity,
                                child: Text(past_news_event[index].description, textAlign: TextAlign.justify, style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500, fontFamily: 'KhmerOSBattambang'
                                ),),),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Container(child: Image.asset(
                                    past_news_event[index].icon1, width: 12,
                                  ),),
                                  SizedBox(width: 5,),
                                  Container(child: Text(past_news_event[index].txt_date, style: TextStyle(
                                      fontSize: 8, fontWeight: FontWeight.w500, fontFamily: 'KhmerOSBattambang', color: Colors.indigo[900]
                                  ),),),
                                  SizedBox(width: 15,),
                                  Container(child: Image.asset(
                                    past_news_event[index].icon2, width: 12,
                                  ),),
                                  SizedBox(width: 5,),
                                  Container(child: Text(past_news_event[index].txt_time, style: TextStyle(
                                      fontSize: 8, fontWeight: FontWeight.w500, fontFamily: 'KhmerOSBattambang',color: Colors.indigo[900]
                                  ),),),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

            );
          },

        ),
      ),
    );
  }
}
