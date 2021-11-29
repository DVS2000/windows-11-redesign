/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/models/menu_model.dart';
import 'package:windows_11_redesign/src/utils/size_device_util.dart';
import 'package:windows_11_redesign/src/views/auth_view/components/custom_avatar_component.dart';
import 'components/item_menu_left_component.dart';
import 'components/item_menu_right_component.dart';
import 'components/textfield_search_component.dart';

// ignore: must_be_immutable
class MenuWindowsWelcomeComponent extends StatefulWidget {
  bool hide;
  MenuWindowsWelcomeComponent({Key? key, required this.hide}) : super(key: key);

  @override
  _MenuWindowsWelcomeComponentState createState() => _MenuWindowsWelcomeComponentState();
}

class _MenuWindowsWelcomeComponentState extends State<MenuWindowsWelcomeComponent> {

  List<MenuModel> menuRight = [
    MenuModel(text: "Settings", img: "settings.png"),
    MenuModel(text: "Appearance", img: "appearance.png"),
    MenuModel(text: "Software", img: "software.png"),
    MenuModel(text: "Log out", img: "power.png")
  ];

  List<MenuModel> menuLeft = [
    MenuModel(text: "Word", img: "word.png"),
    MenuModel(text: "OneNote", img: "onenote.png"),
    MenuModel(text: "OneDrive", img: "drive.png"),
    MenuModel(text: "Skype", img: "skype.png"),
    MenuModel(text: "Excel", img: "excel.png"),
    MenuModel(text: "Firefox", img: "firefox.png"),
    MenuModel(text: "Spotify", img: "Spotify.png"),
    MenuModel(text: "Adobe Photoshop ", img: "Adobe_Photoshop.png")
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      left: 20,
      bottom: !widget.hide ? -500 : 20,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOutCubicEmphasized,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: context.sizeDeviceUtil.width / 2.1,
          height: context.sizeDeviceUtil.height / 1.8,
          padding: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow:  [
              BoxShadow(
                color: Colors.grey.withOpacity(.7),
                blurRadius: 6,
                spreadRadius: 4.0
              )
            ]
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: .5, 
                        color: Color.fromRGBO(20, 21, 57, .1)
                      )
                    )
                  ),
                  child: Column(
                    children: [

                      Container(
                        padding: const EdgeInsets.only(
                          top: 12, 
                          bottom: 11, 
                          right: 20
                        ),
                        margin: const EdgeInsets.only(bottom: 20),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(20, 21, 57, .1)
                            )
                          )
                        ),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [

                            Text(
                              "Applications",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "CircularStdBook",
                                color: Color(0xff141539)
                              ),
                            ),

                            TextfieldSearchComponent()
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "24 Applications in Total",
                            style: TextStyle(
                              fontFamily: "CircularStdBook",
                              color: Color(0xff141539)
                            ),
                          ),
                          const Spacer(),

                          const Text(
                            "Latest installation",
                            style: TextStyle(
                              fontFamily: "CircularStdBook",
                              color: Color.fromRGBO(20, 21, 57, .5)
                            ),
                          ),
                          
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color.fromRGBO(20, 21, 57, .5),
                            size: 15,
                          ),
                          const SizedBox(width: 10),

                          Image.asset(
                            "assets/imgs/icons/last_apps.png",
                            height: 13,
                          ),
                          const SizedBox(width: 10),

                          Image.asset(
                            "assets/imgs/icons/apps.png",
                            height: 13,
                          ),
                          const SizedBox(width: 20),
                        ]

                      ),
                      Expanded(
                        child: GridView.count(
                          crossAxisCount: 4,
                          childAspectRatio: 1,
                          padding: EdgeInsets.zero,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 10,
                          children: menuLeft.map((item) => ItemMenuLeftComponent(model: item)).toList(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [

                    Container(
                      padding: const EdgeInsets.only(
                        left: 20, 
                        top: 20, 
                        bottom: 20
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(20, 21, 57, .1)
                          )
                        )
                      ),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "System",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "CircularStdBook",
                          color: Color(0xff141539)
                        ),
                      ),
                    ),

                    Expanded(
                      child: ListView(
                      children: menuRight.map((item) => ItemMenuRightComponent(
                          key: Key(menuRight.indexOf(item).toString()),
                          model: item,
                          onTap: item.img == "power.png" ? () => Navigator.of(context).pop() : () { },
                        )
                      ).toList(),
                     )
                    ),

                    Container(
                      padding: const EdgeInsets.only(
                        left: 20, 
                        right: 20, 
                        top: 20, 
                        bottom: 30
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            width: 1,
                            color: Color.fromRGBO(20, 21, 57, .1)
                          )
                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          CustomAvatarComponent(
                            heigth: 40,
                            width: 40,
                          ),
                          const SizedBox(width: 5),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "Dorivaldo dos Santos",
                                style: TextStyle(
                                  fontFamily: "CircularStdBook",
                                  fontSize: 12,
                                  color: Color(0xff141539)
                                ),
                              ),
                              SizedBox(height: 3),
                              
                              Text(
                                "dorivaldodossant@gmail...",
                                style: TextStyle(
                                  fontFamily: "CircularStdBook",
                                  color: Color(0xff898A9C),
                                  fontSize: 10,
                                  overflow: TextOverflow.ellipsis),
                              ),
                              SizedBox(height: 10),
                            ]
                          )
                        ],
                      ),
                    )
                  ],
                )
              )
            ]
          ),
        ),
      ),
    );
  }
}
