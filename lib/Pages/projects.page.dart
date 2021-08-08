import 'package:flutter/material.dart';
import 'package:imihirpaldhikar_portfolio/functions/page_title.function.dart';

class ProjectsPage extends StatefulWidget {
  final String pageTitle;
  const ProjectsPage({Key? key, required this.pageTitle}) : super(key: key);

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    setPageTitle(pageTitle: widget.pageTitle, context: context);
    return Container();
  }
}
