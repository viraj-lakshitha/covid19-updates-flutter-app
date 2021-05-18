import 'package:corona_live_update_lk/services/globalStats.dart';
import 'package:corona_live_update_lk/services/localStats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DataLoad extends StatefulWidget {
  @override
  _DataLoadState createState() => _DataLoadState();
}

class _DataLoadState extends State<DataLoad> {

  void setData() async {

    // Load Local Data
    LocalStats instanceLocal = LocalStats(url: 'https://hpb.health.gov.lk/api/get-current-statistical');
    await instanceLocal.fetchData();

    // Load Global Data
    GlobalStats instanceGlobal = GlobalStats(url: 'https://hpb.health.gov.lk/api/get-current-statistical');
    await instanceGlobal.fetchData();

    // TODO : Separate into two
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'lastUpdateTime' : instanceLocal.lastUpdateTime,
      'localNewCases' : instanceLocal.localNewCases,
      'localTotalCase' : instanceLocal.localTotalCase,
      'localNewDeath' : instanceLocal.localNewDeath,
      'localDeath' : instanceLocal.localDeath,
      'localRecovered' : instanceLocal.localRecovered,
      'globalNewCases' : instanceGlobal.globalNewCases,
      'globalTotalCases' : instanceGlobal.globalTotalCases,
      'globalNewDeath' : instanceGlobal.globalNewDeath,
      'globalDeath' : instanceGlobal.globalDeath,
      'globalRecovered' : instanceGlobal.globalRecovered
    });
  }

  @override
  void initState() {
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: Container(
            child: SpinKitThreeBounce(
              color: Colors.black,
              size: 15.0,
            ),
          ),
        ),
      ),
    );
  }
}
