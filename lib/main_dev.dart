import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/app/core/constants/base_url_constant.dart';
import 'package:flutter_case_deneme_2/app/util/theme_notifier.dart';
import 'package:flutter_case_deneme_2/flavor_config.dart';
import 'package:provider/provider.dart';

import 'main_common.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig(
    flavor: Flavor.dev,
    env: 'dev',
    name: 'Development MovieListCase',
    values: FlavorValues(
        appTitle: "Dev MovieListCase",
        appId: "com.example.flutter_case_deneme_2.dev",
        bundleId: "com.example.flutter_case_deneme_2.dev",
        baseUrl: BaseUrlConstant.baseUrl),
  );

  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
    child: MyApp(),
  ));
}

// void main() {
//   FlavorConfig(
//     flavor: Flavor.dev,
//     env: 'dev',
//     name: 'Development MovieListCase',
//     color: Colors.red,
//     values: FlavorValues(
//       appTitle: "Development MovieListCase",
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         brightness: Brightness.light,
//       ),
//       appId: "com.example.flutter_case_deneme_2.dev",
//       bundleId: "com.example.flutter_case_deneme_2.dev",
//     ),
//   );

//   mainCommon();
// }
