// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'size_config.dart';

class TextFieldWidget extends StatelessWidget {
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintTxt;
  final double horizontal;
  final double vertical;
  final bool visibility;
  final TextInputType keybordType;

  const TextFieldWidget({
    Key? key,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.hintTxt,
    required this.horizontal,
    required this.vertical,
    required this.visibility,
    required this.keybordType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal * SizeConfig.widthMultiplier,
        vertical: vertical * SizeConfig.heightMultiplier,
      ),
      child: TextField(
        keyboardType: keybordType,
        obscureText: visibility,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          hintText: hintTxt,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
