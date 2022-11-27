import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Photos> photosList = [];

  Future<List<Photos>> getPhotos() async {
    final response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map i in data) {
        Photos photos = Photos(title: i["title"], url: i["url"], id: i["id"]);
        photosList.add(photos);
      }
      return photosList;
    } else {
      return photosList;
    }
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
              future: getPhotos(),
              builder: (context, AsyncSnapshot<List<Photos>> snapshot) {
                return ListView.builder(
                  itemCount: photosList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        // Static Image
                        backgroundImage: NetworkImage(
                            "https://scontent.fmey1-1.fna.fbcdn.net/v/t1.6435-9/188514341_101512265466625_4046622472765727274_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=XT7b5XQnL44AX8LX5NH&_nc_ht=scontent.fmey1-1.fna&oh=00_AfB_wFXf8ltZUjB2RZve74s1gjMeTN0Kg2_NkQEJXH47oA&oe=63AA6FD8"),
                        // Dynamic Image link is broken
                        // backgroundImage:
                        //     NetworkImage(snapshot.data![index].url.toString()),
                      ),
                      subtitle: Text(snapshot.data![index].title.toString()),
                      title: Text(
                          "Notes id:" + snapshot.data![index].id.toString()),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Photos {
  String title, url;
  int id;

  Photos({required this.title, required this.url, required this.id});
}
