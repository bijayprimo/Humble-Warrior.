import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:humble_warrior/utils/media_querry_size.dart';

class AppText extends StatelessWidget {
  final String label;
  final TextAlign textAlign;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final maxLines;
  final EdgeInsetsGeometry? padding;
  const AppText(this.label,
      {this.textAlign = TextAlign.left,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textDecoration,
      this.maxLines,
      this.padding,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: MediaQueryText(
        child: Text(
          label,
          textAlign: textAlign,
          style: TextStyle(
            color: color,
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight,
            decoration: textDecoration,
          ),
          maxLines: maxLines ?? 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class HeadingText extends StatelessWidget {
  const HeadingText(
    this.label, {
    Key? key,
    this.color,
    this.fontSize = 36,
    this.padding,
  }) : super(key: key);

  final String label;
  final Color? color;
  final EdgeInsets? padding;
  final double? fontSize;

  // static final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(vertical: 16),
      child: color == null
          ? MediaQueryText(
              child: Text(
                label,
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize,
                ),
              ),
            )
          : MediaQueryText(
              child: Text(
                label,
                style: GoogleFonts.montserrat(
                  color: color,
                  fontWeight: FontWeight.w700,
                  fontSize: fontSize,
                ),
              ),
            ),
    );
  }
}
