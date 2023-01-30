//write stateless and stateful widget in this file

import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/app/core/constants/theme_constants.dart';
import 'package:flutter_case_deneme_2/flavor_config.dart' as my_flavor;
import 'package:flutter_case_deneme_2/app/ui/home/view/home.dart';
import 'package:flutter_case_deneme_2/app/ui/home/view_model/movie_list_view_model.dart';
import 'package:flutter_case_deneme_2/flavor_config.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'app/ui/detail_page/view_model/movie_detail_fetch_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

void mainCommon() async {
  // Pass all uncaught errors to Crashlytics.
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Pass all uncaught "fatal" errors from the framework to Crashlytics
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => MovieListViewModel()),
          ChangeNotifierProvider(create: (_) => MovieDetailFetchViewModel()),
        ],
        child: MaterialApp(
          theme: ThemeData(),
          home: MyHomePage(title: my_flavor.FlavorConfig.instance.name),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: kPrimaryColor,
        ),
        body: const HomePage());
  }
}
