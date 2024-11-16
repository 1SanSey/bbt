import 'package:flutter/services.dart';
// ignore_for_file: prefer-correct-identifier-length

abstract class HapticUtil {
  static Future<void> tap() async {
    await HapticFeedback.selectionClick();
  }

  static Future<void> lightImpact() async {
    await HapticFeedback.lightImpact();
  }

  static Future<void> mediumImpact() async {
    await HapticFeedback.mediumImpact();
  }

  static Future<void> notify() async {
    for (var i = 0; i < 2; i++) {
      await HapticFeedback.vibrate();
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
  }

  static Future<void> runError() async {
    for (var i = 0; i < 2; i++) {
      await HapticFeedback.heavyImpact();
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
  }

  static Future<void> heavyImpact() async {
    await HapticFeedback.heavyImpact();
  }
}
