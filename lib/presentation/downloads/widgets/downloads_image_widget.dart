import 'dart:math';

import 'package:flutter/material.dart';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {super.key,
      required this.imageUrl,
      required this.margin,
      this.scale = 0,
      this.angle = 0});

  final String imageUrl;
  final double angle;
  final EdgeInsets margin;
  final double scale;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.width *( .58+scale),
        width: size.width * (.4+scale),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: NetworkImage(imageUrl)),
        ),
      ),
    );
  }
}