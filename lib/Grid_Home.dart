import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import '/Home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Guest_Dashboard/New_Event/News_Event.dart';
import 'Guest_Dashboard/Registration.dart';
import 'Class/Class_Home_Screen.dart';


class grid_home extends StatefulWidget {
  const grid_home({Key? key}) : super(key: key);

  @override
  State<grid_home> createState() => _grid_homeState();
}

  List<Home_Screen> home_screen = [
  Home_Screen(
    name: 'ព្រឹត្តិការណ៍',
    img: 'assets/image/Guest_News.png',
    screen: New_Event(),
  ),
  Home_Screen(
    name:'ការចុះឈ្មោះ',
    img:'assets/image/Guest_Regis.png',
    screen: Registration(),
  ),
  Home_Screen(
    name:'កម្មវិធីសិក្សា',
    img:'assets/image/Guest_Program.png',
    screen: Registration(),
  ),
  Home_Screen(
    name:'អាហារូបករណ៍',
    img:'assets/image/Guest_Scholarship.png',
    screen: New_Event(),
  ),
  Home_Screen(
    name:'ព័ត៌មានការងារ',
    img:'assets/image/Guest_Career.png',
    screen: New_Event(),
  ),
  Home_Screen(
    name:'វីដេអូ',
    img:'assets/image/Guest_VDO.png',
    screen: New_Event(),
  ),
  Home_Screen(
    name:'ទំនាក់ទំនង',
    img:'assets/image/Guest_Contact.png',
    screen: New_Event(),
  ),
  Home_Screen(
    name:'អំពីយើង',
    img:'assets/image/Guest_About.png',
    screen: New_Event(),
  ),
  Home_Screen(
    name:'ផ្លាស់ប្ដូរភាសា',
    img:'assets/image/Guest_Language.png',
    screen: New_Event(),
  ),
  Home_Screen(
    name:'FAQ',
    img:'assets/image/Guest_QA.png',
    screen: New_Event(),
  ),
];

class _grid_homeState extends State<grid_home> {

  final Uri urlFb = Uri.parse("https://www.facebook.com/usea.edu.kh");
  final Uri urlIg = Uri.parse("https://ww3.read-onepiece.net/manga/one-piece-chapter-1059/");
  final Uri urlYt = Uri.parse("https://www.youtube.com/@universityofsouth-eastasia8619");
  final Uri urlTel = Uri.parse("https://t.me/cpsteamsports");
  final Uri urlWeb = Uri.parse("http://www.usea.edu.kh/");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F5F7FE),
      body: Center(
        child: ListView(
            children: [
              SizedBox(height: 15,),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
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
              SizedBox(height: 15,),
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 2,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  children: List.generate(home_screen.length, (index) => Card(
                  elevation: 3,
                  shadowColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return home_screen[index].screen;
                      }));
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(home_screen[index].img, scale: 7,),
                          SizedBox(height: 5, ),
                          Text(home_screen[index].name, style: TextStyle(fontSize: 12, fontFamily: 'KhmerOSbattambang'),)
                        ],),
                    ),
                  ),
                )),),
              ),
              SizedBox(height: 15,),
              Card(
                elevation: 3,
                shadowColor: Colors.grey[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin:  EdgeInsets.fromLTRB(15, 0, 15, 15),

          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                IconButton(onPressed: (){launchUrl(urlFb);},
                  icon: Image.asset('assets/image/SM_Facebook.png'),),
                IconButton(onPressed: (){launchUrl(urlIg);}, icon: Image.asset('assets/image/SM_IG.png'),),
                IconButton(onPressed: (){launchUrl(urlYt);}, icon: Image.asset('assets/image/SM_Yt.png'),),
                IconButton(onPressed: (){launchUrl(urlTel);}, icon: Image.asset('assets/image/SM_Telegram.png'),),
                IconButton(onPressed: (){launchUrl(urlWeb);}, icon: Image.asset('assets/image/SM_Website.png'),),
            ],
          ),
              ),
        ]
        )
      ),
    );
  }
}
