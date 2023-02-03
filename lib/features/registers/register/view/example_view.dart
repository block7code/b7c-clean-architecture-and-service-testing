import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/example_view_model.dart';

class ExamplePage extends StatefulWidget {
  static const routeName = "/ExamplePage";

  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => RegisterViewModel(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<RegisterViewModel>();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Register"),
              Consumer<RegisterViewModel>(
                builder: (context, provider, child) {
                  return TextField(
                    decoration: const InputDecoration(
                      label: Text("Nama Lengkap"),
                    ),
                    controller: provider.controllerNamaLengkap,
                  );
                },
              ),
              Consumer<RegisterViewModel>(
                builder: (context, provider, child) {
                  return TextField(
                    decoration: const InputDecoration(
                      label: Text("User ID"),
                    ),
                    controller: provider.controllerUserId,
                  );
                },
              ),
              Consumer<RegisterViewModel>(
                builder: (context, provider, child) {
                  return TextField(
                    decoration: const InputDecoration(
                      label: Text("Password"),
                    ),
                    controller: provider.controllerPassword,
                  );
                },
              ),
              Consumer<RegisterViewModel>(
                builder: (context, provider, child) {
                  return Text(provider.token);
                },
              ),
              ElevatedButton(
                onPressed: () {
                  provider.login(context);
                },
                child: const Text("Login"),
              ),
              ElevatedButton(
                onPressed: () {
                  provider.goToDetail(context);
                },
                child: const Text("Detail"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
