/*
 * Name: Dorivaldo Vicente dos Santos
 * E-mail: dorivaldodossantos2000@gmail.com
 * Phone/WhatsApp: +244 944557610
 * Github: https://github.com/DVS2000
 * Site: https://dorivaldodossantos.herokuapp.com
 */

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemMenuComponent extends StatefulWidget {
  String? img;
  ItemMenuComponent({Key? key,this.img}) : super(key: key);

  @override
  _ItemMenuComponentState createState() => _ItemMenuComponentState();
}

class _ItemMenuComponentState extends State<ItemMenuComponent> {

  bool mouseHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onHover: (event) => setState(() => mouseHover = true),
        onExit: (event) => setState(() => mouseHover = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          height: 35,
          width: 35,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: mouseHover ? Colors.grey.withOpacity(.4) : Colors.transparent,
            borderRadius: BorderRadius.circular(2)
          ),
          child: Image.asset(
            "assets/imgs/icons/menu/${widget.img}.png",
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
