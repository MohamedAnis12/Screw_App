import 'package:flutter/material.dart';
import 'package:screw/constants.dart';
import 'package:screw/widgets/custom_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
      onPressed: () {
        showModalBottomSheet(
          backgroundColor: mainColor,
          context: context,
          builder: (context) {
            return CustomBottomSheet();
          },
        );
      },
      backgroundColor: mainColor,
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}
