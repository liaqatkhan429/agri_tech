import 'package:agri_tech/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/404.png", fit: BoxFit.fitHeight,),
          Positioned(
            top: 479,
            left: 81,
            child: Column(
              children: [
                Text(
                  "Page Not Found",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                    color: Color(0xff292929),
                  ),

                ),
                SizedBox(height: 8,),
                Text(
                  "The page you are looking for\ndoesn’t seem to exist…",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xffB4B4B4),
                  ),

                ),
                SizedBox(height: 26,),
                AppButton(txt: "Back to Home", width: 196, height: 60, onPress: (){})
              ],
            ),
          ),
        ],
      ),
    );
  }
}
