import 'package:flutter/cupertino.dart';
import 'package:imihirpaldhikar_portfolio/managers/page.manager.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(PageManager());
}
