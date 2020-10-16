import 'file:///D:/Android/flutter_tutorial/lib/shared/custom_icons.dart';
import 'package:flutter/material.dart';

class FlutterTutorialApp extends StatelessWidget {

  final List<String> events = [
    "Event 1",
    "Event 2",
    "Event 3",
    "Event 4",
    "Event 5",
    "Event 6",
    "Event 7",
  ];

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
          body: ListView.separated(
              itemBuilder: (_, index) => Text(
                events[index],
                style: TextStyle(fontSize: 100),
              ),
              separatorBuilder: (_, __) => Divider(       //разделитель
                color: Colors.green, thickness: 5,),
              itemCount: events.length
          ),
          // body: ListView.builder(                          //конструктор builder
          //   physics: BouncingScrollPhysics(),
          //   padding: EdgeInsets.all(30),
          //   itemCount: events.length,
          //   itemBuilder: (_, index) => Text(
          //     events[index],
          //     style: TextStyle(fontSize: 100),
          //   ),
          //   // children: events.map((e) => Text(                  //Создание маленьких полных списков
          //   //     e,
          //   //     style: TextStyle(fontSize: 100),)).toList(),
          // ),

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
