/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/views/home_view/components/menu_component/menu_bar_component.dart';
import 'package:windows_11_redesign/src/views/home_view/components/menu_windows_component/menu_windows_component.dart';
import 'package:windows_11_redesign/src/views/home_view/components/window_foder_component/window_foder_component.dart';
import 'components/welcome_componet/welcome_component.dart';


class HomeView extends StatefulWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>  with TickerProviderStateMixin {

  bool hideMenuWindows = false;


  late final AnimationController _controller = AnimationController(
    vsync: this, 
    duration: const Duration(milliseconds: 500)
  );


  @override 
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imgs/bg.png"),
              fit: BoxFit.cover
            )
          ),
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            color: Colors.transparent,
            child: Stack(
              children: [

                const WelcomeComponent(),

                WindowFoldersComponent(
                  animationController: _controller,
                ),

                MenuWindowsWelcomeComponent(hide: hideMenuWindows),
                
              ],
            )
          ),
          bottomNavigationBar: MenuBarComponent(
            showMenu: () => setState(() => hideMenuWindows = !hideMenuWindows),
            showWindowFolders: () => _controller.isCompleted ? _controller.reverse() : _controller.forward(),
          )
        ),
      ],
    );
  }
}