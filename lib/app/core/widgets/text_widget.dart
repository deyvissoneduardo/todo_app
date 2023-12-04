import 'package:flutter/material.dart';

import 'size_config.dart';

class TextWidget {
  static Widget txt(
    String title,
    double size,
    FontWeight fontWeight,
    Color color,
    double left,
    double top,
    double right,
    double bottom,
  ) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        left * SizeConfig.widthMultiplier,
        top * SizeConfig.heightMultiplier,
        right * SizeConfig.widthMultiplier,
        bottom * SizeConfig.heightMultiplier,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: size * SizeConfig.widthMultiplier,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
