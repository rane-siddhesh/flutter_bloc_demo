import 'dart:ffi';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final secureStorage = const FlutterSecureStorage();

  setValue(String key, dynamic value) async{
    await secureStorage.write(key: key, value: value);
  }

  Future<String?>? readValue(String key) async {
    var value = await secureStorage.read(key: key);
    print("inside local storage $value");
    return value;
  }

  clearValue(String key) async {
    await secureStorage.delete(key: key);
  }
}