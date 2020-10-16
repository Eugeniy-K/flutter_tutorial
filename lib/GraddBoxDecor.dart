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
            child: Container(
              // color: Colors.deepPurple,
              child: IconButton(                      //кнопка посередине
                icon: Icon(CustomIcons.globe, color: Colors.black38,), //цвет иконки
                iconSize: 100,
                onPressed: () {
                  print("Button pressed");
                },
              ),
              decoration: BoxDecoration(              //тень на всё дочернее
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      spreadRadius: 5,                 //величина тени
                      blurRadius: 5,                   //размытие тени
                      offset: Offset(10, 10)
                  )
                ],
                color: Colors.deepPurple,                   //цвет фона кнопки
                shape: BoxShape.circle,
                border: Border.all(
                    width: 5
                ),
              ),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(                      //общий фон
              // gradient: RadialGradient(colors: [
              //   Colors.deepPurple, Colors.black
              // ])
                image: DecorationImage(
                    image: AssetImage("assets/images/прикидываешь.jpg"),
                    fit: BoxFit.fill    //растянуть картинку
                )
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