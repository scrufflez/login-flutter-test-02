import 'package:flutter/material.dart';
import 'asgard_colors.dart';

class AsgardTextStyles {
  AsgardTextStyles._();

  static const TextStyle brand = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AsgardColors.textBrand,
    letterSpacing: 1.4,
  );

  static const TextStyle body = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AsgardColors.textSecondary,
  );

  static const TextStyle button = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.1,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AsgardColors.textMuted,
  );

  static const TextStyle h1 = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w400,
    color: AsgardColors.textMuted,
  );
}
