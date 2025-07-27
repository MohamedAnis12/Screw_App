import 'package:flutter/material.dart';
import 'package:screw/views/add_players_view.dart';
import 'package:screw/widgets/custom_buttom.dart';
import 'package:screw/widgets/custom_text.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 200),
          CustomText(text: "سكرووو", fontSize: 80,color: Colors.white,),
          SizedBox(height: 320),

          CustomButtom(
            text: "ابدا اللعب",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AddPlayersView();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
