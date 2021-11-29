/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
*/

import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/utils/size_device_util.dart';
import 'package:windows_11_redesign/src/views/home_view/components/welcome_componet/btn_gradient_component.dart';
import 'package:windows_11_redesign/src/views/home_view/components/welcome_componet/small_btn_component.dart';

class WelcomeComponent extends StatefulWidget {
  const WelcomeComponent({Key? key}) : super(key: key);

  @override
  State<WelcomeComponent> createState() => _WelcomeComponentState();
}

class _WelcomeComponentState extends State<WelcomeComponent> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this, 
    duration: const Duration(milliseconds: 1000)
  )..forward();

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller, 
    curve: Curves.fastOutSlowIn
  );

  List<Color> colors = [
    const Color(0xffFE9638),
    const Color(0xffFF3171),
    const Color(0xff3462FE)
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      alignment: Alignment.bottomCenter,
      child: Center(
        child: Container(
          height: context.sizeDeviceUtil.height / 1.5,
          width: context.sizeDeviceUtil.width / 1.5,
          padding: const EdgeInsets.only(
            top: 20, 
            left: 20, 
            right: 20, 
            bottom: 40
          ),
          decoration: BoxDecoration(
            color: const Color(0xffE6E0F7),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: colors.map((color) => SmallBtnComponent(
                  color: color,
                  onTap: colors.indexOf(color) == 2
                    ? () => _controller.reverse()
                    : () {},
                  )
                )
                .toList(),
              ),

              Image.asset(
                "assets/imgs/welcome.png",
                height: context.sizeDeviceUtil.height / 3.2,
              ),

              Container(height: 15),

              const Text(
                "Welcome To Windows 11",
                style: TextStyle(
                  fontSize: 36,
                  color: Color(0xff141539),
                  fontFamily: "PingFangFont"
                ),
              ),
              
              Container(height: 15),

              const Text(
                "Windows 11 fully enables fluent design system, bringing you a clean and\ncomfortable experience. Click below to quickly understand the features to start with\nwindows 11",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(20, 21, 57, .5),
                  fontFamily: "PingFangFont",
                  fontSize: 12
                ),
              ),
              

              const BtnGradientComponent()
            ],
          ),
        ),
      ),
    );
  }
}
