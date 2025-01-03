import 'package:flame/components.dart';
import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flappy_bird/game/assets.dart';
import 'package:flappy_bird/game/bird_movement.dart';

class Bird extends SpriteGroupComponent<BirdMovement> with HasGameRef<FlappyBirdGame> {
  Bird() : super(sprites: {}, current: BirdMovement.middle); // Initialize `sprites` with an empty map

  @override
  Future<void> onLoad() async {
    // Load the sprites for different bird movements
    final birdMidFlap = await gameRef.loadSprite(Assets.birdMidFlap);
    final birdDownFlap = await gameRef.loadSprite(Assets.birdDownFlap);
    final birdUpFlap = await gameRef.loadSprite(Assets.birdUpFlap);

    // Set the size, position, and sprite map
    size = Vector2(50, 40);
    position = Vector2(20, gameRef.size.y / 2 - size.y / 2);
    sprites = {
      BirdMovement.middle: birdMidFlap,
      BirdMovement.down: birdDownFlap,
      BirdMovement.up: birdUpFlap,
    };

    print('Bird sprites loaded successfully.');
  }
}
