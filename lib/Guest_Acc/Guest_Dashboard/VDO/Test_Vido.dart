import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const apiEndpoint =
    'http://172.17.19.22/hosting_api/Guest/fetch_guest_event_past.php';

Future<List<dynamic>> fetchData() async {
  final response = await http.get(Uri.parse(apiEndpoint));

  if (response.statusCode == 200) {
    final jsonBody = json.decode(response.body);

    if (jsonBody is List) {
      return jsonBody;
    } else if (jsonBody is Map) {
      // Handle object response
      return [jsonBody];
    } else {
      throw Exception('Invalid API response');
    }
  } else {
    throw Exception('Failed to load data: ${response.statusCode}');
  }
}

class Testing extends StatefulWidget {
  const Testing({Key? key}) : super(key: key);

  @override
  _TestingState createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  List<dynamic> _data = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      final data = await fetchData();
      setState(() {
        _data = data;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _data = [];
      });
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: Text('Failed to load data: ${e.toString()}'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test API'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _data.isEmpty
              ? const Center(child: Text('No data available'))
              : ListView.builder(
                  itemCount: _data.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = _data[index];
                    Uint8List? imagedata = item['past_image'];
                    return Container(
                      child: Column(
                        children: [
                          Text(item['past_title']),
                          Text(item['past_detail']),
                          Text(item['past_month']),
                          Text(item['past_day']),
                          Image.memory(
                            imagedata!,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    );
                  },
                ),
    );
  }
}
