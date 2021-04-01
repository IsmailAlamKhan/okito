import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'okito_utilities/index.dart';
import 'okito_utilities/null_exception.dart';

class _Okito with OkitoWidgets, OkitoDevice, OkitoRouting {
  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// The [BuildContext]:[context] of your app.
  @override
  BuildContext? get context {
    if (navigatorKey.currentContext == null) {
      throw Exception(nullException);
    }
    return navigatorKey.currentContext;
  }

  String? currentRoute;
  Object? arguments;
}

/// The root of [Okito] library's utilities.
///
/// This class has shortcuts for routing, small utilities of context like
/// size of the device and has usage with widgets like show bottom modal sheet.
// ignore: non_constant_identifier_names
_Okito Okito = _Okito();
