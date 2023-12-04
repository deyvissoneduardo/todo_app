import 'package:flutter/material.dart';

import 'size_config.dart';

class InkWellWidget {
  static Widget btnWidget(IconData iconData, VoidCallback ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 4.3 * SizeConfig.heightMultiplier,
        width: 8 * SizeConfig.widthMultiplier,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 2.2)),
        child: Center(
          child: Icon(
            (iconData),
            size: 7 * SizeConfig.widthMultiplier,
          ),
        ),
      ),
    );
  }
}
