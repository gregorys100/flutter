import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyWidget(),
      debugShowCheckedModeBanner: false, //Removing Debug Banner
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(20),
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            new BoxShadow(
              color: Colors.white,
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            Text('Do you want to exit Pokemon Go?'),
            RaisedButton(
              child: Text('OK'),
              onPressed: null,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.cyan)),
                  color: Colors.cyan,
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
