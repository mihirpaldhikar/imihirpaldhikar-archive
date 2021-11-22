import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String backgroundImage;
  final Widget content;
  final double? height;
  final AlignmentGeometry? alignment;

  const ImageCard({
    Key? key,
    required this.backgroundImage,
    required this.content,
    this.height = 100,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          image: DecorationImage(
            image: NetworkImage(backgroundImage),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1), BlendMode.dstATop),
          ),
        ),
        alignment: alignment,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: content,
      ),
    );
  }
}
