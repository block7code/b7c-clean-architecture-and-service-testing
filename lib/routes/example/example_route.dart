import 'package:b7c_clean_architecture/features/examples/example/view/example_view.dart';
import 'package:b7c_clean_architecture/features/examples/example_detail/view/example_detail_view.dart';
import 'package:b7c_clean_architecture/core/route/base_route.dart';

class ExampleRoute {
  static List<BaseRoute> listRoute = [
    BaseRoute(
      routeName: ExamplePage.routeName,
      clazz: const ExamplePage(),
    ),
    BaseRoute(
      routeName: ExampleDetailView.routeName,
      clazz: const ExampleDetailView(),
    )
  ];
}
