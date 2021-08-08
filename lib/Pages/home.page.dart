import 'package:flutter/material.dart';
import 'package:imihirpaldhikar_portfolio/functions/page_title.function.dart';

class HomePage extends StatefulWidget {
  final String pageTitle;
  const HomePage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setPageTitle(pageTitle: widget.pageTitle, context: context);
    return Scaffold(
      body: Container(
        child: Center(child: Text('Site is Under Construction.')),
      ),
    );
  }
}
