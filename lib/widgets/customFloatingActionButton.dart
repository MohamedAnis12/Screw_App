import 'package:flutter/material.dart';
import 'package:screw/constants.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
      onPressed: onPressed,
      backgroundColor: supColor,
      splashColor: Colors.amber,
      child: Icon(Icons.add, color: Colors.white),
    );
  }
}
