import 'package:flutter/cupertino.dart';

class Coodenadas {
  double? x;
  double? y;

  Coodenadas({@required this.x, @required this.y});

  factory Coodenadas.fromJson(Map<String, dynamic> json) {
    return Coodenadas(x: json['x'], y: json['y']);
  }
}
