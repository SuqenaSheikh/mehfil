import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double bH; // blockHeight
  static late double bW; // blockWidth

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    bH = screenHeight / 100;
    bW = screenWidth / 100;
  }

  // FONT SIZE
  static double font(double size) => size * (screenWidth / 390);

  // WIDTH
  static double w(double value) => value * (screenWidth / 390);

  // HEIGHT
  static double h(double value) => value * (screenHeight / 844);

  // SPACING
  static SizedBox vSpace(double h) => SizedBox(height: h * (screenHeight / 844));
  static SizedBox hSpace(double w) => SizedBox(width: w * (screenWidth / 390));

  // RADIUS
  static double radius(double r) => r * (screenWidth / 390);
}
//USAGE
//@override
// Widget build(BuildContext context) {
//   SizeConfig.init(context);
//   return Scaffold(
///Text
//     Text(
//   "Donate Blood Save Life",
//   style: TextStyle(fontSize: SizeConfig.font(20)),
// ),
///Radius (Button)
//Container(
//   width: SizeConfig.w(300),
//   height: SizeConfig.h(55),
//   decoration: BoxDecoration(
//     color: Colors.red,
//     borderRadius: BorderRadius.circular(SizeConfig.radius(14)),
//   ),
// );
///Spacing
//SizeConfig.vSpace(20)
//padding
//padding: EdgeInsets.symmetric(
//   horizontal: SizeConfig.w(20),
//   vertical: SizeConfig.h(16),
// );

//   );
// }
