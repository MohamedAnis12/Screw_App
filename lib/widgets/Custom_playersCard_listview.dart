import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screw/cubits/player_cubit/player_cubit.dart';
import 'package:screw/models/player_model.dart';
import 'package:screw/widgets/Player_card.dart';

class CustomPlayerscardListview extends StatelessWidget {
  const CustomPlayerscardListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerCubit, PlayerState>(
      builder: (context, state) {
        List<PlayerModel> players=BlocProvider.of<PlayerCubit>(context).players??[];
        return ListView.builder(
          itemCount: players.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: PlayerCard(player:players[index],),
            );
          },
        );
      },
    );
  }
}
