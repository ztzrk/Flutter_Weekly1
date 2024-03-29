/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/astra.png
  AssetGenImage get astra => const AssetGenImage('assets/images/astra.png');

  /// File path: assets/images/brimstone.png
  AssetGenImage get brimstone =>
      const AssetGenImage('assets/images/brimstone.png');

  /// File path: assets/images/clove.png
  AssetGenImage get clove => const AssetGenImage('assets/images/clove.png');

  /// File path: assets/images/harbor.png
  AssetGenImage get harbor => const AssetGenImage('assets/images/harbor.png');

  /// File path: assets/images/iso.png
  AssetGenImage get iso => const AssetGenImage('assets/images/iso.png');

  /// File path: assets/images/jett.png
  AssetGenImage get jett => const AssetGenImage('assets/images/jett.png');

  /// File path: assets/images/neon.png
  AssetGenImage get neon => const AssetGenImage('assets/images/neon.png');

  /// File path: assets/images/omen.png
  AssetGenImage get omen => const AssetGenImage('assets/images/omen.png');

  /// File path: assets/images/viper.png
  AssetGenImage get viper => const AssetGenImage('assets/images/viper.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [astra, brimstone, clove, harbor, iso, jett, neon, omen, viper];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
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
