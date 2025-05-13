import 'package:applicationgetx/core/constant/color.dart';
import 'package:flutter/material.dart';

class Custombuttomlang extends StatelessWidget {
  final String textbuttom;
  final Function()? onPressed;
  const Custombuttomlang(
      {super.key, required this.textbuttom, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: Appcolor.Primarycolor,
        textColor: Colors.white,
        onPressed: onPressed,
        child: Text(
          textbuttom,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
