/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
*/

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAvatarComponent extends StatelessWidget {
  double? width, heigth;
  CustomAvatarComponent({Key? key, this.width, this.heigth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heigth ?? 70,
      width: width ?? 70,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xff3462FE), 
          width: 1
        ),
        image: const DecorationImage(
          image: AssetImage("assets/imgs/user.jpg"), 
          fit: BoxFit.cover
        )
      ),
    );
  }
}
