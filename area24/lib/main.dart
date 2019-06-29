import 'dart:async';

import 'package:flutter/material.dart';

void main()

{
   runApp(App());


}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
    home: testingapp(),


    );
      
    
  }
}

class testingapp extends StatefulWidget {
  @override
  _testingappState createState() => _testingappState();
}

class _testingappState extends State<testingapp> {
  
  int counter = 0;

  final StreamController<int> _streamController = StreamController<int>();

   void dispose()
   {
    
    super.dispose();
    _streamController.close();

   }

   void hellobutton() {
     
     _streamController.sink.add(++counter);
    
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
    title: Text("Bloc example"),
  

     ),
       body : Center(child: StreamBuilder(
      stream: _streamController.stream,
      initialData: counter,
      builder: (BuildContext contex, AsyncSnapshot<int> snap){
        return Text("I got hit${snap.data} times");
      },

       )
       
       
       
       
       ),
    
    
    floatingActionButton: FloatingActionButton(
      onPressed: hellobutton,
          ),
      
          );
        }
      
       
}

