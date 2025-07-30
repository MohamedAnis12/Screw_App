import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_player_state.dart';

class AddPlayerCubit extends Cubit<AddPlayerState> {
  AddPlayerCubit() : super(AddPlayerInitial());
}
