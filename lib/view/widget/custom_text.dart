


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  CustomText({super.key, required this.title, this.fontSize =14, this.fontWeight = FontWeight.w500, this.color, this.textAlign = TextAlign.start, this.isItalic = false });

  String title ;
  double fontSize ;
  FontWeight fontWeight ;
  Color? color = const Color(0xFF333333) ;
  TextAlign textAlign ;
  bool isItalic ;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      textAlign: textAlign,

      style: GoogleFonts.roboto(
        color: color,
        fontWeight: fontWeight,
        fontStyle: isItalic ? FontStyle.italic : null,
        fontSize: fontSize
      ),

    );

  }
}