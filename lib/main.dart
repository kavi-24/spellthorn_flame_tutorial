import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:spellthorn_flame_tutorial/pixel_adventure.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();

  PixelAdventure game = PixelAdventure();
  runApp(
    GameWidget(
      game: !kDebugMode ? game : PixelAdventure(),
    ),
  );
}
