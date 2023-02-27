import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:url_launcher/url_launcher.dart';
import 'News_Event.dart';
import 'Registration.dart';


class grid_home extends StatefulWidget {
  const grid_home({Key? key}) : super(key: key);

  @override
  State<grid_home> createState() => _grid_homeState();
}

 final List<String> image=[
  'assets/image/Guest_News.png',
  'assets/image/Guest_Regis.png',
  'assets/image/Guest_Program.png',
  'assets/image/Guest_Scholarship.png',
  'assets/image/Guest_Career.png',
  'assets/image/Guest_VDO.png',
  'assets/image/Guest_Contact.png',
  'assets/image/Guest_About.png',
  'assets/image/Guest_Language.png',
  'assets/image/Guest_QA.png',
];

final List<String> txt=[
  'ព្រឹត្តិការណ៍',
  'ការចុះឈ្មោះ',
  'កម្មវិធីសិក្សា',
  'អាហារូបករណ៍',
  'ព័ត៌មានការងារ',
  'វីដេអូ',
  'ទំនាក់ទំនង',
  'អំពីយើង',
  'ផ្លាស់ប្ដូរភាសា',
  'FAQ',
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
                    borderRadius: BorderRadius.circular(5),
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
                  children: List.generate(image.length, (index) => Card(
                    elevation: 2,
                    color: Colors.white,
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>New_Event()));
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(image[index], scale: 9,),
                            SizedBox(height: 5, ),
                            Text(txt[index], style: TextStyle(fontSize: 12, fontFamily: 'KhmerOSbattambang'),)
                          ],),
                      ),
                    ),
                  )),),),
              SizedBox(height: 15,),
              Container(
                // height: 50,
                margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 1,
                      color: Colors.grey
                    )
                  ]
                ),
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
            ],

        )
      ),
    );
  }
}
