import 'package:flutter/material.dart';
import 'package:json_place_holder_sample/core/theme/dark_theme.dart';
import 'package:json_place_holder_sample/feature/view/post_model_view.dart';
import 'package:json_place_holder_sample/product/constants/project_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ProjectStrings.mainTitle,
      theme: DarkTheme().themeData,
      home: PostModelView(),
    );
  }
}
