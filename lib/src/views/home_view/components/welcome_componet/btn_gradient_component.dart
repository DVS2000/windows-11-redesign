/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
*/

import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/utils/size_device_util.dart';

class BtnGradientComponent extends StatelessWidget {
  const BtnGradientComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        height: 36,
        width: context.sizeDeviceUtil.width / 7,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [
              Color(0xff5208FC), 
              Color(0xff00E4ED)
            ]
          )
        ),
        alignment: Alignment.center,
        child: const Text(
          "View more",
          style: TextStyle(
            color: Colors.white, 
            fontSize: 18
          )
        ),
      ),
    );
  }
}
