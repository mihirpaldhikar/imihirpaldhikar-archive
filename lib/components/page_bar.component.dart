import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imihirpaldhikar_portfolio/models/page_link.model.dart';
import 'package:imihirpaldhikar_portfolio/widgets/links.widget.dart';

class PageBar extends StatelessWidget implements PreferredSizeWidget {
  final double pageBarHeight;
  final List<PageLink> pageLinks;

  const PageBar({
    Key? key,
    this.pageBarHeight = 60,
    required this.pageLinks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: pageBarHeight,
      padding: EdgeInsets.only(
        right: 10,
        left: 10,
        top: 5,
        bottom: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Container(
            child: Text('Mihir Paldhikar'),
            padding: EdgeInsets.all(4),
          ),
          Spacer(flex: 2),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: pageLinks.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Link(
                pageLink: pageLinks[index],
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(pageBarHeight);
}
