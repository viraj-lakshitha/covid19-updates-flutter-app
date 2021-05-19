import 'package:corona_live_update_lk/objects/InfoCard.dart';
import 'package:corona_live_update_lk/pages/data_loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {@override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Initialize Empty Map
  Map data = {};
  List<PCR> pcrTestData = [];

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
    pcrTestData = data['listOfPCRData'];
    String? lastDate = pcrTestData[pcrTestData.length-1].date;

    return Scaffold(
      body: Container(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Covid-19 Updates',
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'PTSerif',
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: 5.0,),
          Text(
            'Source : Health Promotion Bureau - Sri Lanka',
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
          SizedBox(height: 5.0,),
          Divider(height: 5),
          SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0,0,12.0,0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  border: Border.all(
                      color: Colors.black54,
                      width: 1.0
                  )
              ),
              child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  // Chart title
                  title: ChartTitle(text: 'PCR Tests\nfrom 2020-02-18 to $lastDate',
                      textStyle: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600
                      )
                  ),
                  // Enable legend
                  legend: Legend(isVisible: true),
                  // Enable tooltip
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <ChartSeries<PCR, String>>[
                    LineSeries<PCR, String>(
                        dataSource: pcrTestData,
                        xValueMapper: (PCR pcr, _) => pcr.date,
                        yValueMapper: (PCR pcr, _) => pcr.count,
                        isVisibleInLegend: false,
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: false))
                  ]
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          // ignore: deprecated_member_use
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/local', arguments: {
                        'lastUpdateTime' : data['lastUpdateTime'],
                        'localNewCases' : data['localNewCases'],
                        'localTotalCase' : data['localTotalCase'],
                        'localNewDeath' : data['localNewDeath'],
                        'localDeath' : data['localDeath'],
                        'localRecovered' : data['localRecovered'],
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                            Icons.location_on_outlined
                        ),
                        Text('Local')
                      ],
                    ),
                    color: Colors.lightBlue[200],
                    height: 50.0,
                  ),
                  SizedBox(width: 15.0,),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/global', arguments: {
                        'lastUpdateTime' : data['lastUpdateTime'],
                        'globalNewCases' : data['globalNewCases'],
                        'globalTotalCases' : data['globalTotalCases'],
                        'globalNewDeath' : data['globalNewDeath'],
                        'globalDeath' : data['globalDeath'],
                        'globalRecovered' : data['globalRecovered']
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                            Icons.location_on_outlined
                        ),
                        Text('Global')
                      ],
                    ),
                    color: Colors.redAccent[200],
                    height: 50.0,
                  ),
                  SizedBox(width: 15.0,),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/info');
                    },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                              Icons.info_outline
                          ),
                          Text(' Info')
                        ],
                      ),
                    ),
                    color: Colors.black26,
                    height: 50.0,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50.0,),
          Text(
            'Developer : inforviraj@gmail.com',
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
          SizedBox(height: 12.0,),
          FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/load');
              },
            child: Icon(
              Icons.refresh_outlined
            ),
          )
        ],
      ),
      ),
    );
  }
}
