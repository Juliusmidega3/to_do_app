import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {

  // text editing controller to get access to what the user id typing
  TextEditingController myController = TextEditingController();  

  //greet user method
  void greetUser (){
    setState(() {
      greetingMessage = "Hello, ${myController.text}";
    });
  }
  //greeting message
  String greetingMessage = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //gree user message
              Text(greetingMessage),
              //textfield
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Type your name..", 
                ),
              ),
              //button
              ElevatedButton(
                onPressed: greetUser, 
                child: Text("Tap")
              )
            ],
          ),
        ),
      ),
    );
  }
}