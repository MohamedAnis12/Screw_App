import 'package:flutter/material.dart';
import 'package:screw/constants.dart';
import 'package:screw/widgets/Player_card.dart';
import 'package:screw/widgets/custom_buttom.dart';
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
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PlayerCard(),
                    );
                  },
                ),
              ),
              SizedBox(height: 40),
              CustomButtom(text: "ابدا الجوله"),
              SizedBox(height: 40),
            ],
          ),
          Positioned(
            right: 15,
            bottom: MediaQuery.of(context).size.height * .20,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),
              ),
              onPressed: () {},
              backgroundColor: mainColor,
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
