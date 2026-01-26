import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class ConnectionLostView extends StatelessWidget {
  const ConnectionLostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                bottom: 114,
                child: Image.asset("assets/nodata_found.png")),
            Positioned(
                bottom: 326,
                child: Image.asset("assets/person.png", height: 232,)),
            Positioned(
                top: 119,
                child: Image.asset("assets/clouds.png", height: 99,)),
            Positioned(
                top: 57,
                right: 30,
                child: Image.asset("assets/kite.png", width: 124,)),
            Positioned(
              bottom: 74,
              right: 100,
              child: Column(
                children: [
                  Text(
                    "Connection Lost",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                      color: const Color(0xff292929),
                    ),
        
                  ),
                  SizedBox(height: 8,),
                  Text(
                    "Something went wrong.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: const Color(0xffB4B4B4),
                    ),
        
                  ),
                  SizedBox(height: 26,),
                  AppButton(txt: "Retry", width: 129, height: 60, onPress: (){})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
