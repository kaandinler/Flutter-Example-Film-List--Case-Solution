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
    env: 'stage',
    name: 'Stage MovieListCase',
    values: FlavorValues(
      appTitle: "Stage MovieListCase",
      bundleId: "com.example.flutter_case_deneme_2.stage",
      appId: "com.example.flutter_case_deneme_2.stage",
      baseUrl: BaseUrlConstant.baseUrl,
    ),
  );

  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (_) => ThemeNotifier(),
    child: MyApp(),
  ));

  mainCommon();
}

// void main() {
//   FlavorConfig(
//     flavor: Flavor.dev,
//     env: 'stage',
//     name: 'Stage MovieListCase',
//     values: FlavorValues(
//       appTitle: "Stage MovieListCase",
//       bundleId: "com.example.flutter_case_deneme_2.stage",
//       appId: "com.example.flutter_case_deneme_2.stage",
//     ),
//   );

//   mainCommon();
// }
