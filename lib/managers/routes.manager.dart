import 'package:flutter/cupertino.dart';
import 'package:imihirpaldhikar/ui/pages/home.page.dart';

class RoutesManager {
  final BuildContext context;

  RoutesManager(this.context);

  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const HomePage(),
    '/about': (context) => const HomePage(),
  };
}
