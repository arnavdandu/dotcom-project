import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter95/flutter95.dart';
import 'colors.dart';
import 'package:flutter/widgets.dart';
import 'common_widgets/aol_button.dart';
import 'package:just_audio/just_audio.dart';
import 'dotcom.dart';

class DialUpPage extends StatefulWidget {
  DialUpPage({Key? key, required this.stepCounter}) : super(key: key);
  int stepCounter;

  @override
  _DialUpPageState createState() => _DialUpPageState();
}

class _DialUpPageState extends State<DialUpPage> {
  late AudioPlayer _player;
  final double aolIndicatorWidth = 275;
  final double aolIndicatorHeight = 200;

  String? stepText;


  void _setConnectionText() async {

    var duration = await _player.setAsset('assets/dialup.mp3', preload: true);
    await _player.setLoopMode(LoopMode.off);
    await _player.setVolume(0.10);
    _player.play();
    

    await Future.delayed(Duration(seconds: 28), () {
      setState(() {
        opacity = 1.0;
        widget.stepCounter = 1;
      });
    });

    await Future.delayed(Duration(seconds: 1), () {
      setState(() {
        aolTriangle = Image(
            image: AssetImage(
          'assets/icons/connected_triangle.png',
        ));
        widget.stepCounter = 2;
      });
    });
    
    dispose();
    await Future.delayed(Duration(seconds: 2));
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainPage()),
    );
  }

  @override
  void dispose() {
    _player.stop();
    _player.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
  }


  @override
  Widget build(BuildContext context) {
    _setConnectionText();

    return Scaffold(
      backgroundColor: windowsBlue,
      body: Center(
        child: Elevation95(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image(
                  image: AssetImage('assets/icons/aol_shadow_horizontal.png'),
                  height: 150,
                  width: 600,
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Elevation95(
                      child: SizedBox(
                        child: Container(
                          color: offWhite,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Elevation95(
                              type: Elevation95Type.down,
                              child: Container(
                                child: SizedBox(
                                  child: Container(
                                    color: Color(0xff003163),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        child: Center(child: aolMan),
                                        color: Color(0xffCECEFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        height: aolIndicatorHeight,
                        width: aolIndicatorWidth,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Elevation95(
                      child: SizedBox(
                        child: Container(
                          color: offWhite,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Elevation95(
                              type: Elevation95Type.down,
                              child: Container(
                                child: SizedBox(
                                  child: Container(
                                    color: Color(0xff003163),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        child: Center(
                                            child: Opacity(
                                          opacity: opacity,
                                          child: aolRun,
                                        )),
                                        color: Color(0xffCECEFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        height: aolIndicatorHeight,
                        width: aolIndicatorWidth,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Elevation95(
                      child: SizedBox(
                        child: Container(
                          color: offWhite,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Elevation95(
                              type: Elevation95Type.down,
                              child: Container(
                                child: SizedBox(
                                  child: Container(
                                    color: Color(0xff003163),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Container(
                                        child: Center(child: aolTriangle),
                                        color: Color(0xffCECEFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        height: aolIndicatorHeight,
                        width: aolIndicatorWidth,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "${steps[widget.stepCounter]}",
                  style: TextStyle(
                    fontFamily: "MS",
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 5,
                  width: 700,
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 30,
                ),
                AOLButton(
                  width: 100,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: aolButtonBorderBlue,
                  child: Text('Cancel',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "MSP",
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                          letterSpacing: 2.0)),
                ),
              ],
            ),
            height: 600,
            width: 900,
            color: offWhite,
          ),
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.black87,
  primary: Colors.grey[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

List<String> steps = [
  "Dialing...",
  "Connecting...",
  "Connected!",
];

var aolMan = Image(image: AssetImage('assets/icons/purple_aol.png'));
var aolRun = Image(
    image: AssetImage(
  'assets/icons/purple_aol_run.png',
));
var aolTriangle = Image(
    image: AssetImage(
  'assets/icons/purple_triangle.png',
));
var opacity = 0.0;