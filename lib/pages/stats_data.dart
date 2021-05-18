import 'package:flutter/material.dart';

class StatsData extends StatefulWidget {@override
  _StatsDataState createState() => _StatsDataState();
}

class _StatsDataState extends State<StatsData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text('Stats Data !'),
        ),
      ),
    );
  }
}
