//Import flutter helper library

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:project01/models/image_model.dart';
import 'dart:convert';
import 'package:project01/widgets/images_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// Create a class that will be our custom widget
// this class must extend the 'statelessWidget' base class
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body:  ImageList(images),
            floatingActionButton: FloatingActionButton(
              onPressed: fetchImage,
              child: Icon(Icons.accessibility),
              backgroundColor: Colors.blue,
            ),
            appBar:
                AppBar(title: Text('fetch image'))));
  }
}
