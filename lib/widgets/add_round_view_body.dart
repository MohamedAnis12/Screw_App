import 'package:flutter/material.dart';
import 'package:screw/widgets/RoundPlayerCard.dart';
import 'package:screw/widgets/customFloatingActionButton.dart';
import 'package:screw/widgets/custom_button.dart';
import 'package:screw/widgets/custom_text.dart';

class AddRoundViewBody extends StatelessWidget {
  const AddRoundViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              CustomText(
                text: "جدول النقاط",
                fontSize: 60,
                color: Colors.white,
              ),
              SizedBox(height: 20),

              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomRoundPlayerCard(),
                    );
                  },
                ),
              ),
              SizedBox(height: 40),
              CustomButton(text: "انهاء اللعبه"),
              SizedBox(height: 40),
            ],
          ),
        ),
        Positioned(
          right: 15,
          bottom: MediaQuery.of(context).size.height * .20,
          child: CustomFloatingActionButton(
            onPressed: (){

            },
          ),
        ),
      ],
    );
  }
}


