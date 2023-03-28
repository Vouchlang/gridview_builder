import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyDataWidget extends StatefulWidget {
  const MyDataWidget({Key? key}) : super(key: key);

  @override
  _MyDataWidgetState createState() => _MyDataWidgetState();
}

class _MyDataWidgetState extends State<MyDataWidget> {
  List<dynamic> dataList = [];
  List<Image> imageList = [];

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(
        'http://192.168.3.34/hosting_api/Guest/fetch_guest_event_past.php')); // replace this with your API endpoint
    if (response.statusCode == 200 && response.body != null) {
      setState(() {
        dataList = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<void> fetchImages() async {
    for (var i = 0; i < dataList.length; i++) {
      if (dataList[i]['past_image'] != null) {
        final response = await http.get(Uri.parse(
            'http://192.168.3.34/hosting_api/Guest/event_image${dataList[i]['past_image']}'));
        if (response.statusCode == 200) {
          setState(() {
            imageList.add(Image.memory(response.bodyBytes));
          });
        } else {
          throw Exception('Failed to load image ${dataList[i]['past_image']}');
        }
      }
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: fetchImages(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: imageList.length > index ? imageList[index] : null,
                title: Text(dataList[index]['past_title']),
                subtitle: Text(dataList[index]['past_detail']),
              );
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
