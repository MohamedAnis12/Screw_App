import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:screw/constants.dart';
import 'package:screw/cubits/add_player_cubit/add_player_cubit.dart';
import 'package:screw/models/player_model.dart';
import 'package:screw/views/homeView.dart';
import 'package:screw/views/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  await Hive.openBox<PlayerModel>(kmodelBox);
  Hive.registerAdapter(PlayerModelAdapter());
  runApp(ScrewApp());
}

class ScrewApp extends StatelessWidget {
  const ScrewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => AddPlayerCubit())],
      child: MaterialApp(
        home: HomeView(),
        theme: ThemeData(fontFamily: "Playpen Sans Arabic"),
      ),
    );
  }
}
