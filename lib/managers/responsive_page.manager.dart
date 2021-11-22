import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsivePageManager extends StatefulWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsivePageManager({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  @override
  _ResponsivePageManagerState createState() => _ResponsivePageManagerState();
}

class _ResponsivePageManagerState extends State<ResponsivePageManager> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
        return widget.mobile;
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
        return widget.tablet;
      }

      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        return widget.desktop;
      }
      return Container();
    });
  }
}
