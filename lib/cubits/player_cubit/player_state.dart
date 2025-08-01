part of 'player_cubit.dart';

@immutable
sealed class PlayerState {}

final class PlayerInitial extends PlayerState {}

final class PlayerSuccess extends PlayerState {
  final List<PlayerModel> players;

  PlayerSuccess(this.players);
}
