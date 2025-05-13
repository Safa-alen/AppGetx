import 'package:applicationgetx/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/constant/color.dart';

class Textsignup extends StatelessWidget {
  final String text1;
  final void Function()? onTap;
  final String text2;
  const Textsignup(
      {super.key, required this.text1, required this.text2, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1),
        InkWell(
          onTap: onTap,
          child: Text(
            text2,
            style: TextStyle(
                color: Appcolor.Primarycolor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
