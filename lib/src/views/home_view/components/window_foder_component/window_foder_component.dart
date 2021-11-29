/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/models/menu_model.dart';
import 'package:windows_11_redesign/src/utils/size_device_util.dart';
import 'package:windows_11_redesign/src/views/home_view/components/menu_windows_component/components/item_menu_left_component.dart';
import 'package:windows_11_redesign/src/views/home_view/components/menu_windows_component/components/item_menu_right_component.dart';
import 'package:windows_11_redesign/src/views/home_view/components/welcome_componet/small_btn_component.dart';

// ignore: must_be_immutable
class WindowFoldersComponent extends StatefulWidget {
  AnimationController animationController;
  WindowFoldersComponent({Key? key, required this.animationController}) : super(key: key);

  @override
  _WindowFoldersComponentState createState() => _WindowFoldersComponentState();
}

class _WindowFoldersComponentState extends State<WindowFoldersComponent> with TickerProviderStateMixin {
  bool maximizar = false;

  List<Color> colors = [
    const Color(0xffFE9638),
    const Color(0xffFF3171),
    const Color(0xff3462FE)
  ];

  List<MenuModel> menuLeft = [
    MenuModel(text: "Most Used", img: "flight-mode.png"),
    MenuModel(text: "Download", img: "download.png"),
    MenuModel(text: "Document", img: "charge.png"),
    MenuModel(text: "Music", img: "like.png"),
    MenuModel(text: "Picture", img: "camera.png"),
    MenuModel(text: "Video", img: "multimedia.png")
  ];

  List<MenuModel> folders = [
    MenuModel(text: "Dowloand", img: "fdownload.png"),
    MenuModel(text: "Documents", img: "fdocument.png"),
    MenuModel(text: "Music", img: "fmusic.png"),
    MenuModel(text: "Picture", img: "fpicture.png"),
    MenuModel(text: "Video", img: "fvideo.png"),
    MenuModel(text: "Desktop", img: "fdesktop.png"),
    MenuModel(text: "Games", img: "fgames.png"),
  ];


  late final Animation<double> _animation = CurvedAnimation(
    parent: widget.animationController, 
    curve: Curves.fastOutSlowIn
  );


  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      alignment: Alignment.bottomCenter,
      child: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          height: context.sizeDeviceUtil.height / (maximizar ? 1 : 1.6),
          width: context.sizeDeviceUtil.width / (maximizar ? 1 : 1.9),
          curve: Curves.easeInOutCubicEmphasized,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(maximizar ? 0 : 8)
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 20, 
                  left: 20, 
                  right: 20, 
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
                child: Row(
                  children: [
                    const Text(
                      "File Manager",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "CircularStdBook",
                        color: Color(0xff141539),
                        fontSize: 16
                      ),
                    ),
                    const Spacer(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: colors.map((color) => SmallBtnComponent(
                        color: color,
                        onTap: colors.indexOf(color) == 2
                                ? () => widget.animationController.reverse()
                                : colors.indexOf(color) == 1
                                  ? () => setState(() => maximizar = !maximizar)
                                  : () {},
                          )
                        )
                      .toList(),
                    )
                  ],
                ),
              ),

              Container(
                height: 43,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1, 
                      color: Color.fromRGBO(20, 21, 57, .1)
                    ),
                  )
                ),
                child: Row(
                  children: [

                    Expanded(
                      child: Container(
                        height: 43,
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 1, 
                              color: Color.fromRGBO(20, 21, 57, .1)
                            ),
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            
                            Icon(
                              CupertinoIcons.chevron_left,
                              color: Color(0xff141539),
                              size: 20,
                            ),
                            SizedBox(width: 10),

                            Icon(
                              CupertinoIcons.chevron_right,
                              color: Color(0xffCCCCCC),
                              size: 20,
                            ),
                            SizedBox(width: 10),

                            Icon(
                              CupertinoIcons.arrow_up,
                              color: Color(0xff141539),
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 43,
                        margin: const EdgeInsets.only(right: 1),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        color: const Color(0xffF7F8FA),
                        child: Row(
                          children: const [

                            Text(
                              "Computer",
                              style: TextStyle(
                                color: Color.fromRGBO(20, 21, 57, .5),
                                fontFamily: "CircularStdBook"
                              ),
                            ),
                            SizedBox(width: 10),

                            Icon(
                              CupertinoIcons.chevron_left,
                              color: Color.fromRGBO(20, 21, 57, .5),
                              size: 13,
                            ),
                            SizedBox(width: 5),

                            Text(
                              "C:/",
                              style: TextStyle(
                                color: Color.fromRGBO(20, 21, 57, .5),
                                fontFamily: "CircularStdBook"
                              ),
                            ),
                            Spacer(),

                            Text(
                              "Search",
                              style: TextStyle(
                                color: Color.fromRGBO(20, 21, 57, .5),
                                fontFamily: "CircularStdBook"
                              ),
                            ),
                            SizedBox(width: 60),

                            Icon(
                              CupertinoIcons.search,
                              color: Color.fromRGBO(20, 21, 57, .5),
                              size: 18,
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 1, 
                              color: Color.fromRGBO(20, 21, 57, .1)
                            ),
                          )
                        ),
                        child: ListView(
                          children: menuLeft.map((item) => ItemMenuRightComponent(
                            key: Key(menuLeft.indexOf(item).toString()),
                            model: item,
                            onTap: () {},
                            )
                          ).toList(),
                        ),
                      )
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0, 
                              right: 15.0
                            ),
                            child: Row(
                              children: [
                                const Spacer(),

                                Image.asset(
                                  "assets/imgs/icons/last_apps.png",
                                  height: 15,
                                ),
                                const SizedBox(width: 10),

                                Image.asset(
                                  "assets/imgs/icons/apps.png",
                                  height: 15,
                                ),
                                const SizedBox(width: 20),

                              ]
                            ),
                          ),
                          
                          Expanded(
                            child: GridView.count(
                              crossAxisCount: 4,
                              childAspectRatio: 1.4,
                              padding: EdgeInsets.zero,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 10,
                              children: folders.map((item) => ItemMenuLeftComponent(model: item)).toList(),
                            ),
                          )

                        ],
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
