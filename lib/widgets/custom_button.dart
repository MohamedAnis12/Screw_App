import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.isLoading = false,
  });
  final String text;
  final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 75,
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xff4f4bd9),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child:isLoading?CircularProgressIndicator(
            color: Colors.white,
          ): Text(
            text,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
