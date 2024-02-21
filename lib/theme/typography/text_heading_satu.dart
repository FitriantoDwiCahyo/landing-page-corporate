// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:landing_page_corporate/theme/color/app_color.dart';

class TextHeadingSatu extends StatelessWidget {
  const TextHeadingSatu({
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
        fontSize: 60,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
