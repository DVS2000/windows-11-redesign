/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/views/auth_view/components/custom_avatar_component.dart';
import 'package:windows_11_redesign/src/views/auth_view/components/custom_textfield_component.dart';
import 'package:windows_11_redesign/src/views/home_view/home_view.dart';

class CardAuthComponent extends StatefulWidget {
  const CardAuthComponent({Key? key}) : super(key: key);

  @override
  _CardAuthComponentState createState() => _CardAuthComponentState();
}

class _CardAuthComponentState extends State<CardAuthComponent> with TickerProviderStateMixin {
  
  late final AnimationController _animatonController = AnimationController(
    duration: const Duration(milliseconds: 1500),
    vsync: this
  )..forward();

  late final Animation<double> _animation = CurvedAnimation(
    parent: _animatonController, 
    curve: Curves.fastOutSlowIn
  );

  @override
  void dispose() {
    _animatonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: Container(
        margin: const EdgeInsets.only(top: 50),
        height: 288,
        width: 360,
        decoration: BoxDecoration(
          color: Colors.transparent, 
          borderRadius: BorderRadius.circular(5)
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 270,
              padding: const EdgeInsets.only(
                bottom: 50, 
                left: 20, 
                right: 20
              ),
              decoration: BoxDecoration(
                color: const Color(0xff3462FE),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CustomTextFieldComponent(),

                  Text(
                    "Esqueceu a Palavra-Passe ?",
                    style: TextStyle(
                      color: Color(0xff85A0FE), 
                      fontSize: 11
                    ),
                  )
                ],
              ),
            ),

            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: 276 / 2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 4,
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomAvatarComponent(),

                    const Text(
                      "Dorivaldo dos Santos",
                      style: TextStyle(
                        color: Color(0xff141539),
                        fontSize: 18,
                        fontFamily: "PingFangFont",
                        fontWeight: FontWeight.w600
                      ),
                    ),

                    const Text(
                      "dorivaldodossantos2000@gmail.com",
                      style: TextStyle(
                        color: Color(0xff898A9C),
                        fontSize: 10,
                        fontFamily: "PingFangFont",
                      ),
                    )
                  ],
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: FloatingActionButton.small(
                heroTag: "nothing",
                backgroundColor: Colors.white,
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const HomeView()
                  )
                ),
                child: const Icon(
                  CupertinoIcons.arrow_right,
                  color: Color(0xff3462FE),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
