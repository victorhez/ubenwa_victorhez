import 'package:flutter/material.dart';
import 'package:ubenwa_victorhez/core/utils/size_utils.dart';
import 'package:ubenwa_victorhez/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeWhiteA70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlack90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.41),
        fontSize: 10.fSize,
      );
  static get bodySmallBlack900Regular => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlack900Regular_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBluegray900Regular => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRobotoBlack900 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  // Inter text style
  static get interBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interGray50 => TextStyle(
        color: appTheme.gray50,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interGreen800 => TextStyle(
        color: appTheme.green800,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interRedA700 => TextStyle(
        color: appTheme.redA700,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).inter;
  static get interTeal900 => TextStyle(
        color: appTheme.teal900,
        fontSize: 70.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  // Label text style
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  // Title text style
  static get titleLargeAmber500 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.amber500,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
      );
  static get titleLargeBluegray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumWhiteA70001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA7000118 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get irishGrover {
    return copyWith(
      fontFamily: 'Irish Grover',
    );
  }

  TextStyle get avenir {
    return copyWith(
      fontFamily: 'Avenir',
    );
  }
}
