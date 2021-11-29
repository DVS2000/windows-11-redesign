import 'package:flutter/material.dart';
import 'package:windows_11_redesign/src/views/auth_view/auth_view.dart';

class AppView extends StatelessWidget {
  const AppView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Windows 11  - Redesign",
      home: AuthView(),
    );
  }
}