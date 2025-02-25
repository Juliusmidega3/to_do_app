import 'package:flutter/material.dart';
import 'package:to_do_app/pages/categories.dart';
import 'package:to_do_app/pages/homepage.dart';
import 'package:to_do_app/pages/login.dart';
import 'package:to_do_app/pages/profile.dart';
import 'package:to_do_app/pages/settings.dart';


class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  final List _pages = [
    Homepage(),
    Categories(),
    Login(),
    Profile(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.blue, title: Text("First Page",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),),
      body: _pages[0],


      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          ),
        ],
      ),
    );
  }
}