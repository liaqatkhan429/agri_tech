import 'package:agri_tech/utils/utils.dart';
import 'package:agri_tech/views/all_reviews.dart';
import 'package:agri_tech/views/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Profile",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 23.04,
                        color: const Color(0xff292929),
                      ),
                    ),
                    Image.asset("assets/sittingicon.png" ,width: 24,height: 24,),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
              SizedBox(height: 10,),
              Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
              Column(
                children: [
                 Container(
                   height: 82,
                   width: 82,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(
                         image: AssetImage("assets/profileimage.png"),
                       fit: BoxFit.cover
                     ),
                   ),
                 ),
                  SizedBox(height: 10,),
                  Text(
                    "Muhammad Wajahat",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color(0xff111111),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "mwajahat.038@gmail.com",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.11,
                      color:  Color(0xff339D44),
                    ),
                  ),
                  SizedBox(height: 10,),
                 Container(
                   width: 129,
                   height: 40,
                   decoration: BoxDecoration(
                     color: Color(0xff339D44),
                     borderRadius: BorderRadius.circular(8),
                   ),
                   child: InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileView()));
                     },
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.edit_outlined,size: 24,color: Colors.white,),
                         SizedBox(width: 10,),
                         Text(
                           "Edit Profile",
                           style: GoogleFonts.raleway(
                             fontWeight: FontWeight.w400,
                             fontSize: 11.11,
                             color:  Colors.white,
                           ),
                         ),
                       ],
                     ),
                   ),
                 )
                ],
              ),
              SizedBox(height: 22,),
              Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Stats",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.33,
                        color:  Colors.black,
                      ),
                    ),
                    Text(
                      "See Dashboard",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400,
                        fontSize: 9.26,
                        color:  Color(0xff399D44),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 119,
                        decoration: BoxDecoration(
                          color: Color(0xffFBFBFB),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "252 Answer",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.11,
                                color:  Color(0xff292929),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 9,),
                      Container(
                        height: 40,
                        width: 119,
                        decoration: BoxDecoration(
                          color: Color(0xffFBFBFB),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "71 Pending",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.11,
                                color:  Color(0xff292929),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 9,),
                      Container(
                        height: 40,
                        width: 119,
                        decoration: BoxDecoration(
                          color: Color(0xffFBFBFB),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "14 Videos Uploaded",
                              style: GoogleFonts.raleway(
                                fontWeight: FontWeight.w400,
                                fontSize: 11.11,
                                color:  Color(0xff292929),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(color: Color(0xffD4D4D4).withOpacity(0.1),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rating & Reviews",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w500,
                        fontSize: 13.33,
                        color:  Colors.black,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RatingAndReviewView()));
                      },
                      child: Text(
                        "See All",
                        style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 9.26,
                          color:  Color(0xff399D44),
                        ),
                      ),
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
