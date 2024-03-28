import 'package:android_alarm_manager_plus/android_alarm_manager_plus.dart';
import 'package:flutter/material.dart';

import 'ui/home_page.dart';
import 'utils/background_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final BackgroundService service = BackgroundService();

  service.initializeIsolate();
  AndroidAlarmManager.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const title = 'Simple Alarm Manager';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: HomePage(title: title),
    );
  }
}
