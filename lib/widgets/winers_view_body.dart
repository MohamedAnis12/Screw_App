import 'package:flutter/material.dart';
import 'package:screw/constants.dart';
import 'package:screw/widgets/Custom_winers_card.dart';
import 'package:screw/widgets/custom_text.dart';

class WinersViewBody extends StatelessWidget {
  const WinersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        CustomText(text: "الفائزين", fontSize: 60, color: Colors.yellowAccent),
        SizedBox(height: 50),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: WinersCard(
                  icon: Icons.emoji_events,
                  color: winersColors[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}


