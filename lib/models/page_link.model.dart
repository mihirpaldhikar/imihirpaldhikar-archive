import 'package:flutter/cupertino.dart';

class PageLink {
  final String pageRoute;
  final String linkName;
  final String toolTip;
  final bool showIcon;
  final IconData linkIcon;
  final Color linkColor;
  final Color activeLinkColor;
  final bool linkIsActive;

  PageLink(
    this.pageRoute,
    this.linkName,
    this.toolTip,
    this.showIcon,
    this.linkIcon,
    this.linkColor,
    this.linkIsActive,
    this.activeLinkColor,
  );
}
