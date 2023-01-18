import 'dart:developer';

import 'package:b7c_clean_architecture/routes/example/example_route.dart';

import '../core/route/base_route.dart';

class AllRoute {
  static Map<String, BaseRoute> allRouteMap = {};

  List<BaseRoute> allRoute = [
    ...ExampleRoute.listRoute,
  ];

  void getKey() {
    if (allRouteMap.isNotEmpty) {
      return;
    }
    log("execute MAPPING");
    for (var e in allRoute) {
      allRouteMap[e.routeName] = e;
    }

    log("executed MAPPING");
  }
}
