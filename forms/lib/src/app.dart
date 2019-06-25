import 'package:flutter/material.dart';
import 'package:forms/src/login_screen.dart';


class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
       
      title: 'log me in',
       debugShowCheckedModeBanner: false,
             
      home: Scaffold(
        appBar: AppBar(
         title: Text("Hello loggin app"),
         backgroundColor: Colors.greenAccent,
       ),

        body: LoginScreen(),
floatingActionButton: FloatingActionButton(
 child: Text("DO IT"),
 backgroundColor: Colors.greenAccent,
 onPressed: () {
   print("Floatinf action button clicked");
 },

),

        bottomNavigationBar: BottomAppBar(
          color: Colors.greenAccent,
         child: Row(
           children: <Widget>[
             Text("form Validation App"),
             Text("forms are on top"),

           ],
         )

        ),

      ),
    );
  }
}
