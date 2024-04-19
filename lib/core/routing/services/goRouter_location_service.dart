import 'package:flutter/src/widgets/router.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'location_service_base.dart';

@Singleton(as: LocationServiceBase)
class GoRouterLocationService implements LocationServiceBase {

  static GoRouterLocationService? _instance;
  late final GoRouter _router;

  GoRouterLocationService._();

  static GoRouterLocationService get instance {
    _instance ??= GoRouterLocationService._();
    return _instance ?? GoRouterLocationService._();
  }

  // init(Map<Guards, RouteGuardBase> guards) {
  //   _router = buildRouter(guards);
  // }

  @override
  String get currLocation => _router.routerDelegate.currentConfiguration.uri.toString();

  @override
  RouterConfig<Object> get routerConfig => _router;

  @override
  Future<void> goNamed({required String name, Map<String, String>? params, bool isReplace = false}) async {
    if(isReplace) return await _router.replaceNamed(name, pathParameters: params ?? {});
    await _router.pushNamed(name, pathParameters: params ?? {});
  }

  @override
  bool canPop() {
    return _router.canPop();
  }

  @override
  void pop() {
    return _router.pop();
  }


}