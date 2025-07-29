import 'package:flutter/material.dart';
import 'package:screw/widgets/Player_card.dart';

class CustomPlayerscardListview extends StatelessWidget {
  const CustomPlayerscardListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(padding: const EdgeInsets.all(8.0), child: PlayerCard());
      },
    );
  }
}
