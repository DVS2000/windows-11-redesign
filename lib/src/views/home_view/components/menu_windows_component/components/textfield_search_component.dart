/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/utils/size_device_util.dart';

class TextfieldSearchComponent extends StatelessWidget {
  const TextfieldSearchComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      width: context.sizeDeviceUtil.width / 8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1), 
            blurRadius: 10
          )
        ]
      ),
      child: const TextField(
        style: TextStyle(
          fontSize: 12,
          fontFamily: "CircularStdBook",
          color: Color(0xff141539)
        ),
        decoration: InputDecoration(
          hintText: "Search",
          border: InputBorder.none,
          suffixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.only(
            left: 10, 
            bottom: 1, 
            top: 9
          )
        ),
      )
    );
  }
}
