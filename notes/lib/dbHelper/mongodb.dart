import 'dart:developer';
import 'dart:ffi';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:notes/dbHelper/constant.dart';

class MongoDB {
  static var db, userCollection;

  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    userCollection = db.collection(USER_COLLECTION);
  }

  Future<String> insert(data) async {
    try {
      var result = await userCollection.insertOne(data.toJson());

      if (result.isSuccess) {
        return "Info inserida";
      } else {
        return "algo deu errado";
      }
    } catch (e) {
      return e.toString();
    }
  }
}
