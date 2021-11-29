// ignore_for_file: must_be_immutable

/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/utils/formate_date_util.dart';
import 'package:windows_11_redesign/src/views/home_view/components/list_menu_component.dart';
import 'package:windows_11_redesign/src/views/home_view/components/menu_component/btn_menu_bar__component.dart';
import 'package:windows_11_redesign/src/utils/size_device_util.dart';

class MenuBarComponent extends StatefulWidget {
  Function showMenu;
  Function showWindowFolders;
  MenuBarComponent({Key? key, required this.showMenu, required this.showWindowFolders}) : super(key: key);

  @override
  _MenuBarComponentState createState() => _MenuBarComponentState();
}

class _MenuBarComponentState extends State<MenuBarComponent> {
  List<String> menus = [
    "menu",
    "edge",
    "folder",
    "adobe_xd",
    "pinterest",
    "dailymotion"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.sizeDeviceUtil.width,
      height: 46,
      padding: const EdgeInsets.symmetric(
        horizontal: 15, 
        vertical: 5
      ),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, .8),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8), 
          topRight: Radius.circular(8)
        )
      ),
      child: Row(
        children: [
          Row(
            children: menus.map((e) => e == "menu" 
              ? FloatingActionButton(
                  key: Key(e),
                  backgroundColor: const Color.fromRGBO(255, 255, 255, .8),              
                  onPressed: () => widget.showMenu(),
                  child: Image.asset("assets/imgs/icons/menu/$e.png")
                ) 
              : GestureDetector(
                onTap: e == "folder" ? () => widget.showWindowFolders() : () {},
                child: ItemMenuComponent(
                  key: Key(e),
                  img: e
                ),
              )
            ).toList(),
          ),

          const Spacer(),     

          const ListMenuComponentHome(),

          Container(width: 10,),

          Text(
            formateTimeWithWeekDay(DateTime.now())
          )
        ],
      )
    );
  }
}
