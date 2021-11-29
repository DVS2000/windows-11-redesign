/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmallBtnComponent extends StatelessWidget {
  Color? color;
  Function onTap;
  SmallBtnComponent({Key? key, this.color,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            height: 13,
            width: 13,
            decoration: BoxDecoration(
              color: color, 
              shape: BoxShape.circle
            ),
          ),
        ),
      ),
    );
  }
}
