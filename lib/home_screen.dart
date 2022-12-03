// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var data;
  Future<void> getUserApi() async {
    final response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest API"),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
            future: getUserApi(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                // return Text(data[0]["name"].toString());
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Column(
                        children: [
                          Reuseable(
                              title: "Name:-",
                              value: data[index]["name"].toString()),
                          Reuseable(
                              title: "Username:-",
                              value: data[index]["username"].toString()),
                          Reuseable(
                              title: "Address:-",
                              value:
                                  data[index]["address"]["street"].toString()),
                          Reuseable(
                              title: "Lat",
                              value: data[index]["address"]["geo"]["lat"]
                                  .toString()),
                          Reuseable(
                              title: "Lng",
                              value: data[index]["address"]["geo"]["lng"]
                                  .toString()),
                        ],
                      ),
                    );
                  },
                );
              }
            },
          )),
        ],
      ),
    );
  }
}

class Reuseable extends StatelessWidget {
  String title;
  String value;

  Reuseable({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
