import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OneMessage extends StatelessWidget {
  OneMessage(
      {super.key, required this.title, this.fontWeight = FontWeight.w800});

  String title;

  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      padding: const EdgeInsets.only(left: 10, right: 30),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Colors.black54),
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Center(
        child: Text(title,
            textAlign: TextAlign.start,
            style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 15,
              fontStyle: FontStyle.italic,
              fontWeight: fontWeight,
            )),
      ),
    );
  }
}
