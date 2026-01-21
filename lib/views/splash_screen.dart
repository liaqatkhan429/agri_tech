import 'dart:async';

import 'package:agri_tech/views/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingView()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 290,),
          Center(child: Image.asset("assets/splash_screen_logo.png", height: 118, width: 119,)),
          SizedBox(height: 319,),
          Text("Powered by",style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xffB7B9C6)
          ),),
          SizedBox(height: 12,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/splash_screen_logo1.png",width: 23.69,height: 22.4,),
                SizedBox(width: 5.3,),
                Text("FARM TECH",style: GoogleFonts.raleway(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff292929)
                ),),
              ],
            ),
          )

        ],
      ),
    );
  }
}
