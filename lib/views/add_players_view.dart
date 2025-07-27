import 'package:flutter/material.dart';
import 'package:screw/constants.dart';
import 'package:screw/widgets/add_player_view_body.dart';

class AddPlayersView extends StatelessWidget {
  const AddPlayersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddPlayerViewBody(),
      backgroundColor: mainColor,
    );
  }
}