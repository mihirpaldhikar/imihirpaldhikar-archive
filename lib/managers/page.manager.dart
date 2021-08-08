import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imihirpaldhikar_portfolio/Pages/about.page.dart';
import 'package:imihirpaldhikar_portfolio/Pages/contact.page.dart';
import 'package:imihirpaldhikar_portfolio/Pages/home.page.dart';
import 'package:imihirpaldhikar_portfolio/Pages/projects.page.dart';
import 'package:imihirpaldhikar_portfolio/constants/strings.constant.dart';
import 'package:universal_html/html.dart';

class PageManager extends StatefulWidget {
  const PageManager({Key? key}) : super(key: key);

  @override
  _PageManagerState createState() => _PageManagerState();
}

class _PageManagerState extends State<PageManager> {
  @override
  void initState() {
    super.initState();
    final loader = document.getElementsByClassName('showbox');
    if (loader.isNotEmpty) {
      loader.first.remove();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConstants.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
              pageTitle: StringConstants.homePageConstant,
            ),
        '/projects': (context) => ProjectsPage(
              pageTitle: StringConstants.projectsPageConstant,
            ),
        '/contact': (context) => ContactPage(
              pageTitle: StringConstants.contactPageConstant,
            ),
        '/about': (context) => AboutPage(
              pageTitle: StringConstants.aboutPageConstant,
            ),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
