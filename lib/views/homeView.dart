import 'package:flutter/material.dart';
import 'package:screw/constants.dart';
import 'package:screw/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:mainColor ,
      body: HomeViewBody());
  }
}
