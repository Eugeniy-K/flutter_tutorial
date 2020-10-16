import 'package:flutter/material.dart';
import 'file:///D:/Android/flutter_tutorial/lib/shared/custom_icons.dart';

class FlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter tutorial"),
            centerTitle: true,
            backgroundColor: Colors.grey[900],
          ),
          body: Column(                         //несколько объектов
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(30),
                child: Text("One"),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                color: Colors.orangeAccent,
                padding: EdgeInsets.all(40),
                child: Text("two"),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.purpleAccent,
                padding: EdgeInsets.all(50),
                child: Text("three"),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Text("Add"),
            backgroundColor: Colors.grey[900],
            onPressed: null,
          ),
        ),
      ),
    );
  }
}
