import 'package:denso_edu_app/const/colors.dart';
import 'package:flutter/material.dart';

class DefaultContainerText extends StatelessWidget {
  final Alignment alignment;
  final double width;
  final double height;
  final String text;
  final Color color;

  const DefaultContainerText({
    super.key,
    this.alignment = Alignment.center,
    this.width = 120.0,
    this.height = 30.0,
    this.text = ' ',
    this.color = PRIMARY_COLOR2,
  });

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Container(
        alignment: alignment,
        width: width,
        height: height,
        child: Text(text),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: color,
        ),
      ),
    );
  }
}
