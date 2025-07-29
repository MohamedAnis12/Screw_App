import 'package:flutter/material.dart';
import 'package:screw/constants.dart';
import 'package:screw/widgets/winers_view_body.dart';

class WinersView extends StatelessWidget {
  const WinersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WinersViewBody(), backgroundColor: mainColor);
  }
}
