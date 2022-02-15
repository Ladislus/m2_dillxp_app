import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';


final Color rouge_principal = HexColor("#E20613");
final Color rouge_appbar = HexColor("#720000");
final Color placeholder_color = HexColor("#B4B4B4");

AppBar appbar(){
  return AppBar(
    actions: [
      Container(
        width: 80,
        margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: SvgPicture.asset(
          'images/logo-cinemas-studio-appbar.svg',
          fit: BoxFit.contain,
        ),
      ),
    ],
    backgroundColor: rouge_appbar,
  );
}