import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:net_here/models/cordenadas.dart';

class ConsumeApi {
  Future<dynamic> fetchGeo() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      final info = Coodenadas.fromJson(jsonDecode(response.body));
      return info;
    } else {
      throw Exception("Erro with API");
    }
  }
}
