import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:screw/constants.dart';
import 'package:screw/models/player_model.dart';

part 'player_state.dart';

class PlayerCubit extends Cubit<PlayerState> {
  PlayerCubit() : super(PlayerInitial());
  List<PlayerModel>? players;
  feashDate() {
    var player = Hive.box<PlayerModel>(kmodelBox);
    players = player.values.toList();
    emit(PlayerSuccess(players!));
  }
}
