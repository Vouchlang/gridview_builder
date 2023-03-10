import 'package:flutter/material.dart';
import '/Guest_Dashboard/VDO/Video_Detail.dart';
import 'package:readmore/readmore.dart';
import '/Class_Model/Class_Video_Home.dart';
import '/Guest_Dashboard/VDO/Video_Playlist.dart';
import '/Class_Model/Class_Video_Playlist.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F5F7FE),
      appBar: AppBar(
        title: Text('វីដេអូ',
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
        child: ListView.builder(
            itemCount: video_home.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) =>
                              Video_Detail(data: video_home[index])));
                },
                child: Container(
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
                                    image: AssetImage(
                                      video_home[index].img,
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 200,
                                  child: Text(video_home[index].title,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'KhmerOSbattambang',
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SingleChildScrollView(
                                    child: Container(
                                  width: 200,
                                  child: ReadMoreText(
                                    video_home[index].caption,
                                    trimLines: 1,
                                    textAlign: TextAlign.justify,
                                    trimMode: TrimMode.Line,
                                    moreStyle:
                                        TextStyle(color: Colors.grey[700]),
                                    lessStyle:
                                        TextStyle(color: Colors.grey[700]),
                                    style: TextStyle(
                                      fontSize: 8,
                                      fontFamily: 'KhmerOSbattambang',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ))
                              ],
                            ),
                          ],
                        ),
                      ]),
                ),
              );
            }),
      ),
    );
  }
}
