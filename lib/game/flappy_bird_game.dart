import 'package:flame/game.dart';
import 'package:flappy_bird/components/background.dart';

class FlappyBirdGame extends FlameGame{

  @override
  Future<void> onLoad() async {
    add(Background());
  }
}