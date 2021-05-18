import 'dart:convert';
import 'package:http/http.dart';

class GlobalStats {
  String url;
  int? globalNewCases;
  int? globalTotalCases;
  int? globalNewDeath;
  int? globalDeath;
  int? globalRecovered;

  GlobalStats({required this.url});

  Future<void> fetchData() async {

    try {
      // Retrieve Data from APIs
      Response response = await get(Uri.parse(url));
      Map fetchData = jsonDecode(response.body);

      // Assign Values to Variables
      this.globalNewCases = fetchData['data']['global_new_cases'];
      this.globalTotalCases = fetchData['data']['global_total_cases'];
      this.globalNewDeath = fetchData['data']['global_new_deaths'];
      this.globalDeath = fetchData['data']['global_deaths'];
      this.globalRecovered = fetchData['data']['global_recovered'];

    }catch (e) {
      print(e);
    }
  }
}