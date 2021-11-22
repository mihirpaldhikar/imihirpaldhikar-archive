import 'package:flutter/material.dart';
import 'package:imihirpaldhikar/functions/url.function.dart';

Widget footerLink(
    {required IconData linkIcon,
    required String linkName,
    required String linkURL,
    required String toolTipMsg}) {
  return Tooltip(
    message: toolTipMsg,
    child: InkWell(
      onTap: () {
        launchURL(url: linkURL);
      },
      child: Row(
        children: [
          Icon(
            linkIcon,
            size: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            linkName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    ),
  );
}
