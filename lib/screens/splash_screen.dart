import 'package:flutter/material.dart';
import 'package:schooligo_1/constants/colours.dart';
import 'package:schooligo_1/constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: (screenHeight / -84),
            left: (screenWidth /-5.34),
            child: Image.asset(saturnPNG, width: (screenWidth * 0.8) ,),
          ),
          Positioned(
            top: (screenHeight / 2.5),
            left: (screenWidth /13),
            child: Image.asset(logoPNG, width: (screenWidth * 0.9),),
          ),
          Positioned(
            left: 291,
            top: (screenHeight / 1.3),
            child: Opacity(
              opacity: 0.70,
              child: Container(
                width: 189,
                height: 189,
                decoration: const ShapeDecoration(
                  color: yellow,
                  shape: OvalBorder(),
                ),
              ),
            ),
          ),Positioned(
            left: 209,
            top: (screenHeight/1.11),
            child: Opacity(
              opacity: 0.70,
              child: Container(
                width: 189,
                height: 189,
                decoration: const ShapeDecoration(
                  color: yellow,
                  shape: OvalBorder(),
                ),
              ),
            ),
          ),
          Positioned(
            top: (screenHeight / 1.14),
              left: (screenWidth /2.45),
              child: Image.asset(fromGoPNG,width: (screenWidth * 0.2))
          )
        ],
      ),
    );
  }
}
