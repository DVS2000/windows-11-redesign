// ignore_for_file: must_be_immutable

/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/models/menu_model.dart';

class ItemMenuRightComponent extends StatelessWidget {
  MenuModel? model;
  Function onTap;
  ItemMenuRightComponent({Key? key, this.model, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: () => onTap(),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Image.asset(
              "assets/imgs/icons/${model?.img}",
              height: 16,
              width: 16,
            ),
            const SizedBox(width: 10),
            Text(
              "${model?.text}",
              style: const TextStyle(
                fontFamily: "CircularStdBook", 
                color: Color(0xff141539)
              ),
            ),
          ],
        )
      ),
    );
  }
}
