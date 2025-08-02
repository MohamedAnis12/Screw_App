import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screw/constants.dart';
import 'package:screw/cubits/player_cubit/player_cubit.dart';
import 'package:screw/widgets/add_player_view_body.dart';

class AddPlayersView extends StatelessWidget {
  const AddPlayersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayerCubit(),
      child: Scaffold(body: AddPlayerViewBody(), backgroundColor: mainColor),
    );
  }
}
