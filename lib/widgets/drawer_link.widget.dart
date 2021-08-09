import 'package:flutter/material.dart';
import 'package:imihirpaldhikar_portfolio/models/page_link.model.dart';

class DrawerLink extends StatelessWidget {
  final PageLink pageLink;

  const DrawerLink({
    Key? key,
    required this.pageLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, pageLink.pageRoute);
          },
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: pageLink.linkIsActive
                    ? pageLink.activeLinkColor
                    : pageLink.linkColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Text(
                pageLink.linkName,
                style: TextStyle(
                  color: pageLink.linkIsActive
                      ? pageLink.activeLinkColor
                      : pageLink.linkColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
