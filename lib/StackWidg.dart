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
          body: Container(
            color: Colors.black38,
            width: 400,
            height: 500,
            child: Stack(                   //наложение виджетов друг на друга
              alignment: Alignment.bottomCenter,
              fit: StackFit.expand,   //контроль над размером доч. не обёрнутых в Positioned
              overflow: Overflow.visible,       //делает виждет видимым за пределами Stack
              children: [
                Container(
                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(150),
                  child: Text("1"),
                ),
                Container(
                  color: Colors.orangeAccent,
                  padding: EdgeInsets.all(100),
                  child: Text("2"),
                ),
                Positioned(                     //позиционирование нижнего виждета
                  top: 20,
                  child: Container(
                    color: Colors.purpleAccent,
                    padding: EdgeInsets.all(50),
                    child: Text("3"),
                  ),
                ),
              ],
            ),
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
