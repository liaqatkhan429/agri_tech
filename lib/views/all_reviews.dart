import 'package:agri_tech/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingAndReviewView extends StatelessWidget {
  const RatingAndReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      "Ratings & Reviews",
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
              Padding (
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: 24,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/image.png"),
                              fit: BoxFit.contain,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fareeha Sadaqat",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.11,
                                  color: const Color(0xff292929),
                                ),
                              ),
                              Text(
                                "10 mins ago",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.26,
                                  color: const Color(0xffB4B4B4),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Recommended Expert.",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.11,
                                  color: const Color(0xff292929),
                                ),
                              ),
                            ]),
                        Spacer(),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                      ],
                    ),

                  ],
                ),
              ),
              Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: 24,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/image.png"),
                              fit: BoxFit.contain,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fareeha Sadaqat",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.11,
                                  color: const Color(0xff292929),
                                ),
                              ),
                              Text(
                                "10 mins ago",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.26,
                                  color: const Color(0xffB4B4B4),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Recommended Expert.",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.11,
                                  color: const Color(0xff292929),
                                ),
                              ),
                            ]),
                        Spacer(),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                      ],
                    ),

                  ],
                ),
              ),
              Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: 24,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/image.png"),
                              fit: BoxFit.contain,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fareeha Sadaqat",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.11,
                                  color: const Color(0xff292929),
                                ),
                              ),
                              Text(
                                "10 mins ago",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.26,
                                  color: const Color(0xffB4B4B4),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Recommended Expert.",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.11,
                                  color: const Color(0xff292929),
                                ),
                              ),
                            ]),
                        Spacer(),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                      ],
                    ),

                  ],
                ),
              ),
              Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: 24,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/image.png"),
                              fit: BoxFit.contain,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Fareeha Sadaqat",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.11,
                                  color: const Color(0xff292929),
                                ),
                              ),
                              Text(
                                "10 mins ago",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.26,
                                  color: const Color(0xffB4B4B4),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "Recommended Expert.",
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.11,
                                  color: const Color(0xff292929),
                                ),
                              ),
                            ]),
                        Spacer(),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                        Icon(Icons.star_border, size: 15, color: Color(0xff339D44),),
                      ],
                    ),

                  ],
                ),
              ),
              Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
            ],
          ),
        ),
      ),
    );
  }
}
