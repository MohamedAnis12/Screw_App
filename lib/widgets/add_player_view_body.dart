import 'package:flutter/material.dart';
import 'package:screw/constants.dart';
import 'package:screw/views/add_rounds_view.dart';
import 'package:screw/widgets/Custom_playersCard_listview.dart';
import 'package:screw/widgets/customFloatingActionButton.dart';
import 'package:screw/widgets/custom_bottom_sheet.dart';
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
              SizedBox(height: 20),
              Expanded(child: CustomPlayerscardListview()),
              SizedBox(height: 50),
              CustomButton(
                text: "ابدا الجوله",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AddRoundsView();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 40),
            ],
          ),
          Positioned(
            right: 15,
            bottom: MediaQuery.of(context).size.height * .20,
            child: CustomFloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: mainColor,
                  context: context,
                  builder: (context) {
                    return CustomBottomSheet();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
