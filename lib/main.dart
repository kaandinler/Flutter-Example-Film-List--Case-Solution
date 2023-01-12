//write stateless and stateful widget in this file

import 'package:flutter/material.dart';
import 'package:flutter_case_deneme_2/view/home/view/home.dart';
import 'package:flutter_case_deneme_2/view/home/view_model/movie_list_view_model.dart';
import 'package:provider/provider.dart';

import 'view/detail_page/view_model/movie_detail_fetch_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => MovieListViewModel()),
      ChangeNotifierProvider(create: (_) => MovieDetailFetchViewModel()),
    ], child: MaterialApp(home: HomePage()));
  }
}
