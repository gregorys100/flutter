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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[Colors.green[300], Colors.cyanAccent[400]],
          ),
        ),
        alignment: Alignment(0.0, 0.0),
        child: Container(
          alignment: Alignment(0.0, 0.0),
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          height: 210,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              new BoxShadow(
                color: Colors.white,
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text('Do you want to exit Pokemon Go?'),
              SizedBox(height: 30),
              RaisedGradientButton(
                  child: Text(
                    'OK',
                    style: TextStyle(color: Colors.white),
                  ),
                  gradient: LinearGradient(
                    colors: <Color>[Colors.green[300], Colors.cyanAccent[400]],
                  ),
                  onPressed: () {
                    print('button clicked');
                  }),
              SizedBox(height: 30),
              FlatButton(
                child: Text('Cancel'),
                onPressed: null,
                color: Colors.green[500],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;

  const RaisedGradientButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = 250.0,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
