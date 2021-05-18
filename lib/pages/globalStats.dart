import 'package:corona_live_update_lk/objects/InfoCard.dart';
import 'package:flutter/material.dart';

class GlobalStats extends StatefulWidget {@override
_GlobalStatsState createState() => _GlobalStatsState();
}

class _GlobalStatsState extends State<GlobalStats> {

  Map globalData = {};

  @override
  Widget build(BuildContext context) {

    globalData = globalData.isNotEmpty ? globalData : ModalRoute.of(context)!.settings.arguments as Map;

    List<InfoCard> globalInfo = [
      InfoCard(stat: globalData['globalNewCases'], updateTime: globalData['lastUpdateTime'], titleOfCard: 'Global New Cases', isLocal: false),
      InfoCard(stat: globalData['globalTotalCases'], updateTime: globalData['lastUpdateTime'], titleOfCard: 'Global Total Cases', isLocal: false),
      InfoCard(stat: globalData['globalNewDeath'], updateTime: globalData['lastUpdateTime'], titleOfCard: 'Global New Cases', isLocal: false),
      InfoCard(stat: globalData['globalDeath'], updateTime: globalData['lastUpdateTime'], titleOfCard: 'Global Total Death', isLocal: false),
      InfoCard(stat: globalData['globalRecovered'], updateTime: globalData['lastUpdateTime'], titleOfCard: 'Global Recovered', isLocal: false),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Global Corona Stats')),
          backgroundColor: Colors.redAccent[200],
        ),
        body: SafeArea(
          child: Container(
              child: Container(
                child: ListView(
                    children: globalInfo.map( (currentStat) => InfoCard(
                        updateTime: currentStat.updateTime,
                        stat: currentStat.stat,
                        titleOfCard: currentStat.titleOfCard,
                        isLocal: currentStat.isLocal
                    )).toList()
                ),
              )
          ),
        )
    );
  }
}
