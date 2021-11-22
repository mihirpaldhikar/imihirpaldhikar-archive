import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void setPageTitle({required String pageTitle, required BuildContext context}) {
  SystemChrome.setApplicationSwitcherDescription(
    ApplicationSwitcherDescription(
      label: pageTitle,
      primaryColor:
          Theme.of(context).colorScheme.primary.value, // This line is required
    ),
  );
}
