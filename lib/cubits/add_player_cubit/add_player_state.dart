part of 'add_player_cubit.dart';

@immutable
sealed class AddPlayerState {}

final class AddPlayerInitial extends AddPlayerState {}
final class AddPlayerSuccess extends AddPlayerState {}
final class AddPlayerLoading extends AddPlayerState {}
final class AddPlayerFailure extends AddPlayerState {
  final String errorMessage;

  AddPlayerFailure( this.errorMessage);

}

