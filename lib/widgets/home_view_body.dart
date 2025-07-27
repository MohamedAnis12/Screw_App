import 'package:flutter/material.dart';
import 'package:screw/widgets/custom_buttom.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 200),
          Text("سكروووو", style: TextStyle(fontSize: 82, color: Colors.white,fontWeight: FontWeight.bold)),
          SizedBox(height: 320),

          CustomButtom(text: "ابدا اللعب",
          onTap: () {
            
          },),
        ],
      ),
    );
  }
}
