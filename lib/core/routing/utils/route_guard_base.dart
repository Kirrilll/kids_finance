import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

abstract class RouteGuardBase {

  ///Guard trigger listenable
  Listenable get listenable;

  ///Guard redirect logic
  Future<String?> redirect(GoRouterState state);
}