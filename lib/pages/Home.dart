import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor:  Color(0xFFeb3b5a),
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFeb3b5a),
        elevation: 5.0,
        title: Text('Enigma Messenger'),
        actions: <Widget>[
          Row(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.power_settings_new),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert),
              ),
            ),
          ],)
        ],
      ),
    );
  }
}