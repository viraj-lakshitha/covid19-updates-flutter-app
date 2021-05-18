import 'package:corona_live_update_lk/pages/data_loading.dart';
import 'package:corona_live_update_lk/pages/globalStats.dart';
import 'package:corona_live_update_lk/pages/home_page.dart';
import 'package:corona_live_update_lk/pages/information.dart';
import 'package:corona_live_update_lk/pages/localStats.dart';
import 'package:corona_live_update_lk/pages/stats_data.dart';
import 'package:corona_live_update_lk/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => WelcomePage(),
      '/load': (context) => DataLoad(),
      '/home': (context) => HomePage(),
      '/stats': (context) => StatsData(),
      '/info': (context) => InfoPage(),
      '/local': (context) => LocalStats(),
      '/global': (context) => GlobalStats(),
    },
  ));
}