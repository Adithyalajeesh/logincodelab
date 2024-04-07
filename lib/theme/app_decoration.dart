import 'package:flutter/material.dart';
import 'package:logincodelab/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow900,
      );

  // Outline decorations
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration();
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get outlineYellow => BoxDecoration(
        color: theme.colorScheme.onError,
        border: Border.all(
          color: appTheme.yellow90001,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder63 => BorderRadius.circular(
        63.h,
      );
}


double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;
