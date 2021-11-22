import 'package:flutter/material.dart';
import 'package:imihirpaldhikar/functions/url.function.dart';

class LinkButton extends StatefulWidget {
  final bool isLinkActive;
  final String route;
  final String title;
  final double? height;
  final double? width;
  final String tooltip;
  final bool? setMargin;
  final EdgeInsetsGeometry? padding;
  final bool? isRoute;

  const LinkButton({
    Key? key,
    required this.isLinkActive,
    required this.route,
    required this.title,
    this.height = 20,
    this.width = 100,
    this.padding = EdgeInsets.zero,
    required this.tooltip,
    this.setMargin = true,
    this.isRoute = true,
  }) : super(key: key);

  @override
  _LinkButtonState createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: widget.tooltip,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          margin: widget.setMargin!
              ? const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  left: 15,
                  right: 15,
                )
              : const EdgeInsets.all(0),
          padding: widget.padding,
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            color: widget.isLinkActive
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: widget.isLinkActive ? 0 : 1,
            ),
          ),
          child: InkWell(
            onTap: () {
              widget.isRoute!
                  ? Navigator.pushNamed(context, widget.route)
                  : launchURL(url: widget.route);
            },
            borderRadius: BorderRadius.circular(100),
            child: Center(
              child: Text(
                widget.title,
                style: TextStyle(
                  color: widget.isLinkActive
                      ? Colors.black
                      : Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
