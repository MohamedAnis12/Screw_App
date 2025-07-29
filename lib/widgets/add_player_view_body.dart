import 'package:flutter/material.dart';
import 'package:screw/widgets/Custom_playersCard_listview.dart';
import 'package:screw/widgets/customFloatingActionButton.dart';
import 'package:screw/widgets/custom_button.dart';
import 'package:screw/widgets/custom_text.dart';

class AddPlayerViewBody extends StatelessWidget {
  const AddPlayerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 50),
              CustomText(
                text: "اسماء اللاعبين",
                fontSize: 60,
                color: Colors.white,
              ),
              Expanded(child: CustomPlayerscardListview()),
              SizedBox(height: 40),
              CustomButton(text: "ابدا الجوله"),
              SizedBox(height: 40),
            ],
          ),
          Positioned(
            right: 15,
            bottom: MediaQuery.of(context).size.height * .20,
            child: CustomFloatingActionButton(),
          ),
        ],
      ),
    );
  }
}
