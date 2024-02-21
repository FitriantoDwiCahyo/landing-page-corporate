import 'package:flutter/material.dart';
import '../color/app_color.dart';

class TextHeadingTiga extends StatelessWidget {
  const TextHeadingTiga({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'SpaceGrotesk',
        color: AppColor.primaryTextColor,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
