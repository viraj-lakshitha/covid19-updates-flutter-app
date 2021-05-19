import 'package:corona_live_update_lk/objects/InfoCard.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,0),
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                              'What is Covid-19 ?',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              )
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Coronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus. Most people infected with the COVID-19 virus will experience mild to moderate respiratory illness and recover without requiring special treatment. Older people, and those with underlying medical problems like cardiovascular disease, diabetes, chronic respiratory disease, and cancer are more likely to develop serious illness. The best way to prevent and slow down transmission is to be well informed about the COVID-19 virus, the disease it causes and how it spreads. Protect yourself and others from infection by washing your hands or using an alcohol based rub frequently and not touching your face. The COVID-19 virus spreads primarily through droplets of saliva or discharge from the nose when an infected person coughs or sneezes, so it’s important that you also practice respiratory etiquette (for example, by coughing into a flexed elbow).',
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 16
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                      'Source',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )
                  ),
                  SizedBox(height: 10.0),
                  Image(
                    image: AssetImage('assets/hpb.png'),
                    width: 350,
                    height: 80,
                  ),
                  SizedBox(height: 10.0),
                  // Text(
                  //     'Developer',
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: 18,
                  //     )
                  // ),
                  Image(
                    image: AssetImage('assets/dev.png'),
                    width: 350,
                    height: 80,
                  ),
                ],
              ),
            ),
          )
        )
    );
  }
}
