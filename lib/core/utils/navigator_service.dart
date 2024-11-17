import 'package:flutter/material.dart';

class NavigatorService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  /// Pushes a named route onto the navigator.
  static Future<dynamic>? pushNamed(
    String routeName, {
    dynamic arguments,
  }) {
    if (navigatorKey.currentState != null) {
      return navigatorKey.currentState
          ?.pushNamed(routeName, arguments: arguments);
    } else {
      debugPrint('Navigator state is null');
      return null;
    }
  }

  /// Pops the top-most route off the navigator.
  static void goBack() {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState?.pop();
    } else {
      debugPrint('Navigator state is null');
    }
  }

  /// Pushes a named route and removes all the previous routes until the predicate returns true.
  static Future<dynamic>? pushNamedAndRemoveUntil(
    String routeName, {
    required bool Function(Route<dynamic>) predicate,
    dynamic arguments,
  }) {
    if (navigatorKey.currentState != null) {
      return navigatorKey.currentState?.pushNamedAndRemoveUntil(
        routeName,
        predicate,
        arguments: arguments,
      );
    } else {
      debugPrint('Navigator state is null');
      return null;
    }
  }

  /// Pops the current route and pushes a named route.
  static Future<dynamic>? popAndPushNamed(
    String routeName, {
    dynamic arguments,
  }) {
    if (navigatorKey.currentState != null) {
      return navigatorKey.currentState
          ?.popAndPushNamed(routeName, arguments: arguments);
    } else {
      debugPrint('Navigator state is null');
      return null;
    }
  }

  /// Navigates directly to a widget.
  static Future<dynamic>? navigateTo(Widget page) {
    if (navigatorKey.currentState != null) {
      return navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (context) => page),
      );
    } else {
      debugPrint('Navigator state is null');
      return null;
    }
  }

  /// Navigates to the given widget and removes all previous routes.
  static void navigateToAndRemoveUntil(Widget page) {
    if (navigatorKey.currentState != null) {
      navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => page),
        (route) => false, // This will remove all previous routes
      );
    } else {
      debugPrint('Navigator state is null');
    }
  }
}
