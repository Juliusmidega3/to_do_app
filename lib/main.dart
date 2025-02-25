import 'package:flutter/material.dart';
import 'package:to_do_app/pages/categories.dart';
import 'package:to_do_app/pages/first_page.dart';
import 'package:to_do_app/pages/homepage.dart';
import 'package:to_do_app/pages/login.dart';
import 'package:to_do_app/pages/profile.dart';
import 'package:to_do_app/pages/settings.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context)=> Homepage(),
        '/categories':(context)=>Categories(),
        '/login': (context) => Login(),
        '/profile': (context) => Profile(),
        '/settings': (context)=> Settings()
      },
    );
  }
}