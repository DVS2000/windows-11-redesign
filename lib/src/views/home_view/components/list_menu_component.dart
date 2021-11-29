/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/material.dart';

class ListMenuComponentHome extends StatelessWidget {
  const ListMenuComponentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/imgs/icons/volume.png",
              height: 15,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/imgs/icons/notification.png",
              height: 15,
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/imgs/icons/wifi.png",
              height: 15,
            ),
          ),

          const SizedBox(width: 15)
      ]
    );
  }
}
