import 'package:corona_live_update_lk/pages/data_loading.dart';
import 'package:corona_live_update_lk/pages/home_page.dart';
import 'package:corona_live_update_lk/pages/stats_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => DataLoad(),
      '/home': (context) => HomePage(),
      '/stats': (context) => StatsData()
    },
  ));
}