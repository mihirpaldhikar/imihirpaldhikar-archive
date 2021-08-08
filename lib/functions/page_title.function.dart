import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void setPageTitle({required String pageTitle, required BuildContext context}) {
  SystemChrome.setApplicationSwitcherDescription(
    ApplicationSwitcherDescription(
      label: pageTitle,
      primaryColor:
          Theme.of(context).primaryColor.value, // This line is required
    ),
  );
}
