import 'package:flutter/material.dart';
import 'package:screw/constants.dart';
import 'package:screw/widgets/add_round_view_body.dart';

class AddRoundsView extends StatelessWidget {
  const AddRoundsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddRoundViewBody(),
      backgroundColor: mainColor,
    );
  }
}
