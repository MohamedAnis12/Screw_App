import 'package:flutter/material.dart';
import 'package:screw/widgets/custom_text.dart';

class CustomRoundPlayerCard extends StatelessWidget {
  const CustomRoundPlayerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xff4f4bd9),

        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomText(color: Colors.white, fontSize: 16, text: "name"),
            CustomText(color: Colors.white, fontSize: 16, text: "0"),
            CustomText(color: Colors.white, fontSize: 16, text: "0"),
            CustomText(color: Colors.white, fontSize: 16, text: "0"),
            CustomText(color: Colors.white, fontSize: 16, text: "0"),
            CustomText(color: Colors.white, fontSize: 16, text: "0"),
          ],
        ),
      ),
    );
  }
}