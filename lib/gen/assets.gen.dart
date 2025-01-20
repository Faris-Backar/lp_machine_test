/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/password_visibility.svg
  String get passwordVisibility => 'assets/icons/password_visibility.svg';

  /// File path: assets/icons/person_avatar.svg
  String get personAvatar => 'assets/icons/person_avatar.svg';

  /// File path: assets/icons/smartphone.svg
  String get smartphone => 'assets/icons/smartphone.svg';

  /// List of all assets
  List<String> get values => [passwordVisibility, personAvatar, smartphone];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/DoTech 1.png
  AssetGenImage get doTech1 =>
      const AssetGenImage('assets/images/DoTech 1.png');

  /// File path: assets/images/cleaning_service.png
  AssetGenImage get cleaningService =>
      const AssetGenImage('assets/images/cleaning_service.png');

  /// File path: assets/images/professional_staff.png
  AssetGenImage get professionalStaff =>
      const AssetGenImage('assets/images/professional_staff.png');

  /// File path: assets/images/quality_work.png
  AssetGenImage get qualityWork =>
      const AssetGenImage('assets/images/quality_work.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [doTech1, cleaningService, professionalStaff, qualityWork];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
