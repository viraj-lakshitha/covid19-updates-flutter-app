import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {

  final String titleOfCard;
  final int stat;
  final String updateTime;
  final bool isLocal;

  InfoCard({required this.updateTime, required this.stat, required this.titleOfCard, required this.isLocal});

  @override
  Widget build(BuildContext context) {

    return Card(
      color: isLocal ? Colors.lightBlue[200] : Colors.redAccent[200],
      margin: EdgeInsets.all(12.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Center(
              child: Text(
                '$titleOfCard',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Divider(height: 10),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                '$stat',
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Divider(height: 10.0),
            SizedBox(height: 10.0),
            Center(
              child: Text(
                'Last Update : $updateTime',
                style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w300
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
