import 'package:flutter/material.dart';

class ExampleDetailView extends StatelessWidget {
  static const routeName = "/ExampleDetailView";
  const ExampleDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Detail"),
      ),
    );
  }
}
