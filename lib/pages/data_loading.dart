import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DataLoad extends StatefulWidget {
  @override
  _DataLoadState createState() => _DataLoadState();
}

class _DataLoadState extends State<DataLoad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bgImg.png'),
                fit: BoxFit.fitHeight
              )
            ),
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('assets/corona-title.png'),
                width: 90.0,
              ),
              Text('Corona Live Updates',
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    fontFamily: 'PTSerif',
                  )),
              SizedBox(
                height: 5.0,
              ),
              Text('Sri Lanka',
                  style: TextStyle(
                    fontSize: 15.0,
                  )),
              SizedBox(
                height: 15.0,
              ),
              SpinKitThreeBounce(
                color: Colors.black,
                size: 15.0,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
