import 'package:flutter/material.dart';
import 'package:net_here/helpers/geolocation.dart';
import 'map_widget.dart';

class GeoMap extends StatefulWidget {

  @override
  State<GeoMap> createState() => _GeoMapState();
}

class _GeoMapState extends State<GeoMap> {

  void _incrementCounter() {
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Net Here"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height*.85,
          color: Colors.black12,
          child: MapWidget(),
          ),
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.list),
      ), 
    );
  }
}