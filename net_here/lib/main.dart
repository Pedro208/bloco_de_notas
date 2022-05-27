import 'package:flutter/material.dart';
import 'package:net_here/helpers/geolocation.dart';
import 'screns/home_page.dart';

void main() {
  print("_______________teste______________");
  print(Geolocation().determinePosition());
  runApp(const MyApp());
}
