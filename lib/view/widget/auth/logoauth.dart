import 'package:applicationgetx/core/constant/imageassets.dart';
import 'package:flutter/material.dart';

class Logoauth extends StatelessWidget {
  const Logoauth({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImageassets.Logo,
      height: 200,
      width: 150,
    );
  }
}
