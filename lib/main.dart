import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:b7c_clean_architecture/core/route/route.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'core/route/route_observer.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env.dev");
  if (kDebugMode) {
    log("\n:: RUNNING ON :: ${dotenv.env['NODE_ENV']?.toUpperCase()} MODE");
  }
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return _buildMaterial(context);
  }

  Widget _buildMaterial(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Clean Architecture",
      onGenerateRoute: generateRoutes,
      initialRoute: initialRoute,
      navigatorObservers: [
        IRouteObserver(),
      ],
    );
  }
}
