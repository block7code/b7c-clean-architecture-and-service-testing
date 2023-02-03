import 'package:flutter/material.dart';
import 'package:b7c_clean_architecture/domain/entity/example/request_example_entity.dart';
import 'package:b7c_clean_architecture/domain/entity/example/response_example_entity.dart';
import 'package:b7c_clean_architecture/features/examples/example_detail/view/example_detail_view.dart';
import 'package:b7c_clean_architecture/core/route/route.dart';

import '../services/example_services.dart';

class RegisterViewModel extends ChangeNotifier {
  ExampleServices exampleServices = ExampleServices();

  var controllerNamaLengkap = TextEditingController();
  var controllerUserId = TextEditingController();

  var controllerPassword = TextEditingController();

  String token = "";

  Future<void> login(BuildContext context) async {
    var requestExampleEntity = RequestExampleEntity(
      username: controllerUserId.text,
      password: controllerPassword.text,
    );
    ResponseExampleEntity? res = await exampleServices.exampleLogin(context,
        requestExampleEntity: requestExampleEntity);
    if (res != null) {
      token = res.token ?? "";
      notifyListeners();
    }
  }

  void goToDetail(BuildContext context) {
    goToNamed(context, routeName: ExampleDetailView.routeName);
  }
}
