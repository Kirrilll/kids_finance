import 'package:flutter/cupertino.dart';

class FocusNavObserver extends NavigatorObserver {

  final List<String> _routesWithFocus;

  FocusNavObserver({required List<String> routesWithFocus}): _routesWithFocus = routesWithFocus;


  @override
  void didStartUserGesture(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // get the previous route's name
    final String? previousRouteName = previousRoute?.settings.name;
    debugPrint('==============START GESTURE==============');
    // check if the previous route actually requires a keyboard
    if (previousRouteName != null && !_routesWithFocus.contains(previousRouteName)) {
      // if it doesn't require a keyboard then hide it
      debugPrint('UNFOCUS ON POP');
      FocusManager.instance.primaryFocus?.unfocus();
    }

    // call the parent function
    super.didStartUserGesture(route, previousRoute);
  }
}