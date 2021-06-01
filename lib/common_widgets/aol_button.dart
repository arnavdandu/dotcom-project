import 'package:flutter/material.dart';
import 'package:us_hist_project/colors.dart';

class AOLButton extends StatelessWidget {
  AOLButton({
    this.child,
    this.borderRadius: 25.0,
    this.height: 50.0,
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
    );
  }
}
