import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter95/flutter95.dart';
import 'package:us_hist_project/dial_up.dart';
import 'package:us_hist_project/dotcom.dart';
import 'colors.dart';
import 'package:flutter/widgets.dart';
import 'common_widgets/aol_button.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dot Com Bubble',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Dot Com Bubble'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(text: "Guest");
    return Scaffold(
      backgroundColor: windowsBlue,
      body: Center(
        child: Container(
          child: Scaffold95(
            title: "Sign On",
            body: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SizedBox(
                      height: 550,
                      width: 220,
                      child: Container(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Image(
                                image:
                                    AssetImage('assets/icons/aol_shadow.png')),
                            SizedBox(
                              height: 230,
                            ),
                            Image(
                                height: 64,
                                width: 64,
                                image:
                                    AssetImage('assets/icons/run_shadow.png')),
                            SizedBox(
                              height: 6,
                            ),
                            Text('version 4.0',
                                style: TextStyle(
                                    shadows: <Shadow>[
                                      Shadow(
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 3.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      Shadow(
                                        offset: Offset(1.0, 1.0),
                                        blurRadius: 8.0,
                                        color: Color.fromARGB(125, 0, 0, 255),
                                      ),
                                    ],
                                    fontFamily: 'MSP',
                                    color: Colors.white,
                                    fontSize: 16,
                                    letterSpacing: 2.0))
                          ],
                        ),
                        color: aolBlue,
                      )),
                ),
                SizedBox(
                    height: 550,
                    width: 668,
                    child: Center(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 150,
                            ),
                            Text('Select Screen Name:             ',
                                style: TextStyle(
                                    fontFamily: "TahomaBold",
                                    fontSize: 20,
                                    letterSpacing: 0.5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 300,
                              child: Elevation95(
                                type: Elevation95Type.down,
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  color: Flutter95.white,
                                  height: 32,
                                  child: Material(
                                    color: white,
                                    child: TextField(
                                      controller: controller,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                      ),
                                      cursorColor: Flutter95.black,
                                      style: TextStyle(
                                          fontFamily: 'MS',
                                          fontSize: 16,
                                          height: 1.4),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 140,
                            ),
                            Text('Connection:                           ',
                                style: TextStyle(
                                    fontFamily: "TahomaBold",
                                    fontSize: 20,
                                    letterSpacing: 0.5,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 300,
                              child: Elevation95(
                                type: Elevation95Type.down,
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  color: Flutter95.white,
                                  height: 32,
                                  child: Material(
                                    color: white,
                                    child: Text(
                                      "Dial-up Connection",
                                      style: TextStyle(
                                          fontFamily: 'MS',
                                          fontSize: 16,
                                          height: 1.4),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AOLButton(
                                  width: 130,
                                  onPressed: () {
                                     Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainPage()),
                                    );
                                  },
                                  color: aolButtonBorderBlue,
                                  child: Text('SETUP',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "MSP",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 2.0)),
                                ),
                                SizedBox(width: 30),
                                AOLButton(
                                  width: 130,
                                  onPressed: () {},
                                  color: aolButtonBorderBlue,
                                  child: Text('HELP',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "MSP",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 2.0)),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                AOLButton(
                                  width: 130,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DialUpPage(stepCounter: 0,)),
                                    );
                                  },
                                  color: windowsDarkBlue,
                                  child: Text('SIGN ON',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "MSP",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 2.0)),
                                ),
                              ],
                            ),
                            Expanded(
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: SizedBox(height: 2)),
                            ),
                          ],
                        ),
                        color: offWhite,
                      ),
                    )),
              ],
            ),
          ),
          height: 600,
          width: 900,
          color: Colors.blue,
        ),
      ),
    );
  }
}

/*
Elevation95(
                                type: Elevation95Type.down,
                                child: Container(
                                  padding: EdgeInsets.all(4.0),
                                  color: Flutter95.white,
                                  height: 32,
                                  child: Material(
                                    color: white,
                                    child: TextField(
                                      controller: controller,
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                      ),
                                      cursorColor: Flutter95.black,
                                      style: TextStyle(fontFamily: 'MS'),
                                    ),
                                  ),
                                ),
                              ),
                              */
