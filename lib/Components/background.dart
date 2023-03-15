import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BackGround extends StatelessWidget {
  final Widget child;
  String path;
  BackGround({super.key, required this.child, required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover)),
        child: SafeArea(child: child),
      ),
    );
  }
}
