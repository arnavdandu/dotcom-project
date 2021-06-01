import 'package:flutter/material.dart';
import 'package:us_hist_project/colors.dart';

class AOLButton extends StatelessWidget {
  AOLButton({
    this.child,
    this.borderRadius: 25.0,
    this.height: 40.0,
    this.width,
    this.color: Colors.white,
    this.onPressed,
    this.opacity: 1.0,
  });
  final Widget? child;
  final Color color;
  final double borderRadius;
  final double height;
  final double? width;
  final VoidCallback? onPressed;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: SizedBox(
        height: height,
        width: width,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: color,
              width: 2, //                   <--- border width here
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 0.1,
                blurRadius: 0.1,
                offset: Offset(10, 10), // changes position of shadow
              ),
            ],
          ),
          child: OutlinedButton(
            child: child!,
            style: OutlinedButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              backgroundColor: aolBlue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: BorderSide(color: Colors.red)),
            ),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
