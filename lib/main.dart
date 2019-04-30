import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
      title: "My new Stateless Widget",
      home: MyCity(), // this is stateful widget
    );
  }
}

class MyCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _MyFavCity();
  }
}

class _MyFavCity extends State<MyCity> {

  String cityName ="";
@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (String userInput){
                setState(() {
                  cityName = userInput;
                });

              },
            ),
            Text("You entered city $cityName")
          ],
        ),
      ),
    );
  }
}
