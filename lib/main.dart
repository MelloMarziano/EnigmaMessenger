import 'package:flutter/material.dart';
import 'package:enigma_messenger/pages/LoginScreen.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Enigma Messenger',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen()
      },
    ),
  );
}

