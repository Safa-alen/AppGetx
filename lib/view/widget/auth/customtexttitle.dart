import 'package:flutter/material.dart';

class Customtexttitle extends StatelessWidget {
  final String title;
  const Customtexttitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
