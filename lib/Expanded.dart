import 'package:flutter/material.dart';

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
              Expanded(
                child: Container(
                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(30),
                  child: Text("One"),
                ),
              ),
              Expanded(
                flex: 3,            //теперь приоритет занимаемого пространства у Этого виджета
                child: Container(
                  color: Colors.orangeAccent,
                  padding: EdgeInsets.all(40),
                  child: Text("two"),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purpleAccent,
                  padding: EdgeInsets.all(50),
                  child: Text("three"),
                ),
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
