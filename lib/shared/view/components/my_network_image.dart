import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../helper/images.dart';
import 'loading_widget.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage({Key? key, required this.imageUrl, this.height, this.width, this.color, this.fit, this.assetImage})
      : super(key: key);
  final String imageUrl;
  final double? height, width;
  final Color? color;
  final BoxFit? fit;
  final String? assetImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: fit,
      color: color,
      height: height,
      width: width,
      placeholder: (ctx, url) => const LoadingWidget(),
      errorWidget: (ctx, url, error) => Image.asset(
        assetImage??Images.logo,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
