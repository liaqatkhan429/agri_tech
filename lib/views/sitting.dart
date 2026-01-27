import 'package:agri_tech/services/user.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SittingView extends StatefulWidget {
  const SittingView({super.key});

  @override
  State<SittingView> createState() => _SittingViewState();
}

class _SittingViewState extends State<SittingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset("assets/arrow_back_icon.png",height: 24,width: 24,)),

                  SizedBox(width: 20,),
                  Text(
                    "Sittings",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w700,
                      fontSize: 23.04,
                      color: const Color(0xff292929),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Account",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.33,
                      color: const Color(0xff000000),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 13, color: Color(0xffD4D4D4),),
                ],
              )
            ),
            Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rate our app",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.33,
                      color: const Color(0xff000000),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 13, color: Color(0xffD4D4D4),),
                ],
              )
            ),
            Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: InkWell(
                onTap: () async{
                },
                child: Row(
                  children: [
                    Image.asset("assets/logout.png",height: 24,width: 24,),
                    SizedBox(width: 8,),
                    Text(
                      "LogOut",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 13.33,
                        color:  Color(0xffF24E1E),
                      ),
                    ),
                  ],
                ),
              )
            ),
            Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
          ],
        ),
      ),
    );
  }
}
