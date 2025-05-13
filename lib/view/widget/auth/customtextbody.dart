import 'package:applicationgetx/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomtextBody extends StatelessWidget {
  final String text;
  const CustomtextBody({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: Appcolor.grey),
      ),
    );
  }
}
