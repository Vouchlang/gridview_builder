import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

final List locale = [
  {
    'name': 'KHMER',
    'logo': 'assets/image/CL_Khmer.png',
    'locale': Locale('km', 'KH')
  },
  {
    'name': 'ENGLISH',
    'logo': 'assets/image/CL_English.png',
    'locale': Locale('en', 'US')
  },
];

class Change_Language extends StatefulWidget {
  @override
  State<Change_Language> createState() => _Change_LanguageState();
}

class _Change_LanguageState extends State<Change_Language> {
  // final List locale = [
  @override
  Widget build(BuildContext context) {
    return CardWidget();

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
              'Language'.tr,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'KhmerOSbattambang',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Please select the Language'.tr,
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'KhmerOSbattambang',
              ),
            ),
            Container(
              height: 65,
              padding: EdgeInsets.all(5),
              alignment: Alignment.bottomCenter,
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
                                locale[index]['name'.tr],
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

// class CustomDialog extends StatelessWidget {
//   const CustomDialog({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//         child: Stack(
//           children: [
//             CardWidget(),
//             Positioned(
//               height: 20,
//               width: 20,
//               child: OutlinedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Icon(
//                   Icons.close,
//                   color: Colors.white,
//                   size: 20,
//                 ),
//                 style: OutlinedButton.styleFrom(
//                     padding: EdgeInsets.all(0),
//                     backgroundColor: Colors.indigo[900],
//                     shape: CircleBorder(),
//                     shadowColor: Colors.transparent),
//               ),
//               top: 0,
//               right: 0,
//             )
//           ],
//         ));
//   }
// }

