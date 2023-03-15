import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class Change_Language extends StatelessWidget {

  final List locale = [
    {'name': 'KHMER', 'locale': Locale('km', 'KH')},
    {'name': 'ENGLISH', 'locale': Locale('en', 'US')},
  ];

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Column(
              children: [
                Text('ភាសា'),
                Text('ជ្រើសរើសភាសា'),
              ],
            ),
            content: Container(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        InkWell(
                          child: Text(locale[index]['name']),
                          onTap: () {
                            print(locale[index]['name']);
                            updateLanguage(locale[index]['locale']);
                          },
                        ),
                      ]),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: buildLanguageDialog(context),
        appBar: AppBar(
          title: Text('title'.tr),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Events'.tr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    buildLanguageDialog(context);
                  },
                  child: Text('change language'.tr)),
            ],
          ),
        )
    );
  }
}
