import 'package:flutter/material.dart';

import 'size_config.dart';

class BtnContainer {
  static Widget backBtn(VoidCallback ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 4.5 * SizeConfig.heightMultiplier,
        width: 8.5 * SizeConfig.widthMultiplier,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: const Icon(
          Icons.keyboard_arrow_left,
          color: Colors.black,
        ),
      ),
    );
  }
}
