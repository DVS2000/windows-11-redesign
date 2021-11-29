/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
*/

import 'package:flutter/material.dart';

class CustomTextFieldComponent extends StatelessWidget {
  const CustomTextFieldComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      padding: const EdgeInsets.only(
        left: 20, 
        right: 20, 
        bottom: 1
      ),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: const Color(0xffEDEEF2).withOpacity(.15),
        borderRadius: BorderRadius.circular(100)
      ),
      child: TextField(
        obscureText: true,
        controller: TextEditingController(text: "000000"),
        decoration: const InputDecoration(border: InputBorder.none),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 35,
          letterSpacing: 5,
          fontFamily: "PingFangFont"
        ),
      ),
    );
  }
}
