import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoadingBrightWidget extends StatelessWidget {
  const LoadingBrightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Theme(
        data: ThemeData(cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark)),
        child: const CupertinoActivityIndicator(),
      ),
    );
  }
}
