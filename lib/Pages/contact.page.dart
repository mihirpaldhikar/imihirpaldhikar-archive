import 'package:flutter/material.dart';
import 'package:imihirpaldhikar_portfolio/functions/page_title.function.dart';

class ContactPage extends StatefulWidget {
  final String pageTitle;
  const ContactPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    setPageTitle(pageTitle: widget.pageTitle, context: context);
    return Container();
  }
}
