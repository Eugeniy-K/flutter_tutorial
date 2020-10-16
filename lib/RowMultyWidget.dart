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
          body: Row(                         //несколько объектов
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,       //линия выравнивания текста
            children: [
              Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(30),
                child: Text("One"),
              ),
              Container(
                color: Colors.orangeAccent,
                padding: EdgeInsets.all(40),
                child: Text("two"),
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
