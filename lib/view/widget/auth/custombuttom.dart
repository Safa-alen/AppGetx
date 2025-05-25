import 'package:applicationgetx/core/constant/color.dart';
import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const Custombuttom({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 45,
      decoration: BoxDecoration(
          color: Appcolor.Primarycolor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: MaterialButton(
          textColor: Colors.white, onPressed: onPressed, child: Text(text)),
    );
  }
}
