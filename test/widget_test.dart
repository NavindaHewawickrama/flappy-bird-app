import 'package:flutter_test/flutter_test.dart';
import 'package:flappy_bird/game/flappy_bird_game.dart';
import 'package:flame/game.dart';

void main() {
  testWidgets('Flappy Bird Game initializes correctly', (WidgetTester tester) async {
    // Create an instance of your game.
    final game = FlappyBirdGame();

    // Build the GameWidget and trigger a frame.
    await tester.pumpWidget(GameWidget(game: game));

    // Verify that the widget tree renders without any errors.
    expect(find.byType(GameWidget), findsOneWidget);
  });
}
