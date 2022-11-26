import 'package:flutter/material.dart';

extension HexColor on Color {
  static Color toColor(String hexCode) {
    try {
      final hexString = "0x${hexCode.substring(1)}";
      final hex = int.parse(hexString);
      return Color(hex);
    } catch (_) {
      return Colors.white;
    }
  }

  String get hexCode => '#${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
