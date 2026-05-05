import "package:google_fonts/google_fonts.dart";

class Config {
  /// Is Auth Required In App
  static bool authRequired = false;

  /// API base url
  static String apiBaseUrl = "https://jsonplaceholder.typicode.com";

  /// App Name
  static String appName = "Ignitr";

  /// Font Family For The Headings And Titles
  static String? headingFontFamily = GoogleFonts.poppins().fontFamily;

  /// Font Family For The Body Text
  static String? bodyFontFamily = GoogleFonts.inter().fontFamily;
}
