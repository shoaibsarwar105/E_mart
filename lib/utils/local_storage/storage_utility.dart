import 'package:get_storage/get_storage.dart';

class BLocalStorage {
  static final BLocalStorage _instance = BLocalStorage._internal();

  factory BLocalStorage() {
    return _instance;
  }

  BLocalStorage._internal();

  final _storage = GetStorage();

//Generic method to save data
  Future<void> saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

//Generic method to read data

  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  //Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //clear all data in storage
  Future<void> clearAll() async {
    _storage.erase();
  }
}
