import 'package:flutter/cupertino.dart';
import 'package:imihirpaldhikar/ui/widgets/link_button.widget.dart';

class LinksManager {
  final BuildContext context;
  LinksManager(this.context);

  List<Widget> getLinks({required String? currentRoute}) {
    return [
      LinkButton(
        isLinkActive: currentRoute == '/' ? true : false,
        title: 'Home',
        route: '/',
        tooltip: 'Go Home',
        width: 100,
        height: 50,
      ),
      LinkButton(
        isLinkActive: currentRoute == '/about' ? true : false,
        title: 'About',
        route: '/about',
        tooltip: 'About Me',
        width: 100,
        height: 50,
      ),
      LinkButton(
        isLinkActive: currentRoute == '/projects' ? true : false,
        title: 'Projects',
        route: '/projects',
        tooltip: 'Projects I have worked on',
        width: 100,
        height: 50,
      ),
      LinkButton(
        isLinkActive: currentRoute == '/contact' ? true : false,
        title: 'Contact',
        route: '/contact',
        tooltip: 'Contact Me',
        width: 100,
        height: 50,
      ),
    ];
  }
}
