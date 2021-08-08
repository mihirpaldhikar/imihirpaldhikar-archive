import 'package:flutter/material.dart';
import 'package:imihirpaldhikar_portfolio/functions/page_title.function.dart';

class AboutPage extends StatefulWidget {
  final String pageTitle;
  const AboutPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    setPageTitle(pageTitle: widget.pageTitle, context: context);
    return Container();
  }
}
