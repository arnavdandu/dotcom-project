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

class _DialUpPageState extends State<DialUpPage> {
  final double aolIndicatorWidth = 275;
  final double aolIndicatorHeight = 200;
  @override
  Widget build(BuildContext context) {
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
                        child: Container(color: offWhite,),
                        height: aolIndicatorHeight,
                        width: aolIndicatorWidth,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Elevation95(
                      child: SizedBox(
                        child: Container(color: offWhite,),
                        height: aolIndicatorHeight,
                        width: aolIndicatorWidth,
                      ),
                    ),
                    SizedBox(width: 10,),
                    Elevation95(
                      child: SizedBox(
                        child: Container(color: offWhite,),
                        height: aolIndicatorHeight,
                        width: aolIndicatorWidth,
                      ),
                    ),
                  ],
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
