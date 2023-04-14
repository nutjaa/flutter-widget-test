import 'package:flutter/material.dart';
import 'package:wigget_testing/components/landing/organisms/landing_body.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: LandingBody(),
    );
  }
}
