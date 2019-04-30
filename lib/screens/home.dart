import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.tealAccent,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Text(
                'This is America',
                style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
              ),
            ),
            Expanded(
              child: Text(
                'This is Australia',
                style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
              ),
            ),
            ImageAssets(),
            ButtonCreate()
          ],
        ),
      ),
    );
  }
}

class ImageAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/got.jpg');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class ButtonCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        width: 250.0,
        height: 50.0,
        child: RaisedButton(
            color: Colors.deepPurple,
            child: Text('press me', style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30.0,
                color: Colors.white
            ),),
            elevation: 15.0,
            onPressed: () {
              pressedButton(context);
            }));
  }

  void pressedButton(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('This is an alert dialog to show pressed button'),
      content: Text('Thankyou'),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }
}
