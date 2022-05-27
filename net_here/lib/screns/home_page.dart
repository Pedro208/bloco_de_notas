import 'package:flutter/material.dart';
import 'package:net_here/screns/geoMap.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Net Here',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GeoMap(),
    );
  }
}