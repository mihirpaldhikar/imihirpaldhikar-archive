import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imihirpaldhikar/managers/website.manager.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  await dotenv.load(fileName: "website.config.env");
  setPathUrlStrategy();
  runApp(const WebsiteManager());
  GoogleFonts.config.allowRuntimeFetching = true;
}
