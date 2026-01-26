import 'package:agri_tech/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoDataFoundView extends StatelessWidget {
  const NoDataFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 216,
            right: 25,
            child: Column(
              children: [
                Image.asset("assets/nodata.png",width: 190, height: 206,),
                SizedBox(height: 35,),
                Text(
                  "No Data Found",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 23,
                    color: const Color(0xff292929),
                  ),

                ),
                SizedBox(height: 8,),
                Text(
                  "You have not answered any questions yet",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color(0xffB4B4B4),
                  ),

                ),
                SizedBox(height: 26,),
                AppButton(txt: "Back to Home", width: 156, height: 60, onPress: (){})
              ],
            ),
          ),

          Positioned(
              top: 374,
              child: Image.asset("assets/nodata_found.png", )),
        ],
      ),
    );
  }
}
