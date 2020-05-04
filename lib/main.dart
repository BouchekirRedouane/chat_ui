// App for Jonn Inc

import 'package:chat_ui/Pages/ChatPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.indigo[900],
        padding: EdgeInsets.all(30),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              'Joinn ',
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.w600,
                fontSize: 60,
              ),
            ),
            new Text(
              'Connects Like-Minded People',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
            new Text(
              'Search through thousands of groups to connect with others.',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            new SizedBox(
              height: 20,
            ),
            new RaisedButton(
                elevation: 10.0,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0)),
                color: Colors.green,
                child: new Text('Open Chat Fram'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatPage()),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
