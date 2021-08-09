import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imihirpaldhikar_portfolio/Pages/home/desktop.home.dart';
import 'package:imihirpaldhikar_portfolio/Pages/home/mobile.home.dart';
import 'package:imihirpaldhikar_portfolio/Pages/home/tablet.home.dart';
import 'package:imihirpaldhikar_portfolio/components/page_bar.component.dart';
import 'package:imihirpaldhikar_portfolio/constants/colors.constant.dart';
import 'package:imihirpaldhikar_portfolio/functions/page_title.function.dart';
import 'package:imihirpaldhikar_portfolio/models/page_link.model.dart';
import 'package:imihirpaldhikar_portfolio/widgets/drawer_link.widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  final String pageTitle;
  const HomePage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<PageLink> pageLinks = [
    PageLink(
      '/',
      'Home',
      'Go to Home',
      false,
      FontAwesomeIcons.home,
      ColorsConstants.linkColor,
      true,
      ColorsConstants.accentColor,
    ),
    PageLink(
      '/about',
      'About',
      'About Me',
      false,
      FontAwesomeIcons.home,
      ColorsConstants.linkColor,
      false,
      ColorsConstants.accentColor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    setPageTitle(pageTitle: widget.pageTitle, context: context);
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 600
          ? AppBar(
              title: Text('Mihir Paldhikar'),
              elevation: 0,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: Icon(
                    Icons.menu_rounded,
                    color: ColorsConstants.accentColor,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            )
          : PageBar(
              pageLinks: this.pageLinks,
            ),
      drawer: MediaQuery.of(context).size.width < 600
          ? Drawer(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: this.pageLinks.length,
                      itemBuilder: (context, index) {
                        return DrawerLink(
                          pageLink: this.pageLinks[index],
                        );
                      }),
                ],
              ),
            )
          : null,
      body: ScreenTypeLayout(
        desktop: DesktopHome(),
        tablet: TabletHome(),
        mobile: MobileHome(),
      ),
    );
  }
}
