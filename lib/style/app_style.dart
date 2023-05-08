import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle{
  static Color black = Color(0xFF000633);
  static Color pink = Color(0xFFf4acb7);
  static Color whitePink = Color(0xFFfff0f3);

  static List<Color> cardsColor = [
    Colors.white,
    Colors.red.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.yellow.shade100,
    Colors.pink.shade100,
    Colors.blueGrey.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
    Colors.greenAccent.shade100,
  ];

  static TextStyle title = GoogleFonts.roboto(fontSize: 18.0, fontWeight: FontWeight.bold);

static TextStyle content = GoogleFonts.nunito(fontSize: 16.0, fontWeight: FontWeight.normal);

static TextStyle date = GoogleFonts.roboto(fontSize: 13.0, fontWeight: FontWeight.w500);
}