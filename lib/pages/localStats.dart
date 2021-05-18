import 'package:corona_live_update_lk/objects/InfoCard.dart';
import 'package:flutter/material.dart';

class LocalStats extends StatefulWidget {
  @override
  _LocalStatsState createState() => _LocalStatsState();
}

class _LocalStatsState extends State<LocalStats> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;

    List<InfoCard> localInfo = [
      InfoCard(stat: data['localNewCases'], updateTime: data['lastUpdateTime'], titleOfCard: 'Local New Cases', isLocal: true),
      InfoCard(stat: data['localTotalCase'], updateTime: data['lastUpdateTime'], titleOfCard: 'Local Total Cases', isLocal: true),
      InfoCard(stat: data['localNewDeath'], updateTime: data['lastUpdateTime'], titleOfCard: 'Local New Death',isLocal: true),
      InfoCard(stat: data['localDeath'], updateTime: data['lastUpdateTime'], titleOfCard: 'Local Total Death',isLocal: true),
      InfoCard(stat: data['localRecovered'], updateTime: data['lastUpdateTime'], titleOfCard: 'Local Recovered',isLocal: true),
    ];

    return Scaffold(
        // body: SafeArea(
        //   child: ,
        // )
    );
  }
}
