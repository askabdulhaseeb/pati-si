import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class CacheImage extends StatelessWidget {
  const CacheImage({
    Key? key,
    required this.url,
    this.width,
    this.height,
    this.fit,
    this.cache = true,
    this.border,
    this.shape,
    this.borderRadius,
  }) : super(key: key);
  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final bool cache;
  final BoxBorder? border;
  final BoxShape? shape;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return ExtendedImage.network(
      url,
      width: width,
      height: height,
      fit: fit ?? BoxFit.fill,
      cache: cache,
      border: border,
      shape: shape,
      borderRadius: borderRadius,
    );
  }
}
