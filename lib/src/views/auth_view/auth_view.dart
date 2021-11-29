/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/utils/formate_date_util.dart';
import 'package:windows_11_redesign/src/utils/size_device_util.dart';
import 'package:windows_11_redesign/src/views/auth_view/components/card_atuh_component.dart';
import 'package:windows_11_redesign/src/views/auth_view/components/list_menu_component.dart';

class AuthView extends StatefulWidget {
  const AuthView({Key? key}) : super(key: key);
  @override
  _AuthViewState createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /* BACKGROUND */
          Center(
            child: Image.asset(
              "assets/imgs/bg.png",
              height: context.sizeDeviceUtil.height,
              width: context.sizeDeviceUtil.width,
              fit: BoxFit.cover,
            )
          ),

          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 12,
              sigmaY: 12
            ),
            child: Container(
              height: context.sizeDeviceUtil.height,
              width: context.sizeDeviceUtil.width,
              color: Colors.transparent.withOpacity(.5),
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text(
                          formateTimeWithWeekDay(DateTime.now()),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "PingFangFont" 
                          )
                        ),
                        const CardAuthComponent()
                      ],
                    ),
                  ),

                  const ListMenuComponent()
                ],
              ),
              
            ),
          )
        ],
      )
    );
  }
}