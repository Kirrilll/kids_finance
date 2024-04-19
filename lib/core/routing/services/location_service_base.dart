import 'package:flutter/cupertino.dart';

abstract class LocationServiceBase {
  String get currLocation;
  RouterConfig<Object> get routerConfig;

  Future<void> goNamed({
    required String name,
    Map<String, String>? params,
    bool isReplace = false
  });

  void pop();
  bool canPop();
}