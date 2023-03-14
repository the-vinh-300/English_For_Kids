import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  const BackGround({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        child: SafeArea(child: child),
      )),
    );
  }
}
