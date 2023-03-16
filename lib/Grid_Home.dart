import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:gridview_builder/Guest_Dashboard/About_US/AboutUS.dart';
import 'package:gridview_builder/Guest_Dashboard/Change_Language/Change_Language.dart';
import 'package:gridview_builder/Guest_Dashboard/FAQ/FAQ.dart';
import 'package:gridview_builder/Guest_Dashboard/Scholarship/Scholarship.dart';
import 'package:gridview_builder/Guest_Dashboard/VDO/Video.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Guest_Dashboard/New_Event/News_Event.dart';
import 'Guest_Dashboard/Registration/Registration.dart';
import 'Class_Model/Class_Home_Screen.dart';
import 'Guest_Dashboard/Notifications.dart';
import 'Guest_Dashboard/Career/Career.dart';
import 'Guest_Dashboard/Contact/Contact.dart';

class Grid_Home extends StatefulWidget {
  const Grid_Home({Key? key}) : super(key: key);

  @override
  State<Grid_Home> createState() => _Grid_HomeState();
}

List<Home_Screen> home_screen = [
  Home_Screen(
    name: 'Events',
    img: 'assets/image/Guest_News.png',
    screen: New_Event(),
  ),
  Home_Screen(
    name: 'ការចុះឈ្មោះ',
    img: 'assets/image/Guest_Regis.png',
    screen: Registration(),
  ),
  Home_Screen(
    name: 'កម្មវិធីសិក្សា',
    img: 'assets/image/Guest_Program.png',
    screen: Registration(),
  ),
  Home_Screen(
    name: 'អាហារូបករណ៍',
    img: 'assets/image/Guest_Scholarship.png',
    screen: Scholarship(),
  ),
  Home_Screen(
    name: 'ព័ត៌មានការងារ',
    img: 'assets/image/Guest_Career.png',
    screen: Career(),
  ),
  Home_Screen(
    name: 'វីដេអូ',
    img: 'assets/image/Guest_VDO.png',
    screen: Video(),
  ),
  Home_Screen(
    name: 'ទំនាក់ទំនង',
    img: 'assets/image/Guest_Contact.png',
    screen: Contact(),
  ),
  Home_Screen(
    name: 'អំពីយើង',
    img: 'assets/image/Guest_About.png',
    screen: AboutUS(),
  ),
  Home_Screen(
    name: 'ផ្លាស់ប្ដូរភាសា',
    img: 'assets/image/Guest_Language.png',
    screen: Change_Language(),
  ),
  Home_Screen(
    name: 'FAQ',
    img: 'assets/image/Guest_QA.png',
    screen: FAQ(),
  ),
];

class _Grid_HomeState extends State<Grid_Home> {
  final Uri urlFb = Uri.parse("https://www.facebook.com/usea.edu.kh");
  final Uri urlIg =
      Uri.parse("https://ww3.read-onepiece.net/manga/one-piece-chapter-1059/");
  final Uri urlYt =
      Uri.parse("https://www.youtube.com/@universityofsouth-eastasia8619");
  final Uri urlTel = Uri.parse("https://t.me/cpsteamsports");
  final Uri urlWeb = Uri.parse("http://www.usea.edu.kh/");

  // late String List locale = ['KHMER', 'ENGLISH'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F5F7FE),
      appBar: AppBar(
        leading: Image.asset(
          'assets/image/usea_logo.png',
          scale: 45,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'សាកលវិទ្យាល័យ សៅស៍អុីសថ៍អេយសៀ',
                  style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 10,
                      fontFamily: 'KhmerOSmuol'),
                ),
                Text('UNIVERSITY OF SOUTH-EAST ASIA',
                    style: TextStyle(
                        color: Colors.indigo[900],
                        fontSize: 11.7,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500)),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey[200]),
                child: Center(
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => Notifications()));
                        });
                      },
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.indigo[900],
                        size: 20,
                      )),
                )),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Center(
          child: ListView(children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 175,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ImageSlideshow(
                children: [
                  Image.asset(
                    'assets/image/1.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/image/2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/image/3.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/image/4.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          child: Expanded(
            child: GridView.count(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
              childAspectRatio: 1.95,
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 6),
              children: List.generate(
                  home_screen.length,
                  (index) => Card(
                        elevation: 3,
                        shadowColor: Colors.grey[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) {
                              return home_screen[index].screen;
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  home_screen[index].img,
                                  scale: 7,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(home_screen[index].name.tr,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'KhmerOSbattambang'))
                              ],
                            ),
                          ),
                        ),
                      )),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          elevation: 3,
          shadowColor: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  launchUrl(urlFb);
                },
                icon: Image.asset('assets/image/SM_Facebook.png'),
              ),
              IconButton(
                onPressed: () {
                  launchUrl(urlIg);
                },
                icon: Image.asset('assets/image/SM_IG.png'),
              ),
              IconButton(
                onPressed: () {
                  launchUrl(urlYt);
                },
                icon: Image.asset('assets/image/SM_Yt.png'),
              ),
              IconButton(
                onPressed: () {
                  launchUrl(urlTel);
                },
                icon: Image.asset('assets/image/SM_Telegram.png'),
              ),
              IconButton(
                onPressed: () {
                  launchUrl(urlWeb);
                },
                icon: Image.asset('assets/image/SM_Website.png'),
              ),
            ],
          ),
        ),
      ])),
    );
  }
}
