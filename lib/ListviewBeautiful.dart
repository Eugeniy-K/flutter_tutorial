import 'package:flutter/material.dart';
import 'file:///D:/Android/flutter_tutorial/lib/models/event.dart';

class FlutterTutorialApp extends StatelessWidget {

  final List<Event> events = [
    Event(name: "Event 1", location: "Location 1", startDateTime: DateTime.now()),
    Event(name: "Event 2", location: "Location 2", startDateTime: DateTime.now()),
    Event(name: "Event 3", location: "Location 3", startDateTime: DateTime.now()),
    Event(name: "Event 4", location: "Location 4", startDateTime: DateTime.now()),
    Event(name: "Event 5", location: "Location 5", startDateTime: DateTime.now()),
    Event(name: "Event 6", location: "Location 6", startDateTime: DateTime.now()),
    Event(name: "Event 7", location: "Location 7", startDateTime: DateTime.now()),
    Event(name: "Event 8", location: "Location 8", startDateTime: DateTime.now()),
    Event(name: "Event 9", location: "Location 9", startDateTime: DateTime.now()),
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
          body: ListView.builder(                          //конструктор builder
            physics: BouncingScrollPhysics(),       //тип прокручивания
            padding: EdgeInsets.all(30),
            itemCount: events.length,
            itemBuilder: (_, index) => Card(
                color: Colors.red[300],
                margin: EdgeInsets.symmetric(vertical: 7.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 10,                        //высота над экраном
                child: Column(
                  children: [
                    Text(
                      events[index].name,
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(events[index].location),
                        SizedBox(width: 10,),
                        Text(events[index].startDateTime.toString())
                      ],)
                  ],
                )
            ),
            // children: events.map((e) => Text(                  //Создание маленьких полных списков
            //     e,
            //     style: TextStyle(fontSize: 100),)).toList(),
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
