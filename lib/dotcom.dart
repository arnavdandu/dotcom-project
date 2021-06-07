import 'package:flutter/material.dart';
import 'package:flutter95/flutter95.dart';
import 'colors.dart';
import 'package:flutter/widgets.dart';
import 'common_widgets/aol_button.dart';


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
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(250, 30, 250, 30),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("placeholder", style: TextStyle(fontFamily: "HelvBd", fontSize: 30, letterSpacing: -3),),
          ],
        ),
      ),
    );
  }
}
