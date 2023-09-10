import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color mainWhite = Colors.white;
  static Color white = Color(0xE0E1DDDD);
  static Color white2 = Color(0xADB5BDDD);
  static Color darkBlue = Color(0xFF000633);
  static Color darkGreen = Color.fromARGB(255, 0, 68, 62);
  static Color teal = Colors.teal;
  static Color appColor = Color.fromRGBO(1, 34, 43, 1);
  static Color appColor2 = Color.fromARGB(191, 0, 21, 27);
  static Color darkYellow = Color.fromARGB(255, 250, 136, 7);
  static Color orange = Color.fromARGB(255, 232, 93, 4);
  static Color gold = Color(0xeee09f3e);
  static Color ligthRed = Color.fromARGB(255, 174, 7, 7);
  static Color darkRed = Color(0x666a040f);
  static Color blue1 = Color(0x11175676);
  static Color blue2 = Color(0x444BA3C3);
  static Color blue3 = Color(0x888d99ae);
  static Color move = Color(0x66613f75);
  static Color blue4 = Color(0xeee7ad99);
  static Color pink1 = Color(0x999d8189);
  static Color pink2 = Color(0xBBBA324F);
  static Color pink3 = Color(0xaaa53860);
  static Color transparent = Colors.transparent;

  static List<Color> cardColor = [
    darkGreen,
    teal,
    pink3,
    orange,
    darkYellow,
    gold,
    move,
    darkRed,
    ligthRed,
    blue1,
    blue2,
    blue3,
    blue4
  ];

  static TextStyle title1Bold = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: mainWhite,
  );
  static TextStyle content = GoogleFonts.nunito(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: mainWhite,
  );
  static TextStyle date = GoogleFonts.nunito(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: mainWhite,
  );

  static TextStyle h1Bold = GoogleFonts.abel(
      fontSize: 48, height: 1.4, color: mainWhite, fontWeight: FontWeight.bold);
  static TextStyle h2Bold = GoogleFonts.abel(
      fontSize: 40, height: 1.4, color: mainWhite, fontWeight: FontWeight.bold);
  static TextStyle h3Bold = GoogleFonts.abel(
      fontSize: 33, height: 1.4, color: mainWhite, fontWeight: FontWeight.bold);
  static TextStyle h4Bold = GoogleFonts.abel(
      fontSize: 28, height: 1.4, color: mainWhite, fontWeight: FontWeight.bold);
  static TextStyle h5Bold = GoogleFonts.abel(
      fontSize: 23, height: 1.4, color: mainWhite, fontWeight: FontWeight.bold);
      static  TextStyle bodyBold = GoogleFonts.abel(
    fontSize: 13, height: 1.4, color: mainWhite, fontWeight: FontWeight.bold);
static  TextStyle captionBold = GoogleFonts.abel(
    fontSize: 11, height: 1.4, color: mainWhite, fontWeight: FontWeight.bold);
}
