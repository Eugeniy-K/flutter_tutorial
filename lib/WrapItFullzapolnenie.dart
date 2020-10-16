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
          body: Center(
            child: Container(
              color: Colors.blue,
              width: 400,
              height: 400,
              child: Wrap(            //для полного заполнения контейнера
                direction: Axis.horizontal,   //по умолчанию расположение по гориз
                spacing: 20,              //пробел меж Container по главной оси
                runSpacing: 20,           //отступ по побочной
                alignment: WrapAlignment.center,      //выравнивание по главной оси
                runAlignment: WrapAlignment.center,   //по побочной
                verticalDirection: VerticalDirection.up, //заполнение элементами снизу вверх
                textDirection: TextDirection.rtl,   //текст в правого элем. на лево
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                    child: Text(
                      "X", style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                    child: Text(
                      "X", style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                ],
              ),
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
