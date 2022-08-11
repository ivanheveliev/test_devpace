import 'package:flutter/material.dart';
import 'package:t_devpace/base/app_constants.dart';
import 'package:t_devpace/base/app_settings.dart';
import 'package:t_devpace/data/models/tile_model.dart';
import 'package:t_devpace/screens/home_page/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  for (int i = 0; i < AppConstants.tilesCount; i++) {
    AppSettings.tilesList.add(
      Tile(
        'Item${i+1}',
      ),
    );
  }
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
