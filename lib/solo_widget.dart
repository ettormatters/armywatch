import 'package:flutter/material.dart';

class SoloWidget extends StatelessWidget {
  final Color color;

  SoloWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color
    );
  }

}