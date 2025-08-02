import 'package:flutter/material.dart';

class CustomeIcon extends StatelessWidget {
  const CustomeIcon({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 50,
        width: 50,
        child: Icon(Icons.delete, color: Colors.white),
      ),
    );
  }
}
