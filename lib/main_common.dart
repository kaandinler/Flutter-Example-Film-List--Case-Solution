//write stateless and stateful widget in this file

import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/core/components/flavor_config.dart'
    as myFlavor;
import 'package:flutter_case_deneme_2/view/home/view/home.dart';
import 'package:flutter_case_deneme_2/view/home/view_model/movie_list_view_model.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import 'view/detail_page/view_model/movie_detail_fetch_view_model.dart';
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
  String appName = "";
  String packageName = "";
  String version = "";
  String buildNumber = "";

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => MovieListViewModel()),
          ChangeNotifierProvider(create: (_) => MovieDetailFetchViewModel()),
        ],
        child: MaterialApp(
          theme: ThemeData(
            brightness: myFlavor.FlavorConfig.instance.values.theme.brightness,
          ),
          home: MyHomePage(title: myFlavor.FlavorConfig.instance.name),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String appName = "";
  String packageName = "";
  String version = "";
  String buildNumber = "";

  void getInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    setState(() {
      appName = packageInfo.appName;
      packageName = packageInfo.packageName;
      version = packageInfo.version;
      buildNumber = packageInfo.buildNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: myFlavor.FlavorConfig.instance.color,
        ),
        body: HomePage());
  }
}
