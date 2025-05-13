import 'package:applicationgetx/core/constant/color.dart';
import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final IconData iconData;
  final TextEditingController mycontroller;
  const customtextfield({
    Key? key,
    required this.labeltext,
    required this.hinttext,
    required this.iconData,
    required this.mycontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: TextFormField(
        controller: mycontroller,
        decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Appcolor.grey,
                  fontSize: 12,
                ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            label: Text(
              labeltext,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Appcolor.grey,
                    fontSize: 16,
                  ),
            ),
            suffixIcon: Icon(iconData),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
