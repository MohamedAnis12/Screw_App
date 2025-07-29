import 'package:flutter/material.dart';
import 'package:screw/constants.dart';
import 'package:screw/widgets/custom_text.dart';

class WinersCard extends StatelessWidget {
  const WinersCard({super.key, required this.icon, required this.color});
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: supColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(text: "name", fontSize: 16, color: Colors.white),
            Icon(icon, color: color,size: 42,shadows: [BoxShadow(blurRadius: 20,spreadRadius: 5)],),
          ],
        ),
      ),
    );
  }
}