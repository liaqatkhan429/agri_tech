import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoInternetView extends StatelessWidget {
  const NoInternetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff339D44),
      body: Stack(
        children: [
          Image.asset("assets/connection_lost.png"),
          Positioned(
            top: 470,
            right: 40,
            child: Column(
              children: [
                Text(
                  "Connection Lost",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                    color: Colors.white,
                  ),

                ),
                SizedBox(height: 8,),
                Text(
                  "Something went wrong.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white,
                  ),

                ),
                SizedBox(height: 26,),
                Container(
                  height: 60,
                  width: 128,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                    child: Text(
                      "Retry",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff339D44),
                      ),

                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
