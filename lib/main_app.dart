import 'package:flutter/material.dart';
import 'package:wigget_testing/routes.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes(),
      title: 'Widget testing',
      initialRoute: '/',
    );
  }
}
