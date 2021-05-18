import 'dart:convert';
import 'package:http/http.dart';

class LocalStats {
  String url;
  String? lastUpdateTime;
  int? localNewCases;
  int? localTotalCase;
  int? localNewDeath;
  int? localDeath;
  int? localRecovered;

  LocalStats({required this.url});

  Future<void> fetchData() async {

    try {
      // Retrieve Data from APIs
      Response response = await get(Uri.parse(url));
      Map fetchData = jsonDecode(response.body);

      // Assign Values to Variables
      this.lastUpdateTime = fetchData['data']['update_date_time'];
      this.localNewCases = fetchData['data']['local_new_cases'];
      this.localTotalCase = fetchData['data']['local_total_cases'];
      this.localNewDeath = fetchData['data']['local_new_deaths'];
      this.localDeath = fetchData['data']['local_deaths'];
      this.localRecovered = fetchData['data']['local_recovered'];

    }catch (e) {
      print(e);
    }
  }
}