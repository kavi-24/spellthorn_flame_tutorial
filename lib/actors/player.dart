import 'dart:async';

import 'package:flame/components.dart';
import 'package:spellthorn_flame_tutorial/pixel_adventure.dart';

class Player extends SpriteAnimationGroupComponent
    with HasGameRef<PixelAdventure> {
  late final SpriteAnimation idleAnimation;
  final double stepTime = 0.05;

  @override
  FutureOr<void> onLoad() {
    _loadAllAnimations();
    return super.onLoad();
  }

  void _loadAllAnimations() {
    idleAnimation = SpriteAnimation.fromFrameData(
      gameRef.images.fromCache("Main Characters/Ninja Frog/Idle (32x32).png"),
      SpriteAnimationData.sequenced(
        amount: 11,
        stepTime: stepTime, // 20 fps or 50 ms
        textureSize: Vector2.all(32),
      ),
    );
  }
}
