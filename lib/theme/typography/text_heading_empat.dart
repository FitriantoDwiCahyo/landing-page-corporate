import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color/app_color.dart';

class TextHeadingEmpat extends StatelessWidget {
  const TextHeadingEmpat({
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
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
