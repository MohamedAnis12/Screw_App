import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart'; // ✅ بدل hive العادية
import 'package:screw/constants.dart';
import 'package:screw/models/player_model.dart';
import 'package:screw/views/homeView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(kmodelBox);
  Hive.registerAdapter(PlayerModelAdapter());
  runApp(ScrewApp());
}

class ScrewApp extends StatelessWidget {
  const ScrewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      theme: ThemeData(fontFamily: "Playpen Sans Arabic"),
    );
  }
}
