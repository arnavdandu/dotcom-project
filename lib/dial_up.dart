import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter95/flutter95.dart';
import 'colors.dart';
import 'package:flutter/widgets.dart';
import 'common_widgets/aol_button.dart';

class DialUpPage extends StatefulWidget {
  const DialUpPage({Key? key}) : super(key: key);

  @override
  _DialUpPageState createState() => _DialUpPageState();
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

void wait({@required int? numberOfMilliseconds}) async {
  await Future.delayed(Duration(milliseconds: numberOfMilliseconds!));
}

String stepOne = "Step 1: Initializing modem...";
String stepOK = "Modem initialization OK...";
String stepTwo = "Step 2: Dialing...";
String stepThree = "Step 3: Connected at 52000 bps...";
String stepFour = "Step 4: Requesting network attention...";
String stepFive = "Step 5: Talking to network...";
String stepSix = "Step 6: Connecting to America Online...";
String stepSeven = "Step 7: Checking password...";
List<String> steps = [
  stepOne,
  stepOK,
  stepThree,
  stepFour,
  stepFive,
  stepSix,
  stepSeven
];

int stepCounter = 0;

List<int> timeCounter = [500, 1000, 20000, 1000, 1000, 1000, 1000, 1000];

class _DialUpPageState extends State<DialUpPage> {
  final double aolIndicatorWidth = 275;
  final double aolIndicatorHeight = 200;

  String? stepText;

  void _setConnectionText() async {
    Future.delayed(Duration(milliseconds: 5000));

    String stepOne = "Step 1: Initializing modem...";
    String stepOK = "Modem initialization OK...";
    String stepTwo = "Step 2: Dialing...";
    String stepThree = "Step 3: Connected at 52000 bps...";
    String stepFour = "Step 4: Requesting network attention...";
    String stepFive = "Step 5: Talking to network...";
    String stepSix = "Step 6: Connecting to America Online...";
    String stepSeven = "Step 7: Checking password...";
    List steps = [
      stepOne,
      stepOK,
      stepThree,
      stepFour,
      stepFive,
      stepSix,
      stepSeven
    ];

    /*
    setState(() {
      stepText = stepOne;
    });
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      stepText = stepOK;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      stepText = stepTwo;
    });
    await Future.delayed(Duration(milliseconds: 20000));
    setState(() {
      stepText = stepThree;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      stepText = stepFour;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      stepText = stepFive;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      stepText = stepSix;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    setState(() {
      stepText = stepSeven;
    });
    await Future.delayed(Duration(milliseconds: 1000));
    */
    for (var time in timeCounter) {
      setState(() {
        stepCounter++;
      });
      await Future.delayed(Duration(milliseconds: time));
      if (stepCounter >= 6) {
        break;
      }
    }
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
                  "${steps[stepCounter]}",
                  style: TextStyle(
                    fontFamily: "MS",
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                AOLButton(
                  width: 130,
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
