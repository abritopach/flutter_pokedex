
import 'package:flutter/material.dart';

// https://stackoverflow.com/questions/52659759/how-can-i-get-the-size-of-the-text-widget-in-flutter

Size getTextSize(BuildContext context, String text, TextStyle style) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: style,
      ),
      maxLines: 1,
      textScaleFactor: MediaQuery.of(context).textScaleFactor,
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.size;
  }