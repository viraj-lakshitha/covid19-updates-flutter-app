import 'package:corona_live_update_lk/objects/InfoCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {@override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Initialize Empty Map
  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80.0,0,80.0,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: deprecated_member_use
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
                    Text('Local Data')
                  ],
                ),
              color: Colors.lightBlue[200],
              height: 50.0,
            ),
            SizedBox(height: 15.0,),
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
                    Text('Global Data')
                  ],
                ),
              color: Colors.redAccent[200],
              height: 50.0,
            ),
            SizedBox(height: 15.0,),
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
    );
  }
}
