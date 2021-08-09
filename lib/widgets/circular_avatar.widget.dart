import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  final String imageURL;
  final double radius;
  const CircularAvatar({
    Key? key,
    required this.imageURL,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(this.radius),
      child: Image(
        image: AssetImage(this.imageURL),
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    );
  }
}
