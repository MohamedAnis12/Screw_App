import 'package:flutter/material.dart';
import 'package:screw/widgets/custom_text.dart';
import 'package:screw/widgets/custome_icon.dart';

class PlayerCard extends StatelessWidget {
  const PlayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xff4f4bd9),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomText(text: "name", fontSize: 16, color: Colors.white),
              CustomeIcon()
            ],
          ),
        ),
      ),
    );
  }
}
