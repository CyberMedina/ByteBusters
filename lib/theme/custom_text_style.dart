import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline text style
  static get headlineLargeBluegray900 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get headlineLargeBluegray900_1 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  // Label text style
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargeBluegray900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargeLightgreen400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get labelLargeLightgreen400Bold =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightGreen400,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeLightgreen400_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get labelLargeLightgreen600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightGreen600,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumBluegray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeLightgreen400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get titleLargeLightgreen400_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get titleLargeLightgreen600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightGreen600,
      );
  static get titleLargeLightgreen600_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightGreen600,
      );
  static get titleLarge_1 => theme.textTheme.titleLarge!;
  static get titleMediumLightgreen400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get titleMediumLightgreen400_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get titleMediumLightgreen400_2 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMedium_1 => theme.textTheme.titleMedium!;
  static get titleMedium_2 => theme.textTheme.titleMedium!;
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallBluegray900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleSmallLightgreen400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen400,
      );
}

extension on TextStyle {
  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }
}
