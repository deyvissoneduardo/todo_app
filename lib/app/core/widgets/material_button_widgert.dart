// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'size_config.dart';

class MaterialButtonWidgert extends StatelessWidget {
  final Color color;
  final String title;
  final double fontsize;
  final FontWeight fontWeight;
  final Color txtColor;
  final double left;
  final double top;
  final double right;
  final double bottom;
  final double btnRoundness;
  final double btnleft;
  final double btntop;
  final double btnright;
  final double btnbottom;
  final double spacing;
  final VoidCallback ontap;

  const MaterialButtonWidgert({
    Key? key,
    required this.color,
    required this.title,
    required this.fontsize,
    required this.fontWeight,
    required this.txtColor,
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
    required this.btnRoundness,
    required this.btnleft,
    required this.btntop,
    required this.btnright,
    required this.btnbottom,
    required this.spacing,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        btnleft * SizeConfig.widthMultiplier,
        btntop * SizeConfig.heightMultiplier,
        btnright * SizeConfig.widthMultiplier,
        btnbottom * SizeConfig.heightMultiplier,
      ),
      child: MaterialButton(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(btnRoundness),
        ),
        onPressed: ontap,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            left * SizeConfig.widthMultiplier,
            top * SizeConfig.heightMultiplier,
            right * SizeConfig.widthMultiplier,
            bottom * SizeConfig.heightMultiplier,
          ),
          child: Text(
            '$Title',
            style: TextStyle(
              fontSize: fontsize * SizeConfig.widthMultiplier,
              fontWeight: fontWeight,
              color: txtColor,
              letterSpacing: spacing,
            ),
          ),
        ),
      ),
    );
  }
}
