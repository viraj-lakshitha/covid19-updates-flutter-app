import 'package:corona_live_update_lk/objects/InfoCard.dart';
import 'package:flutter/material.dart';

class GlobalStats extends StatefulWidget {@override
  _GlobalStatsState createState() => _GlobalStatsState();
}

class _GlobalStatsState extends State<GlobalStats> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;

    List<InfoCard> globalInfo = [
      InfoCard(stat: data['globalNewCases'], updateTime: data['lastUpdateTime'], titleOfCard: 'Global New Cases', isLocal: false),
      InfoCard(stat: data['globalTotalCases'], updateTime: data['lastUpdateTime'], titleOfCard: 'Global Total Cases', isLocal: false),
      InfoCard(stat: data['globalNewDeath'], updateTime: data['lastUpdateTime'], titleOfCard: 'Global New Cases', isLocal: false),
      InfoCard(stat: data['globalDeath'], updateTime: data['lastUpdateTime'], titleOfCard: 'Global Total Death', isLocal: false),
      InfoCard(stat: data['globalRecovered'], updateTime: data['lastUpdateTime'], titleOfCard: 'Global Recovered', isLocal: false),
    ];

    return Scaffold(
        // body: SafeArea(
        //   // child: ,
        // )
    );
  }
}
