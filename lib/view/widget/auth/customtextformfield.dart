import 'package:applicationgetx/core/constant/color.dart';
import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final IconData iconData;
  final TextEditingController mycontroller;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool? obscuretext;
  final void Function()? onTapIcon;
  const customtextfield({
    Key? key,
    required this.labeltext,
    required this.hinttext,
    required this.iconData,
    required this.mycontroller,
    this.valid,
    required this.isNumber,
    this.obscuretext,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: TextFormField(
        obscureText: obscuretext == null || obscuretext == false ? false : true,
        keyboardType: isNumber
            ? TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
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
            suffixIcon: InkWell(
              child: Icon(iconData),
              onTap: onTapIcon,
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
