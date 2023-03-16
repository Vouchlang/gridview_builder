import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

final List locale = [
  {
    'name': 'ភាសាខ្មែរ',
    'logo': 'assets/image/CL_Khmer.png',
    'locale': Locale('km', 'KH')
  },
  {
    'name': 'ភាសាអង់គ្លេស',
    'logo': 'assets/image/CL_English.png',
    'locale': Locale('en', 'US')
  },
];

class Change_Language extends StatelessWidget {
  // final List locale = [
  //   {
  //     'name': 'ភាសាខ្មែរ',
  //     'logo': 'assets/image/CL_Khmer.png',
  //     'locale': Locale('km', 'KH')
  //   },
  //   {
  //     'name': 'ភាសាអង់គ្លេស',
  //     'logo': 'assets/image/CL_English.png',
  //     'locale': Locale('en', 'US')
  //   },
  // ];

  // updateLanguage(Locale locale) {
  //   Get.back();
  //   Get.updateLocale(locale);
  // }

  // buildLanguageDialog(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (builder) {
  //         return AlertDialog(
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  //           title: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               Text(
  //                 'ភាសា',
  //                 style: TextStyle(
  //                     fontSize: 14,
  //                     fontFamily: 'KhmerOSbattambang',
  //                     fontWeight: FontWeight.bold),
  //               ),
  //               Text(
  //                 'សូមជ្រើសរើសភាសា',
  //                 style: TextStyle(
  //                   fontSize: 10,
  //                   fontFamily: 'KhmerOSbattambang',
  //                 ),
  //               ),
  //             ],
  //           ),
  //           content: Container(
  //             height: 60,
  //             padding: EdgeInsets.all(5),
  //             alignment: Alignment.center,
  //             child: ListView.separated(
  //                 scrollDirection: Axis.horizontal,
  //                 shrinkWrap: true,
  //                 itemBuilder: (context, index) {
  //                   return InkWell(
  //                     child: Container(
  //                       // color: Colors.amber,
  //                       height: 50,
  //                       width: 75,
  //                       alignment: Alignment.center,
  //                       child: Column(
  //                           mainAxisSize: MainAxisSize.min,
  //                           crossAxisAlignment: CrossAxisAlignment.center,
  //                           mainAxisAlignment: MainAxisAlignment.center,
  //                           children: [
  //                             Image.asset(
  //                               locale[index]['logo'],
  //                               scale: 5,
  //                             ),
  //                             SizedBox(
  //                               height: 5,
  //                             ),
  //                             Text(
  //                               locale[index]['name'],
  //                               style: TextStyle(
  //                                   fontSize: 10,
  //                                   fontFamily: 'KhmerOSbattambang'),
  //                             ),
  //                           ]),
  //                     ),
  //                     onTap: () {
  //                       updateLanguage(locale[index]['locale']);
  //                     },
  //                   );
  //                 },
  //                 separatorBuilder: (context, index) {
  //                   return VerticalDivider(
  //                     width: 50,
  //                   );
  //                 },
  //                 itemCount: locale.length),
  //           ),
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CardWidget()
    );
    // return Scaffold(
    //     // body: buildLanguageDialog(context),
    //     appBar: AppBar(
    //       title: Text('title'.tr),
    //     ),
    //     body: Container(
    //       width: double.infinity,
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         children: [
    //           Text(
    //             'Events'.tr,
    //             textAlign: TextAlign.center,
    //             style: TextStyle(fontSize: 15),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           ElevatedButton(
    //               onPressed: () {
    //                 // buildLanguageDialog(context);
    //                 showDialog(
    //                     context: context, builder: (context) => CardWidget());
    //               },
    //               child: Text('change language'.tr)),
    //         ],
    //       ),
    //     ));
  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Stack(
          children: [
            CardWidget(),
            Positioned(
              height: 20,
              width: 20,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 20,
                ),
                style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    backgroundColor: Colors.indigo[900],
                    shape: CircleBorder(),
                    shadowColor: Colors.transparent),
              ),
              top: 0,
              right: 0,
            )
          ],
        ));
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    updateLanguage(Locale locale) {
      Get.back();
      Get.updateLocale(locale);
    }

    return Dialog(
      elevation: 3,
      child: Container(
        margin: EdgeInsets.all(7),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'ភាសា',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'KhmerOSbattambang',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'សូមជ្រើសរើសភាសា',
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'KhmerOSbattambang',
              ),
            ),
            Container(
              height: 75,
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Container(
                        // color: Colors.amber,
                        height: 50,
                        width: 75,
                        alignment: Alignment.center,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                locale[index]['logo'],
                                scale: 5,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                locale[index]['name'],
                                style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'KhmerOSbattambang'),
                              ),
                            ]),
                      ),
                      onTap: () {
                        updateLanguage(locale[index]['locale']);
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return VerticalDivider(
                      width: 50,
                    );
                  },
                  itemCount: locale.length),
            ),
          ],
        ),
      ),
    );
  }
}
