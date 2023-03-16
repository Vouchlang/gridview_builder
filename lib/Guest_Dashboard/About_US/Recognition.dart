import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Recognition extends StatefulWidget {
  const Recognition({Key? key}) : super(key: key);

  @override
  State<Recognition> createState() => _RecognitionState();
}

class _RecognitionState extends State<Recognition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5F5F7FE),
      appBar: AppBar(
        title: Text('ការទទួលស្គាល់',
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
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 175,
                    width: 125,
                    child: Image.asset('assets/image/recognition1.jpg', fit: BoxFit.cover,),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 205,
                        child: Text(
                          'Goverment There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () => launchUrlString('https://www.usea.edu.kh/en/Pages/recognition.php'),
                        child: Container(
                          alignment: Alignment.center,
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0x142D74F5)),
                          child: Text(
                            'អានបន្ថែម', style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'KhmerOSbattambang',
                              fontWeight: FontWeight.w600,
                              color: Colors.indigo[900]
                          ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 175,
                    width: 125,
                    child: Image.asset('assets/image/recognition2.jpg', fit: BoxFit.cover,),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 205,
                        child: Text(
                          'Goverment There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () => launchUrlString('https://www.usea.edu.kh/en/Pages/recognition.php'),
                        child: Container(
                          alignment: Alignment.center,
                          padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0x142D74F5)),
                          child: Text(
                            'អានបន្ថែម', style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'KhmerOSbattambang',
                              fontWeight: FontWeight.w600,
                              color: Colors.indigo[900]
                          ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 175,
                    width: 125,
                    child: Image.asset('assets/image/recognition1.jpg', fit: BoxFit.cover,),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 205,
                        child: Text(
                          'Goverment There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () => launchUrlString('https://www.usea.edu.kh/en/Pages/recognition.php'),
                        child: Container(
                          alignment: Alignment.center,
                          padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0x142D74F5)),
                          child: Text(
                            'អានបន្ថែម', style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'KhmerOSbattambang',
                              fontWeight: FontWeight.w600,
                              color: Colors.indigo[900]
                          ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
