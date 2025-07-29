import 'package:hive/hive.dart';

part 'player_model.g.dart';

@HiveType(typeId: 0)
class PlayerModel extends HiveObject {
  @HiveField(0)
  String name;
  @HiveField(1)
  int score;
  @HiveField(2)
  int round;
  PlayerModel({required this.name,this.score=0,this.round=0});
}
