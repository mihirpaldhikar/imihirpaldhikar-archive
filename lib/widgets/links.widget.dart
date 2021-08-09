import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imihirpaldhikar_portfolio/models/page_link.model.dart';

class Link extends StatelessWidget {
  final PageLink pageLink;

  const Link({
    Key? key,
    required this.pageLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, pageLink.pageRoute);
          },
          enableFeedback: true,
          child: Tooltip(
            message: pageLink.toolTip,
            child: Container(
              padding: EdgeInsets.only(
                top: 8,
                bottom: 8,
                right: 8,
                left: 8,
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: pageLink.linkIsActive
                        ? pageLink.activeLinkColor
                        : pageLink.linkColor,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    Icon(
                      pageLink.showIcon ? pageLink.linkIcon : null,
                      color: pageLink.linkIsActive
                          ? pageLink.activeLinkColor
                          : pageLink.linkColor,
                      size: pageLink.showIcon ? 15 : 0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 4,
                      ),
                    ),
                    Text(
                      pageLink.linkName,
                      style: TextStyle(
                        color: pageLink.linkIsActive
                            ? pageLink.activeLinkColor
                            : pageLink.linkColor,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
