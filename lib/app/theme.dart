import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2a6a47),
      surfaceTint: Color(0xff2a6a47),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaef2c5),
      onPrimaryContainer: Color(0xff002110),
      secondary: Color(0xff4e6354),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd1e8d5),
      onSecondaryContainer: Color(0xff0c1f14),
      tertiary: Color(0xff3b6470),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbfe9f8),
      onTertiaryContainer: Color(0xff001f27),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff6fbf4),
      onSurface: Color(0xff181d19),
      onSurfaceVariant: Color(0xff414942),
      outline: Color(0xff717972),
      outlineVariant: Color(0xffc0c9c0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322d),
      inversePrimary: Color(0xff93d5aa),
      primaryFixed: Color(0xffaef2c5),
      onPrimaryFixed: Color(0xff002110),
      primaryFixedDim: Color(0xff93d5aa),
      onPrimaryFixedVariant: Color(0xff0a5131),
      secondaryFixed: Color(0xffd1e8d5),
      onSecondaryFixed: Color(0xff0c1f14),
      secondaryFixedDim: Color(0xffb5ccba),
      onSecondaryFixedVariant: Color(0xff374b3d),
      tertiaryFixed: Color(0xffbfe9f8),
      onTertiaryFixed: Color(0xff001f27),
      tertiaryFixedDim: Color(0xffa3cddb),
      onTertiaryFixedVariant: Color(0xff224c58),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff6fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ee),
      surfaceContainer: Color(0xffeaefe8),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdfe4dd),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff034d2d),
      surfaceTint: Color(0xff2a6a47),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff42815c),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff33473a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff647a6a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff1d4854),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff527b87),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fbf4),
      onSurface: Color(0xff181d19),
      onSurfaceVariant: Color(0xff3d453e),
      outline: Color(0xff59615a),
      outlineVariant: Color(0xff747d75),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322d),
      inversePrimary: Color(0xff93d5aa),
      primaryFixed: Color(0xff42815c),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff276745),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff647a6a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4c6152),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff527b87),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff39626e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff6fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ee),
      surfaceContainer: Color(0xffeaefe8),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdfe4dd),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff002915),
      surfaceTint: Color(0xff2a6a47),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff034d2d),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff13261a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff33473a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff00262f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff1d4854),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff6fbf4),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1e2620),
      outline: Color(0xff3d453e),
      outlineVariant: Color(0xff3d453e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322d),
      inversePrimary: Color(0xffb8fbce),
      primaryFixed: Color(0xff034d2d),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00341d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff33473a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1d3124),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff1d4854),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff00323d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd6dbd5),
      surfaceBright: Color(0xfff6fbf4),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ee),
      surfaceContainer: Color(0xffeaefe8),
      surfaceContainerHigh: Color(0xffe4eae3),
      surfaceContainerHighest: Color(0xffdfe4dd),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff93d5aa),
      surfaceTint: Color(0xff93d5aa),
      onPrimary: Color(0xff00391f),
      primaryContainer: Color(0xff0a5131),
      onPrimaryContainer: Color(0xffaef2c5),
      secondary: Color(0xffb5ccba),
      onSecondary: Color(0xff213528),
      secondaryContainer: Color(0xff374b3d),
      onSecondaryContainer: Color(0xffd1e8d5),
      tertiary: Color(0xffa3cddb),
      onTertiary: Color(0xff033541),
      tertiaryContainer: Color(0xff224c58),
      onTertiaryContainer: Color(0xffbfe9f8),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffdfe4dd),
      onSurfaceVariant: Color(0xffc0c9c0),
      outline: Color(0xff8a938b),
      outlineVariant: Color(0xff414942),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dd),
      inversePrimary: Color(0xff2a6a47),
      primaryFixed: Color(0xffaef2c5),
      onPrimaryFixed: Color(0xff002110),
      primaryFixedDim: Color(0xff93d5aa),
      onPrimaryFixedVariant: Color(0xff0a5131),
      secondaryFixed: Color(0xffd1e8d5),
      onSecondaryFixed: Color(0xff0c1f14),
      secondaryFixedDim: Color(0xffb5ccba),
      onSecondaryFixedVariant: Color(0xff374b3d),
      tertiaryFixed: Color(0xffbfe9f8),
      onTertiaryFixed: Color(0xff001f27),
      tertiaryFixedDim: Color(0xffa3cddb),
      onTertiaryFixedVariant: Color(0xff224c58),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff181d19),
      surfaceContainer: Color(0xff1c211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff313631),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff97d9ae),
      surfaceTint: Color(0xff93d5aa),
      onPrimary: Color(0xff001b0c),
      primaryContainer: Color(0xff5e9e77),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffb9d0be),
      onSecondary: Color(0xff071a0f),
      secondaryContainer: Color(0xff809685),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffa7d1e0),
      onTertiary: Color(0xff001920),
      tertiaryContainer: Color(0xff6e97a4),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1511),
      onSurface: Color(0xfff7fcf5),
      onSurfaceVariant: Color(0xffc4cdc4),
      outline: Color(0xff9ca59d),
      outlineVariant: Color(0xff7d857d),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dd),
      inversePrimary: Color(0xff0c5332),
      primaryFixed: Color(0xffaef2c5),
      onPrimaryFixed: Color(0xff001509),
      primaryFixedDim: Color(0xff93d5aa),
      onPrimaryFixedVariant: Color(0xff003f23),
      secondaryFixed: Color(0xffd1e8d5),
      onSecondaryFixed: Color(0xff03150a),
      secondaryFixedDim: Color(0xffb5ccba),
      onSecondaryFixedVariant: Color(0xff273b2d),
      tertiaryFixed: Color(0xffbfe9f8),
      onTertiaryFixed: Color(0xff00141a),
      tertiaryFixedDim: Color(0xffa3cddb),
      onTertiaryFixedVariant: Color(0xff0c3b47),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff181d19),
      surfaceContainer: Color(0xff1c211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff313631),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffeffff0),
      surfaceTint: Color(0xff93d5aa),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff97d9ae),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffeffff0),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb9d0be),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfff5fcff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffa7d1e0),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0f1511),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff5fdf3),
      outline: Color(0xffc4cdc4),
      outlineVariant: Color(0xffc4cdc4),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dd),
      inversePrimary: Color(0xff00311b),
      primaryFixed: Color(0xffb3f6c9),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff97d9ae),
      onPrimaryFixedVariant: Color(0xff001b0c),
      secondaryFixed: Color(0xffd5edda),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb9d0be),
      onSecondaryFixedVariant: Color(0xff071a0f),
      tertiaryFixed: Color(0xffc3eefc),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa7d1e0),
      onTertiaryFixedVariant: Color(0xff001920),
      surfaceDim: Color(0xff0f1511),
      surfaceBright: Color(0xff353b36),
      surfaceContainerLowest: Color(0xff0a0f0c),
      surfaceContainerLow: Color(0xff181d19),
      surfaceContainer: Color(0xff1c211d),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff313631),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
