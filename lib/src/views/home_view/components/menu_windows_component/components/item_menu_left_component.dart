/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/models/menu_model.dart';

// ignore: must_be_immutable
class ItemMenuLeftComponent extends StatelessWidget {
  MenuModel model;
  ItemMenuLeftComponent({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/imgs/icons/${model.img}",
          height: 46,
          width: 46,
        ),
        Text(
          "${model.text}",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "CircularStdBook", 
            color: Color(0xff141539)
          ),
        )
      ],
    );
  }
}
