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
}
