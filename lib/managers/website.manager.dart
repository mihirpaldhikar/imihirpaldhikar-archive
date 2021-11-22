import 'package:flutter/material.dart';
import 'package:imihirpaldhikar/managers/routes.manager.dart';
import 'package:imihirpaldhikar/themes/website.theme.dart';
import 'package:universal_html/html.dart';

class WebsiteManager extends StatefulWidget {
  const WebsiteManager({Key? key}) : super(key: key);

  @override
  _WebsiteManagerState createState() => _WebsiteManagerState();
}

class _WebsiteManagerState extends State<WebsiteManager> {
  @override
  void initState() {
    super.initState();
    final loader = document.getElementsByClassName('loader');
    if (loader.isNotEmpty) {
      loader.first.remove();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mihir Paldhikar',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeManager(context).websiteTheme,
      theme: ThemeManager(context).websiteTheme,
      initialRoute: '/',
      routes: RoutesManager.routes,
    );
  }
}
