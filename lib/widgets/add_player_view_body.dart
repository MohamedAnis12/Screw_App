import 'package:flutter/material.dart';
import 'package:screw/widgets/Player_card.dart';
import 'package:screw/widgets/custom_text.dart';

class AddPlayerViewBody extends StatelessWidget {
  const AddPlayerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomText(text: "اسماء اللاعبين", fontSize: 60, color: Colors.white),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PlayerCard(),
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
