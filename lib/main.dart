import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:storage/main_page.dart';
import 'package:storage/services/file_storage_service.dart';
import 'package:storage/services/flutter_secure_storage.dart';
import 'package:storage/services/shared_preferences_service.dart';
import 'package:storage/services/storage_services.dart';

final locator = GetIt.instance;

void main() {
  locator.registerSingleton<StorageServices>(FileStorageService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: MainPage());
  }
}
