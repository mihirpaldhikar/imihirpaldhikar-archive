import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget footerLink(
    {required IconData linkIcon,
    required String linkName,
    required String linkURL,
    required String toolTipMsg}) {
  return Tooltip(
    message: toolTipMsg,
    child: InkWell(
      onTap: () {
        _launchURL(url: linkURL);
      },
      child: Row(
        children: [
          Icon(
            linkIcon,
            size: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Text(linkName),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    ),
  );
}

void _launchURL({required String url}) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
