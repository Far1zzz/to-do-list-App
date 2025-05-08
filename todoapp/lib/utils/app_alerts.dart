import 'package:flutter/material.dart';
import 'package:todoapp/utils/utils.dart';

class AppAlerts {
  AppAlerts._();

  static displaySnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style: context.textTheme.bodyLarge
            ?.copyWith(color: context.colorSchame.surface),
      ),
      backgroundColor: context.colorSchame.primary,
    ));
  }
}
