import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter95/flutter95.dart';
import 'colors.dart';
import 'package:flutter/widgets.dart';
import 'common_widgets/aol_button.dart';
import 'package:just_audio/just_audio.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/dotcom_logo.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: (width * .40),
          child: Text("placeholder"),
        ),
      ),
    );
  }
}
