import 'package:flutter/material.dart';

class OutlineCard extends StatelessWidget {
  final Widget content;
  const OutlineCard({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
          left: 30,
          right: 30,
        ),
        child: content,
      ),
    );
  }
}
