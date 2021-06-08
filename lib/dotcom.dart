import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'colors.dart';
import 'package:flutter/widgets.dart';
import 'common_widgets/aol_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var bodyStyle = TextStyle(fontFamily: "HelvRg", fontSize: 20);
  var neuStyle = TextStyle(
      fontFamily: "HelvRg",
      fontSize: 60,
      color: Colors.grey.shade50,
      shadows: [
        Shadow(
            color: Colors.grey.shade300,
            offset: Offset(3.0, 3.0),
            blurRadius: 3.0),
        Shadow(color: Colors.white, offset: Offset(-3.0, 3.0), blurRadius: 3.0),
      ]);
  var header = TextStyle(fontFamily: "HelvBd", fontSize: 50, letterSpacing: -2);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: AppBar(
          elevation: 4,
          toolbarHeight: 150,
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Image.asset(
                'assets/dotcom_logo.png',
                height: 125,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(230, 30, 230, 30),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "What was the Dot-Com",
                  style: TextStyle(
                      fontFamily: "HelvBd", fontSize: 50, letterSpacing: -2),
                ),
                DefaultTextStyle(
                  style: header,
                  child: AnimatedTextKit(
                    pause: Duration(milliseconds: 3000),
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText(' Boom?'),
                      TypewriterAnimatedText(' Bubble?'),
                    ],
                  ),
                ),
              ],
            ),
            Text(
              "The Dot-Com Boom was a period of rapid growth in the stock valuations of Internet-based companies as a result of extremely high investor optimism.",
              style: bodyStyle,
            )
          ],
        ),
      ),
    );
  }
}
