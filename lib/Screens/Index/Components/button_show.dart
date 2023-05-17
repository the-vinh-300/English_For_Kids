import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonShow extends StatelessWidget {
  ButtonShow({super.key, required this.data, required this.icon});
  Widget data;
  Widget icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return data;
            });
      },
      child: Ink(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(),
        ),
      ),
    );
  }
}
