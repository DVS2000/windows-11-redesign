/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/material.dart';

class ListMenuComponent extends StatelessWidget {
  const ListMenuComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Spacer(),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.power_settings_new, 
              color: Colors.white
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.volume_mute_rounded, 
              color: Colors.white
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications, 
              color: Colors.white
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.signal_wifi_4_bar, 
              color: Colors.white
            ),
          ),

          const SizedBox(width: 15)
      ]
    );
  }
}
