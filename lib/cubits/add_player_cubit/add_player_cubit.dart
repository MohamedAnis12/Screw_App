import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:screw/constants.dart';
import 'package:screw/models/player_model.dart';

part 'add_player_state.dart';

class AddPlayerCubit extends Cubit<AddPlayerState> {
  AddPlayerCubit() : super(AddPlayerInitial());
  AddPlayer(PlayerModel player) async {
    emit(AddPlayerLoading());
    try {
      var playerBox = Hive.box<PlayerModel>(kmodelBox);
      print("addplayersuccess");
      emit(AddPlayerSuccess());
      await playerBox.add(player);
    } catch (e) {
      emit(AddPlayerFailure(e.toString()));
    }
  }
}
