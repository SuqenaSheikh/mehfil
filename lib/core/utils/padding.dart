import 'package:flutter/widgets.dart';
import 'responsive.dart';

extension ResponsivePadding on Widget {
  /// Responsive padding on all sides
  Widget paddingAll(double value) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.w(value)),
      child: this,
    );
  }

  /// Responsive symmetric padding
  Widget paddingSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.w(horizontal),
        vertical: SizeConfig.h(vertical),
      ),
      child: this,
    );
  }

  /// Responsive custom padding
  Widget paddingOnly({
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.w(left),
        right: SizeConfig.w(right),
        top: SizeConfig.h(top),
        bottom: SizeConfig.h(bottom),
      ),
      child: this,
    );
  }
}

///Usaage
//Container(
//   child: Column(children: []),
// ).paddingAll(20)
//Text("Donate Blood")
//     .paddingSymmetric(horizontal: 16, vertical: 8);
//Icon(Icons.bloodtype).paddingOnly(top: 20)
//You can chain extensions!
//Text("Hello")
//     .paddingAll(20)
//     .paddingOnly(top: 10);
