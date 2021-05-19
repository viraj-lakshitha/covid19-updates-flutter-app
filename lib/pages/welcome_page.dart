import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  void nextPage() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/load');
    });
  }
  
  @override
  void initState() {
    super.initState();
    nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/corona_logo.png'),
                  height: 80.0,
                ),
                SizedBox(height: 20.0),
                Text(
                  'Covid-19 Live Updates',
                  style: TextStyle(
                      fontFamily: 'PTSerif',
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Sri Lanka',
                  style: TextStyle(
                      fontFamily: 'PTSerif',
                      fontWeight: FontWeight.w200,
                      fontSize: 18.0
                  ),
                )],
            ),
          ),
        ),
      ),
    );
  }
}
