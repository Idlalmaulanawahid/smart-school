import 'package:flutter/material.dart';
import 'package:smart_school/config/theme.dart';
import 'package:smart_school/pages/launcher_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: kPrimaryTheme),
      home: const LauncherPage(),
    );
  }
}
