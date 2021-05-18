import 'package:corona_live_update_lk/objects/InfoCard.dart';
import 'package:flutter/material.dart';

class LocalStats extends StatefulWidget {
  @override
  _LocalStatsState createState() => _LocalStatsState();
}

class _LocalStatsState extends State<LocalStats> {

  Map localData = {};

  @override
  Widget build(BuildContext context) {

    localData = localData.isNotEmpty ? localData : ModalRoute.of(context)!.settings.arguments as Map;

    List<InfoCard> localInfo = [
      InfoCard(stat: localData['localNewCases'], updateTime: localData['lastUpdateTime'], titleOfCard: 'Local New Cases', isLocal: true),
      InfoCard(stat: localData['localTotalCase'], updateTime: localData['lastUpdateTime'], titleOfCard: 'Local Total Cases', isLocal: true),
      InfoCard(stat: localData['localNewDeath'], updateTime: localData['lastUpdateTime'], titleOfCard: 'Local New Death',isLocal: true),
      InfoCard(stat: localData['localDeath'], updateTime: localData['lastUpdateTime'], titleOfCard: 'Local Total Death',isLocal: true),
      InfoCard(stat: localData['localRecovered'], updateTime: localData['lastUpdateTime'], titleOfCard: 'Local Recovered',isLocal: true),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Local Corona Stats')),
          backgroundColor: Colors.lightBlue[200],
        ),
        body: SafeArea(
          child: Container(
              child: Container(
                child: ListView(
                    children: localInfo.map( (currentStat) => InfoCard(
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
