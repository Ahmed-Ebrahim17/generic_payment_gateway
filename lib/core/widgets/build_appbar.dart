import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar buildAppBarWidget({String? title}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: Center(child: SvgPicture.asset('assets/images/arrow_back.svg')),
    centerTitle: true,
    title: Text(title ?? ""),
  );
}
