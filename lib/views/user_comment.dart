import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/utils.dart';

class UserCommentView extends StatefulWidget {
  const UserCommentView({super.key});

  @override
  State<UserCommentView> createState() => _UserCommentViewState();
}

class _UserCommentViewState extends State<UserCommentView> {
  TextEditingController searchController = TextEditingController();
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
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
                      "Comments",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 23.04,
                        color: const Color(0xff292929),
                      ),
                    ),

                    SizedBox(width: 5,),
                    Text(
                      "(22)",
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w700,
                        fontSize: 23.04,
                        color: const Color(0xff339D44),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TabBar(
                  indicator: const FixedSizeTabIndicator(
                    color: Color(0xff339D44),
                    height: 40,
                    width: 95,
                    radius: 10,
                  ),
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(
                    Colors.transparent,
                  ),
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  unselectedLabelColor: Color(0xffB4B4B4),
                  labelStyle: GoogleFonts.raleway(
                    fontWeight: FontWeight.w400,
                    fontSize: 11.11,
                  ),
                  tabs: [
                    Tab(text: "All"),
                    Tab(text: "Most Recent"),
                    Tab(text: "Relevant"),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  children: [TabAllView(), MostRecent(), Relevant()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class TabAllView extends StatefulWidget {
  const TabAllView({super.key});

  @override
  State<TabAllView> createState() => _TabAllViewState();
}

class _TabAllViewState extends State<TabAllView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40,left: 30,right: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Video: ",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.33,
                    color: const Color(0xff339D44),
                  ),
                ),
                Text(
                  "How to start A tractor",
                  style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.33,
                    color: const Color(0xff292929),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/image.png", height: 25, width: 25,),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mosab Mehmood",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: const Color(0xff292929),
                          ),
                        ),
                        Text(
                          "11/10/2021",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color: const Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar ante id netus sit congue justo. Felis, volutpat sit senectus tempor, aliquam. Tellus proin enim orci in ullamcorper egestas dolor. Dictumst sed.",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.11,
                      color: const Color(0xff292929),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/image.png", height: 25, width: 25,),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mosab Mehmood",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: const Color(0xff292929),
                          ),
                        ),
                        Text(
                          "11/10/2021",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color: const Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar ante id netus sit congue justo. Felis, volutpat sit senectus tempor, aliquam. Tellus proin enim orci in ullamcorper egestas dolor. Dictumst sed.",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.11,
                      color: const Color(0xff292929),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/image.png", height: 25, width: 25,),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mosab Mehmood",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: const Color(0xff292929),
                          ),
                        ),
                        Text(
                          "11/10/2021",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color: const Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar ante id netus sit congue justo. Felis, volutpat sit senectus tempor, aliquam. Tellus proin enim orci in ullamcorper egestas dolor. Dictumst sed.",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.11,
                      color: const Color(0xff292929),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/image.png", height: 25, width: 25,),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mosab Mehmood",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: const Color(0xff292929),
                          ),
                        ),
                        Text(
                          "11/10/2021",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color: const Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar ante id netus sit congue justo. Felis, volutpat sit senectus tempor, aliquam. Tellus proin enim orci in ullamcorper egestas dolor. Dictumst sed.",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.11,
                      color: const Color(0xff292929),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/image.png", height: 25, width: 25,),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mosab Mehmood",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: const Color(0xff292929),
                          ),
                        ),
                        Text(
                          "11/10/2021",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color: const Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar ante id netus sit congue justo. Felis, volutpat sit senectus tempor, aliquam. Tellus proin enim orci in ullamcorper egestas dolor. Dictumst sed.",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.11,
                      color: const Color(0xff292929),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset("assets/image.png", height: 25, width: 25,),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mosab Mehmood",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w500,
                            fontSize: 11.11,
                            color: const Color(0xff292929),
                          ),
                        ),
                        Text(
                          "11/10/2021",
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w400,
                            fontSize: 9.26,
                            color: const Color(0xffB4B4B4),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 31),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar ante id netus sit congue justo. Felis, volutpat sit senectus tempor, aliquam. Tellus proin enim orci in ullamcorper egestas dolor. Dictumst sed.",
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.11,
                      color: const Color(0xff292929),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
              ],
            ),
        
          ],
        ),
      ),
    );
  }
}

class MostRecent extends StatelessWidget {
  const MostRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}

class Relevant extends StatelessWidget {
  const Relevant({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}

