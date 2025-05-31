import 'dart:ui';

import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  final Widget child;
  final Widget? bottomNavigationBar;
  const PageWidget({super.key, required this.child, this.bottomNavigationBar});
  @override
  Widget build(BuildContext context) {
    var bluredCircleTop = ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
      child: Container(
        width: 161,
        height: 161,
        decoration: BoxDecoration(
          color: Color(0xFF184DEA).withOpacity(.3),
          borderRadius: BorderRadius.circular(161 / 2),
        ),
      ),
    );
    var bluredCircleBottom = ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
      child: Container(
        width: 161,
        height: 161,
        decoration: BoxDecoration(
          color: Color(0xFFF86780).withOpacity(.3),
          borderRadius: BorderRadius.circular(161 / 2),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color(0xFFF6F9FC),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(right: -50, top: -40, child: bluredCircleTop),
          Positioned(left: -66, bottom: -72, child: bluredCircleBottom),
          SafeArea(child: child),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
