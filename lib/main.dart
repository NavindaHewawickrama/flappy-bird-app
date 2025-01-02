import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flappy_bird/game/flappy_bird_game.dart';

void main() {

  final game = FlappyBirdGame();
  runApp(
    GameWidget(game: game),
  );
}
